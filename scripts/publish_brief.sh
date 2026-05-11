#!/usr/bin/env bash
# publish_brief.sh — render a markdown brief as HTML, email it via Resend, commit to GitHub.
#
# Usage:  scripts/publish_brief.sh briefs/2026-04-29_daily_intel_brief.md
#
# Loaded env vars (from .config/secrets.env):
#   RESEND_API_KEY    — required for email
#   RESEND_FROM       — sender address (e.g. "Intel Brief <briefs@yourdomain.com>")
#   RESEND_TO         — recipient address
#   GITHUB_REMOTE     — optional. If set, commits + pushes the brief to that repo.

set -euo pipefail

# --------------------------------------------------------------------------- #
# Resolve paths
# --------------------------------------------------------------------------- #
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
ROOT_DIR="$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)"
SECRETS_FILE="$ROOT_DIR/.config/secrets.env"

if [[ $# -lt 1 ]]; then
  echo "usage: $0 <path-to-brief.md>" >&2
  exit 2
fi

BRIEF_MD="$1"
if [[ ! -f "$BRIEF_MD" ]]; then
  echo "error: brief not found: $BRIEF_MD" >&2
  exit 2
fi

BRIEF_MD_ABS="$(cd "$(dirname "$BRIEF_MD")" && pwd)/$(basename "$BRIEF_MD")"
DATE_STAMP="$(date +%Y-%m-%d)"
HUMAN_DATE="$(date '+%A, %B %-d, %Y')"

# --------------------------------------------------------------------------- #
# Load secrets
# --------------------------------------------------------------------------- #
if [[ ! -f "$SECRETS_FILE" ]]; then
  echo "error: secrets file missing at $SECRETS_FILE" >&2
  echo "       copy .config/secrets.env.template to .config/secrets.env and fill in keys." >&2
  exit 3
fi
# shellcheck disable=SC1090
set -a
source "$SECRETS_FILE"
set +a

: "${RESEND_API_KEY:?RESEND_API_KEY not set in secrets.env}"
: "${RESEND_FROM:?RESEND_FROM not set in secrets.env}"
: "${RESEND_TO:?RESEND_TO not set in secrets.env}"

# --------------------------------------------------------------------------- #
# Step 1 — Markdown → styled HTML for email body
# --------------------------------------------------------------------------- #
echo "[publish] rendering email body"

# Convert the brief body (sans the title line, which we render in the email shell)
# Strip the very first H1 line so we don't get a duplicate title in the email.
BRIEF_BODY_MD="$(awk 'NR==1 && /^# / {next} {print}' "$BRIEF_MD_ABS")"
export BRIEF_HTML_RAW
BRIEF_HTML_RAW="$(printf '%s\n' "$BRIEF_BODY_MD" | pandoc -f markdown -t html5 --wrap=none)"

# Inline critical styles onto headings + paragraphs so the email survives clients
# (Outlook desktop, some webmail) that strip <style> blocks.
BRIEF_HTML="$(python3 - <<'PY'
import sys, re, os
html = os.environ['BRIEF_HTML_RAW']
INLINES = {
    'h2': "font-size:19px; margin:32px 0 12px; padding-bottom:6px; border-bottom:1px solid #eaeaea; line-height:1.3; color:#0a0a0a; font-weight:700;",
    'h3': "font-size:17px; margin:26px 0 10px; padding:4px 0 4px 12px; line-height:1.3; color:#0a0a0a; font-weight:700; border-left:3px solid #1158c7; background:#f6f9ff;",
    'h4': "font-size:21px; margin:32px 0 8px; padding:0 0 6px; line-height:1.3; color:#0a0a0a; font-weight:800; border-bottom:2px solid #1158c7;",
    'p':  "font-size:15px; line-height:1.65; margin:16px 0; color:#1a1a1a;",
    'li': "font-size:15px; line-height:1.55; margin-bottom:6px; color:#1a1a1a;",
}
for tag, style in INLINES.items():
    pattern = re.compile(r'<' + tag + r'(\s[^>]*)?>')
    def repl(m, _s=style, _t=tag):
        attrs = m.group(1) or ''
        if 'style=' in attrs:
            return m.group(0)
        return f'<{_t}{attrs} style="{_s}">'
    html = pattern.sub(repl, html)
sys.stdout.write(html)
PY
)"
export -n BRIEF_HTML_RAW

# Inline-CSS email shell. Email clients (Gmail, Outlook web) strip <style> blocks
# from <head>, so we keep styling either inline on tags or in a tolerated <style>
# inside <body>. Below we use a mix: a single <style> at the top of body for
# Gmail-friendly class rules, plus inline fallbacks for the most critical bits.
EMAIL_HTML=$(cat <<HTML
<!DOCTYPE html>
<html>
<head><meta charset="utf-8"></head>
<body style="margin:0; padding:0; background:#ffffff; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Helvetica,Arial,sans-serif; color:#1a1a1a;">
<style>
  .brief-wrap { max-width: 720px; margin: 0 auto; padding: 32px 24px; background: #ffffff; }
  .brief-wrap h1 { font-size: 24px; margin: 0 0 4px; line-height: 1.25; }
  .brief-wrap h2 { font-size: 19px; margin: 32px 0 12px; padding-bottom: 6px; border-bottom: 1px solid #eaeaea; line-height: 1.3; color: #0a0a0a; }
  .brief-wrap h3 { font-size: 17px; margin: 26px 0 10px; padding: 4px 0 4px 12px; line-height: 1.3; color: #0a0a0a; font-weight: 700; border-left: 3px solid #1158c7; background: #f6f9ff; }
  .brief-wrap h4 { font-size: 21px; margin: 32px 0 8px; padding: 0 0 6px; line-height: 1.3; color: #0a0a0a; font-weight: 800; border-bottom: 2px solid #1158c7; }
  .brief-wrap p { font-size: 15px; line-height: 1.65; margin: 16px 0; }
  .brief-wrap li { font-size: 15px; line-height: 1.55; }
  .brief-wrap ul, .brief-wrap ol { padding-left: 22px; margin: 8px 0 14px; }
  .brief-wrap li { margin-bottom: 6px; }
  .brief-wrap a { color: #1158c7; text-decoration: underline; }
  .brief-wrap hr { border: none; border-top: 1px solid #eaeaea; margin: 28px 0; }
  .brief-wrap strong { color: #0a0a0a; }
  .brief-wrap blockquote { border-left: 3px solid #d0d0d4; margin: 12px 0; padding: 4px 14px; color: #444; }
  .brief-meta { color: #6b6b70; font-size: 13px; margin: 0 0 22px; }
  .brief-footer { color: #8a8a90; font-size: 12px; padding: 18px 24px; text-align: center; }
</style>
<div class="brief-wrap">
  <h1>Daily Cybersecurity Intel Brief</h1>
  $BRIEF_HTML
</div>
<div class="brief-footer">
  Automated daily brief &nbsp;·&nbsp; sources cited inline above
</div>
</body>
</html>
HTML
)

# --------------------------------------------------------------------------- #
# Step 2 — Send via Resend (no attachments, full brief inline)
# --------------------------------------------------------------------------- #
echo "[publish] sending email via Resend to $RESEND_TO"

# Pull the first "### " title under "## Top-line takeaways" so today's
# subject is unique (prevents Gmail/Outlook from threading every brief
# together as one conversation).
LEAD_TITLE="$(awk '
  /^## Top-line takeaways/ { in_section=1; next }
  in_section && /^## / && !/^## Top-line takeaways/ { in_section=0 }
  in_section && /^### / { sub(/^### /, ""); print; exit }
' "$BRIEF_MD_ABS")"
if [[ -n "$LEAD_TITLE" ]]; then
  SUBJECT_LINE="Daily Cyber Brief — $DATE_STAMP — $LEAD_TITLE"
else
  SUBJECT_LINE="Daily Cyber Brief — $DATE_STAMP"
fi
echo "[publish] subject: $SUBJECT_LINE"

PAYLOAD="$(python3 - "$RESEND_FROM" "$RESEND_TO" "$EMAIL_HTML" "$SUBJECT_LINE" <<'PY'
import json, sys
sender, to, html, subject = sys.argv[1:5]
print(json.dumps({
    "from": sender,
    "to": [to],
    "subject": subject,
    "html": html,
    "headers": {
        "X-Entity-Ref-ID": f"asacyber-daily-{subject}",
    },
}))
PY
)"

HTTP_RESP="$(curl -sS -w '\n%{http_code}' \
  -X POST 'https://api.resend.com/emails' \
  -H "Authorization: Bearer $RESEND_API_KEY" \
  -H 'Content-Type: application/json' \
  -d "$PAYLOAD")"

HTTP_CODE="$(printf '%s' "$HTTP_RESP" | tail -n1)"
HTTP_BODY="$(printf '%s' "$HTTP_RESP" | sed '$d')"

if [[ "$HTTP_CODE" != "200" ]]; then
  echo "[publish] resend send FAILED (http $HTTP_CODE): $HTTP_BODY" >&2
  EMAIL_OK=0
else
  echo "[publish] email sent OK: $HTTP_BODY"
  EMAIL_OK=1
fi

# --------------------------------------------------------------------------- #
# Step 3 — Commit + push to GitHub (if configured)
# --------------------------------------------------------------------------- #
if [[ -n "${GITHUB_REMOTE:-}" ]]; then
  cd "$ROOT_DIR"
  if [[ ! -d .git ]]; then
    echo "[publish] initializing git repo"
    git init -q
    git branch -m main 2>/dev/null || true
    git remote add origin "$GITHUB_REMOTE" 2>/dev/null || git remote set-url origin "$GITHUB_REMOTE"
  fi
  git config user.email "${GIT_AUTHOR_EMAIL:-briefs@asacyber.local}"
  git config user.name  "${GIT_AUTHOR_NAME:-ASA Cyber Brief Bot}"

  git add briefs/ scripts/ README.md .gitignore .config/secrets.env.template 2>/dev/null || true
  if git diff --cached --quiet; then
    echo "[publish] nothing new to commit"
  else
    git commit -q -m "Daily intel brief: $DATE_STAMP"
    if git push origin main 2>&1; then
      echo "[publish] pushed to $GITHUB_REMOTE"
    else
      echo "[publish] WARN: git push failed (check token / remote)" >&2
    fi
  fi
else
  echo "[publish] GITHUB_REMOTE not set, skipping git commit"
fi

# --------------------------------------------------------------------------- #
# Summary
# --------------------------------------------------------------------------- #
echo
echo "[publish] DONE"
echo "  markdown: $BRIEF_MD_ABS"
echo "  email:    $([[ ${EMAIL_OK:-0} == 1 ]] && echo 'sent' || echo 'FAILED')"

[[ ${EMAIL_OK:-0} == 1 ]] || exit 1
