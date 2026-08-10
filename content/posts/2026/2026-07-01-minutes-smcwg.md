---
date: 2026-07-01 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-07-01 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
July 01, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
 
*  June 02
*  June 16
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
The membership of Deutsche Telekom Security GmbH was confirmed as a CA Issuer.
 
________________________________________
 
6.            Discussion
 
    *  Stephen Davidson noted that Ballot SMC017v2 was approved: https://cabforum.org/2026/06/16/ballot-smc-017v2/ and was in IPR through July 30.
 
    *  He also noted the updated Mozilla policy v3.1 effective 1 July that includes references to S/MIME.
 
    *  Stephen described the restrictions that were added to the CCADB Policy section 6.3, which are tighter than those currently described in the S/MIME BR when a cross certificate is issued from a multipurpose root to a dedicated root hierarchy.  He shared a draft text which would embed the CCADB expectation in the S/MIME BR. https://github.com/cabforum/smime/compare/3948f7f538133f6e9d731660f0fc36bfc8d98c13...c7befe6784a4c273bd5bf5865c55f45dac7c58b1
 
* The WG held a wider discussion on the S/MIME BR allowance for additional EKU in the Multipurpose profile in light of 1) CCADB section 6.3 and 2) proposed changes to the Apple policy which seek to restrict the Multipurpose profile to emailprotection or emailprotection+clientauth.  It was discussed if this caused issues with existing document signing use cases, as signing software used a mix of emailProtection, the IETF generic docsigning EKU, as well as proprietary EKU from Adobe and Microsoft.  Stephen said he observed that some CAs still used a mix of these in signing certificates.  Dustin Hollinbeck said the S/MIME was the supported use case for most browser root stores and that the Apple policy, when enacted, would include a transition period to allow existing CAs to migrate to the newly-stated policies.  Ben Wilson said that CAs with concerns relating to the CCADB policy should reach out. Stephen and Dustin agreed to prepare additional information for a future meeting.
 
    *  The WG will discuss the agenda for the F2F meeting in Vienna in September during the next teleconference.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development: Pseudonym, cross-cert restrictions, CAA updates
    *  In Discussion Period:  NA
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC017v2: Increase Minimum RSA CA Key Size until July 30
    *  Approved and Effective: Ballot SMC016: Equivalence with Ballots SC096 and SC097 as of May 5
________________________________________
 
7.           Next meeting:
 
    * Wednesday, July 15, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adriano Santoni (Actalis S.p.A.), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Cynethia Brown (US Federal PKI Management Authority), Dustin Hollenback (Apple), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Pedro Zavala (IdenTrust), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Wendy Brown (US Federal PKI Management Authority), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)