---
aliases:
- /2024/02/23/ballot-sc-70-clarify-the-use-of-dtps-for-domain-control-validation
author: Aaron Gable
date: 2024-02-23
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-70: Clarify the use of DTPs for Domain Control Validation'
type: post
---

## Voting Results

### Certificate Issuers

28 votes total, with no abstentions:
• 28 Issuers voting YES: Actalis, Buypass, Certum (Asseco), CFCA, Chunghwa Telecom, CommScope, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Fastly, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, Izenpe, JPRS, Kamu SM, Let's Encrypt / ISRG, OISTE, SECOM, Sectigo, SSL.com, SwissSign,Telia Company, Viking Cloud
• 0 Issuers voting NO
• 0 Issuers ABSTAIN

### Certificate Consumers

4 votes total, with no abstentions:

- **4 Consumers voting YES**: Apple, Google, Mozilla, Opera
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 11 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-70: Clarify the use of DTPs for Domain Control Validation

[TLS-BRs](BR.pdf)

[TLS-BRs-redlined.pdf](BR-redline.pdf)

[TLS-BRs.docx](BR.docx)

**Start of Review Period**: 23 February 2024 at 18:00 Eastern Time

**End of Review Period**: 23 March 2024 at 18:00 Eastern Time

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

This ballot aims to clarify the existing language around the use of delegated third-parties during domain and IP address control validation. It leaves the existing language in place, and adds specifics for the cases of DNS queries, WHOIS lookups, and contact with the Domain Name Registrat or IP Address Registration Authority.

Additionally, it places these same restrictions on CAA checking, with an effective date of 2024-05-15.

This ballot is proposed by Aaron Gable (ISRG / Let's Encrypt) and endorsed by Mads Henriksveen (Buypass) and Dimitris Zacharopoulos (HARICA).

### Motion begins

This ballot modifies the "Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates" ("Baseline Requirements") based on Version 2.0.2

MODIFY the TLS Baseline Requirements as specified in the following Redline:

<https://github.com/cabforum/servercert/compare/41f01640748fa612386f8b1a3031cd1bff3d4f35...00ea6e24c474fd0ab6eecc25cb8eb733fffc60c3>

### Motion ends

The procedure for this ballot is as follows:

|                                     | Start time (22:30 UTC) | End time (22:30 UTC) |
| ----------------------------------- | --------------------- | ------------------- |
| Discussion (at least 7 days)        | 2024-02-02            | 2024-02-12          |
| Expected Vote for approval (7 days) | 2024-02-12            | 2024-02-19          |
