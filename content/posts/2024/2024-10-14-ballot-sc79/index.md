---
aliases:
- /2024/10/14/ballot-sc-79-Allow more than one Certificate Policy in a Cross-Certified Subordinate CA Certificate
author: Iñigo Barreira
date: 2024-10-14
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-79v2: Allow more than one Certificate Policy in a Cross-Certified Subordinate CA Certificate'
type: post
---

## Voting Results

### Certificate Issuers

19 votes total, with no abstentions:

- **19 Issuers voting YES**: Buypass, Certum (Asseco), Chunghwa Telecom, D-TRUST, Disig, eMudhra, Entrust, Fastly, GoDaddy, HARICA, JPRS, SECOM, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

2 votes total, with no abstentions:

- **2 Consumers voting YES**: Google, Mozilla
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 14 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-76: Clarify and improve OCSP requirements

[TBR-SC79.pdf](BR-SC79.pdf)

[TBR-SC79-redlined.pdf](BR-SC79-redlined.pdf)

[TBR-SC79.docx](BR-SC79.docx)

**Start of Review Period**: 14 october 2024 at 17:30 UTC

**End of Review Period**: 14 November 2024 at 17:30 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

This ballot duplicates the content of section 7.1.2.10.5 (CA Certificate Certificate Policies) into section 7.1.2.2 (Cross-Certified Subordinate CA Certificate Profile) as section 7.1.2.2.6 (Cross-Certified Subordinate CA Certificate Certificate Policies), modifying the requirement from "MUST contain exactly one Reserved Certificate Policy Identifier" to "MUST include at least one Reserved Certificate Policy Identifier. If any Subscriber Certificates will chain up directly to the Certificate issued under this Certificate Profile, this Cross-Certified Subordinate CA Certificate MUST contain exactly one Reserved Certificate Policy Identifier". This change allows the inclusion of multiple Reserved Certificate Policy Identifiers in a Cross-Certified Subordinate CA Certificate, except when any Subscriber Certificates chain up directly to the Certificate issued under this Certificate Profile.
 
Additionally, the description of the `policyIdentifier` contents was updated for clarification in both sections.
 
The following motion has been proposed by Paul van Brouwershaven (Entrust) and endorsed by Ben Wilson (Mozilla) and Thomas Zermeno (SSL.com).

### Motion begins

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.0.7 as specified in the following redline:
 
- https://github.com/cabforum/servercert/compare/ba28d04894d69c8fac62850b9d0de5061658c7c5...e808034e0c8889884761a2e591bb562f86b858c3

### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:
 
Discussion (at least 7 days)
•	Start time: 2024-09-22 19:10 UTC
•	End time: 2024-09-29 19:10 UTC
 
Vote for approval (7 days)
•	Start time: 2024-09-30 11:10 UTC
•	End time: 2024-10-07 11:10 UTC





