---
date: 2026-05-06 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-05-06 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
May 6, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
 
*  April 22
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
________________________________________
 
6.            Discussion
 
    *  Stephen Davidson noted that v1.0.14 was in effect since May 5 (Ballot SMC016)
    *  SMC017 ballot dealing with increase in RSA size starts May 6
    *  The WG discussed other ballots at the SCWG that might have an impact on the SBR.  This included Ballot SC098v2: Process RFC 8657 CAA Parameters.  Martijn Katerbarg agreed to review for applicability to the SBR.
    *  Andy Warner noted that many CAs are transitioning roots from multipurpose to single use, and warned that there may be potential traps as far as maintaining test TLS websites during the migration period and changing of root “tags” in CCADB.  It was requested that Mozilla provide advice on this aspect of compliance. Martijn Katerbarg said that a number of CAs had added caveats to their transition plans that they may still issue TLS from the CA even after the change in Mozilla, which addressed this concern.
    *  The WG revisited the Pseudonym ballot previously discussed.  https://github.com/cabforum/smime/compare/21bda9e4a5f04f373dbd359b4e2213a3f4910c76...b13f8956f715c97dbf215c864fa99905d25a1eb1
The WG discussed the prefix at first being optional, and eventually being made mandatory for consistency.  Stephens said that an ample implementation period would be provided.
The WG discussed at length the requirements in 3.1.3 that require uniqueness of Pseudonym when such a requirement does not exist for actual names.  The requirement is for a unique Subject DN. Ashish Dhiman agreed, and will work with Stephen to propose updated text. 
Judith Spencer disagreed that tagging of Pseudonyms in the CN was necessary from a right to privacy perspective; Stephen said that the attribute already was in the Pseudonym field.  He said the goal of the SBR was to create consistency in identity validation so it made sense to tag the CN when the name may not be what it seems.  Stefan Selbitshka said the tag was useful because most software only displayed the CN.  Rich Smith said that Pseudonym was similar to the OU, so should be tagged.
Martijn said that in some of the pseudonym cases, the Organization-validated or Mailbox-validated profiles were more appropriate and simpler.
The WG discussed a draft of the future Apple survey questions regarding to CAs’ public trust S/MIME issuance.
Stephen reminded members interested in CABF leadership roles to contact Dean Coclin regarding the upcoming elections.
________________________________________
 
7.           Ballot Status Updates
    *  In Development:  RSA step up, pseudonym
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: until May 1, Ballot SMC016: Equivalence with Ballots SC096 and SC097
    *  Approved and Effective: SMC015v2: Allow mDL for authentication of individual identity (March 27 2026)
 
 
________________________________________
 
7.           Next meeting:
 
    * Wednesday, May 20, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Cynethia Brown (US Federal PKI Management Authority), Dustin Hollenback (Apple), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jeff Ward (CPA Canada/WebTrust), Jozef Nigut (Disig), Judith Spencer (CertiPath), Kiran Tummala (Apple), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Patrick Patterson (Carillon Information Security Inc.), Pekka Lahtiharju (Telia Company), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Wiktoria Więckowska (Asseco Data Systems SA (Certum))