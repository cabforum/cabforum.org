---
aliases:
- /2025/07/22/ballot-sc-89-Mass-Revocation-Planning

author: Wayne Thayer
date: 2025-07-22
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-089: Mass Revocation Planning'
type: post
---

## Voting Results

### Certificate Issuers

30 votes in total:

- **29 voting YES**: Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Certinomis, Chunghwa Telecom, CommScope, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
- 0 voting NO:
- 1 ABSTAIN: Entrust

### Certificate Consumers

3 votes total:

- **3 voting YES**: Cisco Systems, Microsoft, Mozilla
- 0 voting NO
- 0 ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 10 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**:   SC089: Mass Revocation Planning

[TBR-SC89.pdf](BR-SC089.pdf)

[TBR-SC89-redlined.pdf](BR-SC089-redline.pdf)

[TBR-SC89.docx](BR-SC089.docx)

[TBR-SC89-redlined.docx](BR-SC089-redline.docx)

**Start of Review Period**: 2025-07-24 07:00:00 UTC

**End of Review Period**: 2025-08-23 07:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

**Purpose of Ballot**

This ballot proposes the addition of a new subsection, Section 5.7.1.2 – Mass Revocation Planning, to the Baseline Requirements for the Issuance and Management of Publicly‐Trusted TLS Server Certificates. Its purpose is to require that Certification Authorities (CAs) develop, maintain, and annually test a Mass Revocation Plan as part of their overall business continuity strategy. This is already a requirement of the Mozilla Root Program.

Mass revocation events—situations where a large proportion of a CA's certificates must be revoked within a short period of time—pose significant risks to the stability, reliability, and trustworthiness of the Web PKI. In recent years, such events have revealed operational challenges in CA readiness, communication with affected parties, and the timely replacement of revoked certificates. A well-prepared and well-tested plan is essential to minimizing disruption to subscribers and relying parties, as well as to maintaining the integrity of the public trust ecosystem.

This amendment sets forth minimum requirements for Mass Revocation Plans, including activation criteria, defined roles and responsibilities, mechanisms for subscriber communication, documentation of processes, and expectations for regular testing. It also requires that, as of December 1, 2025, CAs assert in their CPSes that they maintain such a plan and incorporate lessons learned from testing to continually improve their preparedness.

The goal of this ballot is to improve transparency, auditability, and operational resilience across all publicly-trusted, TLS-issuing CAs, while aligning expectations with existing root program policies and auditor feedback.

The following motion has been proposed by Ben Wilson (Mozilla) and endorsed by Enrico Entschew (D-Trust) and Pedro Fuentes (OISTE).

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.1.5 as specified in the following redline:

https://github.com/cabforum/servercert/compare/e9176e15805a2f7908411a22a40047b655fa24c4...c9076a905c30c7766404f240fac4a198e6b9e2f2

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

Start time: July 7, 2025 23:00 UTC

End time: on or after July 14, 2025 23:00 UTC

**Vote for approval (7 days)**

Start time: July 15, 2025 22:00 UTC

End time: July 22, 2025 22:00 UTC