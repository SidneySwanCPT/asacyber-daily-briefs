# Daily Cybersecurity Intel Brief
**Date:** Monday, June 22, 2026
**Prepared for:** Sidney — Councilman / ASA Cyber Consulting
**Focus areas:** K-12 education, local municipalities, council-level decisions

---

## Top-line takeaways
Business email compromise — not ransomware — is the loss leader hitting school finance offices right now: three districts (Dickinson ND, Pine Bluff AR, and a Tennessee district) have collectively lost roughly $11M to vendor-impersonation wire fraud, several disclosed in the last few weeks. In Georgia, Murray County confirmed it paid attackers $200K after a May ransomware hit, a live data point for any Tennille client conversation about the cost of *not* prepping. And the policy ground is shifting: the federal MS-ISAC funding model that local governments leaned on has wound down, with CISA moving to direct support — councils should not assume the free services they relied on last year are still there.

---

## K-12 cybersecurity — what's hitting schools right now
- **Dickinson Public Schools (North Dakota)** — lost nearly **$4.92M** to a business email compromise scam after criminals impersonated a trusted vendor and redirected two scheduled payments. Funds came from the district's restricted Building Fund; FBI and the U.S. Attorney's Office are investigating. ([Valley News Live](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/), [GovTech](https://www.govtech.com/education/k-12/north-dakota-school-district-loses-4-9m-to-email-scam))
- **Pine Bluff School District (Arkansas)** — the finance director wired **$3.2M** to a BEC scammer; funds moved through Citibank and out to multiple downstream accounts. ([Arkansas Times](https://arktimes.com/arkansas-blog/2026/04/28/bogus-wire-transfer-bilks-millions-from-pine-bluff-school-district))
- **Tennessee district** — lost **$3.4M** to a fake curriculum vendor in a BEC scheme. ([The Record](https://therecord.media/tennessee-school-district-loses-3-million-bec-scam))

The pattern is consistent: attackers impersonate an existing, trusted vendor, then ask the finance office to "update" banking/ACH details before a scheduled payment. No malware required — it defeats antivirus and firewalls because it's a process failure, not a technical one. Ransomware against education is actually flat-to-down worldwide, but BEC losses are climbing because the dollar amounts per incident are enormous.

**Council-relevant angle:** Any district or municipality that pays vendors by ACH needs a hard, out-of-band callback rule — verify any change to banking details by calling a *known* number on file, never the one in the email. This is a one-page policy that would have stopped all three losses above.

## Local municipalities — what's hitting cities and counties

### Georgia
- **Murray County (NW Georgia)** — confirmed it **paid hackers ~$200K** following a May ransomware attack that closed county offices. As of mid-June most systems were restored and the county is tightening controls. This is a same-size-as-Tennille rural county, which makes it the most relevant local benchmark this week. ([Chattanooga Times Free Press](https://www.timesfreepress.com/news/2026/jun/16/murray-county-paid-hackers-200k-after-ransomware/), [DysruptionHub](https://dysruptionhub.com/murray-georgia-cyberattack-offices/))
- Georgia continues to see a geographically dispersed wave of local-government ransomware across both Atlanta-area suburbs and smaller rural counties, per incident tracking. ([SecuLore Georgia archive](https://www.seculore.com/resources/cyber-attack-archive/georgia))

Beyond Georgia, the through-line is unchanged: small local governments remain the soft target because they hold sensitive resident data (payroll, tax, benefits) but rarely staff a dedicated security function.

**Council-relevant angle:** Murray County is the talking point — a peer-sized Georgia county that paid a six-figure ransom. For Tennille, that reframes the cost question: a tested backup-and-restore plan and offline backups are cheaper than a $200K demand plus downtime.

## What's new — AI / deepfake threats relevant to councils and school boards
- **Maryland became the 30th state** to enact election-deepfake legislation; the law **took effect June 1, 2026**, gives election officials a defined role in responding to credible deepfake reports, and creates legal consequences for knowingly using deepfakes to spread materially false election info. With midterms ahead, expect more states to follow. ([Biometric Update](https://www.biometricupdate.com/202605/election-deepfake-laws-spread-across-us-ahead-of-2026-midterms), [Public Citizen tracker](https://www.citizen.org/article/tracker-legislation-on-deepfakes-in-elections/))
- **Radnor Township School Board (PA)** spent part of this spring dealing with public fallout from an AI deepfake scandal involving the superintendent — a concrete example of synthetic media targeting a named local official. ([6abc](https://6abc.com/post/parents-address-radnor-township-school-board-ai-deepfake-scandal/18583014/))
- Voice-cloning tooling now needs only **3–30 seconds** of public audio to produce a convincing clone, and red-team testing in May 2026 showed family members couldn't reliably tell cloned voicemails from real ones over mobile-quality audio. Public officials — whose voices are on recorded meetings and YouTube — are easy source material. ([Kymatio](https://kymatio.com/blog/phishing-trends-ai-phishing-qrishing-and-voice-attacks), [Cyble](https://cyble.com/knowledge-hub/deepfake-as-a-service-exploded-in-2025/))

**Council-relevant angle:** Council and superintendent voices are public record, which makes them cheap to clone for "urgent payment" calls to a finance clerk. Pair the BEC callback rule above with a pre-agreed verbal code word for any urgent financial request that arrives by phone.

## Federal / policy items a councilman should be tracking
- **MS-ISAC transition** — CISA's cooperative agreement with the Center for Internet Security (which runs the MS-ISAC) reached its planned end on **Sept 30, 2025**. CISA says it will continue information-sharing and is moving to **direct cyber support** for state and local governments, but federal cuts have pushed many smaller governments out of the old collaboration model. Don't assume last year's free MS-ISAC services are still in place — verify what your jurisdiction still has access to. ([StateScoop](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/), [Cybersecurity Dive](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/), [HSToday](https://www.hstoday.us/subject-matter-areas/cybersecurity/cisa-provides-direct-cyber-support-to-state-and-local-governments-with-additional-funding-and-tools/))
- **SLCGP** — the State and Local Cybersecurity Grant Program remains the primary funding vehicle for SLT cyber, with FY2026 project tracks (assessment/evaluation and mitigation) open through state administering agencies. Worth a line item in any municipal budget conversation. ([CISA SLCGP](https://www.cisa.gov/state-and-local-cybersecurity-grant-program-slcgp-tribal-cybersecurity-grant-program-tcgp), [CIS/MS-ISAC SLCGP](https://www.cisecurity.org/ms-isac/slcgp))
- CISA still offers **no-cost services** — Cyber Hygiene vulnerability scanning, phishing assessments, and regional Cybersecurity Advisors. These are underused by small governments and are a free first step for any Tennille-type client. ([CISA news](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments))

---

## Three things to actually do this week
1. **Push the out-of-band vendor-payment callback rule** — Write/adopt a one-page policy: any change to vendor banking details, and any urgent wire request, must be verified by calling a known number on file. This single control would have stopped ~$11M in the K-12 losses above. Pitch it to the Tennille finance office and any school-finance contacts.
2. **Use Murray County as the budget conversation** — A peer-sized Georgia county just paid $200K. Translate that into a concrete ask: confirm Tennille has tested, offline backups and a written restore plan, and price that against the ransom-plus-downtime alternative.
3. **Re-verify free CISA/MS-ISAC access** — With the MS-ISAC funding model wound down, confirm what your jurisdiction still gets (Cyber Hygiene scanning, phishing assessments, regional advisor contact) and enroll in anything lapsed. It's free and it's a fast win for clients.

---

## Sources
- [K-12 Cyber Incident Map | K12 SIX](https://www.k12six.org/map)
- [North Dakota school district loses nearly $5 million in email scam | Valley News Live](https://www.valleynewslive.com/2026/02/11/north-dakota-school-district-loses-nearly-5-million-sophisticated-email-scam/)
- [North Dakota School District Loses $4.9M to Email Scam | GovTech](https://www.govtech.com/education/k-12/north-dakota-school-district-loses-4-9m-to-email-scam)
- [Bogus wire transfer bilks millions from Pine Bluff School District | Arkansas Times](https://arktimes.com/arkansas-blog/2026/04/28/bogus-wire-transfer-bilks-millions-from-pine-bluff-school-district)
- [Tennessee school district loses $3.4 million to a fake curriculum vendor | The Record](https://therecord.media/tennessee-school-district-loses-3-million-bec-scam)
- [Murray County paid hackers $200K after ransomware attack in May | Chattanooga Times Free Press](https://www.timesfreepress.com/news/2026/jun/16/murray-county-paid-hackers-200k-after-ransomware/)
- [Murray County, Georgia cyberattack closes county offices | DysruptionHub](https://dysruptionhub.com/murray-georgia-cyberattack-offices/)
- [Recent Cyber Attacks — Georgia | SecuLore](https://www.seculore.com/resources/cyber-attack-archive/georgia)
- [Election deepfake laws spread across US ahead of 2026 midterms | Biometric Update](https://www.biometricupdate.com/202605/election-deepfake-laws-spread-across-us-ahead-of-2026-midterms)
- [Tracker: State Legislation on Deepfakes in Elections | Public Citizen](https://www.citizen.org/article/tracker-legislation-on-deepfakes-in-elections/)
- [Parents address Radnor Township School Board after AI deepfake scandal | 6abc](https://6abc.com/post/parents-address-radnor-township-school-board-ai-deepfake-scandal/18583014/)
- [Phishing Trends 2026: AI-Phishing, QRishing & Voice Deepfakes | Kymatio](https://kymatio.com/blog/phishing-trends-ai-phishing-qrishing-and-voice-attacks)
- [Deepfake-as-a-Service Exploded In 2025 | Cyble](https://cyble.com/knowledge-hub/deepfake-as-a-service-exploded-in-2025/)
- [CISA confirms it's ending MS-ISAC support | StateScoop](https://statescoop.com/cisa-confirms-its-ending-ms-isac-support/)
- [Federal cuts force many state and local governments out of cyber collaboration group | Cybersecurity Dive](https://www.cybersecuritydive.com/news/ms-isac-loses-federal-funding-cyber-impacts/761367/)
- [CISA Provides Direct Cyber Support to State and Local Governments | HSToday](https://www.hstoday.us/subject-matter-areas/cybersecurity/cisa-provides-direct-cyber-support-to-state-and-local-governments-with-additional-funding-and-tools/)
- [State and Local Cybersecurity Grant Program | CISA](https://www.cisa.gov/state-and-local-cybersecurity-grant-program-slcgp-tribal-cybersecurity-grant-program-tcgp)
- [State and Local Cybersecurity Grant Program (SLCGP) | CIS / MS-ISAC](https://www.cisecurity.org/ms-isac/slcgp)
- [CISA Strengthening Security with Direct Support to State and Local Governments | CISA](https://www.cisa.gov/news-events/news/cisa-strengthening-our-nations-security-direct-cyber-support-state-and-local-governments)
