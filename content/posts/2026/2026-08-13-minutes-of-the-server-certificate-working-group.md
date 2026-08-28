---
author: Wayne Thayer
date: 2026-08-13 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-08-13 Minutes of the Server Certificate Working Group
type: post
---

 # Final minutes for the Server Certificate Working Group teleconference - August 13, 2026

## Meeting Date:
- 2026-08-13

## Note Well:
- Wayne Thayer chaired the meeting in Dimitris Zacharopoulos's absence.
- The meeting was recorded and the Note Well was read.

## Review of Agenda:
- No changes were made to the published agenda.

## Approval of Minutes:
- July 30, 2026 Teleconference approved without objection.

## Membership Applications:
- Wayne Thayer introduced an Interested Party application from GÉANT.
- Dean Coclin raised a question regarding whether the individual, Nicole Harris, who signed the application as Head of Security had sufficient authority to bind the organization to the IPR Agreement.
- Stephen Davidson noted that GÉANT is part of the European research and education network community and provides services to universities.
- Scott Rea noted that Nicole Harris typically represents GÉANT in working groups.
- Dean Coclin noted that Forum agreements have historically been signed by someone with authority to bind the organization, typically an executive or someone from legal.
- Dustin Hollenback asked how the Forum determines whether a signatory has the necessary authority.
- Dean Coclin suggested requesting confirmation that the signatory has authority to bind GÉANT. He noted that previous inquiries of this type have generally resulted either in confirmation of the signatory's authority or a new signature from an appropriately authorized individual.
- Dean Coclin will follow up with GÉANT regarding the signatory's authority, and the application will be revisited after a response is received.

## Ballot Status:
- SC-102:
  - Wayne Thayer reported that SC-102 had completed its IPR Review Period.
  - A new version of the TLS Baseline Requirements incorporating SC-102 was published earlier in the day.
- SC-103 - Require EKUs for Cross-Certified Subordinate CAs:
  - SC-103 remains in the Discussion Period.
  - No additional discussion occurred.
- SC-100 - DNSSEC Clarification and Consolidation:
  - SC-100 recently entered the IPR Review Period.

## Draft Ballots:
- Improved Certificate Problem Reports and Clarify the Meaning of Revocation:
  - Martijn Katerbarg reported that he intends to address what he hopes is the final outstanding comment and then move the ballot forward.
- Allow ML-DSA:
  - Stephen Davidson and Gurleen Grewal reported that work continues toward a combined ballot.
  - Gurleen Grewal indicated that the work is getting close to completion.
  -  Georgy Sebastian reported on behalf of Amazon Trust Services that Michael Slaughter had updated the proposal and was seeking feedback on the proposed language.
  -  Georgy Sebastian shared the latest version during the meeting.
  - Gurleen Grewal indicated that the newly shared version should be considered the canonical version and that links to the other PRs could be removed.
  - Wayne Thayer indicated that the ballot tracking information would be updated accordingly.
- Revocation Timeline for CP/CPS Deviations:
  - Dimitris Zacharopoulos was not present to provide an update.
  - The item was tabled.

## Any Other Business:

### SC-101v2 and Reuse of Validation Data:
- Wayne Thayer raised a mailing list question concerning Section 4.2.1 and reuse of validation data following changes to validation requirements.
- The specific question was whether permitted reuse continues when a validation method is indirectly affected by a change to a definition on which the method relies.
- Dustin Hollenback initially expressed concern about allowing reuse following such a change but noted the practical difficulty of expecting CAs and Root Programs to track indirect changes to definitions outside the validation method itself.
- Dustin Hollenback noted that, particularly as validation reuse periods continue to decrease, allowing reuse in this situation may be a reasonable approach and would avoid creating compliance "gotchas" without a clear ecosystem benefit.
- Wayne Thayer agreed that this was consistent with his reading of the requirement and stated that the language appears intended to prevent existing validations from immediately becoming unusable following a requirements change.
- Dustin Hollenback distinguished an indirect change to an external definition from a direct change to the validation method itself and questioned whether the same treatment should apply to a direct change.
- Wayne Thayer noted that Section 4.2.1 explicitly permits reuse following a change to a validation method for the applicable reuse period unless the ballot making the change specifically provides otherwise.
- Rich Smith noted that he believed the relevant reuse language may predate SC-101.
- The discussion generally supported the interpretation that reuse remains permitted for the applicable reuse period unless the ballot introducing the change specifically prohibits it.
- Wayne Thayer indicated that the minutes from the discussion could be used to help respond to the mailing list question.

### Attendance by Members of Other Working Groups:
- Wayne Thayer raised a question from a member of another CA/Browser Forum Working Group who wanted to attend the Forum Plenary teleconference but was not a member of the Server Certificate Working Group.
- Because the Forum Plenary begins immediately after the SCWG teleconference, the individual asked whether they could join the SCWG call while waiting for the Forum portion to begin.
- Martijn Katerbarg noted that face-to-face meetings provide precedent for allowing attendees to be present during sessions of Working Groups to which they do not belong. He suggested that such individuals be permitted to listen but not participate in the SCWG discussion.
- Martijn Katerbarg also noted that the Forum portion of the call can begin earlier than scheduled, making it difficult for a participant to know precisely when to join if they cannot listen to the preceding SCWG meeting.
- Dean Coclin agreed that allowing the individual to listen without participating in the SCWG discussion was reasonable.
- Arman Asemani suggested reversing the order of the calls so that the Forum Plenary occurs first and non-SCWG members can leave before the SCWG meeting begins.
- Dean Coclin, Martijn Katerbarg, Dustin Hollenback, and Wayne Thayer discussed the previous ordering of the calls and recalled that the order had been changed in part because of differences in meeting duration.
- Andrea Holland noted that holding the Forum Plenary first would also allow participants who do not wish to attend the SCWG meeting to leave afterward.
- Dean Coclin indicated that he would be open to changing the order but wanted Dimitris Zacharopoulos's input.
- Wayne Thayer summarized the discussion as supporting allowing the individual to join the SCWG portion as an observer but not participate in the discussion.
- The group will separately consider whether to change the ordering of the Forum Plenary and SCWG teleconferences.

## Adjourn:
- The meeting adjourned. The next Server Certificate Working Group teleconference is scheduled for 2026-08-27.

## Attendees:
Arman Asemani (Apple), Nate Smith (GoDaddy), Zoey Wang, Logan Mabe (Microsoft), Rollin Yu (TrustAsia), Jun Okura (Cybertrust), Andrea Holland (IdenTrust), Martijn Katerbarg (Sectigo), Gurleen Grewal (GTS), Hogeun Yoo (NAVER Cloud Trust Services), Alvin Wang (SHECA), Sándor Szőke (Microsec), Ben Wilson (Mozilla), Clint Wilson, Tobias Josefowitz (Opera), Moritz Schaal (D-Trust), Polina Glazyrina (Sectigo), Adam Jones (Microsoft), Kateryna Aleksieieva (Certum by Asseco), Sean Huang (TWCA), Lucy Buecking (IdenTrust), Dustin Hollenback, Scott Rea (eMudhra), Kiran Tummala, Paul van Brouwershaven (Digitorus), Karina Goodley, Cynetheia Brown (FPKIMA), Janet Hines (SSL.com), Nome Huang (TrustAsia), Chris Clements (Google Chrome), Daryn Wright, Li-Chun Chen (Chunghwa Telecom), Stephen Davidson (DigiCert), Atsushi Inaba (GlobalSign), Tsung-Min Kuo (Chunghwa Telecom), Rich Smith (DigiCert), Ryan Dickson (Google Chrome), Dean Coclin (DigiCert), Fumiaki Ono (SECOM Trust Systems), Steven Deitte (GoDaddy), Georgy Sebastian (Amazon Trust Services), Jos Purvis (Fastly), Sandy Balzer (SwissSign), Luis Cervantes (SSL.com), Aaron Poulsen (SSL.com), Rob White (GoDaddy), Wayne Thayer (Fastly)
