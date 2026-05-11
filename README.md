# ASA Cyber — Daily Intel Brief

Automated daily cybersecurity intelligence briefing for K-12 education and local
municipalities. Runs every morning at 9:02 AM via a scheduled task; the brief is
emailed (full content formatted inline, no attachment) and archived in this
repository.

## What happens each morning

1. The scheduled task searches current cybersecurity news (K-12, local government, federal advisories, AI/deepfake threats relevant to councils).
2. It writes a markdown brief to `briefs/YYYY-MM-DD_daily_intel_brief.md`.
3. `scripts/publish_brief.sh` renders that markdown as styled HTML, sends it as the email body via Resend (no attachments — read the whole brief inline on phone or desktop), and commits the markdown to this GitHub repo.

## One-time setup

### 1. Fill in your secrets

```bash
cp .config/secrets.env.template .config/secrets.env
$EDITOR .config/secrets.env
```

Required keys:

- **`RESEND_API_KEY`** — get one at <https://resend.com/api-keys>.
- **`RESEND_FROM`** — `onboarding@resend.dev` works in test mode (only delivers to your Resend account email). For production, verify a domain at <https://resend.com/domains> and use `Display Name <briefs@yourdomain.com>`.
- **`RESEND_TO`** — already set to `sidney.swan@asamanagementgroup.com`.
- **`GITHUB_REMOTE`** *(optional)* — leave blank to skip git archiving. Otherwise see template comments for HTTPS+PAT vs SSH formats.

### 2. (Optional) Create the GitHub archive repo

On <https://github.com/new>:
- Name: `asacyber-daily-briefs`
- Visibility: **Private**
- Do **not** initialize with README/license (this folder will become the initial commit).

Then set `GITHUB_REMOTE` in `.config/secrets.env`. The first run will `git init`, add the remote, and push.

For HTTPS auth, generate a classic PAT at <https://github.com/settings/tokens> with the `repo` scope and embed it:
```
GITHUB_REMOTE=https://USERNAME:ghp_xxxx@github.com/USERNAME/asacyber-daily-briefs.git
```

### 3. Test the pipeline manually

```bash
cd /Users/main/Documents/ASACyber/Consulting/Daily
scripts/publish_brief.sh briefs/2026-04-29_daily_intel_brief.md
```

You should see PDF generation, an email send confirmation, and (if configured) a GitHub push.

## Folder layout

```
Daily/
├── README.md                      ← this file
├── .gitignore                     ← keeps secrets out of git
├── .config/
│   ├── secrets.env.template       ← committed (no real keys)
│   └── secrets.env                ← gitignored (your real keys)
├── briefs/
│   └── YYYY-MM-DD_daily_intel_brief.{md,pdf}
└── scripts/
    └── publish_brief.sh           ← PDF + email + git in one command
```

## Changing the schedule or content

The scheduled task lives at `/Users/main/Documents/Claude/Scheduled/daily-intel-brief/SKILL.md`. Edit it to change the focus areas, format, or cadence. Schedule itself (`0 9 * * *`) is managed via the scheduled-tasks tooling.

## Troubleshooting

- **Email didn't arrive (test mode):** Resend's `onboarding@resend.dev` sender only delivers to the email address tied to your Resend account. Either log in to Resend with `sidney.swan@asamanagementgroup.com`, or verify a domain.
- **HTML rendered weirdly in email:** The script uses inline CSS plus a `<style>` tag inside `<body>` — works in Gmail, Apple Mail, Outlook web. If your client strips styles, the brief is still readable as semantic HTML.
- **`git push failed`:** Verify your PAT scope is `repo` and hasn't expired. If using SSH, confirm `ssh -T git@github.com` works.
