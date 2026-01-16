---
aliases:
- /2026/01/14/ballot-sc-96-carve-out-for-dnssec-verification-logging-requirements
author: Wayne Thayer
date: 2026-01-14
tags:
- Ballot
- Server Certificates
title: 'Ballot SC096: Carve-out for DNSSEC verification logging requirements'
type: post
---

## Voting Results

### Certificate Issuers
27 votes in total:

 * 27 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

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
Ballot for Review: SC096: Carve-out for DNSSEC verification logging requirements

[TBR-SC96.pdf](BR-SC096.pdf)

[TBR-SC96-redlined.pdf](BR-SC096-redline.pdf)

[TBR-SC96.docx](BR-SC096.docx)

[TBR-SC96-redlined.docx](BR-SC096-redline.docx)

**Start of Review Period: 2026-01-15 18:00:00 UTC**

**End of Review Period: 2026-02-14 18:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

###  Summary

DCV/CAA logging currently is defined very broadly, leaving it unclear if DNSSEC verification logs are in scope or not. Additionally, DNS resolvers are not built for extensive logging.

This ballot aims to carve-out the logging requirements for DNSSEC specifically, stating these are not in scope. For audit purposes, change management logging is able to confirm if the appropriate controls are in effect or not.

The following motion has been proposed by Martijn Katerbarg (Sectigo) and endorsed by Roman Fischer (SwissSign) and Ben Wilson (Mozilla).

### Motion Begins

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates" ("Baseline Requirements") based on Version 2.1.9 as specified in the following redline:

https://github.com/cabforum/servercert/compare/1bfd462460ba1b8068ee926de7bc296871d10013...00aa4ea35372c84d08ef1cbd4fc1bb8d356d6e09

### Motion Ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

 * Start time: 2025-12-15 12:15 UTC
 * End time: 2026-01-07 16:15 UTC

**Vote for approval (7 days)**

 * Start time: 2026-01-07 16:15 UTC
 * End time: 2026-01-14 16:15 UTC