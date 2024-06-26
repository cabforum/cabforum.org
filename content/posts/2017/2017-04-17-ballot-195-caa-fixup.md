---
aliases:
- /2017/04/17/ballot-195-caa-fixup/
author: Ben Wilson
date: 2017-04-17 15:16:04
tags:
- Ballot
- Server Certificates
title: Ballot 195 – CAA Fixup
type: post
---

The voting period for Ballot 195 has ended. Here are the results.

## Voting by CAs – 18 votes total including abstentions

- **18 Yes votes:** Entrust, Izenpe, QuoVadis, OATI, SwissSign, DigiCert, TurkTrust, HARICA, GDCA, Actalis, Disig, GlobalSign, Comodo, SHECA, Cisco, Trustwave, Buypass, Symantec

- **0 No votes:**

- **0 Abstain:**

100% of voting CAs voted in favor

## Voting by browsers – 3 votes total including abstentions

- **3 Yes votes:** Mozilla, Google, Apple

- **0 No votes:**

- **0 Abstain:**

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

## The ballot passes.

## Ballot 195 – CAA Fixup

**Purpose of Ballot:** The CAB Forum recently passed ballot 187 to make CAA checking mandatory. This ballot corrects some wording issues in the text added by that ballot.

The following motion has been proposed by Gervase Markham of Mozilla and endorsed by Ryan Sleevi of Google and Jeremy Rowley of DigiCert:

## Motion begins

Change the following in section 3.2.2.8 of the Baseline Requirements:

1. Add a carriage return after “any other time.”

1. Replace the sentence:

“CAs MUST process the issue, issuewild, and iodef property tags as specified in RFC 6844.”

with:

“CAs MUST process the issue, issuewild, and iodef property tags as specified in RFC 6844, although they are not required to act on the contents of the iodef property tag.”

3. Replace the sentence:

“CAs MUST respect the critical flag and reject any unrecognized properties with this flag set.”

with:

“CAs MUST respect the critical flag and not issue a certificate if they encounter an unrecognized property with this flag set.”

## Motion ends

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 195
 
| Status: Final Maintenance Guideline                                                                                                                                                                                                                | Start time (23:00 UTC)                | End time (23:00 UTC)                           |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------- | ---------------------------------------------- |
| Discussion (7 to 14 days)                                                                                                                                                                                                                          | 3rd April                             | 10th April                                     |
| Vote for approval (7 days)                                                                                                                                                                                                                         | 10th April                            | 17th April                                     |
| If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. | Upon filing of Review Notice by Chair | 30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: [/about/membership/members/](/about/membership/members/)

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.