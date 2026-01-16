---
aliases:
- /2026/01/15/ballot-sc-094v2-dnssec-exception-in-email-dcv-methods
author: Wayne Thayer
date: 2026-01-15
tags:
- Ballot
- Server Certificates
title: 'Ballot SC094v2: DNSSEC exception in email DCV methods'
type: post
---

## Voting Results

### Certificate Issuers
26 votes in total:

 * 26 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, OISTE Foundation, SECOM Trust Systems, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
2 votes in total:

 * 2 voting YES: Apple, Mozilla

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

[TBR-SC94.pdf](BR-SC094.pdf)

[TBR-SC94-redlined.pdf](BR-SC094-redline.pdf)

[TBR-SC94.docx](BR-SC094.docx)

[TBR-SC94-redlined.docx](BR-SC094-redline.docx)

**Start of Review Period: 2026-01-15 18:00:00 UTC**

**End of Review Period: 2026-02-14 18:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

###  Summary: 

After discussions around DNSSEC enforcement [1] [2] [3] for all Domain Validation methods, and with the WG's decision that the e-mail Domain Validation methods are scheduled to be deprecated (SC090), in order to reduce complexity and confusion around the way to enforce DNSSEC checks on the various email service agents, an exception to the DNSSEC enforcement is proposed for those methods. 

This version (2) fixes an inconsistency issue raised on the SCWG public list.

More information is available in this pull request.

[1]: https://groups.google.com/a/groups.cabforum.org/g/validation/c/zIKy6Qffw3w/m/qYDGYDQLBAAJ 

[2]: https://groups.google.com/a/groups.cabforum.org/g/servercert-wg/c/g4G7WF6uCHo/m/gX2Ek4S-BAAJ

[3]: https://groups.google.com/a/groups.cabforum.org/g/servercert-wg/c/226_yZ8Lp4c/m/9bJhRHGpAAAJ 

The following motion has been proposed by Dimitris Zacharopoulos (HARICA) and endorsed by Roman Fischer (SwissSign) and Adriano Santoni (Actalis).

--- Motion Begins ---

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.1.9.


MODIFY the Baseline Requirements as specified in the following Redline: https://github.com/cabforum/servercert/compare/a9f40a597e45605e499bc73a64aaa1d607bd5b0a.


--- Motion Ends ---

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

 * Start time: 2025-12-19 13:00:00 UTC
 * End time: on or after 2025-12-26 13:00:00 UTC

Vote for approval (7 days)

 * Start time: 2026-01-08 06:15:00 UTC
 * End time: 2026-01-15 06:15:00 UTC