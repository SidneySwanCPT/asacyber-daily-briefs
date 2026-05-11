# Daily Cybersecurity Intel Brief
**Date:** Friday, May 1, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The Navigate360 anonymous tip-line breach is being called the worst student-data exposure in two decades — sensitive abuse and assault reports are being sold on criminal forums, and exposure is national. Two more districts (Spring Lake Park, MN and Alamo Heights ISD, TX) closed or lost connectivity this week to ransomware, while the second wave of PowerSchool extortion threats is hitting districts that thought last December's incident was behind them. On the municipal side, Winona County (MN) is the latest local government taken offline, and CISA/FBI/MS-ISAC just refreshed their LockBit advisory — meanwhile MS-ISAC has officially moved to a paid model now that federal funding was cut, which directly changes the math for small Georgia cities like Tennille.

---

## K-12 cybersecurity — what's hitting schools right now

- **Navigate360 anonymous tip-line breach (national).** K12 SIX Director Doug Levin is publicly calling this potentially the worst student-data breach he's seen in 20+ years. The leaked dataset is full of references to abuse and assault — the exact kind of content that ends up in tip-line submissions — and the files are still being sold on criminal forums nearly a month after disclosure. Any district using Navigate360 should already be talking to families.
- **Spring Lake Park Schools (MN)** closed for two days responding to an alleged ransomware incident.
- **Alamo Heights ISD (TX)** has had widespread internet outages while recovering from its own alleged ransomware incident.
- **PowerSchool follow-on extortion (national).** Districts hit in the December 2025 PowerSchool breach are now getting direct extortion demands from criminals who bought or stole the data after PowerSchool paid the original ransom. This is the textbook "paying once doesn't end it" outcome.
- **LA County Office of Education** is investigating fraudulent tax filings made in the names of teachers and administrators — a sign attackers are monetizing earlier HR data exposures.
- **BEC continues to drain district treasuries.** Dickinson Public Schools (ND) lost ~$4.92M in a vendor-impersonation wire fraud; Riverside USD (CA) lost over $900K to the same playbook; the Kansas Bureau of Investigation is working a multi-district BEC case.

**Council-relevant angle:** Wake County's school finance office and any district using Navigate360 or PowerSchool deserve a board-level question this month: have we changed wire-transfer verification procedures and notified affected families? The BEC pattern (vendor impersonation + payment redirect) is the single highest-dollar threat to school districts right now and it does not require a sophisticated attacker.

## Local municipalities — what's hitting cities and counties

- **Winona County, MN.** Ransomware discovered Monday, April 6. 911 was unaffected, but motor vehicle services and vital statistics were still down at the end of the week. This is Winona County's *second* cyber incident of 2026 — the recurrence pattern is the story.
- **St. Paul, MN** has been bringing systems back online after its own cyber incident.
- **BridgePay Network Solutions.** The payment-gateway provider used by many municipalities and utilities was hit by ransomware earlier this year, causing electronic-payment outages across multiple states. Worth asking: does the city or any utility serving constituents route through BridgePay or a similar shared processor?
- **ITIF report (April 27, 2026)** on improving state and local government cybersecurity is fresh and worth skimming if you're in any council conversation about the IT budget.

### Georgia / Southeast watch
- **Georgia Superior Court Clerks' Cooperative Authority** went offline late last year after a "credible and ongoing cybersecurity threat." The org runs real-estate and civil court filings statewide — the recovery and lessons-learned story is still unfolding and is directly relevant to any Georgia city clerk.
- **Cobb County (GA)** confirmed a 2025 incident with personal data of 10 individuals (including 3 county employees) exposed.
- **Tennille / small-city implication:** small Georgia municipalities sit downstream of state systems (voter registration, court filings, tax) that have all been hit in the last 24 months. Tabletop the question: if the state system you depend on goes dark for a week, what services stop?

**Council-relevant angle:** Winona's *second* incident in one year is the warning shot. Ransomware groups absolutely re-target governments that paid, recovered weakly, or never closed the original gap. If your city has had any incident in the last 18 months — including near-misses — assume you're on a list.

## What's new — AI / deepfake threats relevant to councils and school boards

- **FBI warning is active** on AI-powered campaigns combining smishing and voice-cloned vishing impersonating "high-ranking officials." This is the playbook to brief a superintendent or city manager on this month.
- **Less than 3 seconds of audio** is now enough to clone a voice convincingly. Any official whose voice is on YouTube, a podcast, or a recorded council meeting is a viable target.
- **77% of victims who engage** with an AI scam call lose money, per industry reporting. The conversion rate is brutal because the cloned voice removes the friction that a written phishing email creates.
- **Senate bill S.3982 (AI Fraud Accountability Act of 2026)** would create a federal criminal prohibition on "digital impersonation" used to defraud. Worth tracking if you weigh in on policy locally.

**Council-relevant angle:** Pair this with the school-district BEC pattern above — the attacker who already has a vendor's email pattern can now also call the finance director with the superintendent's cloned voice to "approve" the transfer. The verification-call defense most districts trained on three years ago is now broken. Codeword/callback-to-known-number procedures are the practical fix.

## Federal / policy items a councilman should be tracking

- **MS-ISAC funding cut → paid membership model.** CISA confirmed it is ending its underwriting of MS-ISAC; the Center for Internet Security has moved MS-ISAC to a paid-membership structure. Free-tier services that small Georgia cities have leaned on (24/7 SOC monitoring, threat advisories, malicious-domain feeds) now cost money. Get the new pricing in front of your IT and finance teams before the next budget cycle.
- **CISA/FBI/MS-ISAC LockBit advisory refreshed (April 2026)** with new TTPs and IOCs from incidents seen this month. Share with your IT/MSP — it's free even if MS-ISAC isn't anymore.
- **SLCGP Year 4 (final IIJA year).** $91.75M total available for FY25; states had to resubmit cybersecurity plans by Jan 30, 2026; Washington state's next round opens this month and other states are on similar timelines. Congress is debating reauthorization (NACo is tracking) — without it, this funding source ends after this cycle. If your city or any districts you oversee haven't applied through the state pass-through, this is the last call.

---

## Three things to actually do this week

1. **Issue a one-page memo on AI voice-cloning to the city manager / superintendent / finance director** — define a callback verification protocol (call back to a known number, not a number provided in the request) and a per-organization codeword for any wire-transfer or password-reset request that arrives by phone. The 3-second-of-audio threshold makes this urgent.
2. **Confirm MS-ISAC status and price** — find out which of your client orgs (Tennille, any districts) were getting MS-ISAC services for free, get the new paid-tier pricing, and decide what to keep before contracts lapse. Build a one-line budget item now rather than scrambling mid-year.
3. **Ask whether anyone you advise uses Navigate360 or PowerSchool** — and if yes, document what notice has gone to families, what credentials have been rotated, and whether the district has a written response to the second-wave extortion threats. This is the kind of board-level question that gets attention, and the answer tells you a lot about the district's overall posture.

---

## Sources
- [K-12 Cybersecurity Insider — 4/20/2026 edition (K12 SIX)](https://www.k12six.org/k12-cybersecurity-insider/20264-9-s23xt)
- [K-12 Cyber Incident Map (K12 SIX)](https://www.k12six.org/map)
- [PowerSchool Paid a Hacker's Ransom. Now Cyber Criminals Are Threatening Schools (EdWeek)](https://www.edweek.org/technology/powerschool-paid-a-hackers-ransom-now-cyber-criminals-are-threatening-schools/2025/05)
- [North Dakota school district loses nearly $5 million in sophisticated email scam (Valley News Live)](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [US school districts lose millions in email scams (Eftsure)](https://www.eftsure.com/blog/cyber-crime/us-school-districts-lose-millions-in-email-scams/)
- [Winona County cyberattack is part of a trend as local governments are increasingly targeted (MPR News)](https://www.mprnews.org/story/2026/04/09/winona-county-cyberattack-is-part-of-a-trend-as-local-governments-are-increasingly-targeted)
- [MN's Winona County details second cyber attack of 2026 (Star Tribune)](https://www.startribune.com/winona-county-cyberattack-ransomware/601664290)
- [St. Paul, Minn., Systems Come Back Online After Cyber Attack (GovTech)](https://www.govtech.com/security/st-paul-minn-systems-come-back-online-after-cyber-attack)
- [Improving State and Local Government Cybersecurity (ITIF, Apr 27, 2026)](https://itif.org/publications/2026/04/27/improving-state-local-government-cybersecurity/)
- [Georgia court filing organization warns of outages after ransomware allegations (The Record)](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [In Cybersecurity Incidents (Georgia Technology Authority)](https://gta.georgia.gov/contact-us/cybersecurity-incidents)
- [CISA confirms it's ending MS-ISAC support (StateScoop)](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [US Cuts Federal Funding for MS-ISAC Cybersecurity Program (Infosecurity Magazine)](https://www.infosecurity-magazine.com/news/us-cuts-funding-ms-isac/)
- [CISA, FBI, MS-ISAC Issue LockBit 3.0 Ransomware Advisory (GovTech)](https://www.govtech.com/security/cisa-fbi-ms-isac-issue-lockbit-3-0-ransomware-advisory)
- [State and Local Cybersecurity Grant Program (CISA)](https://www.cisa.gov/cybergrants/slcgp)
- [Congress Considers Bills to Reauthorize SLCGP (NACo)](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program)
- [FBI Warning: AI Voice Phishing — How To Spot And Stop The Threat (BlackFog)](https://www.blackfog.com/fbi-warning-ai-voice-phishing-how-to-stop-threat/)
- [AI voice fraud draws new congressional scrutiny (Biometric Update)](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [The "Deepfake CEO" Scam: Why Voice Cloning is the Next Cyber Threat (Online Computers)](https://onlinecomputers.com/2026/02/voice-cloning-deepfake/)
