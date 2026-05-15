# Daily Cybersecurity Intel Brief
**Date:** Friday, May 15, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The Canvas/Instructure breach is the dominant K-12 story this week — ShinyHunters claims ~275M records across 8,800+ districts and universities, and Georgia schools are confirmed in the blast radius. Business email compromise against school finance offices keeps stacking up multi-million-dollar losses (Dickinson, ND lost $4.92M in February; an Arkansas district lost $3.2M). On the federal side, CISA rolled out new direct cyber support for state and local governments on May 1, while the final-year SLCGP rules now bar grant dollars from being spent on MS-ISAC services — a policy shift councilmen and clerks need to be tracking before FY26 plans are finalized.

---

## K-12 cybersecurity — what's hitting schools right now

- **Canvas / Instructure (global, May 1–12)** — ShinyHunters breached Instructure, hit Canvas a second time on May 7, and replaced the login page with a ransomware message. They claim ~275 million records — usernames, emails, course names, enrollment data, and messages — across 8,809 named districts, universities, and online education platforms. Instructure says no passwords, DOBs, government IDs, or financial data were exposed.
- **Wake County Public Schools, NC** — first major U.S. district publicly tied to the Canvas breach; staff and student data accessed.
- **Utah schools** — districts are warning parents of follow-on phishing using the leaked Canvas data.
- **Dickinson Public Schools, ND (Feb 2026)** — $4.92M wire-fraud loss to a BEC scheme impersonating a trusted vendor; FBI and U.S. Attorney's Office now involved.
- **Kansas school districts (Feb 2026)** — KBI confirmed an active BEC investigation; at least one district compromised, payroll and bank account data targeted.
- **Arkansas school system** — $3.2M loss in a separate BEC case referenced in the 2026 K12 SIX reporting.

Broader trend: the data stolen from Canvas (legitimate teacher–student–parent email pairs plus course context) is rocket fuel for the next 90 days of spear-phishing and BEC. 65% of K-12 tech leaders cite staffing and budget as the top blockers per the U.S. State of EdTech 2026 report.

**Council-relevant angle:** if your district uses Canvas (or any district your council coordinates with does), the right ask this week is to your superintendent and CFO: "Have we forced a password reset, enabled MFA on the finance side, and put a verbal-callback rule on any vendor banking change?" The next BEC will arrive looking exactly like a vendor your business office already knows.

## Local municipalities — what's hitting cities and counties

- **BridgePay Network Solutions (multi-state, early 2026)** — payment gateway used by municipalities and utilities hit by ransomware; downstream service disruptions across multiple states.
- **Town of Orange, VA** — listed on LockBit's leak site after a ransomware claim.
- **New Britain, CT (late Jan 2026)** — ransomware took down city network systems for 48+ hours; departments reverted to manual processes.
- **St. Paul, MN** — ransomware gang claimed credit for an ongoing attack on city government.
- Researchers have logged 9 confirmed ransomware attacks on U.S. federal/state/local entities so far in 2026, with another 17 claimed but unconfirmed. Qilin, Interlock, and Nova are the active brand names this quarter.

### Georgia angle (Tennille / Southeast)
- **Georgia schools (metro Atlanta and statewide)** — confirmed affected by the Canvas breach; AJC has parent notifications going out this week.
- **Georgia Superior Court Clerks' Cooperative Authority (GSCCCA)** — ongoing ransomware-related outage causing statewide court filing disruption. Any Tennille business filing real-estate or UCC documents this week should expect delays.
- **Univ. of Mississippi Medical Center (Feb 2026)** — ransomware closed all 35 clinics statewide and dropped them off EPIC EMR; a useful reference case for the kind of full-system outage a small Georgia city should be tabletop-testing against.

**Council-relevant angle:** Tennille's biggest single-point-of-failure exposure right now is the payment-gateway / utility-billing stack (BridgePay-style supplier risk) and any third-party platform the city clerk uses for court or licensing filings. Worth a one-page vendor inventory and a written ask to each vendor: "What's your incident-notification SLA to us, and when was your last pen-test?"

## What's new — AI / deepfake threats relevant to councils and school boards

- **FBI:** ongoing AI voice-cloning campaign impersonating senior U.S. state government, White House, Cabinet, and Congressional officials — activity traced back to 2023 and still active. The pattern: voice clone of a known official, request to "move to a secure channel" (Signal, personal email), then a credential or money ask.
- **ElevenLabs / Mayor Adams** — the same voice-cloning platform NYC hired to clone Mayor Adams' voice was the same platform tied to the deepfake Biden robocall in NH. Worth knowing when your colleagues pitch "AI multilingual outreach" as a constituent-service idea.
- Deepfake fraud in financial-services rose ~700% YoY in 2023 and has kept climbing; only 7% of organizations say they are firmly ready (ACFE/SAS 2026 study). Public sector and government were the single largest respondent group (26%).

**Council-relevant angle:** the realistic 2026 threat to a small-city council is not a deepfake political ad — it's a cloned voice of *you* or the mayor calling the city clerk to authorize an "urgent" wire or vendor banking change. The mitigation is a written, boring, no-exceptions rule: any financial action requested by voice must be confirmed via a separate, pre-registered channel before execution.

## Federal / policy items a councilman should be tracking

- **CISA — May 1, 2026 announcement:** new direct cyber support to SLTT governments. Regional Cybersecurity Advisors and State Coordinators are now offering free vulnerability assessments, IR coordination, and bi-monthly SLTT SOC calls. For a town the size of Tennille this is the highest-leverage free resource on the table.
- **SLCGP — final year, major rule change:** SLCGP funds may no longer be spent on MS-ISAC services. States that built their cyber plans around MS-ISAC tooling need to rework them; the deadline for revised Cybersecurity Plan resubmission was Jan 30, 2026. If Georgia hasn't redirected those dollars yet, there's a window to push for municipal allocations.
- **K12 SIX — "Essential Cybersecurity Protections: 2026"** — updated checklist plus a district self-assessment tool. A good handout to the local school board.
- **H.R. 1734 (Preventing Deep Fake Scams Act)** — moving through the 119th Congress; worth watching for council policy reference.

---

## Three things to actually do this week
1. **Send a one-paragraph note to Tennille's city clerk and to your school superintendent contacts confirming Canvas exposure status and asking for an MFA + password-reset attestation.** — The Canvas data is the single freshest, highest-quality phishing input criminals have right now; the next 90 days will see targeted follow-on attacks.
2. **Stand up a written "voice + email = not enough" rule for any vendor banking change or wire over $5K, requiring callback to a pre-registered number.** — Dickinson ($4.92M) and Arkansas ($3.2M) both happened to districts that did not have this control. It costs nothing.
3. **Request a free CISA vulnerability scan / advisor engagement for the City of Tennille under the new May 1 SLTT direct-support program.** — Free, federal, and gives you documented baseline before the next SLCGP cycle conversation.

---

## Sources
- [Technology Security Alert – Ongoing Cybersecurity Incident Involving the Canvas LMS (U.S. Dept. of Education, May 12, 2026)](https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-05-12/technology-security-alert-ongoing-cybersecurity-incident-involving-canvas-learning-management-system)
- [April data breach may have impacted all NC schools (WRAL)](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [2026 Canvas security incident (Wikipedia)](https://en.wikipedia.org/wiki/2026_Canvas_security_incident)
- [Millions of students' personal data stolen in major education breach (Malwarebytes)](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)
- [Some Canvas Users Receive Ransomware Threat After Data Breach (GovTech)](https://www.govtech.com/education/k-12/some-canvas-users-receive-ransomware-threat-after-data-breach)
- [K12 SIX — News](https://www.k12six.org/all-news)
- [K-12 Cyber Incident Map (K12 SIX)](https://www.k12six.org/map)
- [North Dakota school district loses nearly $5 million in sophisticated email scam (Valley News Live)](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [Kansas schools hit with email scam (The Sentinel)](https://sentinelksmo.org/kansas-schools-hit-with-email-scam/)
- [Utah schools warn of scams after cyberattack on Canvas (KUTV)](https://kutv.com/news/local/utah-schools-warn-of-scams-after-cyberattack-on-canvas-causes-massive-data-breach)
- [Georgia schools, colleges affected by cyberattack on online classroom platform (AJC)](https://www.ajc.com/education/2026/05/georgia-schools-affected-by-cyberattack-on-online-classroom-platform/)
- [Ransomware attack hits Georgia courts agency (WSB Radio)](https://www.wsbradio.com/news/state--regional-govt--politics/georgia-court-agency-hacked-ransom-attack/P3UaTuigNhT6JfREQaiKZK/)
- [GSCCCA Cyber Attack Causes Service Disruption (Local 3 News)](https://www.local3news.com/local-news/ransomware-attack-temporarily-disrupts-georgia-superior-court-clerks-services/article_65887871-4c90-482b-be01-5aca59e20e08.html)
- [Municipalities in four states are struggling with cyberattacks limiting services (The Record)](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [Ransomware gang claims attack on St. Paul city government (The Record)](https://therecord.media/ransomware-gang-behind-minnesota-attack)
- [The State Of Ransomware 2026 (BlackFog)](https://www.blackfog.com/the-state-of-ransomware-2026/)
- [U.S. State and Local Government Under Ransomware: 2025–2026 Trend Analysis (SOCRadar)](https://socradar.io/blog/us-state-local-government-ransomware-2025-2026/)
- [When Ransomware Hits, Governors Are Calling the National Guard (FDD)](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/)
- [CISA is Strengthening Our Nation's Security with Direct Cyber Support to State and Local Governments (CISA, May 1, 2026)](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments)
- [State and Local Cybersecurity Grant Program (CISA)](https://www.cisa.gov/cybergrants/slcgp)
- [New state, local cyber grant rules prohibit spending on MS-ISAC (StateScoop)](https://statescoop.com/state-local-cyber-grant-msisac-2025/)
- [FBI says 'ongoing' deepfake impersonation of U.S. gov officials dates back to 2023 (CyberScoop)](https://cyberscoop.com/fbi-says-ongoing-deepfake-impersonation-of-us-officials-dates-back-to-2023/)
- [AI company hired to clone Mayor Adams' voice linked to Biden deepfake (NBC New York)](https://www.nbcnewyork.com/investigations/ai-company-hired-to-clone-mayor-adams-voice-linked-to-biden-deepfake-researchers-say/5093499/)
- [Study: Deepfake fraud surges – and only 7% of organizations are firmly ready (SAS / ACFE 2026)](https://www.sas.com/en_us/news/press-releases/2026/march/acfe-anti-fraud-technology-study-deepfakes.html)
- [H.R.1734 – Preventing Deep Fake Scams Act (Congress.gov)](https://www.congress.gov/bill/119th-congress/house-bill/1734/text)
