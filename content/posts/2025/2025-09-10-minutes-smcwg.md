---
date: 2025-09-10 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-09-10 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
These are the Minutes of the meeting for September 10, 2025. Corrections and clarifications where needed are encouraged by reply.  
 
## 1. Note Well and Antitrust Statement
 
* The Note Well was read
 
## 2. Roll Call
 
* Taken from recording.
 
## 3. Approval of Prior Minutes
 
* The minutes from **August 27, 2025**, were approved without objection.  
 
## 4. Agenda Review
 
* No additional topics were added to the proposed agenda.
 
## 5. Membership Applications
 
* None.
 
## 6. Discussion Topics
 
### Topic 1: SMC014 – DNSSEC for CAA
 
* The ballot is currently in its voting period, expected to conclude later that day.
* No “No” votes had been observed, and it was expected to pass.
 
### Topic 2: Charter Update
 
* There have been no updates since the last discussion.
* Guillaume raised a question about the membership requirements section of the draft charter — specifically the clause referencing “audit schemes such as but not limited to” and what audit frameworks beyond those listed could be acceptable.
* Clint responded that the intent was likely to include audit criteria and reports accepted by **root stores participating in the Forum** or this working group.  
* Guillaume noted connection issues but acknowledged understanding the main point.
* No further comments were made on this item.
 
### Topic 3: Pseudonym Discussion
 
* Inigo summarized the three options previously discussed regarding tagging pseudonyms in the Common Name (CN):
  1. **Make tagging mandatory** – for consistency and to reduce confusion for relying parties (e.g., Outlook displays the CN field).  
  2. **Allow but not require tagging** – to avoid over-constraining CA practices.  
  3. **Do not tag** – as it is redundant with the Subject’s `pseudonym` attribute.
* Guillaume added further arguments against tagging:
  * The tagging convention is **Anglo-centric** and may not suit all regions.
  * It imposes design decisions on certificate consumers, which the WG has agreed to avoid in the charter discussions.
* Adrian supported continuing practice of tagging pseudonyms (using “pseudo:” prefixes) and questioned the characterization of the practice as Anglo-centric.  
  * SwissSign would be satisfied with either optional or mandatory tagging, as long as existing practices can continue.
* Judith noted that Stephen, prior to his absence, had agreed to draft proposed language for the BRs regarding pseudonyms with input from Scott and herself.  
  * That draft is still pending and will be discussed when available.
* The group agreed to wait for Stephen’s proposed text before continuing the discussion.
 
## 7. Ballot Status Updates
 
* **In Development:** Pseudonym, mDL  
* **In Discussion Period:** None  
* **In Voting Period:** SMC014 – DNSSEC for CAA  
* **Under IPR Review:** None  
* **Approved and Effective:** SMC013 – PQC for S/MIME (effective August 22, 2025)
 
## 8. Next Meeting
 
* The next regular meeting will be held on September 24, 2025, at 11:00 am Eastern Time.  
* The subsequent meeting will be held during the Face-to-Face (F2F) event.  
* Members were invited to suggest F2F discussion topics by emailing the Chairs or posting to the WG mailing list.
 
## 9. Any Other Business
 
* None.
 
## 10. Adjournment
 
* The meeting was adjourned.  
 
### Attendees 
Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Daryn Wright (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Kiran Tummala (Microsoft), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Sean Huang (TWCA), Tim Huff (Microsoft), Wiktoria Więckowska (Asseco Data Systems SA (Certum))