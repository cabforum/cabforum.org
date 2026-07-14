---
aliases:
- /2026/07/14/ballot-sc-102-ev-domain-reuse-and-validity-alignment
date: 2026-07-01
tags:
- Ballot
- Server Certificates
title: 'Ballot SC102: EV Domain Reuse and Validity Alignment'
type: post
---

## Voting Results

### Certificate Issuers
19 votes in total:

 * 19 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), CFCA, Chunghwa Telecom, Cybertrust Japan, DigiCert, eMudhra, GlobalSign, GoDaddy, HARICA, IdenTrust, Japan Registry Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SwissSign, TrustAsia, TWCA

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

  * the quorum was 16 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC0102: EV Domain Reuse and Validity Alignment

[TBR-SC102.pdf](TBR-SC102.pdf)

[TBR-SC102-redlined.pdf](TBR-SC102-redline.pdf)

[TBR-SC102.docx](TBR-SC102.docx)

[TBR-SC102-redlined.docx](TBR-SC102-redline.docx)

**Start of Review Period:** 2026-07-14 08:00:00 UTC

**End of Review Period:** 2026-08-13 08:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Summary of the Ballot

This ballot aligns Extended Validation domain re-validation and certificate validity with the Baseline Requirements, removing EV-specific values that the Baseline Requirements already supersede. It makes the following changes to the EV Guidelines:

 * Removes the WHOIS/RDAP same-registrant re-check from the domain reuse path in Section 3.2.2.14.1(6), so EV domain re-validation relies on Section 3.2.2.7 like any other domain validation.
 * Replaces the hardcoded "398 days" Domain Name data reuse period in Section 3.2.2.14.3(1) with a reference to Section 4.2.1 of the Baseline Requirements, and generalizes the related "398-day period" sentence.
 * Replaces the EV certificate validity text in Section 6.3.2 with a reference to Section 6.3.2 of the Baseline Requirements.


These changes are not expected to be disruptive. An EV Certificate is already a TLS Subscriber Certificate bound by the Baseline Requirements, so the ballot removes redundant or stale text rather than imposing new obligations. There is not a future effective date as there is not an expected new requirement.


### Background of the Ballot
The Baseline Requirements have moved away from relying on WHOIS/RDAP registration data for domain validation (SC-080 sunset the WHOIS/RDAP-dependent Domain Contact methods) and they now carry a published schedule (SC-081) that reduces both certificate validity and data reuse periods over time. The EV Guidelines, however, still hardcode "398 days" for both the Domain Name data reuse period and EV certificate validity. Those figures are already incorrect: the Baseline Requirements cap Domain Name reuse at 200 days today and decline further on the published schedule, and they cap validity on the same trajectory. Because an EV Certificate is a TLS Subscriber Certificate, it is already bound by those limits, so the separate EV-specific values are at best redundant and at worst misleading. The same-registrant re-check in Section 3.2.2.14.1(6) depends on that same WHOIS/RDAP registration data which the Forum has been moving away from for validation and it is redundant with the domain control re-verification already required under Section 3.2.2.7. This ballot removes these EV-specific provisions so EV domain re-validation and validity track the Baseline Requirements directly.

This ballot is proposed by Dustin Hollenback (Apple) and endorsed by Martijn Katerbarg (Sectigo) and Scott Rea (eMudhra).


**--- Motion Begins ---**

Modify the "Guidelines for the Issuance and Management of Extended Validation Certificates", based on Version 2.0.2, per the following redline:

https://github.com/cabforum/servercert/compare/cabforum:1bcb34993331313c92ac7d6af778e81ca3d5faff...dustinhollenback-apple:28777f520309c2ae5561b81e223b34cc9aed93ef

**--- Motion Ends ---**


This ballot proposes a Final Maintenance Guideline and will be subject to a 30-day IPR Review Period following a successful vote.


Discussion Period (at least 7 calendar days):

 * Start time: Thursday, 2026-06-18 16:00 UTC
 * End time: Tuesday, 2026-07-07 05:00 UTC


Vote for approval (exactly 7 calendar days): 

 * Start time: Tuesday, 2026-07-07 05:30 UTC
 * End time: Tuesday, 2026-07-14 05:30 UTC
