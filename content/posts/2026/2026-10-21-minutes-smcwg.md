---
date: 2026-10-21 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-10-21 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
October 21, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
    * September 9
    * September 24 (F2F)
    * October 7
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.            Discussion
 
        *      Stephen Davidson noted that v1.0.16 is effective as of 2026-09-28, and includes an action date of 2027-07-01 whereupon the allowed EKU in the Multipurpose profile are reduced to emailProtection and clientAuth.
    *      Stephen noted that Ballot SMC020: Remove Requirement to Record BR Version of Validation Method passed and is in IPR (until 2026-11-19).  This ballot maintains synchronization between the S/MIME BR and the TLS BR following Ballot SC099.
    *      The WG held a discussion of the use of nameConstraints in S/MIME CAs.  It was noted that there was a discussion about possibly phasing out nameConstraints in the TLS BR.  Stephen said that when the WG was set up it had been confirmed that at least some client software provided support for nameConstraints.  He asked if there was still active use for S/MIME. Ben Wilson agreed to check CCADB.
    *     Stephen noted the CABF’s recent F2F discussions about machine readable certificate profiles.  He recently undertook an experiment to create json5 profiles for the S/MIME BR using Corey Bonnell’s Infrared schema.  https://github.com/srdavidson/SMIME_BR_Profiles The readme is well documented – including both strengths and shortcomings.  He welcomed feedback to the profiles, and would continue to develop them for CAs should the group find the effort useful.
    *     The WG continued the discussion of clarifying the scope of the SBR to more firmly include all certificates that include the emailProtection EKU.  It was suggested to formalize ballot language, which Stephen agreed to do.  https://github.com/cabforum/smime/issues/307
    *     The WG briefly discussed the draft SMC019 (Composite) ballot https://github.com/cabforum/smime/pull/310/changes.  The Apple policy update is still pending – but Stephen noted that the WG wished to have a ballot ready to move to discussion as promptly as possible.  It was agreed toa dd ML-KEM to the current ballot.  Stephen agreed to move ahead, and sought endorsers to review and support the ballot.
    *     It was noted that Scott Rea has informed the CABF that he would not be able to assume the recently elected role of Vice Chair of the WG.  A request for new nominations is imminent, with a ballot to follow.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Discussion Period: Ballot SMC020: Remove Requirement to Record BR Version of Validation Method (until 2026-10-12)
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC020: Remove Requirement to Record BR Version of Validation Method (until 2026-11-19)
    *  Approved and Effective: Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24) (v1.0.16 as of 2026-09-28)
 
________________________________________
 
8.           Next meeting:
 
    * Next meeting: Wednesday, November 4 2026, 11 am Eastern
 
________________________________________
 
9.            Any other business
 
________________________________________
 
10.        Adjourn
 
Attendees:
 
Adam Fiock (SSL.com), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Daryn Wright (Apple), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Rebecca Kelley (DigiCert), Rollin Yu (TrustAsia), Sean Huang (TWCA), Stefan Kirch (Deutsche Telekom Security GmbH), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com)