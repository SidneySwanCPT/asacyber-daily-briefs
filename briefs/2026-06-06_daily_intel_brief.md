# Daily Cybersecurity Intel Brief
**Date:** Saturday, June 6, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
Wire-fraud (BEC) is the loudest threat to public-sector finance offices right now — two school districts lost a combined ~$8M in fraudulent vendor wire transfers, and the pattern (compromised email + spoofed "trusted contractor" payment change) maps directly onto how small cities and counties pay their own vendors. Georgia stayed in the headlines: Murray County closed offices and suspended tag/property-tax services after a cyberattack, and Augusta worked through a ransomware disruption. CISA pushed several actively-exploited CVEs into the KEV catalog this week with near-term patch deadlines, and the FBI's warning on AI voice-cloning of senior officials is now squarely a municipal/school-board problem, not just a federal one.

---

## K-12 cybersecurity — what's hitting schools right now
- **Dickinson Public Schools (North Dakota)** lost nearly **$4.92M** to a business email compromise scheme that redirected vendor payments to criminals impersonating a trusted contractor.
- **Pine Bluff School District (Arkansas)** processed a fraudulent **$3.2M** wire after an employee email account was compromised and an attacker posed as a legitimate construction vendor; the fraud was caught only when finance called the vendor to confirm.
- **Education-sector mega-breach (May 2026):** attackers claimed personal data tied to the Instructure/Canvas ecosystem affecting hundreds of millions of student/education records — a reminder that third-party ed-tech platforms are now the soft underbelly of district data security.
- **Lexington-Richland District Five (SC)** remains the cautionary tale on the litigation tail: a 2025 ransomware hit (1TB+ exfiltrated, ~31,000 people) has since drawn a class-action suit alleging failure to protect student/employee data.

**Broader trend:** raw ransomware counts against schools have plateaued, but the financial-fraud vector (BEC/wire fraud) is climbing and is far cheaper for attackers than encryption. **Council-relevant angle:** the same vendor-payment workflow that burned these districts exists in every city finance office — any change to vendor banking details should require out-of-band (phone-to-known-number) verification before a payment is released.

## Local municipalities — what's hitting cities and counties
- **Wichita, Kansas:** a ransomware attack (late May 2026) knocked out water/sewer and court payment portals, airport flight-info screens, public Wi-Fi, and phone lines across multiple departments. The city suspended water shutoffs for nonpayment during the outage — a smart continuity-of-services move worth copying.
- Municipalities across several states continue to report service-limiting cyberattacks, with payment portals and phone systems being the most visible casualties.

### Georgia (ASA Cyber client region — City of Tennille)
- **Murray County, GA** closed several government offices and suspended services after a cyberattack hit county systems — the **Tax Commissioner's Office and Probate Court** were affected, leaving residents unable to do vehicle tag renewals or property-tax transactions. No group has claimed responsibility and the county hasn't disclosed whether data was taken.
- **Augusta, GA** worked through a ransomware-driven disruption to city systems in June.

**Council-relevant angle:** small Georgia jurisdictions like Tennille share the exact profile being hit — lean IT, county-shared services, and resident-facing payment/tag/court portals. The highest-value, lowest-cost moves are offline backups tested for restore, MFA on every email and remote-access account, and a one-page "systems down" continuity plan so essential services (and resident communications) don't stop when the network does.

## What's new — AI / deepfake threats relevant to councils and school boards
- The **FBI's PSA on AI voice-cloning of senior officials** (impersonating current/former government officials to harvest credentials and hijack accounts) now applies down-ballot: a few seconds of public audio — a council meeting recording, a superintendent's posted video — is enough to clone a convincing voice.
- 2026 reporting indicates AI-generated voice has crossed the "indistinguishable" threshold for the average listener, and voice-cloning is being described as "the new BEC" — attackers call a finance clerk *as* the mayor or superintendent to authorize an urgent payment.

**Council-relevant angle:** adopt a verbal code-word or callback protocol for any payment or sensitive request that arrives by phone/voicemail, and tell staff explicitly that a familiar voice is no longer proof of identity.

## Federal / policy items a councilman should be tracking
- **CISA KEV additions (this week):** CISA added actively-exploited vulnerabilities to the Known Exploited Vulnerabilities catalog on June 2–3, including an Android Framework zero-day (**CVE-2025-48595**) and a Linux kernel cgroups privilege-escalation (**CVE-2022-0492**), with remediation deadlines in early June. While the binding deadline is federal, CISA urges all organizations — including local governments — to patch on the same timeline.
- **SLCGP funding pressure:** the State and Local Cybersecurity Grant Program dropped from ~$279.9M (FY24) to ~$91.7M (FY25). Entities with a CISA-approved Cybersecurity Plan had to resubmit it by Jan 30, 2026 to stay eligible. With less money in the pool, competition is tighter — worth confirming Georgia's state administrator status and any FY26 sub-award windows.
- **MS-ISAC** continues its monthly Whole-of-State/SLCGP forum — a free peer-learning channel any Georgia jurisdiction can plug into.

---

## Three things to actually do this week
1. **Lock down vendor-payment changes** — institute a mandatory out-of-band callback (to a previously-known number, never the one on the new invoice) before any change to vendor banking details or any wire is released. This single control would have stopped the Dickinson and Pine Bluff losses.
2. **Confirm offline, tested backups for Tennille / client jurisdictions** — Murray County and Wichita show the damage lands on resident-facing services (tags, court, water, payments). Verify backups exist *off the network* and that a restore has actually been tested, not just configured.
3. **Roll out a "voice is not ID" rule + KEV patch check** — brief finance/clerk staff that a familiar voice no longer proves identity (use a callback protocol), and have IT confirm this week's CISA KEV items are patched or not present in the environment.

---

## Sources
- [North Dakota school district loses nearly $5 million in sophisticated email scam (Valley News Live)](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [North Dakota School District Loses $4.9M to Email Scam (GovTech)](https://www.govtech.com/education/k-12/north-dakota-school-district-loses-4-9m-to-email-scam)
- [Pine Bluff Schools lose $3.2M in cyberattack scam (KARK)](https://www.kark.com/news/local-news/pine-bluff-schools-lose-3-2m-in-cyberattack-scam/)
- [Millions of students' personal data stolen in major education breach (Malwarebytes)](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)
- [Cyberattack Fallout: Lawsuit Targets South Carolina School District (FITSNews)](https://www.fitsnews.com/2025/10/24/cyberattack-fallout-lawsuit-targets-south-carolina-school-district/)
- [Ransomware Attack on Wichita.gov Causes City Network Outage (GovTech)](https://www.govtech.com/security/ransomware-attack-on-wichita-gov-causes-city-network-outage)
- [Recent Cyber Attacks – Georgia (SecuLore)](https://www.seculore.com/resources/cyber-attack-archive/georgia)
- [Municipalities in four states struggling with cyberattacks limiting services (The Record)](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [FBI Warning: AI Voice Phishing (BlackFog)](https://www.blackfog.com/fbi-warning-ai-voice-phishing-how-to-stop-threat/)
- [Voice Cloning Is the New BEC: Deepfake CEO Fraud (CybelAngel)](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)
- [CISA Adds One Known Exploited Vulnerability to Catalog (June 3, 2026)](https://www.cisa.gov/news-events/alerts/2026/06/03/cisa-adds-one-known-exploited-vulnerability-catalog)
- [CISA Adds Three Known Exploited Vulnerabilities to Catalog (May 27, 2026)](https://www.cisa.gov/news-events/alerts/2026/05/27/cisa-adds-three-known-exploited-vulnerabilities-catalog)
- [State and Local Cybersecurity Grant Program (CISA)](https://www.cisa.gov/cybergrants/slcgp)
- [State and Local Cybersecurity Grant Program (MS-ISAC / CIS)](https://www.cisecurity.org/ms-isac/slcgp)
