---
aliases:
- /2024/09/02/ballot-sc-77-Update-WebTrust-Audit-name-in-Section-8.4-and-References
author: Iñigo Barreira
date: 2024-09-02
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-77: Update WebTrust Audit name in Section 8.4 and References'
type: post
---

## Voting Results

### Certificate Issuers

22 votes total, with no abstentions:

- **22 Issuers voting YES**: Amazon, Buypass, Chunghwa Telecom, CommScope, DigiCert, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Izenpe, JPRS, OISTE, SECOM, Sectigo, SSL.com, TrustAsia, TWCA, VikingCloud
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

3 votes total, with no abstentions:

- **3 Consumers voting YES**: Apple, Google, Mozilla
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

**Ballot for Review**: Ballot SC-77: Update WebTrust Audit name in Section 8.4 and References

[TBR-SC77.pdf](BR-SC77-clean.pdf)

[TBR-SC77-redlined.pdf](BR-SC77-redlined.pdf)

[TBR-SC77.docx](BR-SC77-clean.docx)

**Start of Review Period**: 2 September 2024 at 11:30 UTC

**End of Review Period**: 2 October 2024 at 11:30 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

System Security Requirements (NCSSRs) from the audit criteria which map to the TLS Baseline Requirements (TBRs). As a result, the requirements in Section 8.4 are out of date for audits which use the updated/separated audit criteria. However, we also need to ensure the combined audit criteria are able to be used until fully deprecated by CPA Canada and/or Root Programs stop accepting them. 

This ballot modifies Section 8.4 to allow for a CA to be audited against either: 
•	WebTrust Principles and Criteria for Certification Authorities – SSL Baseline with Network Security; or 
•	WebTrust Principles and Criteria for Certification Authorities – SSL Baseline AND WebTrust Principles and Criteria for Certification Authorities – Network Security 

The following motion has been proposed by Clint Wilson (Apple) and endorsed by Dimitris Zacharopoulos (HARICA) and Trevoli Ponds-White (Amazon)

### Motion begins

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.0.5 as specified in the following redline: 
•	https://github.com/cabforum/servercert/compare/20af1b271f2b689344ae353d3e78dc6b772199db...a9d3e3b6e514cf8b4d44ace625a447108c04a91c


### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

•	Start time: 2024-08-06 17:00:00 UTC

•	End time: 2024-08-13 17:00:00 UTC

Vote for approval (7 days)

•	Start time: 2024-08-13 17:00:00 UTC

•	End time: 2024-08-20 17:00:00 UTC


