#!/usr/bin/env bash
# commit_brief.sh — commit a finished brief and push to GitHub.
#
# The local Daily/.git is intentionally NOT used. The scheduled-task sandbox
# can write into Daily/.git but cannot delete files there, which leaves
# stale index.lock files that brick subsequent runs. So instead we clone
# the remote fresh into /tmp each invocation, drop the new brief in, and
# push from /tmp where there are no permission quirks.
#
# Usage:  scripts/commit_brief.sh briefs/YYYY-MM-DD_daily_intel_brief.md

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
BRIEF_BASENAME="$(basename "$BRIEF_MD_ABS")"
DATE_STAMP="$(date +%Y-%m-%d)"

if [[ ! -f "$SECRETS_FILE" ]]; then
  echo "error: secrets file missing at $SECRETS_FILE" >&2
  exit 3
fi
# shellcheck disable=SC1090
set -a; source "$SECRETS_FILE"; set +a

if [[ -z "${GITHUB_REMOTE:-}" || "$GITHUB_REMOTE" == *"__PASTE_PAT_HERE__"* ]]; then
  echo "error: GITHUB_REMOTE is empty or still has the PAT placeholder." >&2
  echo "       see SETUP_GITHUB_ACTIONS.md for setup." >&2
  exit 4
fi

GIT_AUTHOR_NAME="${GIT_AUTHOR_NAME:-ASA Cyber Brief Bot}"
GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL:-briefs@asacyber.local}"

# --------------------------------------------------------------------------- #
# Clone fresh into a temp dir, push from there.
# --------------------------------------------------------------------------- #
WORKDIR="$(mktemp -d -t commit_brief.XXXXXX)"
trap 'rm -rf "$WORKDIR"' EXIT

echo "[commit] cloning $(echo "$GITHUB_REMOTE" | sed -E 's|x-access-token:[^@]+@|x-access-token:<redacted>@|') into temp dir"
# Disable interactive auth prompts so bad creds fail fast.
export GIT_TERMINAL_PROMPT=0
if ! timeout 60 git clone --depth=1 --quiet "$GITHUB_REMOTE" "$WORKDIR/repo" 2>&1; then
  echo "error: git clone failed — check PAT and that the repo exists." >&2
  exit 5
fi

cd "$WORKDIR/repo"
git config user.name  "$GIT_AUTHOR_NAME"
git config user.email "$GIT_AUTHOR_EMAIL"

# Drop today's brief in.
mkdir -p briefs
cp "$BRIEF_MD_ABS" "briefs/$BRIEF_BASENAME"

git add "briefs/$BRIEF_BASENAME"
if git diff --cached --quiet; then
  echo "[commit] brief is already committed and unchanged — nothing to push"
  exit 0
fi

git commit -q -m "Daily intel brief: $DATE_STAMP"
echo "[commit] committed $DATE_STAMP locally in $WORKDIR/repo"

echo "[commit] pushing to origin/main"
if ! timeout 60 git push --quiet origin main 2>&1; then
  PUSH_EXIT=$?
  echo "error: git push failed (exit $PUSH_EXIT)" >&2
  exit $PUSH_EXIT
fi

echo "[commit] pushed OK — GitHub Actions will send the email"
