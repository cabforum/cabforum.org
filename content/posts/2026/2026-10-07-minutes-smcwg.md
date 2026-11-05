---
date: 2026-10-07 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-10-07 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
October 7, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
    *  September 9
    * September 24 (F2F)
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.          Discussion
 
    *      Stephen Davidson noted that v1.0.16 is effective as of 2026-09-28, and includes an action date of 2027-07-01 whereupon the allowed EKU in the Multipurpose profile are reduced to emailProtection and clientAuth.
    *      Stephen noted that Ballot SMC020: Remove Requirement to Record BR Version of Validation Method is in formal discussion period (until 2026-10-12).  This ballot maintains synchronization between the S/MIME BR and the TLS BR following Ballot SC099.
    *      The WG reviewed the text of Ballot SC107 relating to Certificate Problem Reports for TLS.  As the S/MIME BR use the same language that is proposed for update, a successful TLS ballot will lead to an S/MIME synchronization ballot.  See https://github.com/cabforum/servercert/pull/622.
    *      The WG continued the discussion relating to repositioning the scope of the S/MIME to include all CA and leaf certificates that include the emailProtection EKU: https://github.com/cabforum/smime/issues/307. This would be consistent with Apple policy, but it was noted that not all root programs had a formal similar requirement. There was some support for it.  Stephen noted that he had reached out to root programs for feedback.  Barring an objection, this would start moving towards ballot.
    *      Stephen walked through the text of a ballot designed to introduce ML-DSA Composite certificates using the RSA/ECDSA combinations allowed by the S/MIME BR.  He said this was driven by the Apple announcement that Composite S/MIME would be added under their root program, with further details expected in the near future.  He asked for assistance in reviewing his draft against the relevant IETF internet-drafts.  It was agreed to consider ML-KEM Composites as a subsequent ballot. https://github.com/cabforum/smime/pull/310/changes
    *     Stephen noted the discussion that had occurred in the SCWG at the F2F relating to machine-readable certificate profiles.  It was agreed that, as details of that possible approach became clear, to consider restating Section 7 of the S/MIME BR.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Discussion Period: Ballot SMC020: Remove Requirement to Record BR Version of Validation Method (until 2026-10-12)
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24)
    *  Approved and Effective: Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24) (v1.0.16 as of September 28)
 
________________________________________
 
8.           Next meeting:
 
    * Next meeting: Wednesday, October 21 2026, 11 am Eastern
 
________________________________________
 
9.            Any other business
 
________________________________________
 
10.        Adjourn
 
Attendees:
 
Adam Fiock (SSL.com), Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Malcolm Idaho (IdenTrust), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (DigiCert), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)
 