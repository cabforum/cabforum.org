---
date: 2025-07-30 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-07-30 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

July 30, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording. See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from July 12 were approved.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  None
 
________________________________________
 
## 6. Discussion Topics
 
Martijn Katerbarg commenced the meeting.  Stephen Davidson noted that the updates to the Charter have been discussed at some length in the SMCWG and comments raised had been incorporated into the draft.  He noted that consensus appeared to have been achieved on the acceptability of the text, so the next step would be to propose it as a Forum-level ballot in late August.
 
    * Topic 1: Martijn noted that SMC013 PQC for S/MIME is in IPR until August 20.
https://cabforum.org/2025/07/02/ballot-smc-013/

    * Topic 2: Stephen walked through the text for a proposed ballot to require DNSSEC for CAA (maintaining equivalency with TLS BR, SC-085).
 
https://github.com/cabforum/smime/issues/275
https://github.com/cabforum/smime/compare/59687c5e3835f889cdbb0ff0f0a24cfffc684084...f2a8a2202d0c8a632c35ea1ef156157094780958
 
It was noted that the new requirements to require DNSSEC for domain validation is incorporated in section 3.2.2.4 of the TLS BR which is directly referenced by the S/MIME BR so no edits were needed.  However the requirements for DNSSEC for CAA were in a new section in the TLS BR, so corresponding text needed to be added to the S/MIME BR.  It was decided to do this via direct statement of the text rather than incorporation by reference.
 
Ashish Dhiman questioned if the March 2026 effective date was sufficient lead time for CAs who might not issue TLS.  Stephen said he believed it was, if we moved promptly to ballot.  Clint Wilson offered to endorse a ballot.
 
It was suggested that the WG review the 3.2.2.4 methods and their relationship to the S/MIME BR, and whether the SBR should adopt direct statement of the text rather than incorporation by reference.
 
    * Topic 3: The WG returned to the draft Pseudonym text.  The group has consensus to ban the use of email addresses as pseudonyms but it is less clear if there is consensus on the tagging of CNs when they re-use the Subject:Pseudonym.
 
The WG discussed that many of the issues arising from the use of CNs with the Subject:Pseudonym come from organizations seeking to show “role” or “group” names in the CN.  It was proposed that clarity be introduced for this use case either by allowing them in the Pseudonym for Sponsor-validated certificates, or by using the OU field in Organization-validated certificates.  In the latter case, it would be only 1) for certificates issued by an Enterprise RA, and 2) if an indicator was added to the cert, such as a CP OID, that noted that an ERA was involved.
 
Judith Spencer and Scott Rea offered to assist in proposing text.
 
https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...a69b83ea0d1f705fe523a7330eb55d5aa9f67d1f
https://github.com/cabforum/smime/issues/278
 
________________________________________
 
## 7. Ballot Status Updates (if applicable)
 
    *  In Development:  DNSSEC, Pseudonym, mDL
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: SM013: PQC for S/MIME (until August 20)
    *  Approved and Effective: SMC012: ACME For S/MIME (as of July 2)
 
________________________________________
 
## 8. Next Meeting
 
Date: Wednesday, August 27 2025 at 11:00 am Eastern Time.  The group agreed to cancel the August 13 teleconference.
 
________________________________________
## 9. Any Other Business
 
Ashish Dhiman requested that the group consider the topic of validity periods to provide clarity regarding how the S/MIME BR interacts with the TLS BR.  Stephen noted that at this stage the S/MIME BR set their own validity periods entirely separate from the TLS BR.
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jeff Ward (CPA Canada/WebTrust), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Nome Huang (TrustAsia), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert)