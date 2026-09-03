---
aliases:
- /2026/09/03/ballot-sc-104-set-presence-of-aia-extension-to-should-for-subscriber-certificates
date: 2026-09-03
tags:
- Ballot
- Server Certificates
title: 'Ballot SC104: Set presence of AIA extension to SHOULD for Subscriber Certificates'
type: post
---

## Voting Results

### Certificate Issuers
21 votes in total:

 * 21 voting YES: Asseco Data Systems SA (Certum), Chunghwa Telecom, Cybertrust Japan, Disig, eMudhra, Fastly, GoDaddy, HARICA, IdenTrust, iTrusChina, Kamu SM, Let's Encrypt, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA
 
 * 0 voting NO: 

 * 0 ABSTAIN:

### Certificate Consumers
5 votes in total:

 * 5 voting YES: Apple, Cisco Systems, Google, Microsoft, Mozilla
 
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
Ballot for Review: SC104: Set presence of AIA extension to SHOULD for Subscriber Certificates

[TBR-SC104.pdf](TBR-SC104.pdf)

[TBR-SC104-redlined.pdf](TBR-SC104-redline.pdf)

[TBR-SC104.docx](TBR-SC104.docx)

[TBR-SC104-redlined.docx](TBR-SC104-redline.docx)

**Start of Review Period:** 2026-09-03 12:00:00 UTC

**End of Review Period:** 2026-10-03 12:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Ballot Summary

This ballot updates the Baseline Requirements to change the presence of the Authority Information Access (AIA) extension in Subscriber Certificates from MUST to SHOULD, aligning it with the permissible access methods.

### Ballot Background

The Baseline Requirements currently specify the presence of AccessDescriptions with the id-ad-caIssuers and id-ad-ocsp accessMethods as SHOULD and MAY respectively in Subscriber Certificates, permitting no other accessMethods.

This ballot is proposed by Ethan Davis (Google Trust Services) and endorsed by Roman Fischer (SwissSign) and Stephen Davidson (DigiCert).
 

**--- Motion Begins ---**

 
Modify the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates", based on Version 2.2.9, per the following redline:

https://github.com/cabforum/servercert/compare/ad77bf1975fe1dffebb9cbdb7280eb80b94f5c45..a0f9a7e16894df52db6278952244944390c2c83d
 
**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline and will be subject to a 30-day IPR Review Period following a successful vote.

Discussion (COMPLETE):

 * Start time: 2026-08-20 00:00 UTC
 * End time: 2026-08-27 00:00 UTC

Vote for approval (7 days):

 * Start time: 2026-08-27 00:00 UTC
 * End time: 2026-09-03 00:00 UTC
