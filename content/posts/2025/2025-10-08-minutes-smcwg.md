---
date: 2025-10-08 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-10-08 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
October 8, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording. See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from September 10 and September 24 were approved.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
Stephen Davidson noted that BuyPass had requested to change their membership from Certificate Issuer to Interested Party as they have ceased issuance of public trust S/MIME.  Stephen thanked BuyPass, and in particular Mads Henriksveen, for their contributions to the group.
 
________________________________________
 
## 6. Discussion Topics
 
    * Topic 1: Stephen noted that SMC014 - DNSSEC for CAA was currently in IPR until October 10 so a new version of the S/MIME BR would be published on October 13 at the latest.  No essential claims have been received at this time.

    * Topic 2:  Personal Name in CN vs split in givenName and surname.  Stephen noted that the Legacy generation profiles allowed the Personal Name to be displayed in the CN as provided by an Enterprise RA.  The Multipurpose and Strict profiles require the givenName and surname to be split into the respective attributes. Some Certificate Issuers have reported that has been an obstacle for some orgs who do not have directories that match that pattern.  The WG discussed if there was sufficient rationale to restore the original allowance as it was described in the Legacy profiles into the Multipurpose profiles?
 
Clint Wilson said he’d prefer to consistently show the Email attribute as the CN. Stephen noted that Enterprises typically desired showing Personal Names in the CN because of the display in email clients. Clint suggested that it might make sense to update an inventory of how email clients displayed certificate details.
 
Stefan Selbitschka agreed that companies might not necessarily have clean data but questioned if relaxing the requirements was the correct option. Martijn Katerbarg noted that the Mailbox- and Org-validated profiles existed for enterprises who could not provide the names as required, agreed by Ashish Dhiman. 

Ashish pointed out that the “name” attributes were in fact optional in the Sponsor-validated profile – and as a result there was some confusion among Orgs, if name details are not to be included in the certificate, if the Sponsor-validated or Org-validated profile should be used.
 
Judith Spencer said that Enterprises should be allowed to name their users as they know them (i.e., to allow the use of the complete Personal Name in the CN rather than to split it).  Stephen agreed that artificial hurdles were undesirable.  Albert de Ruyter supported flexibility.
 
Clint said email clients wanted consistency and reliability of information – and that sometimes increased flexibility for subscribers meant decreased reliability for relying parties.  The WG did not reach a conclusion at this time.
 
* Topic 3: The WG returned to the topic of Pseudonym.  Stephen noted that this was an issue for precisely that point: increased flexibility left room for decreased reliability.  The group agreed that the Sponsor-validated profiles were intended for natural person users.  The WG reviewed Section 3.1.3 uniqueness of pseudonym and the uniqueness requirement. 
 
Judith Spencer said the Subject required uniqueness, not a single attribute. The WG recalled that the uniqueness requirement was introduced as a flag that pseudonyms were intended for personal use – not as a side door to use corporate roles like Support.  Martijn pointed out the pseudonym was unique to the subject not the email address. 
 
* Topic 3: F2F agenda.  Stephen noted that the academic researchers would speak with the group about their S/MINE study later in November.  The F2F time would be used to discuss mDL and eID, as well as roadmap.  This might include the overlap of domain validation methods with the TLS BR.
 
 
## 7. Ballot Status Updates
    *  In Development:  Pseudonym, mDL, eID
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: SMC014: DNSSEC for CAA (until October 10)
    *  Approved and Effective: SMC013 PQC for S/MIME (as of August 22)
 
________________________________________
 
## 8. Next Meeting
 
Date: Friday October 17 2025 at the Warsaw F2F meeting.  The October 22 teleconference was cancelled.
 
________________________________________
## 9. Any Other Business
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Daryn Wright (Apple), Dustin Hollenback (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jeff Ward (CPA Canada/WebTrust), Judith Spencer (CertiPath), Kiran Tummala (Microsoft), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust), Tim Huff (Microsoft), Wendy Brown (US Federal PKI Management Authority)