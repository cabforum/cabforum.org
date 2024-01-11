---
aliases:
- /2017/07/11/ballot-204-forbid-dtps-domainip-ownership/
author: Ben Wilson
date: 2017-07-11 16:06:37
tags:
- Ballot
- Server Certificates
title: Ballot 204 – Forbid DTPs from doing Domain/IP Ownership
type: post
---

Results on Ballot 204 – Forbid DTPs from doing Domain/IP Ownership

The voting period for Ballot 204 has ended and the ballot passed. Here are the results.

## Voting by CAs – 13 votes total including abstentions

- **12 Yes votes:** Buypass, CFCA, Chunghwa Telecom, Cisco, Comodo, DigiCert, Disig, Entrust, GDCA, GlobalSign, HARICA, SHECA

- **0 No votes:**

- **1 Abstain:** Actalis

100% of voting CAs voted in favor

## Voting by browsers – 4 votes total including abstentions

- **4 Yes votes:** Apple, Google, Microsoft, Mozilla

- **0 No votes:**

- **0 Abstain:**

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 11, so quorum was 12 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

## The ballot passes.

## Ballot 204: Forbid DTPs from doing Domain/IP Ownership Validation

**Purpose of Ballot:** At the moment, CAs are permitted to delegate the process of domain and IP address validation. However, permitting such delegations is problematic due to the way audits work – the auditing of such work may or may not be required and, if it is, those audit documents may not make it back to root programs for consideration. Although the audit situation also needs fixing, domain validation is an important enough component of a CA’s core competencies that it seems wiser to remove it from the larger problem and forbid its delegation. The purpose of this ballot is to ensure that CAs or their Affiliates are always the ones performing domain/IP address ownership validation for certificates that CA is responsible for.

The following motion has been proposed by Gervase Markham of Mozilla and endorsed by Ryan Sleevi of Google and Mike Reilly of Microsoft:

## Motion begins

This motion modifies the Baseline Requirements. 0) In section 1.6.1, augment the definition of “Delegated Third Party” as follows:

Delegated Third Party: A natural person or Legal Entity that is not the CA\*\*, and whose activities are not within the scope of the appropriate CA audits,\*\* but is authorized by the CA to assist in the Certificate Management Process by performing or fulfilling one or more of the CA requirements found herein.

1. In section 1.3.2, replace the following sentence:

    “The CA MAY delegate the performance of all, or any part, of Section 3.2 requirements to a Delegated Third Party, provided that the process as a whole fulfills all of the requirements of Section 3.2.” with: “With the exception of sections 3.2.2.4 and 3.2.2.5, the CA MAY delegate the performance of all, or any part, of Section 3.2 requirements to a Delegated Third Party, provided that the process as a whole fulfills all of the requirements of Section 3.2.”

1. In sections 3.2.2.4, replace the paragraph beginning “The CA SHALL confirm that” with the following: “The CA SHALL confirm that, as of the date the Certificate issues, the CA has validated each Fully‐Qualified Domain Name (FQDN) listed in the Certificate using at least one of the methods listed below, or is within the Domain Namespace of a Fully-Qualified Domain Name (FQDN) that has been validated using at least one of the methods listed below (not including the method defined in section 3.2.2.4.8).”

1. In section 3.2.2.4.6, remove the words “or Delegated Third Party”.

1. In section 3.2.2.4.11 (if still present in the text at the time the ballot passes), replace the following text: “either the CA or a Delegated Third Party” with: “the CA”

1. In section 8.4, remove the paragraph beginning: “If a Delegated Third Party is not currently audited…”.

1. In section 8.4, replace the following text: “If the CA is not using one of the above procedures and the Delegated Third Party is not an Enterprise RA, then” with: “For Delegated Third Parties which are not Enterprise RAs, “.

## Motion ends

The procedure for approval of this Final Maintenance Guideline ballot is as follows:

BALLOT 204  

| Status: Final Maintenance Guideline                                                                                                                                                                                                                | Start time (22:00 UTC)                | End time (22:00 UTC)                           |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------- | ---------------------------------------------- |
| Discussion (7 to 14 days)                                                                                                                                                                                                                          | 27 June                               | 4 July                                         |
| Vote for approval (7 days)                                                                                                                                                                                                                         | 4 July                                | 11 July                                        |
| If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. | Upon filing of Review Notice by Chair | 30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: [/about/membership/members/](/about/membership/members/)

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.