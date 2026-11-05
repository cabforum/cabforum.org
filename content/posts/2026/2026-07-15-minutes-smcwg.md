---
date: 2026-07-15 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-07-15 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
July 15, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  July 1
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.            Discussion
 
    *  Stephen Davidson noted that Ballot SMC017v2 was approved: https://cabforum.org/2026/06/16/ballot-smc-017v2/ and was in IPR through July 30.
    *  The WG revisited the draft ballot text implementing CCADB Section 6.3 in the SBR.  Stephen raised the impact of the soon to be publish Apple Policy 2.0 which introduces restrictions on the use of other EKU than emailProtection and clientAuth.  He noted that in many (but not all) cases the CABF has chosen to uplift the relevant BR to match the most restrictive root program requirement.  The notable exception is clientAuth in TLS certificates. Dustin Hollinbeck said that historically S/MIME may have been a dumping ground of other stuff that nobody else wants and that the SBR had always indicated a move towards stricter profile requirements (for example with the deprecation of the past Legacy profiles).  Broadly, the Apple Policy says
Subscriber certificates signed before 2027-07-01 MAY contain EKU combinations that do not conform to the Trust Purposes defined in the Appendix, provided it otherwise complies with all applicable BR.
Subordinate CA certificates signed before (the policy effective date) MAY be multi-purpose and MAY contain EKUs not defined in this Appendix (subject to rules). 
Through 2027-07-01, a CA Owner whose Root CA Certificate predates this policy version and supports multiple Trust Purposes MAY still sign new Subordinate CAs for use cases outside Appendix A, for example Document Signing, provided each is technically constrained. Only after 2027-07-01 may no new Subordinate CA be signed under that allowance.
    *  Dustin noted that these changes were the right thing for the Apple Policy, but there were CAs that only issued S/MIME under other root programs.
    *  Stephen agreed to propose draft language for how these restrictions might appear for subCAs and for leaf certificates.
    *  Dustin asked if there were still valid Legacy profile certificates, and if that text could be removed from the SBR.  Stephen noted that even though issuance was halted last year, the Legacy certs could be valid up to 1185 days, and that previously the WG had opted to keep the text until they had expired.
    *  Stephen noted that Sean Turner had been invited to present remotely during the F2F Vienna session about new developments relating to the use of PQC in S/MIME.  Stephen noted that he’d had some success using AI to propose updated section 7 text matching the TLS BR “tabular” style.  The WG will also work on a roadmap of future topics.  Stephen asked root programs if there were areas that they saw as causing compliance issues.  More broadly he invited WG members to identify areas of frustration, compliance issues, or missed opportunities.
________________________________________
 
7.           Ballot Status Updates
    *  In Development: Pseudonym, cross-cert restrictions
    *  In Discussion Period:  NA
    *  In Voting Period: NA
    *  Under IPR Review: Ballot SMC017v2: Increase Minimum RSA CA Key Size until July 30
    *  Approved and Effective: Ballot SMC016: Equivalence with Ballots SC096 and SC097 as of May 5
________________________________________
 
7.           Next meeting:
 
    * Wednesday, July 29, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andrea Holland (IdenTrust), Andy Warner (Google), Arman Asemani (Apple), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), George Postelnicu (TeleTrust), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Rich Smith (DigiCert), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Kirch (Deutsche Telekom Security GmbH), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)