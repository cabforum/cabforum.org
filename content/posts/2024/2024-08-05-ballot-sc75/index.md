---
aliases:
- /2024/08/05/ballot-sc-075-pre-sign-linting
author: Iñigo Barreira
date: 2024-08-05
tags:
- Ballot
- Server Certificates
title: 'Ballot SC075: Pre-sign linting'
type: post
---

## Voting Results

### Certificate Issuers

25 votes total, with no abstentions:

- **25 Issuers voting YES**: Actalis, Buypass, Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Disig, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, JPRS, Kamu SM, Let's Encrypt / ISRG, OISTE, SECOM, Sectigo, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
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
the quorum was 13 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-75: Pre-sign linting

[TBR-SC75.pdf](CA-Browser-Forum-TLS-BR-2.0.6.pdf)

[TBR-SC75-redlined.pdf](CA-Browser-Forum-TLS-BR-2.0.6-redlined.pdf)

[TBR-SC75.docx](CA-Browser-Forum-TLS-BR-2.0.6.docx)

**Start of Review Period**: 28 June 2024 at 09:00 UTC

**End of Review Period**: 28 July 2024 at 09:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

There have been numerous compliance incidents publicly disclosed by CAs in which they failed to comply with the technical requirements described in standards associated with the issuance and management of publicly-trusted TLS Certificates. However, the industry has developed open-source tools, linters, that are free to use and can help CAs avoid certificate misissuance. Using such linters before issuing a precertificate from a Publicly-Trusted CA (pre-issuance linting) can prevent the mis-issuance in a wide variety of cases.

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Corey Bonnell of Digicert and Ben Wilson of Mozilla.


### Motion begins

MODIFY the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” based on Version 2.0.5 as specified in the following redline: 
https://github.com/cabforum/servercert/compare/20af1b271f2b689344ae353d3e78dc6b772199db…d809c41bc063109e15d46bfe1b5ad6403d823381


### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

•	Start time: 2024-06-12 06:30:00 UTC

•	End time: 2024-06-19 06:30:00 UTC

Vote for approval (7 days)

•	Start time: 2024-06-19 10:00:00 UTC

•	End time: 2024-06-26 10:00:00 UTC


