---
aliases:
- /2025/01/23/ballot-sc-83-Winter-2024-2025-Cleanup-Ballot
author: Wayne Thayer
date: 2025-01-23
tags:
- Ballot
- Server Certificates
title: 'Ballot SC083v3: Winter 2024-2025 Cleanup Ballot'
type: post
---

## Voting Results

### Certificate Issuers

30 votes in total:

- **30 voting YES**: Amazon, Asseco Data Systems SA (Certum), Buypass AS, Certinomis, CFCA, Chunghwa Telecom, CommScope, DigiCert, Disig, D-TRUST, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Izenpe, Japan Registry Services, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud, Visa
- 0 voting NO
- 0 ABSTAIN


### Certificate Consumers

4 votes in total:

- **4  voting YES**: Apple, Cisco Systems, Google, Mozilla
- 0  voting NO
- 0  ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 11 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**:  SC083: Winter 2024-2025 Cleanup Ballot

[TBR-SC83.pdf](BR-SC83.pdf)

[TBR-SC83-redlined.pdf](BR-SC83-redlined.pdf)

[TBR-SC83.docx](BR-SC83.docx)

**Start of Review Period**:  2025-01-23 13:00:00 UTC

**End of Review Period**: 2025-02-22 13:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dimitris Zacharopoulos ) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

**Purpose of Ballot**

This ballot resolves a number of issues to improve the clarity and consistency of these documents. Changes incorporated are listed in the commit log of the pull request, and include:

- fix: cabforum#550 Incorrect capitalization of RFC2119 keyword
- fix: cabforum#541 de-capitalize undefined term
- fix: cabforum#539 Exactly one RCPOID
- fix: cabforum#538 Make sure the Policy Restricted profile is the targ…
- fix: cabforum#530, cabforum#529 and cabforum#531 updates
- fix: cabforum#523 update http to https for references
- fix: cabforum#502 Remove extraneous "for either"
- fix: cabforum#481 capitalize Trusted Roles
- fix: cabforum#465 Remove section 2.2 reference
- fix: cabforum#463 Remove extra parenthesis
- fix: cabforum#556 Clarify when MPIC is in scope
- fix: cabforum#557 clarify when a CA can and cannot issue.
- fix: cabforum#272 Clarify "a separate validation for that FQDN"
- fix: cabforum#273 Fix indenting
- fix: cabforum#370 perform CP/CPS updates at least once every 366 days
- fix: cabforum#387 Remove Section 8.4 reference to triennial audit
- fix: Remove States, Provinces or Countries from MPIC distance requirements
- fix: MPIC issuance prohibition clarification
- fix: Clarify usage of non-IDNA2003 usage
- fix: cabforum#498 extKeyUsage criticality correction
- fix: cabforum#505 allow 7 days for initial CRL issuance
- fix: Exclude IP Address from Subject Identity Information scope 
- fix: ESI 319 411-1 correction
- fix: Feedback from Aaron and Tobias on DCV methods

**Motion**

The following motion has been proposed by Martijn Katerbarg (Sectigo) and endorsed by Corey Bonnell (DigiCert) and Ryan Dickson (Chrome Root Program)

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.1.1 as specified in the following redline:

https://github.com/cabforum/servercert/compare/096810820d605d1a2c90a9b10e4ef36ed65bd6cc…9ffa7711bb1a2fe07d93593c7d603ffc15aaf298

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

Start time: 2025-01-08 16:00 UTC
End time: 2025-01-15 17:00 UTC

**Vote for approval (7 days)**

Start time: 2025-01-15 17:00 UTC
End time: 2025-01-22 17:00 UTC
