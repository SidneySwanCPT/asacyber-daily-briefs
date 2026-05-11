---
name: daily-intel-brief
description: Latest Cybersecurity News
---

# Daily Cybersecurity Intel Brief

Generate today's cybersecurity intelligence brief for Sidney — a councilman who also runs ASA Cyber Consulting. The brief is then emailed (full content inline, nicely formatted) and committed to a GitHub archive automatically.

## Step 1 — Research

Run several WebSearch queries in parallel to gather fresh (last ~48h preferred, last 2 weeks acceptable) intelligence in these focus areas:

1. **K-12 cybersecurity** — recent breach disclosures, ransomware against districts, BEC/wire-fraud incidents in school finance offices, K12 SIX advisories.
2. **Local municipalities** — city/county ransomware, service outages, state-and-local government attacks. Pay special attention to Georgia (the City of Tennille is a current ASA Cyber client) and the broader Southeast.
3. **Federal / policy items affecting councilmen** — CISA advisories relevant to SLT, MS-ISAC alerts, State and Local Cybersecurity Grant Program (SLCGP) news, election infrastructure (EI-ISAC) when timely.
4. **AI / deepfake threats relevant to elected officials** — voice cloning of city officials or superintendents, deepfake political ads, AI-driven phishing affecting public-sector finance.
5. **Sports technology — IT/cyber angle ONLY** — emerging technology used by sports-tech companies and organizations (Hudl, 247Sports, Genius Sports, Catapult, Sportradar, Stats Perform, Whoop, ShotTracker, Second Spectrum, league/team IT operations, NIL platforms, sports betting / fantasy platforms). Also cybersecurity incidents affecting sports organizations (teams, leagues, governing bodies, broadcasters, ticketing). Cover ALL sports — pro, college, amateur. **Strictly exclude** scores, standings, game results, trade rumors, draft picks, injury reports, player news, or anything not IT/cyber adjacent. If a search returns only general sports news, omit the section rather than including it.

If a search produces nothing new for an area, omit that section rather than padding.

## Step 2 — Write the brief

Save the brief as markdown to `/Users/main/Documents/ASACyber/Consulting/Daily/briefs/YYYY-MM-DD_daily_intel_brief.md` (use today's date from the env or `date +%Y-%m-%d`).

Required structure (these section headers are parsed by the publish script — don't rename them):

```
# Daily Cybersecurity Intel Brief
**Date:** [Day, Month D, YYYY]  
**Focus areas:** K-12 education, local municipalities, council-level decisions, sports technology

---

## TL;DR — At a glance
[4–7 structured fact cards, one per story. Each card uses these six labeled fields, in this exact order, each on its own line. Leave a blank line between cards so they render as separate visual blocks.

Field rules:
- **Topic:** the headline / what kind of incident or item it is.
- **Threat Actor:** named group if attributed (e.g. "ShinyHunters", "LockBit"); otherwise "Unknown / unattributed", or "N/A (policy item)" for non-incident stories.
- **Critical Infrastructure Sector:** map to CISA's 16 sectors (e.g. "Education / K-12", "Government Facilities (SLTT)", "Financial Services", "Information Technology"). Use multiple if cross-sector.
- **Locations Impacted:** geography — city/state, multi-state, nationwide, or global as applicable.
- **TL;DR Details:** one or two tight sentences with the most important facts (numbers, dates, scope, status).
- **Source:** a single inline [Source Title](URL) link.]

Render the **Topic** line as a level-4 markdown heading (`#### Topic: ...`) so it renders larger and bolder than the supporting fields. Render the other five fields with bold inline labels and trailing-double-space line breaks so they group as one paragraph block.

#### Topic: [headline]
**Threat Actor:** [named group or Unknown / unattributed or N/A]  
**Critical Infrastructure Sector:** [CISA sector]  
**Locations Impacted:** [geography]  
**TL;DR Details:** [1–2 tight sentences]  
**Source:** [Source Title](URL)

#### Topic: [headline]
**Threat Actor:** [...]  
**Critical Infrastructure Sector:** [...]  
**Locations Impacted:** [...]  
**TL;DR Details:** [...]  
**Source:** [Source Title](URL)

---

## Top-line takeaways
[Split into 2–4 mini-blurbs. Each blurb gets its own ### subheader written as an "eye-catching title" (short, declarative, opinionated where appropriate — e.g. "Canvas Breach Goes Nuclear", "Ransomware Keeps Mauling Small Cities", "The Funding Floor Is Shifting"). Under each subheader, 2–3 sentences of context — the "why does this matter" version of the TL;DR bullet. No source links in this section — they belong in TL;DR and in the detailed sections below.]

### [Eye-catching title 1]
[2–3 sentences expanding on the takeaway.]

### [Eye-catching title 2]
[2–3 sentences expanding on the takeaway.]

### [Eye-catching title 3]
[2–3 sentences expanding on the takeaway.]

---

## K-12 cybersecurity — what's hitting schools right now
[Bullet specific incidents with district name + state, then 1-2 sentences on the broader trend. Always include a "council-relevant angle" sentence at the end. Use inline source links throughout.]

## Local municipalities — what's hitting cities and counties
[Same pattern. Include a Georgia-specific subsection when there's relevant material.]

## What's new — AI / deepfake threats relevant to councils and school boards
[Include only when there's fresh material this week.]

## Sports technology — IT/cyber developments worth tracking
[IT/cyber stories from the sports-tech world only. Bullet specific incidents, product launches, or platform breaches with the org or company name. Cover all sports (pro, college, amateur). Always include a "why-it-matters" note that connects back to public-sector / council relevance when there is one (e.g., a Hudl breach affects local high-school athletics; a ticketing platform attack is a model for any city-run venue). DO NOT include game results, scores, standings, trades, draft news, injuries, or general sports headlines. Omit this section entirely on days no IT/cyber-relevant sports-tech material surfaces.]

## Federal / policy items a councilman should be tracking
[CISA, MS-ISAC, SLCGP, election security as relevant.]

---

## Three things to actually do this week
1. **[concrete action]** — [why]
2. **[concrete action]** — [why]
3. **[concrete action]** — [why]

---

## Sources
- [Title](URL)
- [Title](URL)
...
```

Tone: punchy, scannable, councilman-relevant. Avoid vendor marketing language. Always cite sources with markdown hyperlinks. The TL;DR section is the most important — it's what gets read on a phone in a hallway.

## Step 3 — Publish (commit to GitHub; email fires from GitHub Actions)

After saving the markdown, run the commit script. It pushes the brief to the configured GitHub repo; a GitHub Actions workflow (`.github/workflows/email-brief.yml`) then renders the brief and sends the email via Resend from GitHub's runners. Resend is unreachable from the scheduled-task sandbox, so the email step has been moved off the sandbox on purpose.

```bash
DAILY=$(ls -d /sessions/*/mnt/Daily 2>/dev/null | head -1)
bash "$DAILY/scripts/commit_brief.sh" "$DAILY/briefs/$(date +%Y-%m-%d)_daily_intel_brief.md"
```

The script:
- Loads `.config/secrets.env` for `GITHUB_REMOTE` and author identity.
- Stages and commits the new brief (plus any updated scripts/workflow files).
- Pushes to `origin/main`.

If the script exits non-zero, report exactly what failed (missing secrets file, empty `GITHUB_REMOTE`, push rejected, etc.) and stop — don't swallow it. If `.config/secrets.env` is missing or `GITHUB_REMOTE` is empty, point the user at `Daily/SETUP_GITHUB_ACTIONS.md` for the one-time setup.

## Step 4 — Final report

Conclude the run with a short status line:
- ✓ brief written, pushed to GitHub (GitHub Actions will send the email)
- Or ⚠ + which step failed and why.

Do not ask clarifying questions during a scheduled run — make sensible defaults and note them in the brief.
