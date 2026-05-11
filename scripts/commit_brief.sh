#!/usr/bin/env bash
# commit_brief.sh — commit a finished brief and push to GitHub.
#
# This is the sandbox-side half of the publish pipeline. It does NOT send
# email. The email is sent by the GitHub Actions workflow at
# .github/workflows/email-brief.yml, which fires on push of any briefs/*.md.
#
# Why split? Claude's scheduled-task bash sandbox has a narrow outbound
# allowlist (github.com works, api.resend.com is blocked). Doing the push
# here and the email on GitHub's runners gets both halves into networks
# that can reach what they need.
#
# Usage:  scripts/commit_brief.sh briefs/YYYY-MM-DD_daily_intel_brief.md
#
# Loaded env vars (from .config/secrets.env):
#   GITHUB_REMOTE     — required. HTTPS URL with embedded token, e.g.
#                       https://x-access-token:GITHUB_PAT@github.com/USER/REPO.git
#   GIT_AUTHOR_NAME   — optional, defaults to "ASA Cyber Brief Bot"
#   GIT_AUTHOR_EMAIL  — optional, defaults to "briefs@asacyber.local"

set -euo pipefail

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

if [[ -z "${GITHUB_REMOTE:-}" ]]; then
  echo "error: GITHUB_REMOTE is empty in $SECRETS_FILE" >&2
  echo "       set it to an HTTPS push URL with an embedded PAT, e.g." >&2
  echo "       GITHUB_REMOTE=\"https://x-access-token:ghp_xxx@github.com/USER/REPO.git\"" >&2
  echo "       see SETUP_GITHUB_ACTIONS.md for details." >&2
  exit 4
fi

GIT_AUTHOR_NAME="${GIT_AUTHOR_NAME:-ASA Cyber Brief Bot}"
GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL:-briefs@asacyber.local}"

# --------------------------------------------------------------------------- #
# Init / repair the local repo
# --------------------------------------------------------------------------- #
cd "$ROOT_DIR"

if [[ ! -d .git ]]; then
  echo "[commit] initializing git repo"
  git init -q
  git branch -m main 2>/dev/null || true
fi

# Make sure origin points where we expect.
if git remote get-url origin >/dev/null 2>&1; then
  CURRENT_URL="$(git remote get-url origin)"
  if [[ "$CURRENT_URL" != "$GITHUB_REMOTE" ]]; then
    git remote set-url origin "$GITHUB_REMOTE"
    echo "[commit] updated origin remote URL"
  fi
else
  git remote add origin "$GITHUB_REMOTE"
  echo "[commit] added origin remote"
fi

git config user.name  "$GIT_AUTHOR_NAME"
git config user.email "$GIT_AUTHOR_EMAIL"

# Make sure the brief is inside the repo's briefs/ folder.
case "$BRIEF_MD_ABS" in
  "$ROOT_DIR"/briefs/*) ;;
  *)
    echo "error: brief must live under $ROOT_DIR/briefs/  (got $BRIEF_MD_ABS)" >&2
    exit 5
    ;;
esac

# --------------------------------------------------------------------------- #
# Stage + commit
# --------------------------------------------------------------------------- #
git add briefs/ scripts/ .github/ README.md .gitignore .config/secrets.env.template SETUP_GITHUB_ACTIONS.md 2>/dev/null || true

if git diff --cached --quiet; then
  echo "[commit] nothing new to commit"
else
  git commit -q -m "Daily intel brief: $DATE_STAMP"
  echo "[commit] committed $DATE_STAMP"
fi

# --------------------------------------------------------------------------- #
# Push
# --------------------------------------------------------------------------- #
echo "[commit] pushing to origin/main"
if git push -u origin main 2>&1; then
  echo "[commit] pushed OK — GitHub Actions will send the email"
else
  PUSH_EXIT=$?
  echo "[commit] WARN: git push failed (exit $PUSH_EXIT)" >&2
  echo "         check that GITHUB_REMOTE has a valid PAT and the repo exists." >&2
  exit $PUSH_EXIT
fi

echo "[commit] DONE"
