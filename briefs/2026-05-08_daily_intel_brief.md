# Daily Cybersecurity Intel Brief
**Date:** Friday, May 8, 2026  
**Focus areas:** K-12 education, local municipalities, council-level decisions, sports technology

---

## TL;DR — At a glance

#### Topic: Canvas / Instructure LMS data breach
**Threat Actor:** ShinyHunters (extortion crew)  
**Critical Infrastructure Sector:** Education (K-12 + higher ed)  
**Locations Impacted:** ~9,000 schools globally; statewide systems disrupted in North Carolina and Wisconsin  
**TL;DR Details:** Attackers claim ~275M records — names, emails, student IDs, message content. No passwords, DOBs, government IDs, or financial data per Instructure. Canvas was knocked offline during end-of-year testing and restored May 6.  
**Source:** [Malwarebytes — Millions of students' data stolen](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)

#### Topic: Quincy, IL municipal ransomware
**Threat Actor:** Unknown / unattributed  
**Critical Infrastructure Sector:** Government Facilities (SLTT)  
**Locations Impacted:** Quincy, Illinois (~40,000 population)  
**TL;DR Details:** Hit early May; city has now disclosed >$600,000 in remediation costs. Police, fire, and city email/phone systems disrupted; mayor says no PII believed stolen.  
**Source:** [TechTarget — May ransomware attacks on municipalities](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms)

#### Topic: Multi-county ransomware (22 Texas counties)
**Threat Actor:** Unknown / unattributed  
**Critical Infrastructure Sector:** Government Facilities (SLTT)  
**Locations Impacted:** 22 counties across Texas; Keene, TX named  
**TL;DR Details:** Disruption to utility payments and access to birth/death records. Keene's mayor: "just about everything we do at City Hall is impacted."  
**Source:** [TechTarget — May ransomware attacks on municipalities](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms)

#### Topic: AI voice-cloning / deepfake CEO fraud
**Threat Actor:** Various financially motivated cybercriminals using GenAI tooling  
**Critical Infrastructure Sector:** Financial Services + Government Facilities + Education (cross-sector)  
**Locations Impacted:** Nationwide — U.S. enterprise and public-sector finance offices  
**TL;DR Details:** FBI now ranks AI-powered BEC among the fastest-growing fraud categories. AI-BEC drove $2.77B in losses across 21,442 incidents in 2024; deepfake-related fraud tripled to $1.1B in 2025. Voice samples are routinely lifted from council livestreams and press interviews.  
**Source:** [CybelAngel — Voice cloning is the new BEC](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)

#### Topic: MS-ISAC federal-funding cliff
**Threat Actor:** N/A (policy / funding item)  
**Critical Infrastructure Sector:** Government Facilities (SLTT cyber defense services)  
**Locations Impacted:** Nationwide — all U.S. state, local, tribal, territorial entities  
**TL;DR Details:** DHS ended federal MS-ISAC support after September 30, 2025. CIS has shifted to a fee-based model and many small jurisdictions are already dropping out of free threat intel and malicious-domain blocking.  
**Source:** [Cybersecurity Dive — Federal cuts force SLTT out of MS-ISAC](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)

#### Topic: SLCGP — final IIJA-funded year
**Threat Actor:** N/A (policy / grant item)  
**Critical Infrastructure Sector:** Government Facilities (SLTT)  
**Locations Impacted:** Nationwide; state-by-state application windows  
**TL;DR Details:** $91.75M added in the FY25 NOFO. Multiple state windows close in early–mid 2026 (TX, MS, WI). This is the last full year of IIJA-funded cyber grants for state and local entities.  
**Source:** [CISA — State and Local Cybersecurity Grant Program](https://www.cisa.gov/cybergrants/slcgp)

#### Topic: Two more K-12 districts hit by alleged ransomware
**Threat Actor:** Unknown / unattributed  
**Critical Infrastructure Sector:** Education (K-12)  
**Locations Impacted:** Spring Lake Park, MN; Alamo Heights ISD, TX  
**TL;DR Details:** Spring Lake Park Schools closed for two days responding to an alleged ransomware incident; Alamo Heights ISD is recovering from wide-scale internet outages tied to its own alleged ransomware event.  
**Source:** [K12 SIX — News and incident map](https://www.k12six.org/all-news)

#### Topic: Genius Sports closes $1.2B Legend acquisition
**Threat Actor:** N/A (industry consolidation / tech item)  
**Critical Infrastructure Sector:** Information Technology + Commercial Facilities (sports data + sportsbook tech)  
**Locations Impacted:** Global — sports betting and league-data customers in U.S., Europe, Latin America  
**TL;DR Details:** Closed May 1, 2026 with total transaction value up to $1.2B. Bundles real-time game data, AI content (GeniusIQ), and immersive betting (BetVision) under one stack — a "fan-first" data company now extends from the live-data feed all the way to the bet itself. Sportradar's parallel Vaix acquisition (Jan 2025) does the same on the other side of the market.  
**Source:** [Bettors Insider — Genius Sports closes $1.2B Legend acquisition](https://bettorsinsider.com/sports-betting/2026/05/07/genius-sports-just-closed-its-1-2-billion-legend-acquisition-heres-why-it-matters-for-sportsbooks-and-the-data-market/)

---

## Top-line takeaways

### Canvas Breach Goes Nuclear
The ShinyHunters extortion of Instructure/Canvas is the single biggest K-12 story of the week. They claim ~275 million records covering students, teachers, and staff at roughly 9,000 schools globally, and entire state systems (NC, Wisconsin) saw Canvas knocked offline during finals. This is a vendor-supply-chain breach — districts didn't get hacked; their LMS did, and the records still belong to your kids.

### Ransomware Keeps Mauling Small Cities
Quincy, IL has now disclosed >$600K in remediation costs from its early-May ransomware incident, and 22 Texas counties are simultaneously dealing with disruption to utility payments and vital records. Quincy is a city of ~40K — a comparable hit to a town the size of Tennille would consume an entire annual IT budget several times over. The number to remember: **$600K.**

### Voice Cloning Is the New BEC
The FBI now classifies AI voice cloning as one of the fastest-growing fraud categories targeting US enterprises. Attackers need only seconds of a public official's voice — easily harvested from council livestreams or press interviews — to impersonate them on the phone and authorize wire changes from the finance office. Every councilman and school board member now fits this attacker profile.

### The Funding Floor Is Shifting
Two structural items deserve attention. The MS-ISAC funding cliff is now visibly thinning out free SLTT services as DHS support ended after September 2025, and the State and Local Cybersecurity Grant Program is in its final IIJA-funded year — several state application windows close this month.

---

## K-12 cybersecurity — what's hitting schools right now

- **Instructure / Canvas — supply-chain breach (multi-state).** ShinyHunters claims it stole ~275M records from Canvas covering names, email addresses, student IDs, and message content across an estimated 9,000 schools globally. Instructure says no passwords, DOBs, government IDs, or financial data were taken. Canvas was knocked offline for several days during end-of-year testing in North Carolina, Wisconsin, and elsewhere; Instructure declared the platform fully operational by May 6. ([WRAL](https://www.wral.com/news/education/canvas-shinyhunters-ransom-instructure-hack-data-breach-may-2026/), [Malwarebytes](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack), [K-12 Dive](https://www.k12dive.com/news/instructure-confirms-cybersecurity-incident/819362/))
- **Spring Lake Park Schools (MN)** closed for two days responding to an alleged ransomware incident; **Alamo Heights ISD (TX)** is recovering from internet outages tied to its own alleged ransomware event. ([K12 SIX news](https://www.k12six.org/all-news))
- **LA County Office of Education** is investigating a possible breach after staff received notices that fraudulent tax filings were submitted in their names — points back to W-2 / payroll data exposure. ([K12 SIX news](https://www.k12six.org/all-news))
- **Trend.** K12 SIX's own data continues to show federal-level reporting understates the real volume of K-12 incidents. Vendor-supply-chain exposure (Canvas, PowerSchool last year) is now the dominant breach pathway. ([K12 SIX – breaches worse than reported](https://www.k12six.org/news/k-12-cybersecurity-breaches-worse-than-reported-at-federal-level))
- **Council-relevant angle.** When the LMS vendor gets breached, the school board still owns the parent-facing communication and the credit-monitoring decision. Ask the superintendent two questions this week: (1) are we a Canvas customer, and (2) what's our standing playbook when a third-party SaaS breach exposes our students?

## Local municipalities — what's hitting cities and counties

- **Quincy, IL — ransomware confirmed.** Hit in the first week of May; the city now reports >$600,000 spent on remediation. Police, fire, and city email/phones disrupted; mayor says no PII appears to have been stolen. ([TechTarget](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms))
- **Somerset County, NJ** — late-May ransomware incident affecting the county email system; other services largely operational. ([TechTarget](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms))
- **Texas — 22 counties** disrupted by a ransomware event affecting utility payments and vital records. Keene's mayor said "just about everything we do at City Hall is impacted." ([TechTarget](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms))
- **National Guard activation rising.** Governors are increasingly invoking state cyber response units / Guard cyber teams when small jurisdictions get hit — useful precedent if a Georgia city ever needs surge support. ([FDD analysis](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/))
- **Trend.** The Record / Recorded Future is again tracking simultaneous service-disruption attacks on municipalities across four states; SOCRadar's 2025–26 trend analysis shows SLT entities remain the soft underbelly of US public-sector cyber. ([The Record](https://therecord.media/municipalities-struggling-cyberattacks-services), [SOCRadar](https://socradar.io/blog/us-state-local-government-ransomware-2025-2026/))

### Georgia / Southeast watch
No new Georgia-municipal incident broke this 48-hour window. Backdrop remains active, though: Fulton County's LockBit ransomware event last year and Coffee County having to sever its connection to the state voter registration system are the cautionary tales every Georgia city manager already knows. The Georgia Technology Authority continues to publish incident-reporting guidance for state and local entities — worth bookmarking for Tennille's response playbook. ([GTA cyber incidents](https://gta.georgia.gov/contact-us/cybersecurity-incidents), [The Record – Fulton County](https://therecord.media/fulton-county-georgia-atlanta-cyberattack-causing-outages))

**Council-relevant angle.** Quincy's $600K is the number to remember. That's a city of ~40K. Tennille is small enough that a comparable incident would consume an entire annual IT budget several times over — which is why the basics (offline backups, MFA on payroll/finance email, vendor inventory) matter more than any tool purchase.

## What's new — AI / deepfake threats relevant to councils and school boards

- **Voice cloning is now the FBI's top-growth fraud category for 2026.** AI-powered BEC drove $2.77B in losses across 21,442 incidents in 2024; deepfake-related losses tripled to $1.1B in 2025. The signature attack pattern is short voice clips lifted from public meetings, council livestreams, or press interviews used to call the finance office and authorize a wire change. ([CybelAngel](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/), [Flux Labs](https://www.fluxlabs.net/2026/02/15/the-deepfake-ceo-scam-why-voice-cloning-is-the-new-business-email-compromise-bec/))
- **Schools as a vector.** The Corinth (MS) federal trial of a former superintendent tied to a deepfake case is highlighting how unsettled the legal regime is, and Radnor Township School District (PA) is now hiring outside experts after a deepfake incident targeting students. Government Technology specifically flags deepfakes targeting school employees as the next administrative-fraud wave. ([WDAM – Corinth trial](https://www.wdam.com/2026/04/29/corinth-deepfake-trial-highlights-challenges-regulating-ai-generated-content/), [Inquirer – Radnor](https://www.inquirer.com/education/radnor-school-district-ai-deepfake-policy-20260506.html), [Government Technology](https://www.govtech.com/education/k-12/ais-latest-hazard-for-school-employees-deepfakes))
- **Council-relevant angle.** A two-line policy fix — *no wire changes or vendor-banking changes by phone or email; only via known-good callback to a number on file* — closes most of this attack path.

## Sports technology — IT/cyber developments worth tracking

- **Genius Sports / Legend close — sports data + sportsbook tech consolidation.** Genius Sports closed its $1.2B acquisition of Legend on May 1, 2026, bundling real-time game data, AI content generation (GeniusIQ), and immersive in-stream betting (BetVision) into a single stack. Sportradar's parallel Vaix acquisition (Jan 2025) signals the same shift — sports-data vendors are pivoting from raw feeds to end-to-end fan/bettor platforms. The AI-in-sports market itself is on a steep ramp: $9.76B in 2026 → projected $33.32B by 2031 at ~28% CAGR. ([Bettors Insider](https://bettorsinsider.com/sports-betting/2026/05/07/genius-sports-just-closed-its-1-2-billion-legend-acquisition-heres-why-it-matters-for-sportsbooks-and-the-data-market/), [Mordor Intelligence — AI in Sports market](https://www.mordorintelligence.com/industry-reports/artificial-intelligence-market-in-sports), [Genius Sports — GeniusIQ launch](https://www.geniussports.com/newsroom/genius-sports-launches-geniusiq-to-accelerate-the-ai-revolution-in-global-sport/))
- **GeniusIQ in live stadium operations.** Genius Sports has now deployed its GeniusIQ AI platform across Liga MX stadiums in Mexico — real-time AI inference layered onto the live game feed, generating personalized highlights, multilingual commentary, and bettable in-game moments. Same architecture is the model U.S. leagues are studying. ([Investing.com — GeniusIQ at Liga MX](https://www.investing.com/news/company-news/genius-sports-deploys-ai-platform-across-liga-mx-stadiums-93CH-4655902))
- **Whoop vs FDA — wearable biometric data hits regulatory friction.** FDA sent Whoop a warning letter declaring its Blood Pressure Insights feature an unapproved medical device. Whoop disagrees and is positioning the data as "wellness" — but the dispute is the leading edge of a broader fight over whether continuous athlete biometric data falls under HIPAA. Lawmakers are now publicly calling for HIPAA-style protections on wearable data. ([Sports Destination Management — Athlete privacy & wearables](https://www.sportsdestinations.com/management/technology/athlete-privacy-growing-concern-wearable-tech-37027), [Lexology — Wearable tech in pro sports](https://www.lexology.com/library/detail.aspx?g=2b1b620e-18b6-474e-8de4-cd0dd7556db8))
- **NIL platforms are now compliance-and-data infrastructure.** As of January 2026, the College Sports Commission (CSC) requires every third-party NIL deal over $600 to flow through the NIL Go platform. CSC has already rejected ~$15M in agreements (~10% of value reviewed since July 2025). Recruiting platform Scorability now hosts ~1.2M athletes across ~3,000 college programs — concentrated repositories of minors' personal, academic, and biometric data. ([Buchanan Ingersoll & Rooney — CSC NIL guidance](https://www.bipc.com/csc-issues-guidance-on-nil-enforcement-as-the-transfer-portal-heats-up), [CNBC — Scorability raise](https://www.cnbc.com/2025/09/30/scorability-wants-to-revolutionize-college-sports-recruiting-as-nil-takes-off.html))
- **Sports-org cyber threat baseline.** UK NCSC reports 70% of sports organizations surveyed experience at least one cyberattack per year. Past precedents to keep in mind: NBA fan-data exposure via third-party mailer (March 2023), San Francisco 49ers ransomware on corporate IT (Feb 2022), Houston Rockets ransomware (2021), MLB ransomware via phishing (2019). The pattern across all four is the same — third-party vendor or business-email compromise — same playbook hitting K-12 and municipalities. ([WeLiveSecurity — 10 cyber hits on sports](https://www.welivesecurity.com/en/cybercrime/cybercriminals-play-dirty-10-cyber-hits-sporting-world/), [Microsoft — Cyber Signals: sports threats](https://www.microsoft.com/en-us/security/security-insider/threat-landscape/cyber-signals-issue-5-cyberthreats-increasingly-target-the-worlds-biggest-event-stages/))

**Council-relevant angle.** Three points connect this back to Tennille and any school board you sit on. (1) **Hudl is high-school infrastructure** — most Georgia high-school athletic departments use Hudl for film and coaching; if Hudl ever has a breach, the affected systems are the same ones used by your district's coaches. (2) **NIL platforms hold minors' data** — even for K-12 athletes who haven't yet signed deals, recruiting platforms like Scorability, 247Sports, and on3 build profiles starting in middle school; the data-security exposure is real even if the financial part isn't yet. (3) **Stadium / ticketing tech mirrors municipal-venue tech** — anything you read about a sports venue's cyber posture maps directly onto how a city-owned auditorium or community center should be thinking about its own ticketing and access-control vendors.

## Federal / policy items a councilman should be tracking

- **MS-ISAC funding cliff is real.** DHS ended federal support for SLTT through MS-ISAC after September 30, 2025; CIS has since moved to a fee-based membership model, and Cybersecurity Dive is reporting that many small jurisdictions have already dropped out of the collaboration. Translation: free threat intel and the malicious domain blocking service that small Georgia cities relied on are no longer free. ([StateScoop](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/), [Cybersecurity Dive](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/), [Infosecurity Magazine](https://www.infosecurity-magazine.com/news/us-cuts-funding-ms-isac/))
- **CISA SLTT support continues separately.** Regional Cybersecurity Advisors, State Coordinators, vulnerability assessments, and bi-monthly SLTT SOC calls are still a no-cost option — they just no longer flow through MS-ISAC. ([CISA – SLTT SOC/ISAC](https://www.cisa.gov/state-local-tribal-and-territorial-security-operations-centerinformation-sharing-and-analysis-center))
- **SLCGP — last full IIJA year.** FY25 NOFO added another $91.75M; this is the final round of the four-round Bipartisan Infrastructure Law funding. State application windows are tight: Wisconsin and approved-Cybersecurity-Plan resubmissions closed January 30, Texas Feb 12, Mississippi Feb 27, with several FY26 sub-program windows (assessment/evaluation, mitigation, workforce) still open in Texas. Awards expected in April–May 2026 in most states. ([CISA SLCGP](https://www.cisa.gov/cybergrants/slcgp), [Texas DIR](https://dir.texas.gov/information-security/state-and-local-cybersecurity-grant-program-slcgp), [WaTech](https://watech.wa.gov/state-local-cybersecurity-grant-program), [Mississippi MOHS](https://www.homelandsecurity.ms.gov/grants/homeland-security-state-and-local-cybersecurity-grant-program-slcgp))

---

## Three things to actually do this week
1. **Confirm with the superintendent whether the district uses Canvas (or any Instructure product), and request a written status on what student/staff data may have been exposed in the ShinyHunters incident.** — If yes, the board should expect parent questions and may need to authorize credit-monitoring or a notification letter. Get out ahead of it.
2. **Push a one-page "no-callback, no-money" policy through Tennille's finance office and any school board finance committees you sit on.** — Wire changes, vendor bank-account changes, and emergency payment requests must be verified by callback to a number already on file, never to a number provided in the request. This single control kills the bulk of voice-clone and BEC attacks.
3. **Verify Georgia's SLCGP status and any open FY26 sub-program windows applicable to Tennille.** — This is the last full year of IIJA cyber-grant money. Even if Tennille is too small to lead its own application, sub-recipient slots through the state plan are the most realistic path to funded controls (MFA rollout, endpoint detection, backup hardening) and they expire when the IIJA does.

---

## Sources
- [WRAL – Canvas / ShinyHunters / Instructure breach](https://www.wral.com/news/education/canvas-shinyhunters-ransom-instructure-hack-data-breach-may-2026/)
- [WRAL – April data breach may have impacted all NC schools](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [Malwarebytes – Millions of students' personal data stolen](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)
- [K-12 Dive – Instructure confirms cybersecurity incident](https://www.k12dive.com/news/instructure-confirms-cybersecurity-incident/819362/)
- [WBAY – Wisconsin universities, public schools impacted by Canvas breach](https://www.wbay.com/2026/05/07/wisconsin-universities-public-schools-impacted-by-canvas-data-breach/)
- [K12 SIX – News and incident map](https://www.k12six.org/all-news)
- [K12 SIX – Breaches worse than reported](https://www.k12six.org/news/k-12-cybersecurity-breaches-worse-than-reported-at-federal-level)
- [TechTarget – May ransomware attacks on municipal governments](https://www.techtarget.com/searchsecurity/news/252521021/May-ransomware-attacks-strike-municipal-governments-IT-firms)
- [The Record – Municipalities struggling with cyberattacks](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [The Record – Fulton County, GA cyberattack](https://therecord.media/fulton-county-georgia-atlanta-cyberattack-causing-outages)
- [FDD – Governors calling the National Guard for ransomware response](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/)
- [SOCRadar – US State and Local Government Ransomware 2025–2026](https://socradar.io/blog/us-state-local-government-ransomware-2025-2026/)
- [Georgia Technology Authority – Cybersecurity incidents](https://gta.georgia.gov/contact-us/cybersecurity-incidents)
- [CybelAngel – Voice cloning is the new BEC](https://cybelangel.com/blog/deepfake-ceo-fraud-how-voice-cloning-targets-us-executives/)
- [Flux Labs – The Deepfake CEO scam](https://www.fluxlabs.net/2026/02/15/the-deepfake-ceo-scam-why-voice-cloning-is-the-new-business-email-compromise-bec/)
- [WDAM – Corinth deepfake trial](https://www.wdam.com/2026/04/29/corinth-deepfake-trial-highlights-challenges-regulating-ai-generated-content/)
- [Philadelphia Inquirer – Radnor School District deepfake response](https://www.inquirer.com/education/radnor-school-district-ai-deepfake-policy-20260506.html)
- [Government Technology – Deepfakes hazard for school employees](https://www.govtech.com/education/k-12/ais-latest-hazard-for-school-employees-deepfakes)
- [StateScoop – CISA confirms ending MS-ISAC support](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Cybersecurity Dive – Federal cuts force SLTT out of MS-ISAC](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [Infosecurity Magazine – US cuts funding for MS-ISAC](https://www.infosecurity-magazine.com/news/us-cuts-funding-ms-isac/)
- [CISA – SLTT SOC/ISAC](https://www.cisa.gov/state-local-tribal-and-territorial-security-operations-centerinformation-sharing-and-analysis-center)
- [CISA – State and Local Cybersecurity Grant Program](https://www.cisa.gov/cybergrants/slcgp)
- [Texas DIR – SLCGP](https://dir.texas.gov/information-security/state-and-local-cybersecurity-grant-program-slcgp)
- [WaTech – SLCGP](https://watech.wa.gov/state-local-cybersecurity-grant-program)
- [Mississippi MOHS – SLCGP](https://www.homelandsecurity.ms.gov/grants/homeland-security-state-and-local-cybersecurity-grant-program-slcgp)
- [Bettors Insider – Genius Sports / Legend $1.2B close](https://bettorsinsider.com/sports-betting/2026/05/07/genius-sports-just-closed-its-1-2-billion-legend-acquisition-heres-why-it-matters-for-sportsbooks-and-the-data-market/)
- [Mordor Intelligence – AI in Sports market 2026–2031](https://www.mordorintelligence.com/industry-reports/artificial-intelligence-market-in-sports)
- [Genius Sports – GeniusIQ launch](https://www.geniussports.com/newsroom/genius-sports-launches-geniusiq-to-accelerate-the-ai-revolution-in-global-sport/)
- [Investing.com – GeniusIQ at Liga MX](https://www.investing.com/news/company-news/genius-sports-deploys-ai-platform-across-liga-mx-stadiums-93CH-4655902)
- [Sports Destination Management – Athlete privacy & wearables](https://www.sportsdestinations.com/management/technology/athlete-privacy-growing-concern-wearable-tech-37027)
- [Lexology – Wearable tech in pro sports](https://www.lexology.com/library/detail.aspx?g=2b1b620e-18b6-474e-8de4-cd0dd7556db8)
- [Buchanan Ingersoll & Rooney – CSC NIL guidance](https://www.bipc.com/csc-issues-guidance-on-nil-enforcement-as-the-transfer-portal-heats-up)
- [CNBC – Scorability NIL recruiting platform](https://www.cnbc.com/2025/09/30/scorability-wants-to-revolutionize-college-sports-recruiting-as-nil-takes-off.html)
- [WeLiveSecurity – 10 cyber hits on the sporting world](https://www.welivesecurity.com/en/cybercrime/cybercriminals-play-dirty-10-cyber-hits-sporting-world/)
- [Microsoft – Cyber Signals: cybersecurity threats in sports](https://www.microsoft.com/en-us/security/security-insider/threat-landscape/cyber-signals-issue-5-cyberthreats-increasingly-target-the-worlds-biggest-event-stages/)
