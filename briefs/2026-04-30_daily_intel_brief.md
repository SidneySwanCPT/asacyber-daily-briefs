# Daily Cybersecurity Intel Brief
**Date:** Thursday, April 30, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
Two more public bodies got hit hard this month: Pine Bluff School District (AR) lost $3.2M in a business email compromise wire-fraud, and INC Ransom is claiming a breach of Morgan County, GA — uncomfortably close to home for ASA Cyber's Tennille engagement. Meanwhile, MS-ISAC's federally-funded model has officially ended and CISA is steering SLTTs to a new direct-support track, which changes who councilmen call when something goes wrong. Voice-cloning fraud is no longer hypothetical — a federal trial in Mississippi this week is putting AI-generated school content in front of a jury for the first time.

---

## K-12 cybersecurity — what's hitting schools right now
- **Pine Bluff School District (AR) — $3.2M BEC loss.** Pine Bluff confirmed this week that attackers used a business email compromise to redirect a wire transfer; the district is "working to recover" the funds. This follows a $4.9M BEC against a North Dakota district in February — the same playbook (vendor-impersonation email → updated bank routing → wire goes out) is repeatedly clearing 7-figure amounts before anyone notices.
- **Spring Lake Park Schools (MN)** closed for two days during an alleged ransomware response, and **Alamo Heights ISD (TX)** had widespread internet outages tied to its own incident.
- **LA County Office of Education** is investigating possible exposure of teacher/admin tax documents after employees received fraudulent-tax-filing letters.
- **Navigate360 anonymous tip-line breach** (disclosed late April) is being described by long-time researchers as among the worst student-data exposures on record — districts using Navigate360's tip line should expect parent questions.
- **Council-relevant angle:** every one of these BEC losses was preventable with two controls a council can demand of the school board / city CFO — out-of-band callback verification on any vendor banking-detail change, and dual-approval for wires above a defined threshold. Neither costs money. Both would have stopped Pine Bluff.

## Local municipalities — what's hitting cities and counties

### Georgia / Southeast
- **Morgan County, GA** — INC Ransom posted an unverified claim on April 11 alleging access to county systems including sheriff, fire, transit, and resident services. The claim is not yet independently corroborated, but Morgan County is ~100 miles from Tennille and worth flagging to the city's IT contact. INC Ransom typically follows initial claims with sample data within 1–2 weeks if the victim doesn't engage.
- The Georgia court-filing organization warning (recent) and prior Fulton County / Coffee County incidents continue to make Georgia a recurring target. State-level reporting through the Georgia Technology Authority remains the right channel for Tennille if anything anomalous shows up.

### National
- The pattern this month is small-to-mid jurisdictions getting hit by ransomware affiliates that then demand ransoms calibrated to whatever the city's cyber-insurance limit is. Insurance carriers are tightening MFA and EDR requirements at renewal — councilmen reviewing FY26 budgets should expect premium and control-requirement increases.
- **Council-relevant angle:** ask your city manager / IT lead two questions this week — (1) "Do we have offline-tested backups for finance, utility billing, and public safety dispatch?" and (2) "If we lost email tomorrow, what's our 72-hour plan?" If either answer is fuzzy, that's the gap to fix.

## What's new — AI / deepfake threats relevant to councils and school boards
- A **federal trial in Corinth, Mississippi** is underway against a former middle-school teacher accused of using AI to generate deepfake content involving students. It's an early test case for how existing statutes (CSAM, harassment, identity) map onto AI-generated material — outcome will shape what local prosecutors elsewhere can charge.
- Voice-cloning fraud against public-sector finance has crossed from "demo" to "in the wild" — researchers are now describing voice clones from a few seconds of audio as crossing the "indistinguishable threshold." Council members and superintendents are high-value targets because their voices are publicly available in meeting recordings.
- **Council-relevant angle:** add a verbal challenge phrase to any phone-based wire approval. If the CFO gets a call that sounds like the mayor authorizing a transfer, "What's the code word?" is the cheapest fraud control available.

## Federal / policy items a councilman should be tracking
- **MS-ISAC federal funding has officially ended.** CISA's cooperative agreement with the Center for Internet Security has wound down; MS-ISAC is moving to fee-based membership, and CISA is providing direct support to SLTTs through grants, no-cost vulnerability scanning, phishing assessments, and regional cyber advisers. If your city or county was relying on free MS-ISAC services (Albert sensors, threat intel feeds), confirm continuity — the transition has caused gaps in some jurisdictions.
- **SLCGP (State and Local Cybersecurity Grant Program)** — FY25 disbursed ~$91.75M as the fourth and final year of the IIJA authorization. Reauthorization bills are in Congress; until passed, FY26 funding is uncertain. Get any in-flight project ledger-clean now in case timelines slip.
- **CISA regional cyber adviser** for Georgia is the right point of contact for Tennille going forward — that office is taking on what MS-ISAC used to handle for member jurisdictions.

---

## Three things to actually do this week
1. **Send a one-pager to City of Tennille and any K-12 client finance leads on BEC wire-fraud controls** — out-of-band callback verification on vendor banking changes, dual-approval over a threshold, and a verbal challenge phrase for phone-based approvals. Pine Bluff is the case study; the controls are free.
2. **Reach out to Morgan County's IT contact (or the GTA) to flag the INC Ransom claim** — not to alarm, but to offer ASA Cyber's read on indicators if they're not already plugged in. Useful goodwill in the region and a soft introduction to neighboring counties.
3. **Confirm post-MS-ISAC continuity for any SLTT clients.** Identify which CISA regional adviser covers Georgia, get the relationship started, and re-baseline what free services (vuln scanning, phishing assessments) clients are now eligible for through CISA directly.

---

## Sources
- [K-12 Cybersecurity Insider 4/20/2026 — K12 SIX](https://www.k12six.org/k12-cybersecurity-insider/20264-9-s23xt)
- [K-12 Cyber Incident Map — K12 SIX](https://www.k12six.org/map)
- [Pine Bluff School District loses $3.2M in wire transfer scam — NWA Democrat-Gazette](https://www.nwaonline.com/news/2026/apr/29/pine-bluff-school-district-loses-32-million-in/)
- [Pine Bluff School District hit by $3.2M cyber scam — 5NewsOnline](https://www.5newsonline.com/article/news/local/pine-bluff-school-district-32m-cyber-scam/91-ef0e68df-621d-40cc-804e-80d947b23591)
- [The $3.2M Phishing Lesson: BEC Prevention for Schools — PC Matic](https://www.pcmatic.com/blog/pine-bluff-phishing-bec-prevention/)
- [North Dakota School District Loses $4.9M to Email Scam — GovTech](https://www.govtech.com/education/k-12/north-dakota-school-district-loses-4-9m-to-email-scam)
- [Morgan County GA Ransomware Claim by INC Ransom (April 2026) — Yazoul](https://www.yazoul.net/intel/claim/2026-04-12-morgan-county-ga-ransomware-claim-by-inc-ransom-april-2026/)
- [Georgia court filing organization warns of outages after ransomware allegations — The Record](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [Georgia Cybersecurity Incidents — Georgia Technology Authority](https://gta.georgia.gov/contact-us/cybersecurity-incidents)
- [Corinth deepfake trial highlights challenges in regulating AI-generated content — WDAM](https://www.wdam.com/2026/04/29/corinth-deepfake-trial-highlights-challenges-regulating-ai-generated-content/)
- [2026 will be the year you get fooled by a deepfake — Fortune](https://fortune.com/2025/12/27/2026-deepfakes-outlook-forecast/)
- [The "Deepfake CEO" Scam: Why Voice Cloning is the Next Cyber Threat — Online Computers](https://onlinecomputers.com/2026/02/voice-cloning-deepfake/)
- [CISA confirms it's ending MS-ISAC support — StateScoop](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Federal Government Acknowledges End of MS-ISAC Support — GovTech](https://www.govtech.com/security/federal-government-acknowledges-end-of-ms-isac-support)
- [CISA Provides Direct Cyber Support to State and Local Governments as MS-ISAC Agreement Ends — HSToday](https://www.hstoday.us/subject-matter-areas/cybersecurity/cisa-provides-direct-cyber-support-to-state-and-local-governments-with-additional-funding-and-tools/)
- [State and Local Cybersecurity Grant Program — CISA](https://www.cisa.gov/cybergrants/slcgp)
- [Congress Considers Bills to Reauthorize SLCGP — National Association of Counties](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program)
