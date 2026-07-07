---
date: 2026-04-08 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-04-08 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
April 8, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
 
*  Minutes of March 25 were deferred.
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
Stephen Davidson noted that Carillon had requested that its membership be changed to Interested Party.
 
________________________________________
 
6.            Discussion
 
Stephen Davidson noted that the SBR had been updated on March 26 to v1.0.13.  He also noted that Ballot SMC016 had been approved and was in IPR until May 1.
 
The WG discussed the draft ballot on RSA step up, proposed by DigiCert and endorsed by Mozilla and SwissSign. The ballot would become SMC017.
 
The WG reviewed recommendations and requirements from the underlying standards (such as NIST and ECCG).  Inigo Barreira noted that some EU countries had extended the ECCG deadline into 2026.
 
The WG discussed whether the step up from 2048 to 3072 was adequate.  Following discussion it was decided to change the target size for roots and subCAs to 4096.  It was decided to leave the level for end entity certs at 2048 but to add language in the ballot saying that this would be addressed in a future ballot, to provide guidance for client software.  An alternative would be to include an extended future step up date for end entity certs.
 
The WG discussed the “stop issuance date” for existing CAs with smaller RSA keys.  The WG agreed that a transition period was preferable but it was expressed that 2027 was more suitable than 2028.  Stephen agreed to update the draft.
 
https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...a90411aa2a7d2279692c21a35597a950cc9f37c7
 
The WG continued the discussion of whether the SBR should be tied to the “strictest of the combined root store requirements” or if it should allow flexibility or a “superset”.  Ben Wilson noted that the TLS BR had been revised at one point to the “strictest” but it had since varied (for example, the TLS BR still allow clientAuth even though at least one root program will deprecate it). 
 
Stephen shared a chart describing the distribution of S/MIME roots across the various programs, which does show a diverse distribution.
 
The WG decided to revisit the topic following the update of the Apple policy. Ben agreed to assist in pulling data of EKU from CCADB that might contribute to that consideration.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development:  RSA step up to 3072
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: until May 1, Ballot SMC016: Equivalence with Ballots SC096 and SC097
    *  Approved and Effective: SMC015v2: Allow mDL for authentication of individual identity (March 27 2026)
 
 
________________________________________
 
7.           Next meeting:
 
    * Wednesday, April 22, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Andy Warner (Google), Arman Asemani (Apple), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Patrick Patterson (Carillon Information Security Inc.), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Wiktoria Więckowska (Asseco Data Systems SA (Certum))