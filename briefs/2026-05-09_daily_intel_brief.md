# Daily Cybersecurity Intel Brief
**Date:** Saturday, May 9, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways

The Canvas/Instructure breach is now the dominant K-12 story of the week — ShinyHunters claims data on roughly 9,000 schools and ~275M users, the ransom deadline is **May 12**, and any district using Canvas needs a parent/staff communications plan ready *today*, not Monday. On the municipal side, ransomware keeps landing in places that look a lot like Tennille — a SCADA hit at the **Minot, ND** water plant and an attempted intrusion at **Suffolk, VA** show that small-utility OT and city networks remain prime targets. Two structural items deserve council-level attention: the **MS-ISAC federal funding cliff** is real and the free-tier safety net is gone, while **SLCGP Year 3 windows** in several states are open or just closed — Georgia entities should be checking GEMA/HS for the state allocation timeline. And in case anyone still doubted it, the 2026 midterms have made political deepfakes a standard campaign tool, including a confirmed Georgia race, which puts every elected official one cloned voice away from a wire-fraud headline.

---

## K-12 cybersecurity — what's hitting schools right now

- **Canvas / Instructure (global, ~9,000 schools).** ShinyHunters claims access to ~275M user records — names, emails, student IDs, message content — and is demanding a ransom by **May 12, 2026**. Instructure says no passwords, DOBs, government IDs, or financial data were involved. Canvas was knocked offline during the college finals window; some districts already had to extend deadlines. Service is restored as of late this week.
- **Wake County Public Schools (NC) and several other NC districts** are confirmed affected by the Canvas breach. Statewide systems were down during finals.
- **Pine Bluff School District (AR) — $3.2M lost to BEC.** A vendor-impersonation thread inserted fraudulent wiring instructions into a real conversation; the district sent $3,204,639.55 on December 17 thinking it was paying a construction invoice.
- **Dickinson Public Schools (ND) — ~$4.92M lost to BEC.** Same playbook: criminals posed as a trusted contractor, redirected vendor payments. FBI and US Attorney are involved.

**The trend.** Two distinct K-12 attack patterns are converging: vendor/supply-chain compromise (Canvas) where districts can't "patch their way out" because they don't own the platform, and BEC against finance offices where a single compromised mailbox eats seven figures. K12 SIX continues to flag both as the dominant loss vectors for the sector.

**Council-relevant angle.** If your local district uses Canvas or any LMS where parent and staff messaging lives, the right council-level question this week is *"Has our superintendent confirmed in writing whether we were in the affected tenant, what was exposed, and what notification we owe parents?"* — and on BEC: *"What is the dual-control wire procedure when a vendor 'updates' bank info via email?"* If the answer is anything less than out-of-band callback to a known number, the district is one phishing email from a Pine Bluff outcome.

---

## Local municipalities — what's hitting cities and counties

- **Minot, ND — water treatment plant ransomware.** Malware impacted the SCADA system; operators reverted to **manual gauge readings** while the system was contained. The ransom note carried no monetary demand, which usually means a destructive or politically motivated actor, not a payday crew. Water supply remained safe.
- **Suffolk, VA — attempted ransomware (April).** Threat actor accessed the network and attempted to deploy ransomware. A **federal alert** flagged the suspicious activity early enough that IT could prevent full encryption — a rare good-news outcome that proves the playbook works when alerts are actually monitored.
- **Winona County, MN — National Guard activated.** The county's April ransomware event impaired emergency and critical services badly enough that Governor Walz authorized the **Minnesota National Guard cyber protection team** to assist. Worth tracking as the new normal: when local IT and commercial responders can't contain an event, governors are now reaching for the Guard.

### Georgia / Southeast watch

- **Georgia Superior Court Clerks' Cooperative Authority (GSCCCA).** Active hacking attempt detected November 21; later named on the **Devman** ransomware leak site. GSCCCA reports systems are now back to normal and no sensitive data was lost — but every Georgia clerk's office that filed via GSCCCA in that window should already have asked for the post-incident report.
- **Cobb County (prior incident, still relevant).** Stolen data from the 2025 ransomware event continues to surface on extortion sites; a useful talking point with peer councils about why "we paid / we didn't pay" doesn't end the story.
- No new public-sector breach disclosure in Tennille's immediate region in the last 48 hours.

**Council-relevant angle.** The Minot SCADA incident is the one to fixate on if Tennille runs municipal water/wastewater controls. *Two questions for the next council meeting:* (1) Can our utility operators run manually if SCADA is encrypted? (2) Who calls the Georgia Cyber Center / GEMA-HS first, and is that contact info actually printed somewhere that doesn't depend on the network being up?

---

## What's new — AI / deepfake threats relevant to councils and school boards

- **2026 midterms = the deepfake election.** At least **five confirmed deepfake incidents** have hit Texas, Georgia, and Massachusetts races. In Georgia specifically, **Rep. Mike Collins** released a deepfake of **Sen. Jon Ossoff** appearing to say "I just voted to keep the government shutdown" — a statement Ossoff never made. This week (May 5), a MAGA KY PAC ad used AI deepfake video to depict Rep. Thomas Massie holding hands with AOC and Ilhan Omar.
- **Federal vacuum.** No federal law currently prohibits deepfakes in political campaigns. Only **31 states** have any election-deepfake regulation; Maine, Tennessee, and Vermont passed new legislation in 2026. **Georgia is not yet on that list.**
- **Voice-cloning fraud reaching public-sector finance.** A voice can be cloned from **3 seconds** of public audio. FBI now ranks AI-powered BEC among the fastest-growing fraud categories — average loss per deepfake fraud incident now exceeds **$500K**, with some single events crossing $25M. Council livestreams, school-board recordings, and press interviews are training data.

**Council-relevant angle.** Two practical defenses cost $0: (1) **Codeword + callback** policy for any voice or email request to move money or change vendor banking — the codeword is set in person, never in writing or over the phone. (2) **Public statement** that any AI-generated content depicting council members is unauthorized and will be flagged — pre-empting a deepfake incident is dramatically easier than chasing one.

---

## Federal / policy items a councilman should be tracking

- **MS-ISAC funding cliff is real.** CISA's cooperative agreement with the Center for Internet Security has ended; **MS-ISAC has moved to a paid-membership model** and the CASP (Cybersecurity Assistance Services Program) is discontinued for members. Translation: free albert sensors, free malicious-domain blocking, free 24/7 SOC eyes — those are now paid services or gone. Small jurisdictions are already dropping out.
- **SLCGP Year 3 status.** The Year 3 RFA opened December 15, 2025 and closed February 12, 2026. **Texas, Mississippi, and Washington** have current activity; Washington's next round is expected to open this month (May 2026). Congress (Hassan/Cornyn) introduced a **reauthorization bill** in December — the program is currently in its final IIJA-funded year. Georgia councils should be asking GEMA-HS exactly which sub-recipient cycle they fall under and whether they've been counted.
- **CISA election-security pullback.** **Sen. Mark Warner (D-VA)** is publicly pressing DHS over what state officials describe as a sharp decline in CISA election-security training, intel sharing, and assistance ahead of the **2026 midterms**. EI-ISAC services are part of the same MS-ISAC budget conversation above.
- **CISA SLTT "Reset" press release (May 5, 2026).** Worth reading directly — CISA is reframing the SLTT relationship and the regional advisor model. This is the document that will be cited at every state-and-local cyber conference for the next 12 months.

---

## Three things to actually do this week

1. **Send a one-paragraph memo to the local school superintendent** asking three questions: (a) Are we in the Canvas/Instructure affected tenant? (b) What is our parent/staff notification plan if records were exposed? (c) What is our written dual-control procedure for vendor wire-instruction changes? — *Pine Bluff and Dickinson lost ~$8M combined to the same trick.*
2. **Verify the City of Tennille's manual-fallback procedure for water/wastewater SCADA** and confirm an out-of-band call list exists (printed, posted) for incident response. — *Minot just lived this; the answer can't depend on the network.*
3. **Set the family / council-staff "codeword + callback" rule** for any voice or email request to move money, change banking, or take an urgent action — and lock down voice samples on the city's public livestream feed (or accept that they're already out there). — *Voice cloning works on 3 seconds of audio and the average hit is now half a million dollars.*

---

## Sources
- [Canvas data breach rattles colleges during finals period — NPR](https://www.npr.org/2026/05/08/nx-s1-5815956/canvas-data-breach-school-finals)
- [Canvas hack: What we know about the cyberattack that impacted thousands of schools — CNN](https://www.cnn.com/2026/05/07/us/canvas-hack-strands-college-students-finals-week)
- [Some Canvas Users Receive Ransomware Threat After Data Breach — GovTech](https://www.govtech.com/education/k-12/some-canvas-users-receive-ransomware-threat-after-data-breach)
- [April data breach may have impacted all NC schools — WRAL](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [Millions of students' personal data stolen in major education breach — Malwarebytes](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)
- [Instructure confirms cybersecurity incident — K-12 Dive](https://www.k12dive.com/news/instructure-confirms-cybersecurity-incident/819362/)
- [Pine Bluff Schools lose $3.2M in cyberattack scam — KARK](https://www.kark.com/news/local-news/pine-bluff-schools-lose-3-2m-in-cyberattack-scam/)
- [North Dakota school district loses nearly $5 million in sophisticated email scam — Valley News Live](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [The $3.2M Phishing Lesson: BEC Prevention for Schools — PC Matic](https://www.pcmatic.com/blog/pine-bluff-phishing-bec-prevention/)
- [The State of Ransomware: April 2026 — BlackFog](https://www.blackfog.com/the-state-of-ransomware-april-2026/)
- [When Ransomware Hits, Governors Are Calling the National Guard — FDD](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/)
- [U.S. State and Local Government Under Ransomware: 2025–2026 Trend Analysis — SOCRadar](https://socradar.io/blog/us-state-local-government-ransomware-2025-2026/)
- [Georgia court filing organization warns of outages after ransomware allegations — The Record](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [GSCCCA Cyber Attack Causes Service Disruption — Local 3 News](https://www.local3news.com/local-news/ransomware-attack-temporarily-disrupts-georgia-superior-court-clerks-services/article_65887871-4c90-482b-be01-5aca59e20e08.html)
- [Senator warns CISA election security pullback could leave midterms vulnerable — Nextgov/FCW](https://www.nextgov.com/cybersecurity/2026/05/senator-warns-cisa-election-security-pullback-could-leave-midterms-vulnerable/413378/)
- [CISA — Strengthening Our Nation's Security with Direct Cyber Support to State and Local Governments](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments)
- [State and Local Cybersecurity Grant Program — CISA](https://www.cisa.gov/cybergrants/slcgp)
- [Congress Revives State and Local Cyber Grants, But Funding Remains Unclear — StateTech](https://statetechmagazine.com/article/2025/11/congress-revives-state-and-local-cyber-grants-funding-remains-unclear)
- [Federal Government Acknowledges End of MS-ISAC Support — GovTech](https://www.govtech.com/security/federal-government-acknowledges-end-of-ms-isac-support)
- [MS-ISAC warns of rising cyber threats to SLTT installations — Industrial Cyber](https://industrialcyber.co/reports/ms-isac-warns-of-rising-cyber-threats-to-sltt-installations-urges-enhanced-resilience-and-coordination/)
- [Republicans release AI deepfake of James Talarico — CNN Politics](https://www.cnn.com/2026/03/13/politics/james-talarico-ai-deepfake-republicans-midterms)
- [AI 'deepfake' ads attack Massie and Gallrein in northern Kentucky GOP primary — LPM](https://www.lpm.org/news/2026-05-05/ai-deepfake-ads-attack-massie-and-gallrein-in-northern-kentucky-gop-primary)
- [American Politics Is Already Inundated With AI Deepfakes — The American Prospect](https://prospect.org/2026/04/17/american-politics-inundated-with-ai-deepfakes/)
- [Voice Cloning Is the New BEC: Deepfake CEO Fraud in the US — CybelAngel](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)
- [Tracker: State Legislation on Deepfakes in Elections — Public Citizen](https://www.citizen.org/article/tracker-legislation-on-deepfakes-in-elections/)
- [K-12 Cyber Incident Map — K12 SIX](https://www.k12six.org/map)
