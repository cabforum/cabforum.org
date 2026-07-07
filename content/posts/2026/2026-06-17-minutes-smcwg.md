---
date: 2026-06-17 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-06-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
June 17, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  June 3 deferred
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
________________________________________
 
6.            Discussion
 
    *  Stephen Davidson noted that SMC017v2 was in formal discussion period: https://cabforum.org/2026/06/16/ballot-smc-017v2/ through June 23.  Dustin Hollenback requested a diff between the old and new versions of the ballot.
    *  Stephen walked through the text of SC-103 which re-addressed the TLS BR handling of cross certificates to match the stricter constraints proposed by CCADB Policy 6.3.  Stephen asked if a similar update was required for the S/MIME BR.  Martijn Katerbarg noted that the S/MIME BR had not yet adopted the “tabular” style of certificate profiles that was later adopted in the TLS BR, so an implementation would be more text driven.  Technical challenges arose due to audio issues during the meeting. Stephen said that he was uncertain how frequently cross-certificates were used in S/MIME, and Ben Wilson agreed to look into the CCADB filings.  Stephen proposed bringing draft text for consideration following a review of Ben’s data.
    *  Stephen said the TLS BR had recently consolidated its references to CAA from various locations, into one location, while also updating the CAA parameters requirement.  The WG will need to implement that parameters requirement, and may reconsider our own approach to implementing the CAA requirements (i.e., if the TLS BR text is sufficiently generalized to allow an inward pointer or if the S/MIME BR require a separate statement of the same facts in order to vary certain items for our use case).
________________________________________
 
7.           Ballot Status Updates
    *  In Development: Pseudonym, cross-cert restrictions, CAA updates
    *  In Discussion Period: Ballot SMC017v2: Increase Minimum RSA CA Key Size
    *  In Voting Period: NA
    *  Under IPR Review: NA
    *  Approved and Effective: Ballot SMC016: Equivalence with Ballots SC096 and SC097(May 5)
________________________________________
 
7.           Next meeting:
 
    * Wednesday, July 1, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andrea Holland (IdenTrust), Andy Warner (Google), Arman Asemani (Apple), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Florian Oprea (TeleTrust), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Jozef Nigut (Disig), Judith Spencer (CertiPath), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
 