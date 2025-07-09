---
date: 2025-05-21 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-05-21 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

May 21, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording (Webex). See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from May 7 were approved.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  None
 
________________________________________
 
## 6. Discussion Topics
 
    * Topic 1: Stephen Davidson noted that SMC012 ACME for S/MIME was in discussion period.
 
https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...4a663e37e70083752c6fa9ae0d4820231cf54217
 
    * Topic 2: Clarification of MPIC for 3.2.2.2 Validating control over mailbox via email
 
The SMCWG discussed whether MPIC was required when sending confirmation emails in fulfilling the requirements of section 3.2.2.2 for mailbox control. Stephen noted that some methods in the TLS BR that acquire an email address from DNS require MPIC, but it is not explicitly required to send emails.  Clint Wilson said that MPIC should work in an equivalent mode across the S/MIME and TLS BRs, and that no extra steps seemed necessary at this time.
 
    * Topic 3: PQC, what else is needed for ballot?
 
The WG discussed the draft.  Stephen asked if any other guardrails were required; none were raised.  He noted that the TLS BR lays out explicit rules which dictate which algos can be combined across CA vs leaf.  Those restrictions do not exist in the S/MIME BR.  He noted this would be resolved when the S/MIME BR Section 7 is rewritten. Clint said the Apple program does not currently allow PQC algorithms, but said while it was likely to have pure or composite PQC hierarchies that it was unlikely that a mix, for example, or RSA and PQC would be used. He did not see the need to add a note at this time about the formation of hierarchies.  The WG discussed that support for composites should be added as a separate ballot in the future.
 
    * Topic 4: Rework of Section 7
 
Stephen noted that a new PR had been opened to rewrite Section 7 so that it followed the same layout as the TLS BR.  See https://github.com/cabforum/smime/tree/profiles.  He asked for assistance in drafting.  He noted that this would be considerable effort and would require significant review – and an extended implementation period – as it would define requirements in areas where today the standard is silent.  Andy Warner said that it would be preferable to match the section numbering exactly (for example noting “not applicable” for Precertificate sections) but we’d have to consider how to handle collisions.  Stephen said that he’d move the section heads into the new draft, and welcomed assistance in drafting.
 
The WG discussed that cross-signing would certainly become more prevalent as CA lifetimes become shorter. The WG discussed that following the rewrite, the group might consider releasing (informative?) versions of the profiles in machine format, such as JSON.
 
________________________________________
 
## 7. Ballot Status Updates (if applicable)
 
*  Upcoming Drafts / In Development: PQC, mDL
*  In Discussion Period: NA
*  In Voting Period: NA
*  Under IPR Review: SMC012 (ACME For S/MIME)
*  Approved and Effective: SMC011
 
________________________________________
 
## 8. Next Meeting
 
Date: Toronto Face to Face Thursday, June 12 2025 at 11:00 am Eastern Time.  The group agreed to cancel the June 4 teleconference.
 
________________________________________
## 9. Any Other Business
 
*  Stephen raised the subject of revitalizing the SMCWG charter both to remove the out-of-date startup language, but also to broaden the scope to a wider array of S/MIME topics. There was no objection.
*  Stephen asked for assistance on mDL topics, particularly in identifying the issuers that would be acceptable in the S/MIME BR. 
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adrian Mueller (SwissSign), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Enrico Entschew (D-TRUST), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Aprio), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lilia Dubko (CPA Canada/WebTrust), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Wendy Brown (US Federal PKI Management Authority), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)