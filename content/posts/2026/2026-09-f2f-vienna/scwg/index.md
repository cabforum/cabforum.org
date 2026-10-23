---
author: Wayne Thayer
date: 2026-09-23 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 68 Meeting in Vienna, Austria - SCWG, September 23, 2026
type: post
---

# Minutes of the CA/Browser Forum Face-to-Face Meeting 68 Server Certificate Working Group, September 23, 2026

## Call to Order and Administrative Business

- **Presiding:** Dimitris Zacharopoulos (HARICA), SCWG Chair, with Wayne Thayer (Fastly)
- **Agenda:** No changes or additions were proposed; the agenda as circulated was approved.
- **Approval of minutes:** The minutes of the August 27 and September 10 teleconferences were each approved without objection, for publication.
- **Membership — Huawei (Certificate Consumer applicant):** Huawei's application to join as a Certificate Consumer had been discussed at a prior teleconference, where the Forum had requested clarification from Huawei. Dimitris reported that Huawei's responses had been circulated to the list and, in his view, adequately addressed the earlier concerns. There were no objections, online or in the room, and Huawei's application as a Certificate Consumer was approved.
  - Dustin Hollenback (Apple) asked whether the candidate-review process itself had been formalized following earlier feedback. Dimitris said he and Wayne Thayer would work on streamlining this process, likely in consultation with other working group chairs, since the same candidate-intake process applies across working groups. A candidate-information chart previously put together by Ryan Dickson (Google Chrome) was suggested as a starting point, along with including the list of standard clarifying questions (previously produced by Aaron Gable) on the wiki alongside the IPR agreement, so future candidates and reviewers have a consistent reference. Wayne Thayer was asked to post this material to the wiki.
- **Membership MicroSec probationary-to-voting status:** The chair noted that a member admitted earlier as a probationary member has now satisfied the attendance requirement for voting membership by participating in this Face-to-Face meeting, and the necessary status change would be made.

***

## Chair's Report: Updates Since the Last Face-to-Face

- **Presenter:** Dimitris Zacharopoulos (HARICA)

- **Presentation:** [SCWG_Update_for_F2F68.pdf](SCWG_Update_for_F2F68.pdf)

Dimitris gave a short presentation summarizing Working Group activity since the last Face-to-Face in Houston:

- The Working Group passed several ballots over the past six months — one of the busiest six-month periods Dimitris could recall — though this created some administrative/GitHub-process challenges given how many ballots touched overlapping sections of the documents.
- One ballot (**SC103**) is currently in the discussion period, pending Aaron Gable's availability to continue the public-list discussion.
- Four ballots are under consideration:
  1. Improving certificate problem reports and clarifying the meaning of "application" — being driven by Martijn Katerbarg (Sectigo), with ongoing mailing-list discussion.
  2. **SC105**, from Stephen Davidson (DigiCert), to remove EV risk-related language from the TLS Baseline Requirements and EV Guidelines.
  3. An EV Guidelines cleanup ballot led by Rich Smith (DigiCert), discussed in more detail that morning in the Validation Subcommittee session.
  4. An ML-DSA (post-quantum signature) ballot, on which no progress has been made recently; Dimitris invited anyone wanting to discuss it at this Face-to-Face to speak up.
- He reviewed the schedule of upcoming requirement effective dates (starting from July 2026 onward), asking members to check the table for anything relevant to their organization.
- Since the last Face-to-Face, five new versions of the TLS Baseline Requirements and two updates to the EV Guidelines have been published. Dimitris noted that other standards bodies that reference CA/Browser Forum requirements (e.g., ETSI) are struggling to keep pace with the frequency of changes, and raised again his longstanding idea of limiting formal BR revisions to once or twice a year — noting that the IPR review process, redline production, and merge-conflict resolution remain partly manual and will be a challenge for the incoming chair, Stephen Davidson, to manage.
- GitHub issue count is down to 74 open issues (an improvement following the recent cleanup ballot), of which 20 are tagged as belonging to the Validation Subcommittee and 9 are tagged "cleanup" — suggesting another cleanup ballot may be feasible soon.

***

## CP/CPS Content, RFC 2119 Language, and Documentation Expectations

- **Presenter:** Dimitris Zacharopoulos (HARICA)

- **Presentation:** [Clarify_CP-CPS_language-F2F68.pdf](Clarify_CP-CPS_language-F2F68.pdf)

Dimitris opened by recapping ongoing community discussion (including on the CCADB mailing list) about what a Certificate Policy (CP) and Certification Practice Statement (CPS) are each supposed to contain, and how CAs should use RFC 2119 keywords (SHALL/SHOULD/MAY) in these documents:

- Using examples drawn from conversations with Aaron Gable (Let's Encrypt), he illustrated the CP/CPS distinction: a *policy* statement describes **what** must be done (e.g., "the CA shall inspect documents for alteration"), while a *practice* statement describes **how** it is done (e.g., which specific checks are performed). He also distinguished **prescriptive/technical** language (e.g., "certificates must not have a validity period greater than 200 days" — specific, lintable) from **descriptive/vague** language (e.g., "validity is up to 100 days" — not technically precise).
- The open question he posed to the room: where should specific, technical requirements live — in the CP, the CPS, or a combined CP/CPS? He noted that certificate consumers/browsers have repeatedly said they want CP/CPS documents to be more specific, and that inconsistent use (and capitalization) of RFC 2119 keywords across CP/CPS documents makes them hard to interpret consistently. He floated two possible paths forward: (a) developing CP/CPS editorial guidelines on keyword usage (potentially starting as non-normative guidance before becoming a requirement), or (b) going through the BRs themselves and flagging which parts are "what" (policy) versus "how" (practice), to give CAs clearer signal on where their own CPS text needs to expand.
- **Daryn Wright (Apple)** largely agreed with the direction, but argued there are really **three layers** of CA documentation — CP, CPS, and internal Standard Operating Procedures — and that combining CP and CPS into one document (as is now standard practice) has caused every sentence in that single document to be treated as binding policy. He recalled that, historically, missing a CP commitment was a serious compliance matter, while missing a CPS-level practice detail was treated more like a procedural note; with a combined CP/CPS, CAs now file major incidents over things like being one second over a stated validity period, which he felt was a sign the group has moved away from a distinction that used to work reasonably well.
- Dimitris responded that his own recollection differs: the CP answers "what," the CPS answers "how," and the Forum moved to a combined CP/CPS specifically because the BRs themselves mix "what" and very detailed "how" language, making a clean split impractical in practice.
- **Martijn Katerbarg (Sectigo)** cautioned that tagging BR text as "policy" versus "practice" will be difficult, since for much of the BRs the described practice effectively *is* the policy.
- There was general agreement in the room to continue this work. Dimitris said he would discuss next steps with Trevoli Ponds-White ("Trev") and others, and noted that root-program representatives — who read large volumes of CP/CPS documents — should be involved, since their perspective is central to what "sufficiently detailed" should mean in practice.

***

## Revocation Reasons and Circumstances

- **Presenter:** Ben Wilson (Mozilla)

Ben proposed, as a first-phase effort, methodically cataloguing the real-world, underlying reasons CAs revoke certificates and relating them back to RFC 5280's eight revocation reason codes, noting that three or four of those eight codes are rarely or never actually used in practice.

- He observed that subscribers and domain owners generally do not care, and are not told to care, which specific reason code is used when they request revocation themselves (e.g., to reissue a certificate for the same set of domains) — "superseded" tends to be the default in practice regardless of the actual reason, and he questioned how much value is really being delivered by the current reason-code taxonomy for these routine cases.
- **Chris Clements (Google Chrome)** noted Chrome has been experimenting with treating Key Compromise and Privilege Withdrawn differently within CRLSets for a few Face-to-Face cycles now, and expects the whole revocation story to change again once Merkle Tree Certificates (MTCs) arrive; he confirmed Chrome's intent to stay closely engaged as this work progresses.
- Dimitris reiterated his own specific, long-running concern (related to the CP/CPS discussion above): the existing revocation-reason framework ties a 5-day revocation timeline to any CP/CPS inconsistency, even one that does not actually violate the Baseline Requirements — the subject of a separate proposal he has been developing.
- **Wayne Thayer** asked whether revocation reason codes need to stay aligned between "classic" X.509 certificates and MTCs, or whether the shift to MTCs is a natural opportunity to redefine the reason-code set from scratch rather than carry forward a structure several participants view as poorly designed. The sense of the room leaned toward not wanting two incompatible sets of codes, while acknowledging there may be a case for some divergence given how different MTC revocation may end up working.
- The agreed next step was for Ben to focus first on cataloguing concrete revocation **scenarios** (rather than starting from the existing reason codes), using a shared Google Doc to collect community comments and alternative proposals; mapping scenarios to specific reason codes (classic or MTC) would follow once there is rough agreement on the scenarios themselves. Further discussion will continue on GitHub and the SCWG mailing list.

***

## Modernizing Certificate Profile Expectations (BR Section 7 Cleanup)

- **Presenters:** Ryan Dickson and Chris Clements (Google Chrome)

- **Slides:** [Further_improving_Section_7_of_the_TLS_BRs.pdf](Further_improving_Section_7_of_the_TLS_BRs.pdf)

Ryan Dickson and Chris Clements, framed the discussion as a direct follow-on to the CP/CPS conversation and to recent certificate-problem reports in Bugzilla, and explicitly asked for active community discussion rather than a one-way presentation.

**Framing and history.** Chrome's position is that improving certificate profiles addresses three linked problems: weak ecosystem transparency about what CAs actually issue; complexity from profile information being scattered across many BR/EVG tables and cross-references; and avoidable misissuance. They reviewed that pre-SC62 (2023/24) profile requirements were prose-heavy, scattered, and imprecise; SC62 — credited in large part to Corey Bonnell's work — introduced today's table-based structure, substantially improved cross-CA consistency, and enabled modern automated linting (SC97's recent sunset of SHA-1 signatures was cited as a direct downstream benefit). However, SC62's heavily cross-referencing, inheritance-based table structure also introduced real cognitive and operational overhead for anyone trying to understand a single certificate type end to end.

**What "accurately describe practices" should mean.** Chrome argued that CP/CPS language should document a CA's *actual* issuance pipeline — specific fields, extensions, values, and ordering — as an operational commitment, not merely restate what the BRs permit in the abstract. They noted that WebTrust auditors are expected to pay closer attention going forward to whether a CA's actual issued profiles match its documented commitments, and argued that vague, generic profile language in a CP/CPS undermines auditors' ability to independently verify compliance.

**Discussion:**
- **Rich Smith (DigiCert)** strongly supported the effort, noting he has been working on consolidating DigiCert's own profile documentation into single tables, and that he understood Aaron Gable (Let's Encrypt) and Martijn Katerbarg (Sectigo) have been doing similar work independently — welcomed the chance to align on a common approach.
- **Wayne Thayer** suggested that, counterintuitively, simply repeating the same requirement text in multiple places (rather than cross-referencing) might actually be easier to keep consistent when updating, and proposed treating the first round of new profile-table formats as narrow proofs of concept on one certificate type before committing to a single final structure.
- Dimitris shared a concrete example from his own CA's experience: a highly detailed, exhaustively enumerated certificate profile made it operationally difficult to add a legitimate new extension for a specific use case without first going through a lengthy CP/CPS change-control process. Chris Clements responded that today's permissive BR language ("any field or extension, so long as there is a good reason") effectively allows undocumented, undisclosed issuance practices, which Chrome considers bad for the ecosystem regardless of how operationally inconvenient a stricter, disclosed-profile model might be — and suggested CAs could instead reference a more agile, separately-versioned profile document from their CP/CPS, so routine updates don't require a full CP/CPS change cycle.
- **Adrian Mueller (D-Trust)** asked how a strict "default deny" profile model would handle rarely used, customer-specific optional extensions. Chris Clements suggested that a plain-language "always / sometimes / never" model may fit certificate profiles better than traditional MUST/SHOULD/MAY language.
- **Proposal:** (1) require CAs to explicitly define and disclose their certificate profiles on a default-deny basis, and map which of their CAs issue against which profile — an accountability baseline for later linting; (2) a longer-term goal of generating profile disclosures directly from CA tooling/configuration (rather than hand-maintained documents) to reduce transcription/drift errors; (3) tie every issued certificate's audit-log entry to an identified profile version, giving auditors a reliable way to join a given certificate back to the exact practice in force at issuance time.
- **Roman Fischer (SwissSign)** asked whether this implies versioning profiles so audits can determine which version applied to a given certificate. Chris Clements confirmed, and noted a profile version could itself carry a future effective date, letting CAs pre-stage upcoming BR changes.
- Dimitris asked how the proposal handles a CA's transition from one profile version to the next (e.g., sunsetting an OCSP-pointer requirement) without creating a hard coupling between the CP/CPS text and the timing of production changes. **Wayne Thayer** echoed this directly, stating he does not want to be forced to publish a CP/CPS that commits to an exact date/time for a production cutover, and wants a way to log which profile version is in force without that hard coupling. Chris Clements suggested this could work similarly to how CCADB already tolerates a short lag between a CP/CPS disclosure and operational reality, via some defined grace window — a model an SSL.com-affiliated participant suggested could be implemented by having the CP/CPS point to an externally hosted, separately versioned profile repository (e.g., on GitHub) rather than embedding full profile detail directly in the CP/CPS. Chris Clements agreed this type of model should work in principle, pending community agreement on the operational boundaries.
- **Linting and self-audits:** proposed a phased requirement — starting as a "should" and eventually becoming a "must" — that CAs lint precertificates against their *own* specific, disclosed profiles (not just generic community linters), to catch mismatches before a certificate reaches a subscriber. Paired with this, Chrome proposed raising the Section 8.7 self-audit sampling rate from 3% toward 100% of issued certificates for structural/profile conformance specifically (not full revalidation of identity vetting). Wayne Thayer noted that Let's Encrypt already audits 100% of what it issues today. Chris Clements, citing his own testing (roughly 800 certificates/second lint throughput on ordinary hardware), argued that a full, non-blocking quarterly structural self-audit is realistic at scale.
- **Table consolidation:** proposed restructuring today's many cross-referencing profile tables into self-contained, standalone tables per certificate type (CA certificates, subscriber/end-entity certificates, OCSP responder certificates, CRLs), removing inheritance from other BR sections wherever possible. The draft format uses five columns (field/extension, OID, presence, criticality, content/validation rules), which both Chrome and the room agreed renders poorly in GitHub Markdown; Adrian Mueller and Dimitris suggested collapsing to three columns by folding OID and criticality into the notes column. **Rich Smith** proposed an alternative: one shared base table for subscriber certificates covering everything except subject identity fields, plus separate, smaller subject-information sub-tables for DV/OV/EV, to avoid near-duplicating three almost-identical tables. A separate participant noted that an SSL.com-led "CPS linter" project already uses a similar extensible, per-profile inheritance model internally while still generating a single flat table per profile in the published CPS — which they felt aligned well with Chrome's direction and offered to continue collaborating on.
- **Simplification and scope:** proposed eliminating Individual Validation (IV) certificate profiles entirely, citing negligible real-world issuance volume and reduced PII exposure as the justification, and moving over time toward strictly "dedicated" hierarchies (where any root claiming TLS BR conformance applies that conformance uniformly to every subordinate CA and certificate beneath it, rather than today's mixed-use/legacy hierarchies) — explicitly described as a long transition with no proposed timeline. Also proposed applying CAA checking uniformly, removing the existing exemption for technically-constrained issuing CAs.
  - Dimitris raised a specific concern about removing IV certificates: a path must remain for qualified web authentication certificates (QWACs) issued to natural persons under ETSI EN 319 411-1/-2, so the Forum doesn't inadvertently conflict with that regulatory requirement, even though real-world issuance volume is very low. Chris Clements responded that such certificates could continue to be issued against an explicitly version-pinned, older BR profile referenced by the relevant ETSI standard, noting this effectively already happens today.
  - A separate participant raised concern about the impact on legacy code-signing CA hierarchies, given very long code-signing timestamp/certificate lifetimes; Chris Clements agreed this needs further dedicated discussion and is not resolved by this proposal.
- **Metrics and next steps:** Chrome noted that impact assessments shown in the full slide deck are drawn primarily from Chrome's own PKI monitoring (supplemented in places by Censys-based ecosystem-wide data), and that comprehensive, accurate impact metrics will be gathered before any ballot moves forward. Two illustrative (not final) linting-solution models were previewed — a JSON-schema-based profile disclosure, and a "differential from base profile" model — with more detailed discussion deferred to a future meeting. Given time constraints, Chrome proposed taking the remaining material to the mailing list and/or a future regularly scheduled SCWG teleconference, with near-term action items to: address profile-to-profile transitions explicitly in the GitHub proposal text; produce a three-column alternative table format; and separately address long-lived code-signing hierarchies. Dimitris closed the topic by thanking Ryan Dickson and Chris Clements, who had presented very early in the morning their local time, and confirmed that the remaining related agenda items — aligning the BRs with "dedicated hierarchy" expectations, and a proposed Sectigo CPS-linter walkthrough (offered by Tim Callan) — would move to a future SCWG teleconference.

***

## Any Other Business

The chair asked for any other business before handing the floor to Dean for the Definitions and Glossary Working Group (DGWG) report. No further items were raised, closing the Server Certificate Working Group portion of the day.

***

## Attendance

Attendees physically present in the room.

Dustin Hollenback, Apple, Arnold Essing, Telekom Security, Scott Rea, eMudhra, Tsung-Min Kuo, Chunghwa Telecom, Quen-Zong Wu, Vice President, Chunghwa Telecom, Adrian M. Mueller, D-Trust GmbH, Lucy Buecking, IdenTrust, Iñigo Barreira, Sectigo, ADRIANO SANTONI, ACTALIS, Ben Wilson, Mozilla, Dimitris Zacharopoulos, HARICA, Rob White, GoDaddy, Nate Smith, Go Daddy, Peter Miškovič, Disig, a.s., Kiran Tummala, Apple, Daryn Wright, Apple, Eric Kramer, Sectigo, WEN-CHUN YANG, CHUNGHWA TELECOMM, Sven Rajala, Keyfactor, Sándor Szőke, Microsec Ltd., Pedro Fuentes, OISTE, Wayne Thayer, Fastly, Kiran Tummala, Apple, Lilia Dubko, CPA Canada - WebTrust, Chris Czajczyc, Deloitte / WebTrust, Atsushi INABA, GlobalSign, Arman Asemani, Apple, Andy Warner, Google Trust Services, ChyaHung Tsai, TWCA, Andrea Holland, IdenTrust, Rich Smith, DigiCert, Mike Agrenius Kushner, Keyfactor, Chris Clements, Google Chrome, Stefan Selbitschka, rundQuadrat OG, Adam Fiock, SSL.com, Jeff Ward, Aprio, Chad Dandar, Cisco Systems, Stefan Kirch, Telekom Security, Roman Fischer, SwissSign AG, Miguel Sanchez, Google Trust Services, Raffaela Achermann, SwissSign AG, Hazhar Ismail, MSC Trustgate.com Sdn Bhd, Dean Coclin, DigiCert, Zurina Zolkaffly, MSC Trustgate.com Sdn Bhd, Nome Huang, TrustAsia, Jozef Nigut, Disig, Antti Backman, Telia Company, Tim Crawford, WebTrust, Adrian M. Mueller, D-Trust GmbH, Luis Osses, Amazon Trust Services, Moritz Schaal, D-Trust, Sean Huang, TWCA, Dr HuckHai LIM, Baker Tilly, Kateryna Aleksieieva, Certum (Asseco Data Systems S.A.), Karolina Ruszczyńska, Certum (Asseco Data Systems S.A.), Clint Wilson, Apple, Logan Mabe, Microsoft, Rollin Yu, TrustAsia, kate.xu, TrustAsia, Rob Stradling, Sectigo, Paul Brown, GlobalSign, Christophe Bonjean, GlobalSign, Eva Van Steenberge, GlobalSign, Aaron Poulsen, SSL.com, Hsiao-Cheng Chiang, Chunghwa Telecom, Thomas Zermeno, SSL.com, Zeng Huan Song, ChungHwa Telecom Co., Ltd., Jeff Ward, Aprio, Aaron Poulsen, SSL.com, Trevoli Ponds-White, Amazon Trust Services, Clemens Wanko, ACAB'c / TUV AUSTRIA, Ons Cheikh Zaouali, Deloitte, Rebecca Kelley, DigiCert, Zurina Zolkaffly, MSC Trustgate.com Sdn Bhd, Logan Mabe, Microsoft, Luis Cervantes, SSL.com, Tim Callan, Sectigo, Stephen Davidson, DigiCert, Tadahiko Ito, SECOM, Martijn Katerbarg, Sectigo, Karina Sirota, Microsoft, Elena Sitnikova, Sectigo.

 Revision #4 Created 2026-10-06 07:46:46 UTC by Dimitris Zacharopoulos Updated 2026-10-21 08:46:07 UTC by Dimitris Zacharopoulos

