---
aliases:
- /2024/03/15/ballot-sc-65-convert-EVGs-into-RFC3647-format
author: Iñigo Barreira
date: 2024-03-15
tags:
- Ballot
- Server Certificates
title: 'Ballot SC065v2: Convert EVGs into RFC 3647 format'
type: post
---

## Voting Results

### Certificate Issuers

23 votes total, with no abstentions:

- 23 Issuers voting YES: Actalis, Buypass, Certum (Asseco), CFCA, CommScope, D-TRUST, DigiCert, Entrust, GDCA, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Izenpe, JPRS, OISTE, SECOM, Sectigo, SSL.com, SwissSign, TWCA, Telia Company
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

2 votes total, with no abstentions:

- 2 Consumers voting YES: Microsoft, Mozilla
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 16 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-65: Convert EVGs into RFC 3647 format

[TLS-BRs](BR.pdf)

[EVGs](EVG.pdf)

**Start of Review Period**: 15 March 2024 at 10:00 UTC

**End of Review Period**: 15 April 2024 at 10:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

The Extended Validation Certificates guidelines (EVGs) were developed and written in a specific format. Since then, the RFC 3647 has been the basis (and the de-facto standard) for the CA/Browser Forum to develop other documents.

This ballot aims to update the EVGs to follow the RFC 3647 format without changing any content, just moving current sections to those defined in the RFC 3647. There are no normative requirements changes.

This change also affects the Baseline Requirements for TSL certificates (BRs) which needs to point to the new sections of the EVGs. Both documents will be updated according to the latest version published.

This ballot is proposed by Iñigo Barreira (Sectigo) and endorsed by Pedro Fuentes (OISTE) and Ben Wilson (Mozilla).

### Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Certificates" ("TLS Baseline Requirements"), based on Version 2.0.2 and the “Guidelines for the Issuance and Management of Extended Validation Certificates” (EVGs) based on Version 1.8.0. 

MODIFY the TLS EVGs and BRs as specified in the following Redline:

https://github.com/cabforum/servercert/compare/90a98dc7c1131eaab01af411968aa7330d315b9b...dedeebfe036fa5a6f0d7ae985ea08317ba60b8cb


### Motion ends

This ballot proposes a Final Maintenance Guideline for the TLS BRs and EVGs. The procedure for approval of this ballot is as follows:

|                                     | Start time (17:00 UTC) | End time (15:00 UTC) |
| ----------------------------------- | --------------------- | ------------------- |
| Discussion (at least 7 days)        | 2024-02-20            | 2024-03-04          |


|                                     | Start time (15:30 UTC) | End time (15:30 UTC) |
| ----------------------------------- | --------------------- | ------------------- |
| Vote for approval (7 days)          | 2024-03-04            | 2024-03-11          |

