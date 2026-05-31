# Daily Cybersecurity Intel Brief
**Date:** Sunday, May 31, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
The Canvas/Instructure breach is now being called the largest education-sector breach on record — ~275 million records and metro-Atlanta districts are confirmed affected, so this lands directly on Georgia clients. A ransomware hit on payment processor BridgePay is knocking out card-payment systems across multiple cities, counties, and utilities, a reminder that third-party vendors are the soft underbelly of local government. And BEC/wire fraud against school finance offices keeps draining seven-figure sums — Dickinson (ND) just lost ~$4.9M — with superintendent-impersonation now the dominant playbook.

---

## K-12 cybersecurity — what's hitting schools right now
- **Canvas / Instructure (global, incl. Georgia):** A breach of the Canvas LMS, first disclosed May 1, exposed usernames, emails, course and enrollment data, and messages. The ShinyHunters group claims ~275 million records across 8,809 institutions and re-defaced the login page on May 7 after Instructure said it was resolved. The U.S. Department of Education issued a formal Technology Security Alert on May 12. Metro-Atlanta K-12 students are confirmed among those affected.
- **Dickinson Public Schools (ND):** Lost ~$4.92M in a vendor-impersonation BEC scam that redirected two scheduled payments to a fraudulent account.
- **Princeton Public Schools (NJ):** ~$178K lost to wire fraud tied to a construction-vendor payment.

Broader trend: phishing still drives the majority of K-12 incidents, and attackers have shifted from mass email to targeted whaling against superintendents and finance staff. *Council-relevant angle:* the same LMS and payment-vendor exposures that hit districts hit municipal systems — ask your district and city finance offices whether they have out-of-band callback verification for any payment-detail change.

## Local municipalities — what's hitting cities and counties
- **BridgePay Network Solutions (multi-state):** A ransomware attack on this third-party payment processor has taken down credit-card payment systems for several public-sector entities. Confirmed impacts include Grand Traverse County, Mich., a Wisconsin municipal campground reservation system, and a utility in Palm Bay, Fla.; Wichita, Kan. found a workaround. BridgePay says no card data was compromised and is working with the Secret Service and FBI. Some jurisdictions have moved residents to in-person, drop-box, or kiosk payments.

Broader trend: vendor and managed-service compromise remains the highest-leverage path into local government — one processor outage cascades across dozens of jurisdictions.

### Georgia-specific
- **Canvas fallout:** Georgia schools and colleges, including metro-Atlanta districts, are confirmed affected by the Canvas breach (AJC, May 8).
- Recent Georgia public-sector incidents worth noting for context: the Georgia Superior Court Clerks' Cooperative Authority (GSCCCA) ransomware disruption hit real-estate and civil court filings statewide, and Murray County offices were closed/limited by a separate cyberattack (911, public safety, and voting stayed up).

*Council-relevant angle:* if Tennille or any client takes card payments through an integrator, confirm which processor sits behind it and what the manual fallback is — BridgePay-style outages are survivable only if you've rehearsed the workaround.

## What's new — AI / deepfake threats relevant to councils and school boards
- Voice cloning now needs only ~3 seconds of audio for an ~85% match (McAfee), and the FBI has issued a standing warning on AI voice phishing. Public officials, executives, and finance/help-desk staff are the prime targets. Congress opened new scrutiny of AI voice fraud in April 2026.
- The "deepfake CEO" pattern is now the dominant evolution of BEC — a cloned voice of a trusted boss or partner authorizing an urgent transfer. A January 2026 case saw a businessman wired several million Swiss francs after calls with a cloned partner voice. Reported figure: 77% of people who engaged with an AI scam call lost money.

*Council-relevant angle:* a cloned "superintendent" or "city manager" voice authorizing a wire is now a realistic threat, not a hypothetical. The cheap defense is a pre-agreed verbal code word and a mandatory callback to a known number for any payment instruction.

## Federal / policy items a councilman should be tracking
- **SLCGP:** The State and Local Cybersecurity Grant Program funding fell sharply — from $279.9M (FY24) to $91.7M (FY25) — so competition for FY26 dollars will be tighter. Texas and other states have FY26 sub-programs open (governance/planning, assessment, mitigation, workforce). Entities with a CISA-approved Cybersecurity Plan had to resubmit to the FEMA SLCGP inbox by Jan 30, 2026 to stay eligible.
- **MS-ISAC:** The Whole-of-State / SLCGP Forum continues to meet monthly — a free peer-learning channel for SLT leaders and a good fit for ASA Cyber clients.
- **Dept. of Education:** Issued a Technology Security Alert (May 12) on the Canvas incident — useful cover when advising districts to act.

---

## Three things to actually do this week
1. **Push out-of-band payment verification to every client finance office** — the Dickinson ($4.9M) and BridgePay incidents both show that a single payment-detail change or processor outage can wipe out a budget. A mandatory callback-to-known-number rule is nearly free and stops most BEC.
2. **Map each client's payment-processor dependency** — find out which third party (BridgePay-type) sits behind card payments for Tennille and any municipal client, and confirm the manual fallback is documented and rehearsed.
3. **Send districts a one-pager on the Canvas breach + deepfake voice fraud** — pair the DOE May 12 alert with a simple "code word + callback" rule for superintendent/manager wire requests. Position ASA Cyber as the advisor who flagged it first.

---

## Sources
- [April data breach may have impacted all NC schools (WRAL)](https://www.wral.com/news/education/data-breach-wake-county-schools-canvas-powerschool-instructure-may-2026/)
- [DOE Technology Security Alert — Canvas incident (May 12)](https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-05-12/technology-security-alert-ongoing-cybersecurity-incident-involving-canvas-learning-management-system)
- [2026 Canvas data breach (Wikipedia)](https://en.wikipedia.org/wiki/2026_Canvas_security_incident)
- [Millions of students' data stolen in education breach (Malwarebytes)](https://www.malwarebytes.com/blog/news/2026/05/millions-of-students-personal-data-stolen-in-major-education-cyberattack)
- [K-12 Cyber Incident Map (K12 SIX)](https://www.k12six.org/map)
- [Cyber Attack Disrupts Local Government Payment Systems — BridgePay (GovTech)](https://www.govtech.com/security/cyber-attack-disrupts-local-government-payment-systems)
- [Municipalities in four states struggling with cyberattacks (The Record)](https://therecord.media/municipalities-struggling-cyberattacks-services)
- [Georgia schools, colleges affected by Canvas cyberattack (AJC)](https://www.ajc.com/education/2026/05/georgia-schools-affected-by-cyberattack-on-online-classroom-platform/)
- [GSCCCA cyberattack disrupts Georgia court filings (Local3News)](https://www.local3news.com/local-news/ransomware-attack-temporarily-disrupts-georgia-superior-court-clerks-services/article_65887871-4c90-482b-be01-5aca59e20e08.html)
- [Murray County, GA cyberattack closes county offices (DysruptionHub)](https://dysruptionhub.com/murray-georgia-cyberattack-offices/)
- [North Dakota school district loses ~$5M in email scam (Valley News Live)](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [Phishing Trends 2026 for K–12 (CyberNut)](https://www.cybernut.com/blog/phishing-trends-2026-predictions-for-k12-and-how-schools-can-prepare-today)
- [FBI Warning on AI Voice Phishing (BlackFog)](https://www.blackfog.com/fbi-warning-ai-voice-phishing-how-to-stop-threat/)
- [AI voice fraud draws new congressional scrutiny (Biometric Update)](https://www.biometricupdate.com/202604/ai-voice-fraud-draws-new-congressional-scrutiny)
- [State and Local Cybersecurity Grant Program (CISA)](https://www.cisa.gov/cybergrants/slcgp)
- [SLCGP overview (CIS / MS-ISAC)](https://www.cisecurity.org/ms-isac/slcgp)
