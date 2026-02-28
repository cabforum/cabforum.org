---
aliases:
- /2026/02/27/ballot-sc-95-clean-up-2025
author: Wayne Thayer
date: 2026-01-14
tags:
- Ballot
- Server Certificates
title: 'Ballot SC095v3: Clean-up 2025'
type: post
---

## Voting Results

### Certificate Issuers
24 votes in total:

 * 24 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, eMudhra, Fastly, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, OISTE Foundation, SECOM Trust Systems, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
2 votes in total:

 * 2 voting YES: Apple, Mozilla

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
Ballot for Review: SC095v3: Clean-Up 2025

[TBR-SC95.pdf](BR-SC095.pdf)

[TBR-SC95-redlined.pdf](BR-SC095-redline.pdf)

[TBR-SC96.docx](BR-SC096.docx)

[TBR-SC95-redlined.docx](BR-SC095-redline.docx)

**Start of Review Period: 2026-01-15 18:00:00 UTC**

**End of Review Period: 2026-02-14 18:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) ## Summary of the Ballot

## Ballot Contents

This ballot introduces a set of updates across the Baseline Requirements and EV Guidelines to improve clarity, consistency, definitions, and structural correctness. More details are available in the Pull Request. Changes fall into the following categories:

### Formatting, References, and Consistency Improvements

(#193, #299, #322, #415, #432, #458, #542, #570, #574, #576, #584, #592)
Standardization of formatting (dates, tables, headers, lists, bolding, punctuation, hyphens), correction of links and anchors, typos, cleanup of spacing and duplicated text, harmonization of RFC references and URL formats, and removal of obsolete or redundant editorial content. All relevant dates before 2025-01-01 removed.

### Definition Updates and Clarifications

(#303, #428, #435, #449, #471, #496, #512, #524, #564, #592)
Updates to definitions and terminology, removal of outdated code-signing wording, corrections to WHOIS and NTR definitions, clarification of delegation and validation reuse rules, alignment of language between BR and EV sections, addition of a “Precertificate” definition, and removal of legacy notes or outdated Relevant Dates.

### Section-Specific Fixes

(#432, #452, #458, #546, #570, #444, #274)
Corrections to numbering, indentation, spacing, table structure, missing sections, example restoration/removal, adjustments to size limits, and updates to validation-method names and formatting.

### Normative Adjustments

(#540, #547)
Refinements to normative requirements (MUST NOT → SHOULD NOT), removal of outdated effective-date notes, and header updates.

### Correction to EVG 7.1.4.2.6

(#623)
Replacement of an obsolete BR reference with a self-contained definition of the Subject’s Physical Address of Place of Business, including OIDs, attribute requirements, and verified content rules.

### Clarification to EVG 3.2.2.14.1

(#642)
RDAP should be used the same way as WHOIS.

### Clarification of the "Certificate Profile" defined term

(#526)
The definition was updated per https://github.com/cabforum/servercert/pull/639

### Update Section 4.9.1.1 to explicitly reference CAA violations

(#580)
This is a normative change clarifying that CAA violations are treated as part of the Domain Validation process. This was already the expected behavior as discussed in various CABF SCWG meetings.

***

The following motion has been proposed by Karolina Ruszczyńska (Certum by Asseco) and Kateryna Aleksieieva (Certum by Asseco) and endorsed by Dimitris Zacharopoulos (HARICA) and Wayne Thayer (Fastly).

**--- Motion Begins ---**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.2.2

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“Extended Validation Guidelines”), based on Version 2.0.1

Redline: https://github.com/cabforum/servercert/compare/6aba16d239d793d547c9397c50a3013257107bb6...eb27580eac231ab7eb11ef6ddd5a811a639792fe

**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

 * Start time: 2026-02-12 12:00:00 UTC

 * End time: 2026-02-19 12:00:00 UTC

Vote for approval (7 days)

 * Start time: 2026-02-19 14:00:00 UTC

 * End time: 2026-02-26 14:00:00 UTC
