# One-time setup: GitHub Actions sends the daily brief email

Claude's scheduled-task sandbox can reach `github.com` but cannot reach `api.resend.com` (or any other email provider's API). To make the daily auto-run work end-to-end we split the publish pipeline:

| Step | Where it runs | What it does |
|---|---|---|
| 1. Write the markdown | Claude (sandbox) | research + draft, save to `briefs/YYYY-MM-DD_daily_intel_brief.md` |
| 2. Commit + push | Claude (sandbox), via `scripts/commit_brief.sh` | git add, commit, push to `origin/main` |
| 3. Render HTML + send email | GitHub Actions runner | triggered by the push, calls Resend |

This file walks through the one-time setup. After you're done, the auto-run is fully hands-off.

---

## Step 1 — Create (or confirm) the GitHub repo

You need a GitHub repo to hold the brief archive. It can be **private** — recommended, since briefs cite client-relevant context.

If you don't have one yet:

1. Go to https://github.com/new
2. Owner: your account
3. Repository name: `asacyber-daily-briefs` (or whatever you prefer)
4. Visibility: **Private**
5. Do **not** initialize with a README — the local repo already has one.
6. Click **Create repository**.

GitHub will show you the remote URL. It looks like `https://github.com/YOUR_USER/asacyber-daily-briefs.git`. Copy it.

---

## Step 2 — Create a Personal Access Token for the push

The scheduled-task sandbox needs to push over HTTPS. Use a fine-grained PAT.

1. Go to https://github.com/settings/personal-access-tokens/new
2. **Token name:** `asacyber-brief-push`
3. **Expiration:** 90 days (or your preference — rotate when it expires)
4. **Repository access:** *Only select repositories* → pick `asacyber-daily-briefs`
5. **Repository permissions:**
   - **Contents:** Read and write
   - **Metadata:** Read-only (auto)
6. Click **Generate token** and copy the `github_pat_…` string. You can't see it again.

---

## Step 3 — Fill in `.config/secrets.env`

Open `Daily/.config/secrets.env` and set:

```bash
# HTTPS push URL with the PAT embedded. Note the username is literally "x-access-token".
GITHUB_REMOTE="https://x-access-token:github_pat_YOURTOKEN@github.com/YOUR_USER/asacyber-daily-briefs.git"

# Optional but recommended:
GIT_AUTHOR_NAME="ASA Cyber Brief Bot"
GIT_AUTHOR_EMAIL="briefs@asacyber.local"
```

You can leave the `RESEND_*` entries in this file — they're no longer used by the sandbox, but it's fine to keep them as a record. The actual email send uses GitHub Secrets (next step).

---

## Step 4 — Add Resend credentials as GitHub repo Secrets

The GitHub Actions workflow reads `RESEND_API_KEY`, `RESEND_FROM`, and `RESEND_TO` from repo Secrets. They never live in the repo itself.

1. Open `https://github.com/YOUR_USER/asacyber-daily-briefs/settings/secrets/actions`
2. Click **New repository secret** three times:

| Name | Value |
|---|---|
| `RESEND_API_KEY` | your Resend API key (`re_…`) |
| `RESEND_FROM` | the verified sender, e.g. `Intel Brief <briefs@yourdomain.com>` |
| `RESEND_TO` | recipient address, e.g. `sidney.swan@asamanagementgroup.com` |

Use the exact same values that are currently in `.config/secrets.env`.

---

## Step 5 — First push from the sandbox

In a Cowork session, run:

```text
Run the daily-intel-brief scheduled task now
```

Or trigger the existing brief manually:

```bash
DAILY=$(ls -d /sessions/*/mnt/Daily 2>/dev/null | head -1)
bash "$DAILY/scripts/commit_brief.sh" "$DAILY/briefs/$(date +%Y-%m-%d)_daily_intel_brief.md"
```

Expected output ends with `[commit] pushed OK — GitHub Actions will send the email`.

---

## Step 6 — Verify the workflow ran

1. Go to `https://github.com/YOUR_USER/asacyber-daily-briefs/actions`
2. You should see a run titled **"Email daily intel brief"** within a minute of the push.
3. Click it → the `send-email` job → expand the **Send via Resend** step.
4. You should see `resend http 200: {...}`. Check the inbox.

---

## Troubleshooting

**`[commit] WARN: git push failed`** — most often the PAT is wrong, expired, or doesn't have Contents:Write on the right repo. Regenerate the PAT and update `GITHUB_REMOTE` in `secrets.env`.

**Workflow runs but Resend step fails with HTTP 401** — `RESEND_API_KEY` secret is wrong.

**Workflow runs but Resend step fails with HTTP 403 / "domain not verified"** — `RESEND_FROM` uses a domain you haven't verified at `resend.com/domains`. Either verify it or use Resend's `onboarding@resend.com` sender for testing.

**Workflow doesn't trigger at all on push** — confirm the file you pushed matches the path pattern `briefs/*.md` and that Actions are enabled for the repo (Settings → Actions → General → "Allow all actions and reusable workflows").

**Manual workflow trigger** — from the Actions tab → "Email daily intel brief" → "Run workflow" → optionally pass a `brief_path` like `briefs/2026-05-11_daily_intel_brief.md`. Useful for re-sending a past brief.

---

## What you can throw away after this works

Once you're confident the new pipeline is sending email reliably, you can delete `scripts/publish_brief.sh` — it's been replaced by `scripts/commit_brief.sh` + the workflow. Or keep it as a manual fallback for runs from a non-sandbox shell (it still works fine from your Mac directly).
