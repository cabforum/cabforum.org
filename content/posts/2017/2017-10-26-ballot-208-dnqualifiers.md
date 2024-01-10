---
aliases:
- /2017/10/26/ballot-208-dnqualifiers/
author: Ben Wilson
date: 2017-10-26 22:49:30
tags:
- Ballot
- Server Certificates
title: Ballot 208 – dnQualifiers
type: post
---

## Results on Ballot 208 – dnQualifiers

The voting period for Ballot 208 has ended and the ballot has **failed**. Here are the results.

## Voting by CAs – 14 votes total, including abstentions

- **13 Yes votes:** Amazon, CFCA, Cisco, DigiCert, Entrust, GDCA, GlobalSign, HARICA, Let’s Encrypt, SSL.com, SwissSign, Symantec, Trustwave

- **1 No votes:** Chunghwa Telecom

- **2 Abstain:** Actalis, Buypass

93% of voting CAs voted in favor

## Voting by browsers – 4 votes total, including abstentions

- **2 Yes votes:** Google, Mozilla

- **2 No votes:** Apple, Microsoft

- **0 Abstain:**

50% of voting browsers voted in favor – ballot fails

## Quorum requirements

Currently active members: 19

Quorum: 10

Votes cast (including abstentions): 20

Quorum met: Yes

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for CAs but was NOT met for browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

## Ballot 208 fails.

## Ballot 208 – dnQualifiers

This ballot allows CAs to use dnQualifiers in certificates to partition groups of certificates into different sets and to allow non-identity information to be included in DV certificates.

The following motion has been proposed by Peter Bowen of Amazon and endorsed by Ben Wilson of DigiCert and Ryan Sleevi of Google.

## Motion begins

In the Baseline Requirements, REPLACE the definition of “Subject Identity Information” with:

“Information that identifies the Certificate Subject. Subject Identity Information does not include \[strikeout\]a domain name listed in the subjectAltName extension or the Subject commonName field\[/strikeout\] \[insert\]dnQualifier attributes in Distinguished Names, commonName attributes in Distinguished Names, dNSName Subject Alternative Names, iPAddress Subject Alternative Names, or SRVName Subject Alternative Names\[/insert\].”

In Section 7.1.4.2.2 Subject Distinguished Name Fields, re-letter “j” (Other Subject Attributes) as letter “k” and INSERT a new subsection j. that reads:

1. Certificate Field: subject:dnQualifier

- Optional. Contents: This field is intended to be used when several certificates with the same subject can be partitioned into sets of related certificates. Each related certificate set MAY have the same dnQualifier. The CA may include a dnQualifier attribute with a zero length value to explicitly indicate that the CA makes no assertion about relationship with other certificates with the same subject. The CA MAY set the dnQualifer value to the base64 encoding of the SHA1 hash of the subjectAlternativeName extnValue if it wishes to indicate grouping of certificates by alternative name set.

## Motion ends

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 208 Status: Final Maintenance Guideline Start time (22:00 UTC) End time (22:00 UTC)

Discussion begins October 12, 2017 22:00 UTC and ends October 19, 2017 22:00 UTC (7 days)

Vote for approval begins October 19, 2017 22:00 UTC and ends October 26, 2017 22:00 UTC (7 days)

If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. Upon filing of Review Notice by Chair 30 days after filing of Review Notice by Chair

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.