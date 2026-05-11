---
date: 2026-03-11 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-03-11 Minutes of the Forum F2F Meeting 67
type: post
---

**Minutes:**

Meeting 67 Final Minutes of Plenary session
 
Plenary Attendance: Ben Wilson (Mozilla), Dustin Ward (SSL.com), Iñigo Barreira (Sectigo), Dustin Hollenback (Apple), Pedro Fuentes (OISTE), Eric Kramer (Sectigo), Scott Rea (eMudhra), Mats Rosberg (KeyFactor), Atsushi Inaba (GlobalSign), Gregory Tomko (GlobalSign), Kateryna Aleksieieva (Certum by Asseco), Nome Huang (TrustAsia), Sven Rajala (Keyfactor), Rollin Yu (TrustAsia), Masaru Sakamoto (Cybertrust Japan), Rollin Yu (TrustAsia), Roman Fischer (SwissSign AG), Nick France (Sectigo), Matthias Wiedenhorst (ACAB'c / TÜV NORD CERT GmbH), Wayne Thayer (Fastly), Thomas Zermeno (SSL.com), Lilia Dubko (CPA Canada), Janet Hines (VikingCloud), ONO Fumiaki (SECOM Trust Systems), Dimitris Zacharopoulos (HARICA), Chris Clements (Google Chrome), Chris Lu (TWCA), Kenji Nakada (JPRS), Rich Smith (DigiCert), Jun Okura (Cybertrust Japan), Brittany Randall (GoDaddy), ChyaHung Tsai (TWCA), Leo Grove (SSL.com), Nate Smith (Go Daddy), Steven Deitte (GoDaddy), Andreas Henschel (D-Trust GmbH), Eric Kramer (Sectigo), Ben Wilson (Mozilla), Aaron Gable (ISRG), Quentin Boyer (ssl.com), Trevoli Ponds-White (Amazon Trust Services), Stephen Davidson (DigiCert), Daryn Wright (Apple), Tadahiko Ito (SECOM), Luis Cervantes (SSL.com), John Mason (Microsoft), Tobias Josefowitz (Opera), Dean Coclin (DigiCert), Tsung-Min Kuo (Chunghwa Telecom), Adam Folsom (Identrust), Arnold Essing (Telekom Security), PinJung Chiang (ChungHwa Telecom), Janet Hines (VikingCloud), Lorey Spade (Amazon Trust Services), Dean Coclin (DigiCert), Trevoli Ponds-White (Amazon Trust Services), Daryn Wright (Apple), Trevoli Ponds-White (Amazon Trust Services), Gregory Tomko (GlobalSign), Brittany Randall (GoDaddy), Lora Randolph (Microsoft), Thomas (SSL.com), Scott Rea (eMudhra), John Mason (Microsoft), Dustin Ward (SSL), Roman Fischer (SwissSign AG), Ben Wilson (Mozilla), Atsushi Inaba (GlobalSign), Rebecca Kelley (SSL.com), Dimitris Zacharopoulos (HARICA), Lim Huck Hai (Baker Tilly), Enrico Entschew (D-Trust)
 
# CA/Browser Forum
 
- Members were greeted to the session and advised of the evening event.
- Attendance was taken via the QR code and website
- The agenda was approved as stated, with a request to add a session on Client Authentication which Dean said would be possible. 
- The future F2F meeting schedule was reviewed.
- Members were reminded about upcoming elections in the fall.
- Guest speakers were introduced and each gave their presentation as indicated below:
 
# Guest Presentation: The practical impact of SC-85 and DNSSEC validation requirements effective March 15
- Presenter: Shane Barbetta
- [https://www.cabforum.org/uploads/2026/DNSSEC SC85 CABF presentation.pptx](Presentation)

# Guest Presentation: The state of the HSM industry and where it’s going 
- Presenter: Bruno Coulliard
- [https://www.cabforum.org/uploads/2026/20260211 - Crypt4A CAB Forum slides-1.pdf](Presentation)
 
# Guest Presentation: Use of Mobile Driver's Licenses as proof of Identity
- Presenter: Ryan Hurst 
- [https://www.cabforum.org/uploads/2026/[Final] mDL Meets the WebPKI Ecosystem.pdf](Presentation)
    
# Mozilla Root Program
- Presenter: Ben Wilson
- Minute taker: Kateryna
- Minutes: 
- [https://www.cabforum.org/uploads/2026/March-2026-Mozilla-News.pdf](Presentation)

Summary of Ben’s presentation:
 
Ben provided an update on Mozilla’s CA Certificate Program, including the current status of CA inclusion requests, with around 30 CAs currently in the root inclusion process. He also mentioned ongoing CA root and trust-bit removals related to the transition to single-purpose trust bits and the deprecation of older roots. Ben reminded affected CAs about the requirement to submit a transition plan by April 15, 2026. He then continued with an update on compliance monitoring across CAs.
 
He highlighted recent compliance observations, pointing out a shift from manual errors to issues related to system design and automation. Many incidents now stem from how systems are configured or how policies are implemented in automated processes. He also noted increasing system complexity, leading to problems with data consistency, reporting, and disclosures (e.g. CCADB entries, CRLs, and incident timing).
 
Ben outlined several areas for improvement, including better validation of published information, stronger integration of policy requirements into automated systems, improved internal checks, and more reliable incident reporting mechanisms.
 
He also introduced ongoing work on revocation reason codes. The goal is to improve browser-side revocation handling by distinguishing between security-significant events (such as key compromise, misissuance, unauthorized issuance, and validation failure) and administrative or lifecycle revocations (such as superseded certificates or subscriber-requested revocations without compromise). This distinction is intended to improve signal quality and support tools like CRLite.
 
Finally, he mentioned that Mozilla has started reviewing its Root Store Policy to identify potential areas for improvement.
 
Questions:
Dean Coclin (DigiCert) asked if there were any plans to deprecate ClientAuth. 
Ben responded that nothing was planned immediately.
 
Trevoli Ponds-White (Amazon Trust Services) asked whether the work on revocation reason codes involved keeping the same reasons or reworking them. 
Ben confirmed that it would be the same reasons, mostly in line with his previous proposition, and that he is trying to justify it better.
 
Dimitris Zacharopoulos (HARICA) continued the topic of revocation reasons. He said that in the revocation section of Ben’s presentation, Ben mentioned that some revocations are caused by security-significant events, with examples such as key compromise, misissuance, unauthorized issuance, and validation failure. Dimitris added that if there is any documentation from Mozilla’s side that defines the difference between security-significant events and administrative revocation events in a more concrete way, that would be very helpful to explore the topic further
 
Ben agreed.
 
Trevoli also asked about Merkle tree certificates.
Ben responded that he did not have information on that topic.
    
# Apple Root Program
- Presenter: Dustin Hollenback
- Minute taker: Ben Wilson
- Minutes: 
- [https://www.cabforum.org/uploads/2026/2026-March-Apple.pdf](Presentation)

Minutes by Ben Wilson

Dustin began by explaining that this was only his second in-person CA/Browser Forum meeting representing the Apple Root Program. His first appearance had primarily been to introduce himself after joining Apple. This presentation, by contrast, was intended to provide substantive updates. He noted that the number of slides was small and hoped there would not be too many questions. (Slide 1)

He clarified that some of the information being presented—particularly related to policy—had already been communicated directly to CA owners participating in the Apple Root Program. The timing of the announcement was not intentionally aligned with the Forum meeting. Nonetheless, he included the information for broader awareness.

**Root Release Schedule and Inclusion Windows**

Dustin explained that many people may not be fully aware of how Apple schedules root certificate releases. He outlined that there are two primary release windows per year: approximately March and September. (Slide 2)

He emphasized that these windows apply after a root inclusion request has already been reviewed and approved. The inclusion process itself can take significant time and may result in rejection. Even if a request is eventually approved, there is substantial internal lead time required before it can be incorporated into one of Apple’s formal release cycles.

He shared that recently, a root that was likely to be approved narrowly missed one of the release windows by a short margin. Because of this, it must now wait until the next release period, which is unfortunate but reflects the rigidity of the schedule. Dustin noted that this structured timing was new to him when he joined Apple and may also be new information to others in the ecosystem.

**Root Inclusion – Positive Indicators**

Dustin stated that Apple’s inclusion criteria and expectations could be described in greater detail in a future published document similar to those of other root programs. For now, he highlighted several key positive indicators Apple looks for in root inclusion requests. (Slide 3)
Transition to Single-Purpose Roots

Apple’s objective is to move away from multi-purpose roots and toward single-purpose roots. He acknowledged that most, if not all, root programs share this direction. It is viewed positively when a CA owner proactively submits requests that replace multi-purpose roots with single-purpose ones.

**Limiting Proliferation of Roots**

Another favorable sign is when a CA attempts to limit the total number of roots it maintains. Some CA owners already have numerous roots in the Apple program and may seek additional ones.

Dustin explained that Apple will request justification when additional roots are proposed. Apple wants to understand:

Whether new roots replace existing ones or add to them.

What benefit they provide.

Why additional roots are necessary.

He clarified that Apple is not imposing strict numeric limits. For example, if a CA currently operates a multi-purpose root covering five trust purposes, it is reasonable to expect that it may transition to five single-purpose roots. That is not problematic.

The concern arises when multiple roots of the same type are proposed without a clear operational distinction. For example, if a CA submits three serverAuth roots that appear functionally identical, Apple will request clarification as to why multiple such roots are needed. The general message is that fewer roots, when justified and purpose-specific, are preferable to unchecked expansion.

**CP/CPS Quality and Clarity**

Dustin then turned to CP/CPS documentation. He noted that across the Forum presentations, CP/CPS documents were a recurring theme.
From his perspective as someone relatively new to working within a root program, reviewing CP/CPS documents across the ecosystem has revealed significant gaps. In many cases, the documents fail to clearly explain how the CA actually operates its services.

He observed that numerous documents simply state that the CA complies with the Baseline Requirements (BRs) without explaining how compliance is achieved. Large sections of some CP/CPS documents are structured in this manner, referencing requirements without substantive description. Apple sees this as an area needing improvement, and this concern is reflected in Apple’s policy updates.

**Policy Updates**

Dustin outlined several recent or proposed policy changes. (Slide 4)

**Migration to GitHub**

Apple has moved its root program policy into a Git repository. He believed Apple was the last major root program to do so. The repository was finalized only shortly before it was communicated to the community.

A survey was sent to CA owners in the program to gather feedback on a new draft policy.

**Approval of Third-Party Operated CAs**

Apple intends to require approval when a CA extends trust to third-party-operated entities in a way that increases the scope of trust.
Dustin clarified the intent:

If a CA delegates operational responsibilities to an entity not previously included in the program, Apple considers this an expansion of trust.
Apple wants the ability to approve such extensions and have include language requiring Apple approval for any new CA certificates owned or operated by a third party, regardless if any other CA certificates have previously been approved by Apple.

The root CA remains fully accountable for the actions of any third party it relies on.

The root CA cannot deflect responsibility by blaming the third party.

Apple’s objective is not to relieve the root of accountability but to ensure visibility and Apple approval for any CA certificates not operated by the Root CA owner.

**Single-Purpose Requirement for New Roots**

All newly included CAs must be single-purpose. This reinforces Apple’s broader goal of eliminating multi-purpose roots over time.

**Minimum Key Sizes for Root CAs**

Apple is updating minimum key size requirements for root CAs (not subordinate CAs).

While some recent root requests have included RSA 2048-bit roots, most recent inclusion requests have used larger key sizes or ECDSA P-256. Dustin noted that Apple has not received significant feedback on this change yet but invited input through the survey.

**Detailed Controls Report (DCR)**

Dustin discussed the Detailed Controls Report (DCR), a long-discussed audit artifact supported by the WebTrust Task Force for over 5 years and referenced in Apple’s policy for at least the past two and a half years.
Previously, Apple’s policy allowed Apple to request a DCR. The proposed changes aim to improve communication between CAs and auditors and clarify expectations.

In response to a question, Dustin clarified:
The DCR requirement applies to audits that begin after the policy’s effective date.
The requirement will not be retroactively applied.
The DCR is not intended to be publicly disclosed. Nor is Apple requiring proactive submission to Apple. However, the expectation is that CA Owners will have such a report available and provide it to Apple upon request within 30 days.
When asked whether it should simply be mandatory, Dustin indicated that while it effectively becomes expected, Apple does not intend to require automatic publication or submission.

**Markdown CP/CPS Requirement**

Apple is proposing that CP/CPS documents be provided in Markdown format, structured in a way that is self-contained and suitable for both human and machine consumption.

Dustin explained that the ecosystem currently contains many inconsistent documentation formats. Apple’s goal is to establish a consistent standard for CAs within its program to facilitate proactive automated review.

**Feedback Process**

Dustin encouraged all feedback to be submitted via the survey link or the published Apple Root Program email address. Questions regarding inclusion requests, interpretation of requirements, or general program feedback should be directed there. (Slide 5)

**Q&A Session**

**Feedback Deadline Timing (Trev)**

Trev asked whether the feedback deadline could be moved from the Monday following the Forum meeting to a later date, such as Friday. Dustin responded that the policy timeline was not tied to the Forum meeting but indicated that Apple would consider the request. [Note: This was later extended to Friday, March 20.]

Trev also requested clarification about whether the DCR requirement applies to the most recent audit or requires commissioning a new audit. Dustin clarified that it applies to audits beginning after the effective date, and the policy language would be updated for clarity.
Approval Timeline for Trust Extensions (Dimitris)

Dimitris asked whether approval of third-party trust extensions would be subject to a defined timeline, such as 30 or 60 days.
Dustin responded that Apple is not committing to a specific review timeframe.

**Separate CP and CPS Documents (Wendy)**

Wendy asked whether Apple would no longer accept separate CP and CPS documents, including separate CPS documents for roots and issuing CAs operated by the same organization.

Dustin confirmed that Apple’s intent is to require a single CP/CPS document covering an entire hierarchy for a given trust purpose.
Wendy suggested that separate documents could provide more tailored and detailed explanations. Dustin acknowledged the feedback but explained that Apple’s goal is to create consistency and enable proactive review. The current ecosystem, in his words, is highly fragmented and difficult to review efficiently.

He invited formal written feedback on the concern.

**Hosting Markdown Documents (Aaron)**

Aaron asked whether Markdown CP/CPS files could be hosted on GitHub and referenced in CCADB, and whether Apple had specific requirements regarding immutable URLs (e.g., SHA-pinned links versus tag-based links).

Dustin responded that Apple relies on CCADB as a central platform, similar to other root programs. If CCADB can access and download the document, Apple will review what is in CCADB.

If technical issues arise, Apple would consider troubleshooting or feature requests on a case-by-case basis.
Coordination Across Root Programs (Roman)

Roman requested better coordination among root programs regarding CP/CPS requirements, noting that it is increasingly burdensome for CAs to satisfy divergent program-specific requirements.

Dustin acknowledged the concern. While coordination is attempted where possible, each root program maintains independent goals and policies. When alignment exists, it often flows into CCADB policy. Apple also seeks to avoid outright conflicts where possible.

**Trust Purpose and CP/CPS Scope (Martijn)**

Martijn asked for clarification regarding overlapping trust purposes, specifically TLS roots allowing only serverAuth versus those allowing both serverAuth and clientAuth.

Dustin explained that Apple does not intend to require separate CP/CPS documents when EKUs overlap. Instead, CAs should select the broader applicable trust purpose where multiple EKUs exist. Apple will clarify the wording to prevent misinterpretation.

**Merkle Tree Certificates (Trev)**

Trev asked whether Apple had anything to say about Merkle tree certificates, noting their absence from the slides.

Dustin acknowledged the observation but did not provide further elaboration during this session.

**Closing**

Dustin concluded by inviting further questions and reiterating that formal feedback should be submitted via the survey or the Apple Root Program contact address.
 
# Chrome Root Program
- Presenter: Chris Clements
- Minute taker: Dustin Hollenback
- Minutes:
 
- The Chrome Root Program did not prepare slides for this F2F, as no presentation had been planned.
 
### Background from F2F 64
- Chrome announced it had reached an approximate **annual cadence** for policy updates.
- Communication channels with CA Owners were working effectively:
  - Regularly scheduled working group meetings  
  - Email  
  - CCADB messages
- Feedback collection processes were also functioning well.
- Chrome stated it would **scale back routine F2F updates** to give more time for CA Owners to present meaningful security improvements.
- Examples referenced at the time:
  - Dimitris’s Open‑MPIC presentation  
  - Rob’s PKI Metal announcement at F2F 62  
  - Amazon Trust Service’s ICA rotation and pinning presentation at F2F 59  
- Chris noted that all presentations at the current F2F were great and encouraged CA Owners to continue sharing innovations and best practices.
 
### Approach to Sharing Updates
- Chrome provides updates **when they are most relevant**, using the most appropriate communication channels.
- As a result, Chrome may or may not present at any given F2F.
 
### Recent F2F Participation
- **F2F 65:** No presentation.  
- **F2F 66:** Chrome presented a preview of expected changes for **Policy Version 1.8**, including:
  - Early thinking behind the changes  
  - A commitment to provide a preflight for CA Owners included in Chrome  
 
### Policy Preflight Timeline
- **Oct 20, 2025:** First preflight sent  
  - Suspense date: **Nov 20, 2025**  
  - ~80 questions received from 20+ CA Owners  
  - All questions answered, some resulted in draft updates  
- **Dec 17, 2025:** Second preflight sent  
  - Suspense date: **Jan 7, 2026**  
  - One additional minor change made based on feedback  
- **Feb 5, 2026:** **Chrome Root Program Policy v1.8 published**  
  - Total time from first preflight to publication: **109 days**
 
### Post‑Publication Acknowledgment
- CA Owners in the Chrome Root Store were given **22 days** to:
  - Review the final policy  
  - Formally acknowledge it  
  - Submit any remaining questions  
- Only **two questions** were received, both seeking confirmation of understanding (which Chrome confirmed as correct).
 
### Current Communication Expectations
- As stated in the policy, all questions should be directed to the Chrome Root Program distribution.
- This ensures consistent, centralized, and thoughtful responses, especially given the volume of prior inquiries related to this and prior versions of the policy.
 
### Reason for No Presentation at This F2F
- Chrome did not intend to present at this F2F.
- The goal was to **give time back to the Forum** to allow others to share updates and innovations.
    
# Microsoft Root Program
- Presenter: Karina Sirota
- Minute taker: Daryn Wright
- Minutes: 
- [https://www.cabforum.org/uploads/2026/Microsoft F2F 67 Presentation.pdf](Presentation)
    
Microsoft stated formally that they have no formal information about Merkle Tree Certs, but they are looking into them along with requirements that TLS roots must be associated with Trust Anchors.
 
Jeremy Rowley 
- Asked about other EKUs and if the intent is to still support them. 
Karina confirmed that the listed Client Auth and Time Stamp are the most common, but if he has others, feel free to email the Root program.
 
- Asked about applications for new roots and if there is an intention to fast track root replacements for roots already trusted.
Karina stated that Net New root inclusion from a company with an already trusted root is treated as a root rollover request. Also, they are not currently requiring the replacement.
 
- Asked about the mandate of ACME protocol support
Karina answered that they are going to require roots support it, not that end entities use it.
 
Matthew McPherrin
- Asked if with the move to Bugzilla also requires emailing them.
Karina answered that just Bugzilla will be fine unless there is sensitive information that can't be public, in which case, just email the root program.
 
Trevoli Ponds-White
- Asked if ACME support will be similar to Chrome that its any automation support.
Karina answered yes.
     
# CCADB Update
- Presenter: Dustin Hollenback
- Minute taker: Steven Diette
- Minutes: 
- [https://www.cabforum.org/uploads/2026/CAB F2F 67 CCADB Update.pdf](Presentation)
    
Dustin Hollenback covered the following topics, for details please see the presentation slides.
- CCADB Policy and IRG Goals, Updates and Timeline for Effective Date March 20th
- Highlighted audit statements starting after January 15th, 2027, audit statements must disclose sampling methodologies
- CCADB Root Inclusion Public Discussion Updates
- CCADB Self-Assessment new version
- CCADB new features
- Highlighted CRL URL updates
- New Print View for Reports around Root Inclusion Request
- Call for CCADB bug and feature request process is available for all to provide feedback
- Tim Crawford (BDO) 
  - Expressed concerns on including sampling population methodologies.  
  - Many different population scenarios from Certificate Authorities.  
  - Used example of SOX audits not containing statistical samples
  - Concern that confirming the population would not be achievable
- Dustin Hollenback - passed to Chris for response
Chris 
- Agreed that Tim's examples sound complex
- Expressed that the committee was over optimistic that the future effective date and the open discussion would refine the requirements
- Steering committee hope was to get some data on population methodology to better understand sampling size population and methodology on what was used
- With the complexity involved, recommended this requirement is removed from the upcoming CCADB policy update until the requirements can be better defined
- Dustin Hollenback - Agreed
- Tim Crawford - Chris's suggestion is agreeable and looks forward to being a part of the discussion on defining the requirements
Trevoli (Amazon) - Agreed with the proposed approach.  
  - Unclear what CCADB wants for information and concerned some requested information is competitively sensitive.   
- Karina (Microsoft)
  - CCADB steering committee's goal was to better understand the audit process, less about understanding specifics with the CA
- Brittany Randall (GoDaddy)-
  - Interested in defining better requirements for what the CCADB steering committee finds acceptable for audit population requirements
Dimitris - 
  - Would be helpful for informational page for automation CCADB is building and how frequently it's running automation for CAs to adjust systems accordingly
  - No CA wants to block anything from CCADB
- Trevoli - 
  - Asked for a presentation from the Audit community on how populations are picked
  - Requested for instructions on how to use CCADB be split out from the policy requirements 
- Dustin Hollenback - 
  - Captured another similar feedback item on the CCADB requirements being a webpage vs a Google Doc and the steering committee will be adding Trev's feedback to discussion at the next meeting.  
    
# Root Program Q&A
- Presenter: Dean Coclin
- Minute taker: Wayne Thayer
- Minutes: 
- Martijn: request about CCADB surveys. In the past we've seen the questions in a separate document so that we can review them before submitting. This would be a great standard practice
- Wayne: How will root programs require CAs to prove that they support ACME?
- Ben Wilson (Mozilla) - will be consistent with Chrome, disclose in CCADB
- Karina Sirota-Goodley (Microsoft) - concur with Ben
- Trevoli Ponds-White - we should discuss how this will be automated
- Dimitris - As Roman said in chat, CAs can disclose an ACME endpoint, but it doesn't mean that it will be useable
- Trev - At what threshold do things move from browser to CCADB policy. If we want CAs to attest to it, we can put this in the BRs and require it to show up in audits
- Chris - we put things in CCADB policy when it's relevant to CCADB and appears in more than one root program policy
 
# ETSI Update
- Presenter: Iñigo Barreira
- Minute taker: Mattias Wiedenhorst
- Minutes: 
- [https://www.cabforum.org/uploads/2026/ETSI-ESI_Standardisation_Update_for_CAB-Forum-Houston-2026.pptx](Presentation)
 
Inigo covered the following topics, for details refer to the presentation slides.
- European legislative documents released 2025
- Overview of ETSI Standards 
-  Overview of EUDI Wallet and ecosystem
-  Timeline for Standards to be developed or updated
-  Upcoming EU Trust List version update
 
Discussion:
No questions asked.
 
# ACAB'c Update
- Presenter: Matthias Wiedenhorst
- Minute taker: Iñigo Barreira
- Minutes: 
- [https://www.cabforum.org/uploads/2026/20260311_CAB-Forum_67_ACAB'c_presentation_V1.0.pdf](Presentation)
- Legislation
  - eIDAS and NIS2 effective immediately
  - DORA, CRA on demand
- AAL
  - New version 3.5 beginning this week
  - Clarification regarding documentation
  - To update the website
  - Note: use the latest AAL template version
- Update pending
  - Key ceremony report in progress
  - Key destruction
  - Alignment with the recent changes of the AAL template
  - To be released in April
- Applicability of ETSI standards
  - Need to change the conformity assessment scheme
  - Have NAB involved to have a new accreditation with the newest versions and thus have the CABs “approved” for the newest version after being accredited to these new versions
  - eIDAS IAs require specific versions of the standards and thus CABs must follow the law and can´t use the newest version of the standards
 
# WebTrust Update
- Presenter: Tim Crawford / Lilia Dubko
- Minute taker: Stephen Davidson
- Minutes: 
- [https://www.cabforum.org/uploads/2026/WebTrust - CABF Houston 67 FINAL March 2026.pptx](Presentation)
 
They reminded that there is guidance for auditors covering Force Majeure situations, that has evolved since the COVID time.
 
* Applicability Matrix was updated in March 2026
* Spring 2026 updates are expected for S/MIME, TLS, CS
* Fall 2026 updates are expected for Document/Remote signing
 
Practitioner Guidance Updates have been issued on the following:
* Considerations for the Use of a Carved-out subservice organization (November 2025)
* WebTrust for Registration Authorities Illustrative reports for ISAE, CSAE and AICPA (November 2025)
* WebPKI Reporting (March 2026)
* Location disclosure
* Presentation of CP/CPS version
* Statement analysis of bug cause 
* Update on physical access criterion (dual access to CA key material)
 
They described sections of a Detailed Controls Report:
1. Independent Practitioners Report
2. CA Management's Assertion
3. CA's Description of its System
4. Description of Controls and Tests of Controls
5. Other Information Provided by the CA (optional)
They discussed steps to transition to a Detailed Controls Report
1. Structure controls in a presentable manner
2. Map controls to WebTrust Criteria
3. Review mapping with WebTrust Practitioner
4. Develop CA system description
5. Provide system description to WebTrust Practitioner
 
New criteria are being defined:
1. Signing Service
a. Signing service for various types of objects
b. New Principles and Criteria
c. Bring your own certificate considerations
2. Identity Validation
a. Use various sources for individual vetting
b. New Principles and Criteria
 
They conducted a survey of WebTrust practitioners on PQC considerations
1. Hybrid transition model
* Most respondents testing hybrid certificates
* A few respondents were testing pure PQC hierarchy
2. Respondents are targeting PQC transition between 2030 and 2035
3. Challenges CAs are facing:
* HSM and software readiness and performance
* Lack of selected algorithms requirements form trust programs
4. Need for additional guidance
* Audit guidance for hybrid certificates and multi-algorithm hierarchies
* Assessing crypto-agility
* Evaluating PQC migration roadmaps and risk assessments
* Potential changes in principles and criteria
 
# Q&A Audits and Standards
- Presenter: Dean Coclin
- Minute taker: Enrico Entschew
- Minutes: 
 

# Closing:
- Dean recognized two members that recently retired, for their many years of service to the forum:
  - Doug Beattie - Globalsign
  - March Schaumbach - Identrust
        
# Plenary meeting adjourned Day 2
  
# IPR Subcommittee and Bylaws Changes, Github comment management
- Presenter: Ben Wilson
- Minute taker: Dean Coclin
- Minutes: 
- [https://www.cabforum.org/uploads/2026/IPR-Policy-F2F-67.pdf](Presentation)

The meeting discussed updates to the intellectual property rights (IPR) policy, emphasizing its importance for protecting implementers.
Proposed changes include adopting a new patent exclusion notice template and aligning language with existing bylaws.

The IPR policy encourages royalty-free licensing, ensuring that any claims are handled at the working group level.

The IPR policy is perpetual. 

Ben was asked to consider changing the deadline to resign the IPR to July 1st.
 
# Infrastructure subcommittee
- Presenter: Jos Purvis
- Minute taker: Jos Purvis
- Minutes: 
- Jos identified priorities this quarter for Infrastructure: containerizing services (including migrating databases for member-tools) and advancing the ballots to permit voting by other means than only email.
- Ben called for the group to please review and update content on the website, which needs refreshing. Trev suggested a working session for this; Jos suggested using one of the vacant Infrastructure slots to do this now that Infrastructure has moved to a monthly schedule instead of bi-weekly.
- Building on that, Dimitris requested a development copy of the website, either a single version or one linked to individual dev branches, which would allow people to more easily review changes. When checking in changes to the site in GitHub, it can be difficult to see how Hugo will eventually resolve the contents, so having a dev site would allow people to optionally view the results of their changes live online. Jos agreed to pull that into Infrastructure and figure it out.
- One other issue Dimitris raised was the red-line versions of documents produced for the IPR process. Producing these has always required using Microsoft Word, as the GitHub-authored diffs are overly precise and can be difficult to read. Martijn suggested that Sectigo has had success with using some AI tools to do this kind of work and suggested trying that approach. Roman (SwissSign) pointed out that we don't need to feel obliged to produce "perfect" red-lines — if it's too difficult, we can document the process used today and then convert to something lesser, since people have the option of producing more specific redline versions if they choose.
- Finally, Jos renewed the call for a new chair of the infrastructure subcommittee during the elections this fall.
 
# Definitions and Glossary Working Group
- Presenter: Tim Hollebeek / Tim Callan
- Minute taker: Stephen Davidson
- Minutes: 
    
Discussion was deferred.
 
# Discussion of clientAuth
- Presenter: Dimitris Zacharopoulos 
- Minute taker: Stephen Davidson
- Minutes: 
    
Dimitris Zacharopoulos summarized the discussion that started on the list regarding clientAuth following Mark Gamache’s questions, as the root programs began to sever the EKU from serverAuth and possibly other cert types like S/MIME.
 
Stephen Davidson said this would also be discussed in the SMWG session.  Dimitris asked if there was support for forming a working group for clientAuth seeking to explore creation of a BR for clientAuth.  Scott Rea said he would support.
 
Nick France noted his comments on the list and added that he would hate to undo the progress that had been made in other groups like TLS for the sake of clientAuth which he felt was better served in private PKI.
 
Dustin Hollinback said it was unclear who were the consumers for a clientAuth WG.  Dimitris said there were at least two root programs that recognized clientAuth, yet there were few guidelines for clientAuth certs.  Scott said CABF should seek representation from other interested parties who do use clientAuth.
 
Trevoli Ponds-White said there was enough interest in the subject that it merited a WG, even if it sought merely to fix some basic antipatterns.  Martijn Katerbarg said there were many misperceptions regarding public trust clientAuth certs and the security they provide; moreover, often the customer still needs to manually onboard the leaf certificate, which begs the question why private was not sufficient.  He said a document that laid out recommendations for private CAs would certainly have value.
 
Dimitris said public clientAuth really should be limited to an issuing CA not root-wide, which is similar enough to private, but there is benefit to have basic requirements.
 
Roman Fischer said it would have to come from an SMIME root or a new clientAuth dedicated root.  Karina Sirota Goodley noted that such roots exist today and there are mass use cases in this area. 
 
Dimitris said it seemed there was sufficient interest to continue this discussion and asked whether it merited a new WG or could be dedicated in an existing group like S/MIME.  Trev said it would be helpful to talk about what Public trust actually meant.  Karina asked what was the problem statement of what we are trying to solve, what are the goals of the consumers.  It could be that if the CABF did not pursue this that a root program may choose to set requirements.  Chad Dandar said that Cisco was interested in the topic.
 
Jos Purvis seconded Martijn’s suggestion of having a set of non-normative guidelines for best practices in running a private PKI even if the CABF did not pursue a formal BR for clientAuth.
 
Dimitris said if we are to discuss a WG we need a proposer to move it ahead.  He asked if there was anyone who had a strong objection to that.  There was no objection.  Nick said he did not object to continuing the discussion, investigating the idea itself is a good idea.
 
END OF PLENARY SESSION