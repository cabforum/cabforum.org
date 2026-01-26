---
aliases:
- /2026/01/24/ballot-sc-097-sunset-all-remaining-use-of-sha-1-signatures-in-certificates-and-crls
author: Wayne Thayer
date: 2026-01-24
tags:
- Ballot
- Server Certificates
title: 'Ballot SC097: Sunset all remaining use of SHA-1 signatures in Certificates and CRLs'
type: post
---

## Voting Results

### Certificate Issuers
26 votes in total:

 * 26 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
4 votes in total:

 * 4 voting YES: Apple, Google, Microsoft, Mozilla

 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 17 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC094v2: DNSSEC exception in email DCV methods

[TBR-SC97.pdf](BR-SC097.pdf)

[TBR-SC97-redlined.pdf](BR-SC097-redline.pdf)

[TBR-SC97.docx](BR-SC097.docx)

[TBR-SC97-redlined.docx](BR-SC097-redline.docx)

**Start of Review Period: 2026-01-15 18:00:00 UTC**

**End of Review Period: 2026-02-14 18:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

###  Purpose of Ballot SC-097:

This ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates (TLS BRs) to sunset all remaining use of SHA-1 signatures. 


### Background: Over the years, various sunsets have limited the use of SHA-1 within the TLS BRs, including:

    Ballot 118 (2014), which prevented the issuance of any new Subscriber certificates or Subordinate CA certificates using the SHA-1 signing algorithm.

    SC-053 (2022), which prevented delegated OCSP signing using the SHA-1 signing algorithm.


Despite these sunsets, unexpired and unrevoked Subordinate CA certificates containing the SHA-1 signature algorithm still exist (examples). Additionally, Certificate Revocation List (CRL) Distribution Points disclosed to the CCADB are serving CRLs signed with SHA-1 (examples).


This ballot is motivated by discussion during the Server Certificate Working Group Meeting at Face-to-Face 66 (slide 11).

Scope: Update Section 7.1.3.2.1 to prohibit all remaining use of the SHA-1 signature algorithm from appearing in Certificates or status information responses. As part of this sunset and to promote cyber hygiene, all unexpired Subordinate CA certificates containing the SHA-1 signature algorithm must be revoked.


This proposal does not prohibit the use of SHA-1 to generate issuerKeyHash or issuerNameHash values, as currently required by RFC 5019.

Justification: This ballot complements prior efforts within the CA/Browser Forum to eliminate use of the SHA-1 signature algorithm from PKI hierarchies adhering to the TLS BRs.

Weaknesses regarding the use of the SHA-1 signature algorithm have been known for several years. These weaknesses were first demonstrated in 2017.


### Benefits of adoption:

 * Promote cyber hygiene.

 * Reduce risk of potential collisions due to the inherent weaknesses of SHA-1, therefore improving security.

 * Promote use of modern PKI hierarchies.

 * Continuity with other technologies also looking to sunset use of SHA-1 (example).


### Proposed Key Dates:

 * Effective September 15, 2026:

   * Prevent use of SHA-1 in new CRLs 

    * CAs must revoke unexpired Subordinate CA Certificates containing the SHA-1 signature algorithm.


### Proposal Revision History:

 * Version #1 (created against TLS BR Version 2.1.9)

 * Version #2 (this version, created against TLS BR Version 2.2.1)


The following motion has been proposed by Ryan Dickson and Chris Clements of Google (Chrome Root Program) and endorsed by Clint Wilson (Apple) and Dimitris Zacharopoulos (HARICA).


— Motion Begins —


This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.2.1.


MODIFY the Baseline Requirements as specified in the following Redline:


https://github.com/cabforum/servercert/compare/86512c243874a62054b1cf4d0e7b424467e99a78..d02eb83c8153c2787d3567de382c759e0947af54 


— Motion Ends —


This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:


Discussion (no less than 7 days)

 * Start: 2026-01-09 11:30:00 ET

 * End: 2026-01-16 13:29:59 ET


Vote for approval (7 days)

 * Start: 2026-01-16 13:30:00 ET

 * End: 2026-01-23 13:30:00 ET
