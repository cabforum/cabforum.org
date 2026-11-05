---
date: 2026-09-09 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-09-09 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
September 9, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  August 26
*  August 12
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.            Discussion
 
    *      Stephen Davidson noted that Ballot SMC018: Realignment of Multipurpose use cases https://cabforum.org/2026/08/11/ballot-smc-018/ has passed and is in IPR until September 24.
    *     Stephen made note of the SCWG discussion of revocation reasons being led by Ben Wilson.  This may have relevance to the S/MIME BR as section 4.9.1.1 was synched to the TLS BR.
    *      The WG discussed the scope of the S/MIME BR in light of changes to the Apple policy which make all Apple-trusted certificates bearing emailProtection in scope: https://github.com/cabforum/smime/issues/307 Dustin Hollenback said the change in Apple Policy was intended to make it clear what was in scope.  He said that Apple had surveyed its CA root-store members, which found only 2 out of ~39 CA members were issuing emailProtection without mailbox addresses in the SAN.  It was noted that other root programs may have more flexibility, which might argue in favor of retaining the existing S/MIME BR language.  Stephen agreed to reach out to other root programs, including Gmail.  Judith Spencer said that the introductory change would not be enough; it would need to be reflected in the normative profile requirements as well.
    *      Pedro Fuentes of OISTE proposed a ballot to update the S/MIME BR reference to match the TLS BR equivalent following SC-099. The WG conversation concurred this was a good idea. https://github.com/cabforum/smime/issues/308
    *      Stephen noted the Validation Sub Committee was undertaking a conversation about the use of AI in validation tasks.
    *      F2F agenda includes a presentation by Sean Turner on PQC developments in S/MIME, as well as a review by Martijn Katerbarg of the impact of SC098 (review of CAA reshuffles) on SBR.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24)
    *  Approved and Effective: Ballot SMC017v2: Increase Minimum RSA CA Key Size (v1.0.15 as of July 30)
 
________________________________________
 
8.           Next meeting:
 
    * September 23 meeting is cancelled
    * We meet next on Thursday, September 24, 2026 at Vienna F2F, see wiki
 
________________________________________
 
9.            Any other business
 
________________________________________
 
10.        Adjourn
 
Attendees:
 
Adam Fiock (SSL.com), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Dustin Hollenback (Apple), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Rebecca Kelley (DigiCert), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)
 