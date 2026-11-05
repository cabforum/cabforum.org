---
date: 2026-08-26 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-08-26 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
August 26, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  August 12 deferred
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.          Discussion
 
    *      Stephen Davidson noted that Ballot SMC018: Realignment of Multipurpose use cases https://cabforum.org/2026/08/11/ballot-smc-018/ has passed and is in IPR until September 24.
    *      Stephen also reminded that the S/MIME have several September 15 compliance dates:
       *     SHALL sunset all remaining use of SHA-1 in Certificates and CRLs
       *     New Root or Subordinate CA RSA Key SHALL be at least 4096 bits
    *      The WG discussed https://github.com/cabforum/smime/issues/268 and the overlap between the S/MIME BR and TLS BR as pertains to subCA profiles. Following discussion it was agreed that changes are not required at this time.
    *      The WG discussed https://github.com/cabforum/smime/issues/243 which led to a discussion of whether, in light of changes made to the Apple policy, the “scope” preamble to the S/MIME BR should be amended.  Dustin Hollinback said that Apple had been uncomfortable with some emailProtection certificates “opting out” of S/MIME compliance by omitting an email address and felt that the EKU was the driving determinant of scope.  As root program approaches on this may vary, and CAs may have SMIME roots only in specific root programs, Stephen agreed to open a discussion on the list; see https://groups.google.com/a/groups.cabforum.org/d/msgid/smcwg-public/BL1PR14MB514312364FA0FDB27FB3F6E8E5AE2%40BL1PR14MB5143.namprd14.prod.outlook.com
    *      F2F agenda includes a presentation by Sean Turner on PQC developments in S/MIME, as well as a review of the impact of SC098 (review of CAA reshuffles) on SBR
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development: CAA review
    *  In Discussion Period:  NA
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24)
    *  Approved and Effective: Ballot SMC017v2: Increase Minimum RSA CA Key Size (v1.0.15 as of July 30)
________________________________________
 
8.           Next meeting:
 
    * Wednesday, September 9, 2026 at 11:00 am Eastern time
 
________________________________________
 
9.            Any other business
 
________________________________________
 
10.        Adjourn
 
Attendees:
 
Adam Fiock (SSL.com), Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Rebecca Kelley (DigiCert), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Sean Huang (TWCA), Stefan Kirch (Deutsche Telekom Security GmbH), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems)
 