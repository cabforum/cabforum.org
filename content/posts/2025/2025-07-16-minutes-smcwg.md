---
date: 2025-07-16 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-07-16 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

July 16, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording. See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from June 12 (F2F#65) and July 2 were approved.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  None
 
________________________________________
 
## 6. Discussion Topics
 
    * Topic 1: Stephen Davidson noted that the Legacy generation profiles have been deprecated as of July 15 according to version 1.0.6 of the S/MIME Baseline Requirements and Ballot SMC08.
 
    * Topic 2: SMC013 PQC for S/MIME is in voting period until July 21 at 1700 UTC.

https://cabforum.org/2025/07/02/ballot-smc-013/
 
    * Topic 3: The WG discussed the draft charter update.  Stephen noted that the goal was to excise the outdated “startup” language and to bring it into conformance with updates that have since been made to the CABF Bylaws. 
 
Clint Wilson suggested a change to section 2.2: “seeking to improve the functionality and usability of S/MIME certificates in secure email.”  It was agreed to move the charter to a Forum ballot at the end of the summer.

https://github.com/srdavidson/cabforum/blob/SMCWG-charter-v2/SMCWG-charter.md
 
    * Topic 4: The WG returned to the Pseudonym discussion.  Stephen noted that the draft had been updated include text suggestions made by Guillaume Amringer during the last call.
 
Stephen noted that the conversation seemed to include two topics now: 1) ensuring Pseudonyms are not confusing, and 2) how to deal with role based mailbox names (like Support Desk or Accounting).  It has become apparent from discussion that users are trying to fit these role or group names into the pseudonym in ways that may not be appropriate. 
 
Sponsor-validated certificates are intended to be issued to individuals (natural persons).  A pseudonym may be applied by the Enterprise RA “which uniquely identifies the Subject of the Certificate within the Organization included in the subject:organizationName attribute.”
 
Org-validated certificates were intended for cases where a Mailbox could be used in the CN, along with the ER’s O.  There is a desire to have role or group names in the CN – which may not map uniquely to an individual.  Judy Spencer, Ashish Dhiman, and Adrian Mueller agreed. 
 
It was suggested that the OU is the appropriate place for this, and allowing the OU to be repeated in the CN.  Stephen noted that the S/MIME BR currently only allow validated OU. Scott Rea suggested that the S/MIME BR could be updated to make it clear that 1) the OU was scoped to the O which is an ERA and 2) the certs might be marked with a special CP OID or extension which made it clear the cert was issued by an ERA.  This would make the OU the Org equivalent to the individual Pseudonym.
 
The WG discussed the prefix “tag” for “Pseudonyms repeated in the CN” at length.  There are three positions: 1) optional support for the tag is desirable, 2) if the tag is allowed it should be consistent and made mandatory, 3) the tag is not necessary as the Pseudonym in the CN is also clearly identified in the subject:pseudonym attribute.  Guillaume said the proposed prefixes were anglocentric and may not be meaningful in other languages; he also suggested that another option is simply to drop the Pseudonym as an option for the CN.
 
Stephen agreed to propose additional text for further discussion.
 
https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...a69b83ea0d1f705fe523a7330eb55d5aa9f67d1f
https://github.com/cabforum/smime/issues/278
 
  * Topic 5: Stephen noted that he was looking for assistance in 1) updating the language relating to eID, 2) formulating the approach for mDL.
 
________________________________________
 
## 7. Ballot Status Updates (if applicable)
 
*  Upcoming Drafts / In Development: Pseudonym, mDL
*  In Discussion Period: NA
*  In Voting Period: SMC013 (PQC for S/MIME)
*  Under IPR Review: NA
*  Approved and Effective: SMC012 (ACME For S/MIME)
 
________________________________________
 
## 8. Next Meeting
 
Date: Wednesday, July 30 2025 at 11:00 am Eastern Time.  The group agreed to cancel the August 13 teleconference.
 
________________________________________
## 9. Any Other Business
 
*  The SMCWG asked for assistance on mDL topics, particularly in identifying the issuers that would be acceptable in the S/MIME BR. 
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adrian Mueller (SwissSign), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Clint Wilson (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jeff Ward (Aprio), Judith Spencer (CertiPath), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems)