---
aliases:
- /2026/05/13/ballot-sc-98-process-rfc-8657-caa-parameters
author: Wayne Thayer
date: 2026-05-13
tags:
- Ballot
- Server Certificates
title: 'Ballot SC098v2: Process RFC 8657 CAA Parameters'
type: post
---

## Voting Results

### Certificate Issuers
23 votes in total:

 * 22 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Chunghwa Telecom, Cybertrust Japan, eMudhra, Fastly, GlobalSign, GoDaddy, IdenTrust, iTrusChina, Japan Registry Services, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, Visa

 * 1 voting NO: HARICA

 * 0 ABSTAIN:

### Certificate Consumers
3 votes in total:

 * 3 voting YES: Apple, Google, Mozilla
 
 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 15 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC098v2: Process RFC 8657 CAA Parameters

[TBR-SC98.pdf](BR-SC098.pdf)

[TBR-SC98-redlined.pdf](BR-SC098-redline.pdf)

[TBR-SC98.docx](BR-SC098.docx)

[TBR-SC98-redlined.docx](BR-SC098-redline.docx)

**Start of Review Period:** 2026-05-13 15:00:00 UTC

**End of Review Period:** 2026-06-12 15:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Summary of the Ballot

This ballot adds the requirement that CAs process the Certification Authority Authorization (CAA) parameters defined in RFC 8657. These parameters allow the issuance policy specified by a CAA record to include the account and domain validation methods that may be used to issue a certificate for the subject domain.

The ballot defines a syntax for specifying non-ACME domain validation methods in section 4.2.2.1.3.

CAs supporting non-ACME accounts must document the accepted accounturi format in their CP or CPS.

These requirements take effect on March 15, 2027.

The ballot also consolidates CAA requirements into section 4.2.1.

### Summary of Discussion

This ballot has undergone extensive discussion in the Validation Working Group dating back to 2024, and in https://github.com/cabforum/servercert/pull/567.

The full value of the CAA extensions defined in RFC 8657 will only be realized if CAs process the parameters rather than ignoring them.

We originally considered including DNSSEC requirements in this ballot but decided to separate them into ballot SC-085.

Consensus formed that Non-ACME validation methods must use a specific syntax to avoid conflicts and provide consistency across CAs.

An allowance was added for ACME CAs to recognize “parent” accounts that authorize multiple ACME accounts.

Special thanks to Grace Cimaszewski for helping to move this ballot forward.

**--- Motion Begins ---**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.2.6 

Redline: https://github.com/cabforum/servercert/compare/168e0aa8cafe753c85a94b5a8f28541beda48201..515ba3533a32aca8042f0a72b4c4af3fbb3eaaf9

**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days):

 * Start time: 2026-04-27 00:00 UTC
 * End time: 2026-05-04 15:00 UTC

Vote for approval (7 days):

 * Start time: 2026-05-04 15:00 UTC
 * End time: no earlier than 2026-05-11 15:00 UTC
