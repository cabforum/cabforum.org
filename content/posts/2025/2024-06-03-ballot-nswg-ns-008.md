---
title: 'Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems' Applicability, and various other improvements'
author: Clint Wilson
date: 2025-06-03 16:00:00
tags:
- Network Security
- Ballot
type: post
slug: Ballot-NS-008
---

## IPR Review of Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is:

<https://cabforum.org/posts/2025/2025-06-03-NSWG-Ballot-NS-008/CA-Browser-Forum-NCSSR-2.0.5-redline.pdf>

### Summary of Review

- Ballot for Review: [Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems](https://cabforum.org/posts/2025/2025-06-03-NSWG-Ballot-NS-008/CA-Browser-Forum-NCSSR-2.0.5-redline.pdf)
- Start of Review Period: 2025-06-03 15:00:00 UTC
- End of Review Period: 2025-07-03 15:00:00 UTC

### Exclusion Notices

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to clintw at apple.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

## Voting Results of Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems

The voting period for `Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems` has ended and the Ballot has **Passed**. The following votes were cast:

### 3 votes by Certificate Consumers

- 3 Yes votes: Apple, Google, Mozilla
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Consumers voted in favor

### 15 votes by Certificate Issuers

- 15 Yes votes: Amazon, Asseco Data Systems SA (Certum), Chunghwa Telecom, DigiCert, Disig, Entrust, Fastly, GoDaddy, IdenTrust, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Issuers voted in favor

### Bylaws version 2.5 Requirements

1. Bylaw 2.3(6) requires:
    - In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
    - at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
    - At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.
2. Bylaw 2.3(7) requires:
    - A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
        - the quorum was **9** for this ballot. This requirement was **MET**.

## Ballot NS-008: Updates to CA Infrastructure Scope, Trusted Roles, Systems

Ballot NS-008v3 is proposed by Clint Wilson (Apple) and endorsed by Ben Wilson (Mozilla), Cade Cairns (Google Trust Services), and Daniel Jeffery (Fastly).

### Overview

#### Definition Changes

##### Added Definitions

- Network Boundary Control: New definition for components that manage network traffic flow; replaces "Network Equipment"
- Principle of Separation of Duties: Added definition describing how tasks are divided among multiple individuals
- Privileged Access: New definition describing access granting administration, configuration, management, or operation capabilities

##### Modified Definitions

- CA Infrastructure: Simplified to reference only "Certificate System", "Root CA System", and "Security Support System" (removed references to "Certificate Management System", "Delegated Third Party System", and "Issuing System")
- Certificate System: Modified definition to include "store" and "access" in activities list
- Critical Security Event: Restructured with numbered lists and expanded examples
- Security Support System: Changed from a "system or set of systems" to "The System(s)" and removed "network boundary control" from the list of functions
- Trusted Role: Changed from "employee or contractor" to "individual employee or contractor" and reduced scope to those with access to a "Certificate System or Root CA System”
- Workstation: Changed the second bullet to refer to the defined term Privileged Access

##### Removed Definitions

- Certificate Management System definition has been removed
- Delegated Third Party System definition has been removed
- Issuing System definition has been removed

#### Structural and Terminology Changes

- Network Equipment → Network Boundary Controls: Throughout the document, references to "Network Equipment" have been replaced with "Network Boundary Controls"
- Inventory requirement moved: Requirement moved from Section 4 to beginning of Section 1: "The CA MUST define an inventory of its CA Infrastructure"
- Section 4 restructuring:
  - Section number changes: 4.2 → 4.1, 4.3 → 4.2, 4.4 → 4.3

#### Substantive Requirement Changes

##### Section 1: CA Infrastructure and Network Configuration

- Root CA Systems isolation requirement: Added explicit requirement in section 1.2.1: "Root CA Systems MUST be on physically separate networks from all other CA Infrastructure"
- Network segmentation implementation: Section 1.1.1.1 and 1.1.1.2 have switched places:
  - Network segmentation design principles moved to 1.1.1.1 (previously in 1.1.1.2)
  - Implementation details moved to 1.1.1.2 (previously in 1.1.1.1)
  - "Software-defined networking" moved from MAY to MUST category

##### Section 2: Access Control

- Trusted Roles scope: Changed from designing/building/maintaining "CA Infrastructure and Network Equipment" to specifically "Certificate Systems and Root CA Systems"
- Separation of Duties: Replaced requirement that Trusted Roles be assigned consistent with requirements of Multi-Party Control with a requirement that Trusted Roles be assigned consistent with "the Principle of Separation of Duties" (section 2.1)
- Access restriction scope: Changed from "CA Infrastructure and/or Network Equipment" to "Certificate Systems and Root CA Systems" in section 2.2.1 and 2.2.1.1
- Multi-Factor Authentication: Modified section 2.2.3 to require MFA "for access to CA Infrastructure" rather than "for accounts on CA Infrastructure and access to CA Infrastructure”
- Privileged Access: Modified section 2.2.6 to use Privileged Access as the metric for determining the application of other requirements in that section

##### Section 4: Vulnerability Management

- Expanded scope for vulnerability policies:
  - Added Security Support Systems and Network Boundary Controls to recommended scope
  - Added New deadline: "Effective 15-Apr-2026, these policies and procedures MUST apply to Security Support Systems and Network Boundary Controls"

##### Date

- Date format standardized to DD-MMM-YYYY throughout
- Effective date of NCSSRs version 2.0.x updated from September 17, 2025 to November 12, 2025

### Motion

**Motion Begins**
This ballot modifies the Network and Certificate System Security Requirements (NCSSRs), based on Version 2.0.4.

MODIFY the NCSSRs as specified in the following Redline: <https://github.com/cabforum/netsec/compare/521b7778974fb2ecda200f8d1aabf9f7616943b7...168629d5b3b8357c6b82df434b700401947f871d>

When approved, this Ballot takes effect on the IPR review completion date.
**Motion Ends**

**Discussion** (at least 7 days)

- Start time: Wednesday, April 16, 2025 17:00 UTC (2025-04-16T17:00:00Z)
- End time: on or after Wednesday, May 14, 2025 17:00 UTC (2025-05-14T17:00:00Z)

**Vote for approval** (7 days)

- Start time: Thursday, May 22, 2025 17:00 UTC (2025-05-22T17:00:00Z)
- End time: Thursday, May 29, 2025 17:00 UTC (2025-05-29T17:00:00Z)
