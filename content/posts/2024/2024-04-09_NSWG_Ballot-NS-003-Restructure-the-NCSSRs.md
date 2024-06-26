---
title: 'Ballot NS-003: Restructure the NCSSRs'
author: Clint Wilson
date: 2024-04-09 16:00:00
tags:
- Network Security
- Ballot
type: post
slug: Ballot-NS-003
---

## IPR Review of Ballot NS-003: Restructure the NCSSRs

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is:

<https://cabforum.org/posts/2024/2024-05-06-NSWG-Ballot-NS-003/CA-Browser-Forum-NCSSR-2.0-redline.pdf>

### Summary of Review

- Ballot for Review: [Ballot NS-003: Restructure the NCSSRs](https://cabforum.org/posts/2024/2024-05-06-NSWG-Ballot-NS-003/CA-Browser-Forum-NCSSR-2.0-redline.pdf)
- Start of Review Period: 6 May 2024 18:00 UTC
- End of Review Period: 5 June 2024 18:00 UTC

### Exclusion Notices

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to clintw at apple.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

## Voting Results of Ballot NS-003: Restructure the NCSSRs

The voting period for Ballot NS-003: Restructure the NCSSRs has ended and the Ballot has **Passed**. The following votes were cast:

### 4 votes by Certificate Consumers

- 4 Yes votes: Apple, Google, Microsoft, Mozilla
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Consumers voted in favor

### 18 votes by Certificate Issuers

- 18 Yes votes: Amazon Trust Services, Buypass, Chunghwa Telecom, Disig, Fastly, GDCA, GlobalSign, GoDaddy, HARICA, Kamu SM, OISTE, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud
- 0 No votes:
- 0 Abstain votes:

100% of voting Certificate Issuers voted in favor

### Bylaws version 2.5 Requirements

1. Bylaw 2.3(6) requires:
    - a "yes" vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval.  Votes to abstain are not counted for this purpose.
        - This requirement was met for both Certificate Issuers and Certificate Consumers.
    - at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
        - This requirement was met for both Certificate Issuers and Certificate Consumers.
2. Bylaw 2.3(7) requires:
    - a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
        - Half of currently active Members as of the start of voting was 7, so quorum was 8 votes
        - 22 votes were received
        - This requirement was met.

## Ballot NS-003: Restructure the NCSSRs

Ballot NS-003 is proposed by Clint Wilson of Apple and endorsed by Trevoli Ponds-White of Amazon and David Kluge of Google Trust Services.

### Purpose of Ballot

This ballot proposes a comprehensive restructuring of the Network and Certificate System Security Requirements (NCSSRs), excepting Section 4. The current structure of the document has proven to be challenging for creating ballots, contains duplicated requirements, and separates similar requirements across the document. These issues have led to inefficiencies in managing and implementing security standards. Therefore, this proposal aims to streamline the document's structure, eliminate redundancies, improve comprehensibility, and enhance clarity and coherence.

#### Reasons for Proposal

- Complexity in Ballot Creation: The current document structure can make it difficult to create and manage ballots efficiently, leading to somewhat awkward updating processes, abandoned ballots, and a lack of confidence that ballots effect the intended changes.
- Redundancy: Over time, some parts of the NCSSRs have touched on the same topic, leading to some duplication across the document and further to confusion and inconsistency in implementation.
- Fragmentation: Similar requirements for different parts of a CA’s NCSSR-relevant infrastructure are scattered throughout the document, making it somewhat more difficult for to locate and comprehend a complete picture of these requirements effectively.
- Minor Issues: The document contains other, more minor issues that also impede its usability and effectiveness, such as missing definitions, unclear list structures, and requirements that are more optional than they may currently appear.

#### Benefits of the Updated Document Structure

- Enhanced Clarity: The revised structure should improve the clarity and coherence of the document, making the requirements it represents easier to understand, as well as result in greater consistency when implementing or assessing its security requirements.
- Future Updates: A more granular document structure should improve the process of creating and managing ballots in the future. Similarly, the improved proximity of related requirements should hopefully aid in identifying the areas the NCSSRs can most benefit from further attention.
- Grouping and De-duplication of Similar Requirements: By consolidating duplicated requirements, the updated document should make it much easier to find, comprehend, assess, and implement related requirements.
- Clearer Recommendations: The updated document includes a number of additional “SHOULD”-type stipulations, clarifying some of the language in the current NCSSRs such that it’s easier to identify where the NCSSRs impose a strict requirement as opposed to a strong recommendation.

Overall, this ballot proposal seeks to address existing challenges in updating the current version of the NCSSRs and pave the way for future improvements to the NCSSRs.

--- MOTION BEGINS ---

This ballot modifies the “Network and Certificate System Security Requirements” as follows, based on version 1.7:

<https://github.com/cabforum/netsec/compare/c62a2f88e252de5c79b101fa3c9e9c536388639a...8bd66d27c07e30d1f4d9e6dd57b075bca499bf2e>

--- MOTION ENDS ---

The procedure for approval of this ballot is as follows:

**Discussion Period** (14+ days)

- Start Time: 2024-April-09 16:00 UTC
- End Time: 2024-April-23 15:59 UTC

**Voting Period** (7 days)

- Start Time: 2024-April-23 16:00 UTC
- End Time: 2024-April-30 16:00 UTC
