# Daily Cybersecurity Intel Brief
**Date:** Wednesday, May 6, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
Vendor-impersonation BEC against school finance offices has now produced a near-$5M loss at a single district, dwarfing most ransomware payouts and reinforcing that the highest-dollar threat to public-sector finance is a forged invoice — not malware. Ransomware activity continues to grind through small-to-mid municipalities (Quincy IL and Somerset County NJ in the last week) while a payment-gateway compromise at BridgePay Network Solutions is rippling into utility billing portals across multiple states. With CISA's MS-ISAC funding now wound down and SLCGP set to expire January 30 unless the PILLAR Act clears the Senate, every Georgia city — Tennille included — needs to verify what free CISA services are still available and lock in their FY26 grant paperwork before the window closes.

---

## K-12 cybersecurity — what's hitting schools right now

- **Dickinson Public Schools (ND)** lost roughly **$4.92M** in a vendor-impersonation BEC scheme. Criminals impersonated a trusted contractor, redirected two scheduled vendor payments, and the FBI and U.S. Attorney's Office are now leading the investigation. This single loss exceeds the combined ransom payouts of most district ransomware events this year.
- **Spring Lake Park Schools (MN)** closed for two days responding to an alleged ransomware incident; **Alamo Heights ISD (TX)** is still recovering from wide-scale internet outages from its own alleged ransomware event (per the K12 SIX 4/20/2026 Insider).
- **Los Angeles County Office of Education** is investigating fraudulent tax filings submitted in the names of teachers and administrators — a downstream identity-theft pattern that typically follows a payroll/HR system breach.
- **Navigate360 anonymous tip line** breach: K12 SIX Director Doug Levin called it the worst student-data breach he's seen in two decades. Files referencing abuse and assault were still listed for sale on criminal forums at the time of the advisory — a high-harm event for any district that uses the service.
- Trend: ransomware against the education sector has slowed slightly worldwide, but BEC and vendor-payment redirection are filling the gap and producing larger single-event losses.

**Council-relevant angle:** When school districts in your area are hit, expect downstream pressure on city services — emergency communications coordination, recovery cost-share questions, and parent-facing messaging where the city becomes the de-facto information channel.

## Local municipalities — what's hitting cities and counties

- **Quincy, IL** — ransomware confirmed; police and fire email/phone systems disrupted; remediation cost has now exceeded **$600K**, more than double the original ransom demand.
- **Somerset County, NJ** — ransomware, services degraded.
- **BridgePay Network Solutions** ransomware — the payment gateway is used by municipalities and utilities across multiple states; cities are reporting electronic payment and billing-portal outages traced back to this single vendor compromise.
- Active claimants this cycle: **Qilin, Interlock, and Nova** ransomware groups are the names showing up most often on municipal victim postings.
- Aggregate damage: 525 ransomware attacks against U.S. government entities between 2018 and 2024, with an estimated **$1.09B** in downtime costs.

**Georgia / Southeast subsection:** No new Georgia municipal incidents disclosed in the last 48 hours, but the pattern of the last 18 months — Fulton County (Jan 2024), Macon-Bibb (May 2024), Coffee County (Apr 2024), and the Georgia Superior Court Clerks' Cooperative Authority (Nov 2025) — means insurers, auditors, and Georgia GTA are paying close attention. Tennille and similarly sized cities should assume they are inside the same threat aperture as the larger Georgia counties already hit.

**Council-relevant angle:** Two questions worth raising at the next council meeting — (1) does the city's payment processor have a contingency if it goes the way of BridgePay, and (2) what's our maximum tolerable downtime for utility billing and 911-adjacent communications?

## What's new — AI / deepfake threats relevant to councils and school boards

- The FBI now classifies AI-powered deepfake CEO/executive fraud as one of the **fastest-growing and highest-value** fraud categories targeting U.S. enterprises in 2026 — AI-driven BEC drove **$2.77B** in losses across 21,442 incidents in 2024 alone.
- Voice cloning needs as little as **3 seconds** of public audio. For elected officials and superintendents, every recorded council meeting, school board livestream, podcast appearance, and press conference is training data.
- A Senate Joint Economic Committee letter (April 16, 2026) to ElevenLabs co-founder Mati Staniszewski signals continuing congressional scrutiny of voice-clone tooling — expect new disclosure or watermarking requirements to surface.
- Election-context: Ireland's October 2025 deepfake of a fabricated RTÉ broadcast claiming the presidential election was canceled — and a 120+ image deepfake library of Irish politicians sold on a marketplace — is the playbook to expect domestically heading into U.S. 2026 cycles.

**Council-relevant angle:** Establish a verbal call-back protocol for any out-of-band financial instruction supposedly coming from the mayor, city manager, or council chair. A 30-second policy ("any wire change is verified by callback to a number on file") would have stopped most of the BEC losses in this brief.

## Federal / policy items a councilman should be tracking

- **CISA KEV Catalog (last 30 days):** 8 vulnerabilities added April 21 (including three Cisco Catalyst SD-WAN Manager flaws, federal patch deadline April 23 / May 4); 7 more April 13; 4 more April 24 (CVE-2024-7399, CVE-2024-57726, CVE-2024-57728, CVE-2025-29635); 2 more April 28 (CVE-2024-1708, CVE-2026-32202); 1 more May 1 (CVE-2026-31431). Patch posture for any city-owned Cisco SD-WAN, ConnectWise, or related tooling should be confirmed.
- **MS-ISAC funding:** DHS ended federal support for SLTT membership beyond Sept. 30, 2025. CIS has transitioned MS-ISAC to a **fee-based** membership model. CISA still offers no-cost vulnerability scanning, phishing assessments, and regional cyber advisor support — but Tennille and similar cities need to actively re-enroll for those services rather than assume they continue automatically.
- **SLCGP:** FY25 is the **fourth and final year** ($91.75M) under the original IIJA authorization. The program is set to **expire January 30, 2026** unless reauthorized. The **PILLAR Act** passed the House by voice vote on November 17 and would extend SLCGP through 2033 — Senate action is the bottleneck. Texas FY26 RFA closed Feb 12, 2026; Wisconsin FY26 awards anticipated April 2026; Washington's next round expected to open May 2026.
- **EI-ISAC:** CISA terminated funding for the Election Infrastructure Information Analysis Center, breaking the formal information-sharing channel between election vendors and state/local election officials right before a midterm cycle.

---

## Three things to actually do this week

1. **Push a one-page BEC/wire-fraud playbook to the city finance office and the school district business office** — mandatory verbal callback to a number on file for any vendor banking-detail change, no exceptions. The Dickinson ND $4.92M loss is the exact pattern to defend against.
2. **Confirm the city's status on free CISA services and FY25 SLCGP applications** — with MS-ISAC moving to fee-based and SLCGP expiring January 30, 2026 unless the PILLAR Act passes the Senate, this is the cheapest cybersecurity dollar Tennille will see all year.
3. **Patch any Cisco SD-WAN Manager, ConnectWise, or other KEV-listed assets** — the federal patch deadline for the eight April 21 KEV additions has already passed (May 4); audit whether any city or client systems are still exposed.

---

## Sources
- [K12 SIX — K-12 Cybersecurity Insider, 4/20/2026](https://www.k12six.org/k12-cybersecurity-insider/20264-9-s23xt)
- [K12 SIX — K-12 Cyber Incident Map](https://www.k12six.org/map)
- [K12 SIX — News](https://www.k12six.org/news)
- [K-12 Dive — Ransomware attacks against education sector slow worldwide](https://www.k12dive.com/news/ransomware-attacks-against-education-sector-slow-worldwide/811133/)
- [Valley News Live — North Dakota school district loses nearly $5 million in sophisticated email scam (Dickinson)](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [The Record — Tennessee school district loses $3.4 million to a fake curriculum vendor](https://therecord.media/tennessee-school-district-loses-3-million-bec-scam)
- [Eftsure — US school districts lose millions in email scams](https://www.eftsure.com/blog/cyber-crime/us-school-districts-lose-millions-in-email-scams/)
- [TechTarget — May ransomware attacks strike municipal governments, IT firms (Quincy IL, Somerset County NJ)](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms)
- [The Record — Municipalities in four states struggling with cyberattacks limiting services](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [MPR News — Winona County cyberattack is part of a trend](https://www.mprnews.org/story/2026/04/09/winona-county-cyberattack-is-part-of-a-trend-as-local-governments-are-increasingly-targeted)
- [The Record — Ransomware gang claims attack on St. Paul city government](https://therecord.media/ransomware-gang-behind-minnesota-attack)
- [The Record — Georgia court filing organization warns of outages after ransomware allegations](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [Georgia Technology Authority — Cybersecurity Incidents](https://gta.georgia.gov/contact-us/cybersecurity-incidents)
- [ITIF — Improving State and Local Government Cybersecurity (Apr 27, 2026)](https://itif.org/publications/2026/04/27/improving-state-local-government-cybersecurity/)
- [CISA — Adds One KEV (May 1, 2026)](https://www.cisa.gov/news-events/alerts/2026/05/01/cisa-adds-one-known-exploited-vulnerability-catalog)
- [CISA — Adds Four KEV (Apr 24, 2026)](https://www.cisa.gov/news-events/alerts/2026/04/24/cisa-adds-four-known-exploited-vulnerabilities-catalog)
- [CISA — Adds Two KEV (Apr 28, 2026)](https://www.cisa.gov/news-events/alerts/2026/04/28/cisa-adds-two-known-exploited-vulnerabilities-catalog)
- [The Hacker News — CISA Adds 8 Exploited Flaws to KEV (Apr/May 2026 deadlines)](https://thehackernews.com/2026/04/cisa-adds-8-exploited-flaws-to-kev-sets.html)
- [CIS — MS-ISAC](https://www.cisecurity.org/ms-isac)
- [StateScoop — CISA confirms it's ending MS-ISAC support](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Cybersecurity Dive — Federal cuts force many state and local governments out of cyber collaboration group](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [CISA — State and Local Cybersecurity Grant Program](https://www.cisa.gov/cybergrants/slcgp)
- [NACo — Congress Considers Bills to Reauthorize State and Local Cybersecurity Grant Program (PILLAR Act)](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program)
- [CIS — EI-ISAC](https://www.cisecurity.org/ei-isac)
- [Votebeat — Election officials say trust with CISA on election security is broken](https://www.votebeat.org/2026/01/15/cisa-election-security-trust-broken-trump-chris-krebs-denise-merrill/)
- [CybelAngel — Voice Cloning Is the New BEC: Deepfake CEO Fraud in the US](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)
- [WHSV — Deepfake scams infiltrate social media as voice cloning becomes easier](https://www.whsv.com/2026/04/20/deepfake-scams-infiltrate-social-media-voice-cloning-becomes-easier/)
- [Biometric Update — AI voice fraud draws new congressional scrutiny](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [Senate Joint Economic Committee — Voice clone letter to ElevenLabs (Apr 16, 2026)](https://www.jec.senate.gov/public/_cache/files/bab3185e-9f82-4f5b-964c-047973a51a2b/2026-04-16-voice-clone-letters.pdf)
- [AI CERTs — How Political Misinformation Deepfakes Threaten 2026 Elections](https://www.aicerts.ai/news/how-political-misinformation-deepfakes-threaten-2026-elections/)
