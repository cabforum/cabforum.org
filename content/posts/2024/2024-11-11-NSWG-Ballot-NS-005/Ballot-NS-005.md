---
title: 'Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"'
author: Clint Wilson
date: 2024-11-11
tags:
- Network Security
- Ballot
type: post
slug: Ballot-NS-005
---

## IPR Review of Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is:

<https://cabforum.org/posts/2024/2024-11-11-NSWG-Ballot-NS-005/CA-Browser-Forum-NCSSR-2.0.1-redline.pdf>

### Summary of Review

- Ballot for Review: [Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"](https://cabforum.org/posts/2024/2024-11-11-NSWG-Ballot-NS-005/CA-Browser-Forum-FG-NCSSR-2.0.1.pdf)
  - Start of Review Period: 12 October 2024 22:00 UTC
  - End of Review Period: 11 November 2024 22:00 UTC

### Exclusion Notices

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to clintw at apple.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

## Voting Results of Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"

The voting period for **Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"** has ended and the Ballot has **Passed**. The following votes were cast:

### 3 votes by Certificate Consumers

- 3 Yes votes: Apple, Google, Mozilla
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Consumers voted in favor

### 16 votes by Certificate Issuers

- 16 Yes votes: Amazon Trust Services, Buypass, Disig, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, VikingCloud, Visa
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
  - the quorum was 8 for this ballot. **This requirement was MET.**

## Ballot NS-005 "Clarifications to sections 1, 2 and a definition prior to NS-003 taking effect"

Ballot NS-005 is proposed by Daniel Jeffery of Fastly/Certainly and endorsed by Miguel Sanchez of Google Trust Services and Antti Backman of Telia.

### Purpose of Ballot

NS-005 is intended to address unintended, unclear or problematic expectations that were introduced or highlighted by the changes in NS-003.

#### Reasons for Proposal

Changes made in NS-003 altered the application of certain aspects of the NSR, one reason being the move from use of the term Certificate Systems to CA Infrastructure. The reorganization also helped to clarify certain points that may have been less obvious previously. NS-005 has been discussed with the working group, in meetings and on github, to clarify points of confusion and over-specification of industry practices. This includes:

- defining "Workstation" for the purposes of this document by privileges and capability
- limiting scope to connections that must be unencrypted and that are within the CA's control
- recognizing there may be a practical or technical need for shared accounts, but requiring attribution to an individual actor and the approved activity in such cases
- requiring that workstations MUST be secured when inactive, consistent with the CA's risk assessment
- bringing use of hardware tokens for general multi-factor authentication more in line with industry best practices
- removing a limited set of requirements in favor of the NIST recommendations

#### Relation to Ballot NS-003

Ballot NS-005 clarifies some of the language in NS-003 for reasons of practical implementation to help CAs meet the requirements of NS-003. It also extends the implementation timeline out to 12 March 2025 so there is some time to identify and create ballots for any other concerns that CAs may have with NS-003. Ideally, IPR review will complete in time that NS-005 can go into effect on or before 12 November 2024, the date when NS-003 is currently scheduled to fully take effect.

#### Relation to Ballot NS-004

Ballot NS-005 does not modify any of the text modified by NS-004. Both should be able to be merged complimentarily.

--- MOTION BEGINS ---

This ballot modifies the “Network and Certificate System Security Requirements” as follows, based on version 2.0:

<https://github.com/cabforum/netsec/compare/7707907628ccebe6818fb6793d1c8a3aa38cf70d...danjeffery:netsec:d28c26261826a60c32e430eedfcd36c5b23b0139>

--- MOTION ENDS ---

The procedure for approval of this ballot is as follows:

**Discussion Period** (at least 7 days)

- Start: 2024 Sept 27, 19:30 UTC
- End: 2024: Oct 4, 19:30 UTC

**Voting Period** (7 days)

- Start: 2024 Oct 4, 19:30 UTC
- End: 2024 Oct 11, 19:30 UTC
