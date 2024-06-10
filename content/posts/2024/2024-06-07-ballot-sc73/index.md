---
aliases:
- /2024/06/07/ballot-sc-73-Compromised-and-weak-keys
author: Iñigo Barreira
date: 2024-06-07
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-73: Compromised and weak keys'
type: post
---

## Voting Results

### Certificate Issuers

23 votes total, with no abstentions:

- **23 Issuers voting YES**: Actalis, Certum (Asseco), CFCA, CommScope, D-TRUST, Disig, Entrust, Fastly, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, JPRS, Let's Encrypt / ISRG, SECOM, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

1 votes total, with no abstentions:

- **1 Consumers voting YES**: Mozilla
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

**Ballot for Review**: Ballot SC-73: Compromised and weak keys

[TBR-SC73.pdf](CA-Browser-Forum-TLS-BR-2.0.5.pdf)

[TBR-SC73-redlined.pdf](CA-Browser-Forum-TLS-BR-2.0.5-redlined.pdf)

[TBR-SC73.docx](CA-Browser-Forum-TLS-BR-2.0.5.docx)

**Start of Review Period**: 6 May 2024 at 10:00 UTC

**End of Review Period**: 6 June 2024 at 10:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

This ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates related to weak and compromised private keys. These changes lie primarily in Section 6.1.1.3:
•	6.1.1.3(4) clarifies that, for the purpose of this requirement, CAs shall be made aware of compromised keys using their existing notification mechanism(s).
•	6.1.1.3(5) improves guidance for CAs around the detection of weak keys. Should this ballot pass, these changes become effective on November 15, 2024.
Notes:
•	This ballot builds on the extensive work done by SSL.com in creating ballot SC-59v2 Weak Key Guidance. SSL.com’s contributions are appreciated.
•	Thanks to Rob Stradling of Sectigo for the generation and publication of the set of Debian weak keys referenced in this ballot.
•	The Debian weak keys requirements have been discussed extensively, including in the following threads: https://lists.cabforum.org/pipermail/servercert-wg/2024-March/004291.html and https://lists.cabforum.org/pipermail/servercert-wg/2024-April/004422.html 
•	This ballot does not appear to conflict with any other ballots that are currently under discussion.

The following motion has been proposed by Wayne Thayer of Fastly, and endorsed by Brittany Randall of GoDaddy and Bruce Morton of Entrust.


### Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 2.0.3.

MODIFY the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates as specified in the following Redline:
Here is a link to the immutable GitHub redline: https://github.com/cabforum/servercert/compare/a65402cff89affe1fc0a1f0e49807c7e42e1608a...bee10c8e4a56815bffd59fab12cbd4044baa7cc0


### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

•	Start time: 2024-04-18 00:00:00 UTC

•	End time: 2024-04-26 00:00:00 UTC

Vote for approval (7 days)

•	Start time: 2024-04-26 00:00:00 UTC

•	End time: 2024-05-03 00:00:00 UTC



[def]: CA-Browser-Forum-TLS-BR-2.0.5.docx