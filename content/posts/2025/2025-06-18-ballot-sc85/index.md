---
aliases:
- /2025/06/18/ballot-sc-85v2-Require-Validation-of-DNSSEC-(when-present)-for-CAA-and-DCV-Lookups

author: Wayne Thayer
date: 2025-06-18
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-085v2: Require Validation of DNSSEC (when present) for CAA and DCV Lookups'
type: post
---

## Voting Results

### Certificate Issuers

25 votes in total:

- **25 voting YES**: Asseco Data Systems SA (Certum), Buypass AS, Certigna (DHIMYOTIS), Chunghwa Telecom, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, SHECA, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
- 0 voting NO:
- 1 ABSTAIN: Entrust

### Certificate Consumers

2 votes total, with no abstentions:

- **4 voting YES**: Apple, Mozilla
- 0 voting NO
- 0 ABSTAIN

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

**Ballot for Review**:  SC085v2: Require DNSSEC for CAA and DCV Lookups

[TBR-SC85v2.pdf](BR-SC085v2.pdf)

[TBR-SC85v2-redlined.pdf](BR-SC085v2-redline.pdf)

[TBR-SC85v2.docx](BR-SC085v2.docx)

[TBR-SC85v2-redlined.docx](BR-SC085v2-redline.docx)

**Start of Review Period**: 2025-06-19 19:00:00 UTC

**End of Review Period**: 2025-07-19 19:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dimitris Zacharopoulos ) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

**Purpose of Ballot**

DNSSEC adds an optional layer of security to DNS by enabling cryptographic validation of DNS resource records, ensuring that they are authentic and haven’t been tampered with. Where DNSSEC has been adopted by Applicants/Subscribers, it is reasonable to expect those signatures be validated by CAs when performing certain DNS lookups. If a domain properly configures DNSSEC, DNSSEC validation can meaningfully reduce the risks associated with DNS spoofing or interception attacks against CAs [1]. Furthermore, DNSSEC validation by CAs provides options for domain owners to achieve provable security of the domain control validation process against network adversaries [1][2].

This ballot introduces language which ensures CAs complying with the TLS Baseline Requirements are required to validate DNSSEC, when present, in the course of retrieving CAA records or performing DCV-related DNS lookups from Primary Network Perspectives. This change is expected to have a minimal impact (e.g., load/errors) on the DNS resolvers used at Primary Network Perspectives as shown by the high-volume CAs and large fraction of clients that validate DNSSEC [1][3]. As the adoption rate of DNSSEC by domains seen in TLS certificates is fairly low today, the majority of DNS lookup results will be unaffected while domains that do use DNSSEC will benefit from improved security[1][3].

This ballot sets an effective date of March 15, 2026 for these changes.

[1] https://secure-certificates.princeton.edu/cryptographic-domain-validation.pdf

[2] https://datatracker.ietf.org/doc/html/rfc8657

[3] https://blog.apnic.net/2023/09/18/measuring-the-use-of-dnssec/

**Motion**

The following motion has been proposed by Clint Wilson (Apple) and endorsed by Wayne Thayer (Fastly), Dimitris Zacharopoulos (HARICA), and Ryan Dickson (Chrome).

You can view and comment on the Github pull request representing this ballot [here](https://github.com/cabforum/servercert/pull/579/files).

**Special thanks to Henry Birge-Lee for his exemplary efforts on this ballot.**

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.1.5 as specified in the following redline:

https://github.com/cabforum/servercert/compare/e9176e15805a2f7908411a22a40047b655fa24c4...28cb6adac58653a11b724bbedc219ca826e8fb99

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

Start time: May 23, 2025 00:00 UTC (2025-05-23T00:00:00.000Z)

End time: on or after June 06, 2025 17:00 UTC (2025-06-06T17:00:00.000Z)

**Vote for approval (7 days)**

Start time: June 11, 2025 19:00 UTC (2025-06-11T19:00:00.000Z)

End time: June 18, 2025 19:00 UTC (2025-06-18T19:00:00.000Z)