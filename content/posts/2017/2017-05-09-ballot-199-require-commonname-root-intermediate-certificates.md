---
aliases:
- /2017/05/09/ballot-199-require-commonname-root-intermediate-certificates/
author: Ben Wilson
date: 2017-05-09 21:02:05
tags:
- Ballot
- Server Certificates
title: Ballot 199 – Require commonName in Root and Intermediate Certificates
type: post
---

## Results on Ballot 199 – Require commonName in Root and Intermediate Certificates

The voting period for Ballot 199 has ended and the ballot has passed. Here are the results.

## Voting by CAs – 15 votes total including abstentions

- **14 Yes votes:** Actalis, CFCA, Cisco, DigiCert, Entrust, GDCA, GlobalSign, HARICA, Izenpe, OATI, SHECA, SSC, SwissSign, Trustwave

- **1 No vote:** Buypass

- **0 Abstain:**

93% of voting CAs voted in favor

## Voting by browsers – 3 votes total including abstentions

- **3 Yes votes:** Apple, Google, Mozilla

- **0 No votes:**

- **0 Abstain:**

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

## The ballot passes.

_This is the corrected text (one word change) of ballot 199 which is currently in the voting period (voting ends on 9th May)._

## Ballot 199 – Require commonName in Root and Intermediate Certificates

**Purpose of Ballot:** Section 7.1.4.3 of the BRs, which deals with Subject Information for Subordinate CA Certificates, currently requires only that all information in a Subordinate CA Certificate is accurate; it does not say what information is required. Some of the necessary information is required elsewhere in the BRs, but it is not complete – commonName is missing. If commonName is omitted, DN clashes can more easily occur. So this motion centralises that information in the obvious place, and adds a commonName requirement.

The following motion has been proposed by Gervase Markham of Mozilla and endorsed by Patrick Tronnier of OATI and Ryan Sleevi of Google:

## Motion begins

Make the following changes to the Baseline Requirements:

- Delete 7.1.2.1 (e), which currently defines the Subject Information required in a Root CA Certificate.

- Delete 7.1.2.2 (h), which currently defines the Subject Information required in a Subordinate CA Certificate.

- Rename section 7.1.4.2, currently titled “Subject Information”, to “Subject Information – Subscriber Certificates”.

- Rename section 7.1.4.3, currently titled “Subject Information – Subordinate CA Certificates” to “Subject Information – Root Certificates and Subordinate CA Certificates”.

- Based on the style used in 7.1.4.2.2 and the content from the now-deleted 7.1.2.1 (e) and 7.1.2.2 (h), add the following section 7.1.4.3.1:

7.1.4.3.1 Subject Distinguished Name Fields

Certificate Field: subject:commonName (OID 2.5.4.3)

Required/Optional: Required

Contents: This field MUST be present and the contents SHOULD be an identifier for the certificate such that the certificate’s Name is unique across all certificates issued by the issuing certificate.

b. Certificate Field: subject:organizationName (OID 2.5.4.10)

Required/Optional: Required

Contents: This field MUST be present and the contents MUST contain either the Subject CA’s name or DBA as verified under Section 3.2.2.2.The CA may include information in this field that differs slightly from the verified name, such as common variations or abbreviations, provided that the CA documents the difference and any abbreviations used are locally accepted abbreviations; e.g., if the official record shows“Company Name Incorporated”, the CA MAY use “Company Name Inc.” or“Company Name”.

c. Certificate Field: subject:countryName (OID: 2.5.4.6)

Required/Optional: Required

Contents: This field MUST contain the two‐letter ISO 3166‐1 country code for the country in which the CA’s place of business is located.

## Motion ends

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

| | | |
| --- | --- | --- |
|
BALLOT 199

Status: Final Maintenance Guideline |
Start time (23:00 UTC)
|
End time (23:00 UTC)
|
|
Discussion (7 to 14 days)
|
25 Apr
|
2 May
|
|
Vote for approval (7 days)
|
2 May
|
9 May
|
|
If vote approves ballot: Review Period (Chair to send Review Notice) (30 days).

If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created.

If no Exclusion Notices filed, ballot becomes effective at end of Review Period. |
Upon filing of Review Notice by Chair
|
30 days after filing of Review Notice by Chair
|

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: [/about/membership/members/](/about/membership/members/)

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.