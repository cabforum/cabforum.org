---
date: 2025-04-23 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-04-23 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

April 23, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording (Webex). See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from March 27 (Tokyo F2F and April 9) were approved.
*  Minutes were taken by Stephen Davidson, changing to new template proposed by Ben Wilson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  Ganesh Mallaya (individual) and Antony Vennard (individual) were confirmed as Interested Parties.
 
________________________________________
 
## 6. Discussion Topics
 
Topic 1: Pkilint feedback: pseudonym
The WG discussed feedback that had arisen from pkilint users regarding tagging the use of Pseudonyms in the CN.  Stephen presented a draft update that introduced the prefixes Psuedo: and PN: initially as a MAY, and proposed this would become a SHALL at a future date.  Stephen noted that this use was already common in Europe, but he was not aware of it being described in any standard.
 
Judith Spencer and Ashish Dhiman suggested that the prefix should remain a MAY. Stephen noted that on a previous call, a Certificate Consumer had voiced a strong preference for universal consistency if such a tag was be introduced. 
 
*  https://github.com/digicert/pkilint/issues/155
 
Topic 2: Pkilint feedback: directoryName
 
The group previously discussed a correction to the text relating to the use of directoryName in the SAN extension, where a reference to tables had not been updated to accommodate changes in the number of those tables.  Stephen presented draft text proposed by Corey Bonnell.  It was agreed to incorporate the correction in an upcoming ballot.
 
*  https://github.com/cabforum/smime/issues/281
 
Topic 3: Final review of ACME for S/MIME ballot
 
Stephen reviewed the draft text to introduce a new method for validation of mailbox control, using ACME for S/MIME as defined in RFC 8823: Extensions to Automatic Certificate Management Environment for End-User S/MIME Certificates. Although similar to the existing method (3.2.2.2) “Validating control over mailbox via email”, the WG agreed to define ACME for S/MIME in a new method in order to better describe how a CA’s ACME server may respond to a POST request by sending the Random Value token components via email and SMTP.
 
Tadahiko Ito noted that the text may need to provide a more precise definition of entropy. Stephen asked if he could assist in defining that.
 
Stephen encouraged the proposal of new methods to facilitate the validation of mailbox authorization or control. There were no objections to move ahead to ballot.
 
*  https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...46f48f891743860a8ab30e8c8f0985bfe22c8d57
 
Topic 4: PQC for S/MIME
 
Stephen noted that the WG had agreed at the WG to explore the introduction of the NIST PQC algorithms to the S/MIME BR.  Stephen introduced a draft of such enabling text to allow the use of ML-DSA and ML-KEM.  He noted that the proposal only included “pure” PQC certificates at this stage. Clint Wilson suggested that additional steps might be undertaken to accommodate composite and hybrid certificates in a future ballot. 
 
Stephen noted that the additions he made were based on the IETF drafts, and requested that members with PQC expertise review the text for accuracy, but also to note if there are additional guardrails that should be expressed relating to PQC.
 
It was noted that additional PQC algorithms would inevitably arise, which might hasten the need to realign Section 7 to the table-driven model later adopted in the TLS BR.
 
* https://github.com/cabforum/smime/issues/280
 
________________________________________
 
## 7. Ballot Status Updates (if applicable)
 
*  Upcoming Drafts / In Development: SMC012 – ACME For S/MIME
*  In Discussion Period: NA
*  In Voting Period: NA
*  Under IPR Review: SMC011 until May 14, 2025
*  Approved and Effective: NA
 
________________________________________
 
## 8. Next Meeting
 
Date: Wednesday, May 7 2025 at 11:00 am Eastern Time
 
________________________________________
## 9. Any Other Business
 
*  None
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), Cynethia Brown (US Federal PKI Management Authority), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)
 