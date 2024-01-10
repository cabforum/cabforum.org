---
aliases:
- /2023/07/14/ballot-sc-063-v4make-ocsp-optional-require-crls-and-incentivize-automation/
author: Iñigo Barreira
date: 2023-07-14 15:33:20
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-063 v4: Make OCSP Optional, Require CRLs, and Incentivize Automation'
type: post
---

## Voting Results

## Certificate Issuers

29 votes total, with no abstentions:

- **28 Issuers voting YES:** Amazon, Buypass, Certum, CFCA, Chunghwa Telecom, D-Trust, Digicert, Disig, eMudhra, Entrust, Fastly, GDCA, Globalsign, GoDaddy, HARICA, Izenpe, JPRS, Kamu SM, LE, NAVER, OISTE, SECOM, Sectigo, SSL.com, Swisssign, TWCA, Telia, Viking Cloud
- **1 Issuers voting NO:** Certinomis
- **0 Issuers ABSTAIN**

## Certificate Consumers

3 votes total, with no abstentions:

- **3 Consumers voting YES:** Google, Mozilla, Apple
- **0 Consumers voting NO**
- **0 Consumers ABSTAIN**

## Bylaws Requirements

1. Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
- Half of the currently active members at the start of voting was 13, so the quorum was 14 for this ballot. This requirement was **MET**.

# Ballot Contents

## Purpose of Ballot SC-063

This Ballot proposes updates to the _Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates_ related to making Online Certificate Status Protocol (OCSP) services optional for CAs. This proposal does not prohibit or otherwise restrict CAs who choose to continue supporting OCSP from doing so. If CAs continue supporting OCSP, the same requirements apply as they exist today.

Additionally, this proposal introduces changes related to CRL requirements including:

- CRLs must conform with the proposed profile.
- CAs must generate and publish either:
- a full and complete, or
- a set of partitioned CRLs (sometimes called “sharded” CRLs), that when aggregated, represent the equivalent of a full and complete CRL.
- CAs issuing Subscriber Certificates must update and publish a new CRL…
- within twenty-four (24) hours after recording a Certificate as revoked; and
- Otherwise:
- at least every seven (7) days if all Certificates include an Authority Information Access extension with an id-ad-ocsp accessMethod (“AIA OCSP pointer”), or
- at least every four (4) days in all other cases.

Finally, the proposal revisits the concept of a “short-lived” certificate, introduced in [Ballot 153][1]. As described in this ballot, short-lived certificates (sometimes called “short-term certificates” in ETSI [specifications][2]) are:

- **optional**. CAs will not be required to issue short-lived certificates. For TLS certificates that do not meet the definition of a short-lived certificate introduced in this proposed update, the current maximum validity period of 398 days remains applicable.

- **constrained to an initial maximum validity period of ten (10) days.** The proposal stipulates that short-lived certificates issued on or after 15 March 2026 must not have a Validity Period greater than seven (7) days.

- **not required to contain a CRLDP or OCSP pointer and are not required to be revoked**. The primary mechanism of certificate invalidation for these short-lived certificates would be through certificate expiry. CAs may optionally revoke short-lived certificates. The initial maximum certificate validity is aligned with the existing maximum values for CRL “nextUpdate” and OCSP response validity allowed by the BRs today.

Additional background, justification, and considerations are outlined [here][3].

Proposal Revision History:

- The set of updates resulting from the first round of discussion are presented [here][4].
- The set of updates resulting from the second round of discussion are presented [here][5].
- The set of updates resulting from the third round of discussion are presented [here][6].

The following motion has been proposed by Ryan Dickson and Chris Clements of Google (Chrome Root Program) and endorsed by Kiran Tummala of Microsoft and Tim Callan of Sectigo.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 2.0.0.

MODIFY the Baseline Requirements as specified in the following Redline:

[https://github.com/cabforum/servercert/compare/a0360b61e73476959220dc328e3b68d0224fa0b3..b8a0453e59ff342779d5083f2f1f8b8b5930a66a][7]

## Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

# Discussion (13+ days)

- Start time: 2023-06-22 20:30:00 UTC
- End time: 2023-07-06 15:59:59 UTC

# Vote for approval (7 days)

- Start time: 2023-07-06 16:00:00 UTC
- End time: 2023-07-13 16:00:00 UTC

[1]: /2015/11/11/ballot-153-short-lived-certificates/
[2]: https://www.etsi.org/deliver/etsi_en/319400_319499/31941201/01.04.04_60/en_31941201v010404p.pdf
[3]: https://docs.google.com/document/d/180T6cDSWPy54Rb5d6R4zN7MuLEMShaZ4IRLQgdPqE98/edit
[4]: https://github.com/ryancdickson/staging/pull/3/files
[5]: https://github.com/ryancdickson/staging/pull/5/files
[6]: https://github.com/ryancdickson/staging/pull/7/files
[7]: https://github.com/cabforum/servercert/compare/a0360b61e73476959220dc328e3b68d0224fa0b3..b8a0453e59ff342779d5083f2f1f8b8b5930a66a