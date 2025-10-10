---
aliases:
- /2025/10/09/ballot-sc-88-dns-txt-record-with-persistent-value-dcv-method

author: Wayne Thayer
date: 2025-10-09
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-088v3: DNS TXT Record with Persistent Value DCV Method'
type: post
---

# Ballot SC-088v3: DNS TXT Record with Persistent Value DCV Method

## Voting Results

### Certificate Issuers

26 votes in total:
* 26 voting YES: Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
* 0 voting NO:
* 0 ABSTAIN:

### Certificate Consumers
3 votes in total:
* 3 voting YES: Cisco Systems, Google, Mozilla
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

Ballot for Review: SC088v3: DNS TXT Record with Persistent Value DCV Method

**Start of Review Period**: 2025-10-09 18:00:00 UTC
**End of Review Period**: 2025-11-08 18:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

[TBR-SC88v3.pdf](BR-SC088v3.pdf)

[TBR-SC88v3-redlined.pdf](BR-SC088v3-redline.pdf)

[TBR-SC88v3.docx](BR-SC088v3.docx)

[TBR-SC88v3-redlined.docx](BR-SC088v3-redline.docx)

## Ballot Contents

**Purpose of Ballot**

The purpose of this ballot is to add section 3.2.2.4.22 "DNS TXT Record with Persistent Value" as a new domain control validation method in the Baseline Requirements for TLS Server Certificates. This method enables domain owners to establish account-scoped DNS validation records that can be reused across multiple certificate issuances, eliminating the need to update DNS records for each certificate renewal while maintaining equivalent security to existing DNS-based validation methods.
Motion

The following motion has been proposed by Michael Slaughter (Amazon Trust Services) and endorsed by Chris Clements (Google Chrome), Ryan Dickson (Google Chrome), Tim Hollebeek (Digicert) and Martijn Katerbarg (Sectigo). 

You can view the Github pull request representing this ballot here. 

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.1.7  as specified in the following redline:

    https://github.com/cabforum/servercert/compare/b6a014d4aee244c019ef6ca41667045cdbfefb81...dc7fd7f1dd586fb9e23375f2c8d4afcc7c832130

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:
Discussion (at least 7 days)

* Start time: September 23, 2025 21:30 UTC
* End time: October 2, 2025 15:44:59 UTC

Vote for approval (7 days)

* Start time: October 2, 2025 15:45:00 UTC
* End time: October 9, 2025 15:45:00 UTC