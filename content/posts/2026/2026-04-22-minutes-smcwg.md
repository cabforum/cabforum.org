---
date: 2026-04-22 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-04-22 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
April 22, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  March 25
*  April 8
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
________________________________________
 
6.            Discussion
 
Stephen Davidson noted that the SBR had been updated on March 26 to v1.0.13.  He also noted that Ballot SMC016 had been approved and was in IPR until May 1.
 
The WG discussed the draft ballot on RSA step up, proposed by DigiCert and endorsed by Mozilla and SwissSign. The ballot would become SMC017. Changes were agreed to make the language clearer, with the goal of moving to ballot.  Martijn Katerbarg said he’d look into the impact on cross-certificates.  Stephen asked for feedback from the email clients if there were issues regarding support for leaf certificates greater than 2048 bit.
https://github.com/cabforum/smime/compare/21bda9e4a5f04f373dbd359b4e2213a3f4910c76...a6d582ab7da98ac1ca7fd92f35f321aa9f70df37
 
Stephen noted the questions about S/MIME included in the Apple Root Program survey conducted recently and said that Apple had agreed to discuss them in the WG.  Dustin Hollenback commented that the results will be used to inform Apple policy and, after being anonymized, will be shared with the community.  Ben Wilson mentioned that including volume of issued certificates would be useful with some of the planned questions. Stephen noted that the feedback would be useful to the SMCWG.  Martijn commented that a question about the EKU that are combined with Multipurpose profiles would be of interest. Dustin also noted that a recent Apple Root Program survey revealed that only two CA Owners within the Apple Root Program issue certificates with id-kp-emailProtection and do not include an email address, which was a topic in previous SMCWG meetings.
 
________________________________________
 
Note: These are example questions to eventually answer in a future survey and are for all S/MIME certificates under the hierarchy included in the Apple Root Program, regardless if issued from an Externally Operated Subordinate CA:
What is the average monthly issuance percentage for each of the four validation types (Mailbox, Organization, Sponsor, Individual)?
For each validation type, what is the average monthly issuance percentage for the 'Multipurpose' vs. 'Strict' Generations?
What is the distribution of key algorithms (e.g., RSA, ECDSA, PQC) used across the different S/MIME validation types?
What is the distribution of mailbox validation methods used (e.g., Domain Control via DNS, Email Challenge-Response, ACME)?
What are the most common optional subject attributes (e.g., pseudonym, title)
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development:  RSA step up to 3072
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: until May 1, Ballot SMC016: Equivalence with Ballots SC096 and SC097
    *  Approved and Effective: SMC015v2: Allow mDL for authentication of individual identity (March 27 2026)
 
 
________________________________________
 
7.           Next meeting:
 
    * Wednesday, May 6, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wiktoria Więckowska (Asseco Data Systems SA (Certum))