---
title: 'Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"'
author: Clint Wilson
date: 2024-04-09 16:00:00
tags:
- Network Security
- Ballot
type: post
slug: Ballot-NS-004
---

## IPR Review of Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is:

<https://cabforum.org/posts/2024/2024-12-16-NSWG-Ballot-NS-004/CA-Browser-Forum-NCSSR-2.0.2-redline.pdf>

### Summary of Review

- Ballot for Review: [Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"](https://cabforum.org/posts/2024/2024-12-16-NSWG-Ballot-NS-004/CA-Browser-Forum-FG-NCSSR-2.0.2.pdf)
  - Start of Review Period: 2024-11-13 00:00:00 UTC
  - End of Review Period: 2024-12-13 00:00:00 UTC

### Exclusion Notices

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to clintw at apple.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

## Voting Results of Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"

The voting period for **Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"** has ended and the Ballot has **Passed**. The following votes were cast:

### 3 votes by Certificate Consumers

- 3 Yes votes: Apple, Google, Mozilla
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Consumers voted in favor

### 14 votes by Certificate Issuers

- 14 Yes votes: Amazon Trust Services, Buypass AS, Disig, eMudhra, Entrust, Fastly, GoDaddy, HARICA, OISTE Foundation, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
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

## Ballot NS-004: "Updating Section 4 - Vulnerability Management - of the NCSSRs"

Ballot NS-004 is proposed by David Kluge of Google Trust Services and endorsed by Clint Wilson of Apple and Trevoli Ponds-White of Amazon.

### Purpose of Ballot

Section 4 of the Network and Certificate System Security Requirements (NCSSRs) requires CAs to perform a number of vulnerability management practices focusing on patching, vulnerability scans and penetration tests. This Ballot replaces Section 4 with a more comprehensive vulnerability management approach that is not limited to these practices.

#### Reasons for Proposal

Vulnerability scans and penetration tests are useful controls but are insufficient if they are not embedded in a broader set of policies and procedures to address CA specific risks.

Also, the CA’s vulnerability management processes should not be limited to critical vulnerabilities. CAs should address all vulnerabilities within defined timelines which are proportionate to the risk they pose. These remediation timelines should be disclosed in the CA’s CPS. All systems in the CA’s inventory of Certificate Systems should be in scope of the CA’s vulnerability management processes.

Similarly, CAs should define after which system changes they perform non-periodic penetration tests. This definition can vary from CA to CA. As a guideline, we assume that a penetration test is necessary if the change alters the data flow between certificate systems or if it introduces new service integrations.

#### Relation to Ballot NS-003

Ballot NS-004 includes minor revisions to clarify some of the system definitions of Ballot NS-003.

--- MOTION BEGINS ---

This ballot modifies the “Network and Certificate System Security Requirements” as follows, based on version 2.0:

<https://github.com/cabforum/netsec/pull/34/files#diff-ed3f4facad5588c9445170bb7796257d35d52c6c38793bfeab126370b7022ec8>

--- MOTION ENDS ---

The procedure for approval of this ballot is as follows:

**Discussion** (7 days)

- Start Time: October 16th, 2024 15:30 UTC
- End Time: October 31rd, 2024 15:30 UTC

**Vote for approval** (7 days)

- Start Time: Nov 4th, 2024 19:45 UTC
- End Time: Nov 11th, 2024 19:45 UTC
