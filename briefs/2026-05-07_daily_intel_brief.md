# Daily Cybersecurity Intel Brief
**Date:** Thursday, May 7, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The wire-fraud problem against school finance offices is no longer a once-a-year story — Dickinson (ND) lost ~$4.92M in February and Pine Bluff (AR) lost $3.2M in December, both via vendor-impersonation BEC against building/operating funds. Locally, Winona County, MN was hit by a *second* ransomware attack in three months, requiring National Guard cyber teams to keep services online. And the safety net is shrinking: federal MS-ISAC funding for state and local governments ended Oct. 1, 2025, with reauthorization of the SLCGP (the grant program many small Georgia jurisdictions rely on) still moving through Congress.

---

## K-12 cybersecurity — what's hitting schools right now

- **Instructure / Canvas LMS breach (April 2026)** — Instructure is notifying districts that names, email addresses, student IDs, and user communications were accessed. Wake County (NC) and other statewide deployments are confirmed impacted. The exposed data is exactly what's needed to craft highly convincing phishing against parents and staff. ([WRAL](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/))
- **Spring Lake Park Schools (MN)** closed for two days responding to an alleged ransomware incident; **Alamo Heights ISD (TX)** is recovering from district-wide internet outages tied to a separate ransomware event; **LA County Office of Education** is investigating fraudulent tax filings submitted in employees' names — suggestive of an HR/payroll data compromise. ([K12 SIX news](https://www.k12six.org/news))
- **BEC vendor-impersonation wire fraud is the dominant K-12 financial threat right now.** Dickinson Public Schools (ND) lost ~$4.92M in February when criminals posing as a trusted contractor redirected two scheduled Building Fund payments. Pine Bluff (AR) lost $3.2M in December via a hijacked email thread that swapped legitimate wiring instructions with fraudulent ones — that case is now under federal investigation. ([Valley News Live](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/), [KARK](https://www.kark.com/news/local-news/pine-bluff-schools-lose-3-2m-in-cyberattack-scam/))
- **K12 SIX released the 2026 update to its Essential Cybersecurity Protections** in April, with refreshed implementation rubrics and a self-assessment tool. The 2027 K-12 Cybersecurity Leadership Conference will be held in Atlanta — relevant for Georgia districts. ([K12 SIX Essentials](https://www.k12six.org/k12six-webinars/essentials26))
- **Council-relevant angle:** Most K-12 BEC losses come from a missing $20 control — verbal verification of any change to vendor banking info via a known phone number. If a district in your area hasn't formalized dual authorization + verbal callback for wires, this should be raised at the next joint board / council meeting before the next budget cycle.

## Local municipalities — what's hitting cities and counties

- **Winona County, MN (April 7, 2026)** — second ransomware attack in three months, severe enough that Gov. Walz authorized the Minnesota National Guard cyber protection team to keep emergency and real-estate-records services running. ([Winona Post](https://www.winonapost.com/news/countys-latest-cyberattack-disrupts-real-estate-records-again/article_665e0145-a6b0-4c5f-abad-61a27ad9975f.html), [FDD analysis](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/))
- **BridgePay Network Solutions (early 2026)** — ransomware against this payment-gateway vendor disrupted utility/billing portals across multiple cities. A reminder that municipal "third-party risk" is mostly billing, payroll, and records vendors, not flashy SaaS. ([Computerbilities summary](https://www.computerbilities.com/ransomware-disrupts-us-municipal-services/))
- **Multi-state outages** — Recorded Future tracked simultaneous cyber incidents in Texas, Tennessee, and Indiana impacting critical government services. Pattern: small-to-mid jurisdictions, attacker dwell time long enough to encrypt backups. ([The Record](https://therecord.media/cyber-incidents-texas-tennessee-indiana))

**Georgia subsection.** The Georgia Superior Court Clerks' Cooperative Authority (GSCCCA) cyber incident — claimed by the "Devman" ransomware group with allegations of 500GB exfiltrated — continues to ripple through real estate transactions statewide. Brokers report ongoing closing delays because deed and lien filings have been impaired. ([WSB-TV](https://www.wsbtv.com/news/local/atlanta/cyberattack-paralyzes-georgias-real-estate-industry-broker-says/5XEPCYJUZBB6HMIKJQPD7RAG5U/), [The Record](https://therecord.media/georgia-court-filing-org-ransomware-warning)) For Tennille, the practical exposure is any city function that depends on GSCCCA filings (tax liens, code-enforcement liens, real-estate closings affecting city property). Worth asking the city attorney whether anything in flight is stuck.

**Council-relevant angle:** When a vendor like GSCCCA goes down, the city has no leverage to speed restoration — but it absolutely has leverage to demand notification timelines and breach reporting in any *future* contract. Add a cyber-incident notification clause to vendor contract templates this quarter.

## What's new — AI / deepfake threats relevant to councils and school boards

- **Voice cloning has crossed what researchers call the "indistinguishable threshold"** — a few seconds of audio is now enough to clone a superintendent, mayor, or council chair convincingly enough to fool a finance clerk or vendor. Roughly 1 in 4 Americans report having received an AI-generated voice call in the last year. ([Fortune](https://fortune.com/2025/12/27/2026-deepfakes-outlook-forecast/), [UnboxFuture](https://www.unboxfuture.com/2026/03/the-ai-voice-scam-epidemic-Fooled-by-Deepfakes.html))
- **Radnor Township School District (PA)** is hiring outside experts to prepare for the next deepfake incident after a 2025 case targeting freshman girls drew sustained criticism. Notable because the district is moving from reactive to *retainer* — a model other boards may follow. ([Inquirer](https://www.inquirer.com/education/radnor-school-district-ai-deepfake-policy-20260506.html))
- **Federal:** Senate bill S.3982, the AI Fraud Accountability Act of 2026, would create a federal criminal prohibition on "digital impersonation" used to defraud — moving but not yet law. ([Biometric Update](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny))
- **Council-relevant angle:** Add a "code word" or callback-via-published-number policy for any phone-initiated request to move money, change vendor banking, or release records. Same control defeats both BEC and voice-cloning attacks.

## Federal / policy items a councilman should be tracking

- **MS-ISAC federal funding ended Oct. 1, 2025.** CISA confirmed it's no longer underwriting SLTT membership; CIS is now charging at-cost for add-on services. Many small Georgia jurisdictions historically relied on free MS-ISAC alerts and Albert sensors — if your IT vendor for the city has been quietly dropping those services, you'll want to know. ([CISA confirms](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/), [Cybersecurity Dive](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/))
- **SLCGP reauthorization moving in Congress.** The House passed the PILLAR Act on Nov. 17 (would reauthorize SLCGP through 2033); a Senate companion (Hassan/Cornyn) was introduced Dec. 1. FY25 NOFO ($91.75M, down sharply from $279M in FY24 and $374M in FY23) was published in August 2025 with state-level deadlines stretching into 2026. Small cities should be asking the state administrative agency whether sub-grant pass-through is still on the table this cycle. ([NACo](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program), [CISA SLCGP](https://www.cisa.gov/cybergrants/slcgp))
- **CISA SLTT direct services still available** — Regional Cybersecurity Advisors, Cybersecurity State Coordinators, free vulnerability assessments, bi-monthly SOC calls. These survived the MS-ISAC cut. ([CISA news](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments))

---

## Three things to actually do this week

1. **Get a one-page wire-transfer control written for the city / any client school district** — dual authorization, verbal callback to a known number for any banking-info change, no email-only wiring instructions. The Dickinson and Pine Bluff losses both would have been blocked by this single control.
2. **Ask Tennille's city attorney whether any active closings, lien filings, or property records are stuck in the GSCCCA outage** — and whether the city's vendor contract templates require breach-notification timelines. If not, draft a clause now while the topic is fresh.
3. **Confirm Tennille's CISA Regional Advisor contact and SLCGP sub-grant status for FY25/26** with the Georgia Emergency Management Agency / GTA. If MS-ISAC services have lapsed since October, identify what fills the gap (paid CIS membership, MSSP, or CISA direct services) before the next budget vote.

---

## Sources
- [WRAL — Canvas/Instructure NC schools breach](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [K12 SIX News](https://www.k12six.org/news)
- [K12 SIX 2026 Essentials webinar](https://www.k12six.org/k12six-webinars/essentials26)
- [Valley News Live — Dickinson Public Schools $4.92M BEC](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [KARK — Pine Bluff Schools $3.2M cyberattack](https://www.kark.com/news/local-news/pine-bluff-schools-lose-3-2m-in-cyberattack-scam/)
- [Pine Bluff Commercial — PBSD incident detail](https://www.pbcommercial.com/pbsd-victim-of-3-2-million-cybersecurity-incident/)
- [Winona Post — Winona County second ransomware attack](https://www.winonapost.com/news/countys-latest-cyberattack-disrupts-real-estate-records-again/article_665e0145-a6b0-4c5f-abad-61a27ad9975f.html)
- [FDD — Governors calling the National Guard for ransomware](https://www.fdd.org/analysis/2026/05/06/when-ransomware-hits-governors-are-calling-the-national-guard/)
- [Computerbilities — BridgePay municipal payment outages](https://www.computerbilities.com/ransomware-disrupts-us-municipal-services/)
- [The Record — Multi-state municipal cyber incidents (TX/TN/IN)](https://therecord.media/cyber-incidents-texas-tennessee-indiana)
- [WSB-TV — Georgia real estate paralyzed by GSCCCA cyberattack](https://www.wsbtv.com/news/local/atlanta/cyberattack-paralyzes-georgias-real-estate-industry-broker-says/5XEPCYJUZBB6HMIKJQPD7RAG5U/)
- [The Record — GSCCCA ransomware warning](https://therecord.media/georgia-court-filing-org-ransomware-warning)
- [Fortune — 2026 deepfake outlook](https://fortune.com/2025/12/27/2026-deepfakes-outlook-forecast/)
- [UnboxFuture — AI voice scam epidemic](https://www.unboxfuture.com/2026/03/the-ai-voice-scam-epidemic-Fooled-by-Deepfakes.html)
- [Inquirer — Radnor school district deepfake response](https://www.inquirer.com/education/radnor-school-district-ai-deepfake-policy-20260506.html)
- [Biometric Update — AI Fraud Accountability Act of 2026 (S.3982)](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [StateScoop — CISA confirms ending MS-ISAC support](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Cybersecurity Dive — MS-ISAC federal funding loss impact](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [NACo — SLCGP reauthorization status](https://www.naco.org/news/congress-considers-bills-reauthorize-state-and-local-cybersecurity-grant-program)
- [CISA — SLCGP program page](https://www.cisa.gov/cybergrants/slcgp)
- [CISA — Direct cyber support to SLTT](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments)
