---
title: 'Ballot NS-006: Fix 1.2.2 encrypted connections scoping'
author: Clint Wilson
date: 2024-12-16
tags:
- Network Security
- Ballot
type: post
slug: Ballot-NS-006
---

## IPR Review of Ballot NS-006: Fix 1.2.2 encrypted connections scoping

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is:

<https://cabforum.org/posts/2024/2024-12-16-NSWG-Ballot-NS-006/CA-Browser-Forum-NCSSR-2.0.3-redline.pdf>

### Summary of Review

- Ballot for Review: [Ballot NS-006: Fix 1.2.2 encrypted connections scoping](https://cabforum.org/posts/2024/2024-12-16-NSWG-Ballot-NS-006/CA-Browser-Forum-FG-NCSSR-2.0.3.pdf)
  - Start of Review Period: 2024-11-13 01:00:00 UTC
  - End of Review Period: 2024-12-13 01:00:00 UTC

### Exclusion Notices

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to clintw at apple.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

## Voting Results of Ballot NS-006: Fix 1.2.2 encrypted connections scoping

The voting period for **Ballot NS-006: Fix 1.2.2 encrypted connections scoping** has ended and the Ballot has **Passed**. The following votes were cast:

### 3 votes by Certificate Consumers

- 3 Yes votes: Google, Microsoft, Mozilla
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Consumers voted in favor

### 15 votes by Certificate Issuers

- 15 Yes votes: Buypass AS, DigiCert, Disig, eMudhra, Entrust, Fastly, GoDaddy, HARICA, Kamu SM, OISTE Foundation, SSL.com, SwissSign, Telia Company, TrustAsia, VikingCloud
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Issuers voted in favor

### Bylaws version 2.5 Requirements

1. Bylaw 2.3(6) requires:
 - In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. **This requirement was MET.**
 - At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. **This requirement was MET.**
 - At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. **This requirement was MET.**
2. Bylaw 2.3(7) requires:
 - A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
  - the quorum was 7 for this ballot. **This requirement was MET.**

## Ballot NS-006: Fix 1.2.2 encrypted connections scoping

Ballot NS-006 is proposed by Daniel Jeffery of Fastly/Certainly and endorsed by Trevoli Ponds-White of Amazon and Clint Wilson of Apple.

### Purpose of Ballot

NS-006 is intended to refine changes in NS-005 as identified during the 2024-10 face to face meeting regarding TLS connections to and within CA infrastructure.

#### Reasons for Proposal

Changes made in NS-003 clarified and altered the application of certain aspects of the NSR. NS-005 modified the language around TLS connections and CA infrastructure. NS-006 is intended to incorporate feedback from the face to face and achieve realistic requirements around TLS connections within and to the CA Infrastructure. This makes the following changes:

- for connections inbound to the CA, allow exceptions for formal specifications that conflict.
- for connections within the CA, change to SHOULD

#### Relation to Ballot NS-003

Ballot NS-005 clarified some of the language in NS-003 for reasons of practical implementation to help CAs meet the requirements of NS-003. NS-006 further refines the language around TLS encryption to and within CA Infrastructure.

#### Relation to Ballot NS-004

Ballot NS-006 does not modify text modified by NS-004. Both should be able to be merged complimentarily.

#### Relation to Ballot NS-005

Ballot NS-006 modifies text modified by NS-005 to refine it based on feedback at the face to face. The change here is complimentary.

--- MOTION BEGINS ---

This ballot modifies the “Network and Certificate System Security Requirements” as follows, based on version 2.0:

<https://github.com/cabforum/netsec/compare/7707907628ccebe6818fb6793d1c8a3aa38cf70d...danjeffery:netsec:a27ed77f1d09c3531f91936c1191843d000b0739>

--- MOTION ENDS ---

The procedure for approval of this ballot is as follows:

**Discussion Period** (at least 7 days)

- Start: 2024 Oct 29, 08:00 UTC
- End: 2024: Nov 5, 08:00 UTC

**Voting Period** (7 days)

- Start: 2024: Nov 6, 00:00 UTC
- End: 2024: Nov 13, 00:00 UTC
