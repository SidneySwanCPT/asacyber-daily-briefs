# Daily Cybersecurity Intel Brief
**Date:** Monday, May 11, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The Canvas/Instructure breach is now the largest education-sector incident on record — roughly 8,800 schools and universities and 275M individuals' data in ShinyHunters' hands, with a ransom deadline tomorrow (May 12). Georgia districts are confirmed in the affected list, which means Tennille-area schools and any city portal that federated to Canvas-tied logins need to review exposure today. On the municipal side, ransomware against U.S. cities continues to climb (Suffolk VA attempted intrusion, Hart MI claimed on a leak site, plus a payment-platform outage rippling into city billing systems), and the MS-ISAC federal cooperative agreement remains expired — local governments are now responsible for filling that intelligence gap themselves.

---

## K-12 cybersecurity — what's hitting schools right now

- **Canvas / Instructure mega-breach (national; Georgia districts included)** — ShinyHunters claims 275M records across ~8,809 institutions, with school districts in California, Florida, **Georgia**, Oklahoma, Oregon, Nevada, North Carolina, Tennessee, Utah, Virginia, Texas and Wisconsin among the named. After Instructure initially said it was contained, the group re-defaced login pages on May 7 and gave a May 12 ransom deadline. Exposed fields include names, emails, student IDs, and private messages.
- **Princeton Public Schools (NJ) — $178K BEC wire fraud** — three vendor payments tied to a construction project diverted via business-email-compromise; discovered ~15 months later when the vendor flagged missing funds. Classic finance-office failure mode: no out-of-band confirmation on changed banking details.
- **Johnson County Schools (TN) — $3M BEC** — same playbook, larger loss; scammers impersonated a known vendor and convinced finance to update payment routing.

**Trend:** the threat split is widening — credential/data exfiltration via SaaS supply chain (Canvas, PowerSchool last year) on one side, finance-office BEC on the other. Both bypass perimeter defenses.

**Council-relevant angle:** if your district board or city contracts with school-adjacent SaaS (LMS, SIS, transportation, food service), ask the superintendent today whether their data was in the ShinyHunters drop and whether parent/student notification has gone out.

---

## Local municipalities — what's hitting cities and counties

- **Suffolk, VA** — attempted ransomware deployment after intruders gained network access; flagged by a federal alert before encryption ran. Good outcome, but only because someone external caught it.
- **Hart, MI** — Genesis ransomware group claims 300 GB exfiltrated, listed on its leak site.
- **Gimli (Manitoba, Canada)** — rural municipality systems hit; outside scope but instructive — rural targets are explicitly in the threat actors' rotation now.
- **BridgePay outage** — payments platform serving multiple city governments hit by ransomware; residents in affected cities pushed back to drop boxes and kiosks for utility/tax payments. Reminder that vendor risk = your risk.

### Georgia-specific (relevant to City of Tennille)
- No new Georgia municipal ransomware disclosure in the last 48 hours, but the November 2025 **Georgia Superior Court Clerks' Cooperative Authority** incident is still rippling — civil and real-estate filings statewide were knocked offline, and remediation is ongoing. Tennille's clerk's office should confirm any GSCCCA-dependent workflows have a documented offline fallback.
- **Ogeechee Judicial Circuit district** earlier disruption remains a relevant reference for any south/central Georgia municipality on a shared service.

**Council-relevant angle:** the consistent pattern in 2026 attacks is third-party/vendor compromise, not direct network breaches. The questions a councilman should be asking aren't "is our firewall good" — they're "who has access to our systems, who processes our payments, and what happens if they go dark for a week."

---

## What's new — AI / deepfake threats relevant to councils and school boards

- Voice cloning has formally crossed what researchers call the "indistinguishable threshold" — Microsoft VALL-E 2 and OpenAI's Voice Engine generate convincing clones from ~3 seconds of reference audio. 1 in 4 Americans reports receiving an AI deepfake voice call in the past year.
- Vishing (voice phishing) attacks rose **442% in 2025**, driven almost entirely by AI tooling.
- A deepfake political ad cloning Sen. Jon Ossoff (GA) circulated this year — direct in-state precedent for what a hostile mayoral or council race could look like.
- Federal response: Senate bill **S.3982 (AI Fraud Accountability Act of 2026)** would criminalize digital impersonation in interstate communications.

**Council-relevant angle:** the realistic attack on a city this year isn't a sophisticated APT — it's a cloned voice of the mayor or finance director calling the city clerk on a Friday afternoon to authorize a wire. Establish a verbal codeword / callback policy for any financial instruction over the phone before this happens, not after.

---

## Federal / policy items a councilman should be tracking

- **MS-ISAC federal funding ended Sept 30, 2025** and has not been restored. CISA is pivoting to a "direct support" model, but the practical effect is that many SLT governments lost free advisory feeds, weekly malicious domain reports, and incident response triage. Confirm whether your county/city is still receiving threat advisories and from whom.
- **SLCGP** — the program is set to expire **January 30, 2026** (already past), but the House passed the **PILLAR Act** by voice vote to reauthorize through 2033; Senate action pending. States including Washington are opening new application rounds this month. FY25 made $91.75M available; rural set-aside is 25% — Tennille qualifies.
- **All FY25 applicants** had to resubmit their approved Cybersecurity Plan by Jan 30, 2026. Worth confirming this was done by whichever entity holds the plan for our jurisdiction.

---

## Three things to actually do this week
1. **Get a yes/no on Canvas exposure from the local school superintendent** — by Wednesday, before the May 12 ransom deadline triggers a data drop. If the answer is "we don't know," that's your finding.
2. **Walk the city clerk through a 5-minute deepfake call drill** — pick a codeword, document the callback policy, post it next to the finance phone. Costs nothing, blocks the most likely 2026 attack on a small city.
3. **Verify Tennille's SLCGP plan resubmission status and grant pipeline** — confirm with the state administrator (GTA) that we're still in good standing for FY26 funds, especially the 25% rural set-aside. If we're not in line, fix it this week.

---

## Sources
- [Canvas hack: What we know about apparent cyberattack that impacted thousands of schools (CNN)](https://www.cnn.com/2026/05/07/us/canvas-hack-strands-college-students-finals-week)
- [What to Know About the Canvas Cyberattack That's Affected Thousands of Schools (TIME)](https://time.com/article/2026/05/08/canvas-cyber-attack-shinyhunters-hack-what-to-know/)
- [ShinyHunters escalates Canvas attacks with school login defacements (Malwarebytes)](https://www.malwarebytes.com/blog/news/2026/05/shinyhunters-escalates-canvas-attacks-with-school-login-defacements)
- [Hackers deface school login pages after claiming another Instructure hack (TechCrunch)](https://techcrunch.com/2026/05/07/hackers-deface-school-login-pages-after-claiming-another-instructure-hack/)
- [2026 Canvas security incident (Wikipedia)](https://en.wikipedia.org/wiki/2026_Canvas_security_incident)
- [Several San Diego school campuses impacted by cyberattack on Canvas (NBC San Diego)](https://www.nbcsandiego.com/news/local/san-diego-campuses-impacted-cyberattack-on-canvas-learning-management-system/4021055/)
- [The $3.2M Phishing Lesson: BEC Prevention for Schools (PC Matic)](https://www.pcmatic.com/blog/pine-bluff-phishing-bec-prevention/)
- [US school districts lose millions in email scams (Eftsure)](https://www.eftsure.com/blog/cyber-crime/us-school-districts-lose-millions-in-email-scams/)
- [K12 SIX — News](https://www.k12six.org/all-news)
- [Georgia court filing organization warns of outages after ransomware allegations (The Record)](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [Government offices in North Carolina, Georgia disrupted by cyberattacks (The Record)](https://therecord.media/thomasville-nc-government-ogeechee-ga-district-cyberattacks)
- [April 2026 Data Breaches: 15+ Major Incidents (SharkStriker)](https://sharkstriker.com/blog/april-2026-data-breaches/)
- [State Of Ransomware 2026 (BlackFog)](https://www.blackfog.com/the-state-of-ransomware-2026/)
- [2026 will be the year you get fooled by a deepfake (Fortune)](https://fortune.com/2025/12/27/2026-deepfakes-outlook-forecast/)
- [The AI Voice Scam Epidemic — 1 in 4 Americans Fooled by Deepfakes](https://www.unboxfuture.com/2026/03/the-ai-voice-scam-epidemic-Fooled-by-Deepfakes.html?m=1)
- [AI voice fraud draws new congressional scrutiny (Biometric Update)](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [CISA confirms it's ending MS-ISAC support (StateScoop)](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Federal cuts force many state and local governments out of cyber collaboration group (Cybersecurity Dive)](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [Congress Considers Bills to Reauthorize State and Local Cybersecurity Grant Program (NACo)](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program)
- [State and Local Cybersecurity Grant Program (CISA)](https://www.cisa.gov/cybergrants/slcgp)
