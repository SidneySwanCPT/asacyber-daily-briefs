# Daily Cybersecurity Intel Brief
**Date:** Wednesday, May 13, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The ShinyHunters extortion deadline on the Instructure/Canvas breach hit yesterday (May 12), and the fallout is now the largest education-sector incident on record — 275M+ student, teacher, and staff records across ~9,000 institutions worldwide, with downstream notification and credential-reset work landing on districts this week. On the municipal side, Quincy IL and Somerset County NJ are still working back from May ransomware hits, and the FDD is reporting that governors are increasingly calling in National Guard cyber units when small jurisdictions go down — a posture Georgia councils should know exists. Federal context worth flagging: MS-ISAC federal funding lapsed and SLCGP rules now explicitly bar states from using grant dollars on MS-ISAC services, so any city or district counting on free MS-ISAC tooling needs a Plan B in this budget cycle.

---

## K-12 cybersecurity — what's hitting schools right now

- **Instructure / Canvas breach (May 1–12)** — ShinyHunters claimed responsibility for two waves of intrusion against Canvas LMS. The May 7 wave defaced the login page with a ransom message; the deadline passed May 12. Instructure says it "reached an agreement" and the data was destroyed, but that's an unverifiable claim from a criminal group — districts should assume student data (names, school email, student IDs, in-app messages) is in the wild. ([Wikipedia: 2026 Canvas security incident](https://en.wikipedia.org/wiki/2026_Canvas_security_incident), [NPR](https://www.npr.org/2026/05/08/nx-s1-5815956/canvas-data-breach-school-finals), [GovTech](https://www.govtech.com/education/k-12/some-canvas-users-receive-ransomware-threat-after-data-breach))
- **Wake County (NC) Public Schools** — confirmed last week that the April Canvas/PowerSchool-related breach may have touched all NC students and staff. This is the model of how the Canvas blast radius is going to land on individual districts over the next 60 days. ([WRAL](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/))
- **Federal Student Aid alert** — Department of Ed issued an FSA Knowledge Center technology security alert May 12 on the Canvas incident, which means postsecondary aid offices are now in the loop and K-12 finance offices should expect more coordinated notice traffic. ([ED FSA](https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-05-12/technology-security-alert-ongoing-cybersecurity-incident-involving-canvas-learning-management-system))
- **BEC trend reminder** — K12 SIX continues to flag that wire-fraud BEC against school finance offices remains the single largest direct-dollar loss vector for districts (e.g., Washington County TN's $335K wire fraud during a security renovations contract). Vendor-impersonation phishing targeting accounts payable is the playbook. ([K-12 Dive](https://www.k12dive.com/news/instructure-confirms-cybersecurity-incident/819362/), [StateScoop](https://statescoop.com/k12-cyberattacks-ransomware-bec/))

**Council-relevant angle:** If your local district uses Canvas (most Georgia districts do for at least one program), expect them to come to the board within 30 days asking for emergency funds for breach notification, credit monitoring offers, and a password/MFA reset campaign. Boards should not let that ask get value-engineered down — the notification piece is non-negotiable under state law.

## Local municipalities — what's hitting cities and counties

- **Quincy, IL ransomware (early May)** — Mayor Troup confirmed it as ransomware on May 24 (per Recorded Future timeline cited by The Record). City spent $600K+ to respond; ransom demand was under $500K and was reportedly not paid. Police and fire email/phone disrupted but operationally restored. ([The Record](https://therecord.media/municipalities-struggling-cyberattacks-services), [TechTarget](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms))
- **Somerset County, NJ** — county email system hit by ransomware late May; other services functioning. Small-county email-only impact is becoming the most common public profile of these incidents. ([The Record](https://therecord.media/municipalities-struggling-cyberattacks-services))
- **Winona County, MN** — recent county-level incident continues to be cited as the template for how small-county operations cascade. ([MPR News](https://www.mprnews.org/story/2026/04/09/winona-county-cyberattack-is-part-of-a-trend-as-local-governments-are-increasingly-targeted))
- **National Guard cyber response** — FDD published a useful primer on governors activating National Guard cyber units after municipal ransomware. For Georgia, this is a real option through GEMA; small cities should know the path exists. ([FDD](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/))

### Georgia-specific
- **Cobb County (ransomware, March)** — Qilin group (Russian-speaking criminal enterprise) posted data after Cobb missed the ransom deadline. Still the most relevant recent Georgia datapoint for council-level discussion. ([11Alive](https://www.11alive.com/article/news/local/cyberattackers-demand-ransom-cobb-county-cybersecurity-expert/85-bdcca311-dafe-4f4b-872c-7c64e061895b))
- **Ogeechee Judicial Circuit** — court systems across four counties (~180K residents) were closed for five days during recovery. Worth referencing when arguing for IR retainers at the county or regional level. ([The Record](https://therecord.media/thomasville-nc-government-ogeechee-ga-district-cyberattacks))
- **GA real estate authority cyberattack** — ongoing impact on closings statewide; a useful "this is what 'IT problem' actually means to citizens" example to bring to council. ([WSB-TV](https://www.wsbtv.com/news/local/atlanta/cyberattack-paralyzes-georgias-real-estate-industry-broker-says/5XEPCYJUZBB6HMIKJQPD7RAG5U/))

**Council-relevant angle:** For Tennille and similar small Georgia cities, the realistic threat is not a Cobb-County-scale event — it's email compromise leading to a six-figure wire fraud, exactly like Washington County TN schools. The municipal control that matters most this quarter is dual-approval on outgoing wires and an out-of-band callback policy when vendor banking instructions change.

## What's new — AI / deepfake threats relevant to councils and school boards

- **Senate AI Fraud Accountability Act (S.3982)** — would criminalize "digital impersonation" in interstate communications with intent to defraud. Senator Hassan also sent letters April 16 to ElevenLabs, LOVO, Speechify, and VEED demanding fraud-prevention disclosures. ([Biometric Update](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny))
- **FBI threat picture** — deepfake audio/video fraud is now one of the FBI's fastest-growing, highest-value enterprise fraud categories. AI-powered BEC drove $2.77B in losses across 21,442 incidents in 2024 and 2026 numbers are tracking higher. Three seconds of public audio is enough to clone a voice. ([BlackFog](https://www.blackfog.com/fbi-warning-ai-voice-phishing-how-to-stop-threat/), [CybelAngel](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/))
- **Sector implication** — every council meeting that's recorded and posted to YouTube, every superintendent video, every mayor presser is now training data for an attacker. The attack pattern targeting public-sector finance is a cloned-voice call to a finance clerk authorizing a wire or banking change. ([Group-IB](https://www.group-ib.com/blog/voice-deepfake-scams/))

**Council-relevant angle:** This is the strongest argument right now for a written, no-exceptions callback policy on any wire or banking change — "I heard the mayor's voice" is no longer a valid authentication factor.

## Federal / policy items a councilman should be tracking

- **MS-ISAC funding cliff** — CISA's MS-ISAC funding agreement (~$48.5M/year) lapsed. SLCGP's final-year rules now explicitly prohibit using state grant dollars on MS-ISAC services. Many small jurisdictions used MS-ISAC's free Albert sensors, Malicious Domain Blocking, and CIS controls advisory — those access models are changing. ([StateScoop](https://statescoop.com/state-local-cyber-grant-msisac-2025/), [Security Boulevard](https://securityboulevard.com/2025/10/cisa-ends-funding-for-ms-isag-program-for-state-and-local-governments/), [Cybersecurity Dive](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/))
- **CISA's "direct support" pivot** — CISA is publicly positioning a replacement model: cyber-hygiene scanning, phishing assessments, vulnerability management, and a CPG self-assessment tool, available no-cost to SLT. Worth getting Tennille (and any other ASA municipal clients) signed up directly with CISA's regional team rather than waiting on state intermediation. ([CISA](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments))
- **SLCGP FY26** — Texas eGrants opened FY26 SLCGP assessment/evaluation and mitigation tracks; Georgia GEMA-OHS runs the equivalent. Cybersecurity Plan submissions due to FEMA-SLCGP by Jan 30 annually. ([CISA SLCGP changes](https://www.cisa.gov/resources-tools/resources/state-and-local-cybersecurity-grant-program-key-changes))

---

## Three things to actually do this week

1. **Push Tennille (and any other municipal client) to enroll directly in CISA's free services** — cyber-hygiene scanning and the CPG self-assessment, this week. With MS-ISAC's federal support gone, CISA's direct-enrollment programs are now the most defensible "free baseline" line item to point to in budget conversations.
2. **Send a 1-page memo to the school district's CFO and superintendent on the Canvas breach posture** — what districts that use Canvas should do this week: forced password reset on Canvas accounts, MFA enforcement on Canvas SSO, parent/staff notification template ready to go, and a watch on Have I Been Pwned for staff emails. The Canvas notification wave hits boards over the next 30–60 days; getting ahead of it is worth a half day.
3. **Codify a wire-change callback policy in writing** — for any council you're advising, this week, get on the agenda a written policy: any vendor banking change requires a callback to a previously known number, dual approval, and a 24-hour hold. This is the single highest-ROI control against both BEC and the new deepfake-voice variant.

---

## Sources
- [Technology Security Alert – Canvas Incident (US Dept of Education FSA, May 12, 2026)](https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-05-12/technology-security-alert-ongoing-cybersecurity-incident-involving-canvas-learning-management-system)
- [April data breach may have impacted all NC schools (WRAL)](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [A Cyberattack on Canvas Could Cause Lasting Aftershocks for Schools (EdWeek)](https://www.edweek.org/technology/a-cyberattack-on-canvas-could-cause-lasting-aftershocks-for-schools/2026/05)
- [2026 Canvas security incident (Wikipedia)](https://en.wikipedia.org/wiki/2026_Canvas_security_incident)
- [Canvas data breach rattles colleges during finals period (NPR)](https://www.npr.org/2026/05/08/nx-s1-5815956/canvas-data-breach-school-finals)
- [Some Canvas Users Receive Ransomware Threat After Data Breach (GovTech)](https://www.govtech.com/education/k-12/some-canvas-users-receive-ransomware-threat-after-data-breach)
- [Instructure confirms cybersecurity incident (K-12 Dive)](https://www.k12dive.com/news/instructure-confirms-cybersecurity-incident/819362/)
- [Cyberattacks against K-12 schools continue to worsen (StateScoop)](https://statescoop.com/k12-cyberattacks-ransomware-bec/)
- [K-12 Cyber Incident Map (K12 SIX)](https://www.k12six.org/map)
- [Municipalities in four states struggling with cyberattacks (The Record)](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [May ransomware attacks strike municipal governments, IT firms (TechTarget)](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms)
- [When Ransomware Hits, Governors Are Calling the National Guard (FDD)](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/)
- [Winona County cyberattack is part of a trend (MPR News)](https://www.mprnews.org/story/2026/04/09/winona-county-cyberattack-is-part-of-a-trend-as-local-governments-are-increasingly-targeted)
- [Cyberattackers demand ransom in Cobb County (11Alive)](https://www.11alive.com/article/news/local/cyberattackers-demand-ransom-cobb-county-cybersecurity-expert/85-bdcca311-dafe-4f4b-872c-7c64e061895b)
- [Government offices in NC and Georgia disrupted by cyberattacks (The Record)](https://therecord.media/thomasville-nc-government-ogeechee-ga-district-cyberattacks)
- [Cyberattack paralyzes Georgia's real estate industry (WSB-TV)](https://www.wsbtv.com/news/local/atlanta/cyberattack-paralyzes-georgias-real-estate-industry-broker-says/5XEPCYJUZBB6HMIKJQPD7RAG5U/)
- [Georgia Technology Authority — Cybersecurity Incidents](https://gta.georgia.gov/contact-us/cybersecurity-incidents)
- [State and Local Cybersecurity Grant Program Key Changes (CISA)](https://www.cisa.gov/resources-tools/resources/state-and-local-cybersecurity-grant-program-key-changes)
- [CISA: Strengthening Security with Direct Cyber Support to State and Local Governments](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments)
- [New state, local cyber grant rules prohibit spending on MS-ISAC (StateScoop)](https://statescoop.com/state-local-cyber-grant-msisac-2025/)
- [CISA Ends Funding for MS-ISAC Program (Security Boulevard)](https://securityboulevard.com/2025/10/cisa-ends-funding-for-ms-isag-program-for-state-and-local-governments/)
- [Federal cuts force many state and local governments out of cyber collaboration group (Cybersecurity Dive)](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [AI voice fraud draws new congressional scrutiny (Biometric Update)](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [Voice Cloning Is the New BEC (CybelAngel)](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)
- [FBI Warning on AI Voice Phishing (BlackFog)](https://www.blackfog.com/fbi-warning-ai-voice-phishing-how-to-stop-threat/)
- [Anatomy of a Deepfake Voice Phishing Attack (Group-IB)](https://www.group-ib.com/blog/voice-deepfake-scams/)
