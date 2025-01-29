---
aliases:
- /2024/01/28/ballot-sc-84-DNS-Labeled-with-ACME-Account-ID-Validation-Method
author: Wayne Thayer
date: 2025-01-28
tags:
- Ballot
- Server Certificates
title: 'Ballot SC084: DNS Labeled with ACME Account ID Validation Method'
type: post
---

## Voting Results

### Certificate Issuers

19 votes in total:

- **19 voting YES**: Amazon, Buypass AS, Certinomis, CommScope, DigiCert, D-TRUST, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, Japan Registry Services, SECOM Trust Systems, SSL.com, SwissSign, Telia Company, TrustAsia, VikingCloud
- 0  voting NO
- 0 ABSTAIN

### Certificate Consumers

4 votes total, with no abstentions:

- **4 voting YES**: Cisco Systems, Google, Microsoft, Mozilla
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

**Ballot for Review**: Ballot SC084: DNS Labeled with ACME Account ID Validation Method

[TBR-SC84.pdf](BR-SC84.pdf)

[TBR-SC84-redlined.pdf](BR-SC84-redlined.pdf)

[TBR-SC84.docx](BR-SC84.docx)

**Start of Review Period**: 2025-01-28 18:00:00 UTC

**End of Review Period**: 2025-02-27 18:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dimitris Zacharopoulos ) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

**Purpose of Ballot**

This ballot adds a new ACME domain validation method. This method is similar to the ACME dns-01 challenge, but it solves a significant problem. Organizations often run their services on multiple cloud providers, Each of these cloud providers typically automates the section 3.2.2.4.7 DNS validation method by asking the organization to delegate a CNAME record to the cloud provider. Unfortunately, the ACME dns-01 challenge hard-codes the prepended label on the validation domain name as “_acme-challenge”, and DNS standards only allow one CNAME record per zone, thus creating the conflict that this new method resolves.

A draft RFC that addresses this problem was originally published in 2022. It has gone through a few iterations, ending up at the current draft.[1] The mechanism for making the validation domain name unique uses an additional prepended label that is calculated from the ACME account ID. This approach was taken because it aligns the new method with similar domain name validation techniques documented by the DNS Operations WG [2] (note that the scoping mechanism from the DNSOP draft has been removed because it adds unnecessary complexity and scope creep here).

This ballot references the current stable version of the draft RFC. Once the draft becomes an official RFC, a subsequent ballot will be prepared to update this method to reference the final RFC.

[1] https://datatracker.ietf.org/doc/draft-ietf-acme-dns-account-label/

[2] https://datatracker.ietf.org/doc/draft-ietf-dnsop-domain-verification-techniques/

**Motion**

The following motion has been proposed by Wayne Thayer (Fastly) and endorsed by Ben Wilson (Mozilla), Corey Bonnell (DigiCert), Dustin Hollenback (Microsoft), and Ryan Dickson (Chrome)

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.1.2 as specified in the following redline:

https://github.com/cabforum/servercert/compare/b7fd69b36171d81930e7758482984ce957a1ce7a%E2%80%A6831a910ce77e82a9799c6a2b0d0221f1d83d2f55 

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

Start time: 2025-01-10 20:00 UTC

End time: 2025-01-21 17:00 UTC

**Vote for approval (7 days)**

Start time: 2025-01-21 17:00 UTC

End time: 2025-01-28 17:00 UTC
