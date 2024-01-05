---
aliases:
- /2017-09-27-ballot-214-caa-discovery-cname-errata/
author: Ben Wilson
date: 2017-09-27 16:05:58
tags:
- Ballot
- Server Certificates
title: Ballot 214 – CAA Discovery CNAME Errata
type: post
---

REVISED Results on Ballot 214 – CAA Discovery CNAME Errata

The voting period for Ballot 214 has ended and the ballot has passed. Here are the results.

**Voting by CAs – 16 votes total, including abstentions**

13 Yes votes: Actalis, Amazon, Buypass, Camerfirma, Chunghwa Telecom, Cisco, Comodo, Entrust, GDCA, Izenpe, Let’s Encrypt, QuoVadis, SSL.com

3 No votes: GlobalSign, Symantec, Trustwave

0 Abstain:

81% of voting CAs voted in favor

**Voting by browsers – 4 votes total, including abstentions**

4 Yes votes: Apple, Google, Microsoft, Mozilla

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 8, so quorum was 9 votes. 20 votes (including abstentions) were cast – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**Ballot 214 passes.**

The following motion has been proposed by Phillip Hallam-Baker of Comodo Group Inc. and endorsed by Gervase Markham of Mozilla and Mads Egil Henriksveen of Buypass.

— MOTION BEGINS —

In the Baseline Requirements v1.4.9 Section 3.2.2.8. CAA Records

Strike:

As part of the issuance process, the CA MUST check for a CAA record for each dNSName in the subjectAltName extension of the certificate to be issued, according to the procedure in RFC 6844, following the processing instructions set down in RFC 6844 for any records found. If the CA issues, they MUST do so within the TTL of the CAA record, or 8 hours, whichever is greater.

Replace with:

As part of the issuance process, the CA MUST check for CAA records and follow the processing instructions for any records found, for each dNSName in the subjectAltName extension of the certificate to be issued, as specified in RFC 6844 as amended by Errata 5065 (Appendix A). If the CA issues, they MUST do so within the TTL of the CAA record, or 8 hours, whichever is greater.

In the Baseline Requirements ADD an Appendix A that reads:

Appendix A — RFC6844 Errata 5065

The following errata report has been held for document update for RFC6844, “DNS Certification Authority Authorization (CAA) Resource Record”.

————————————–
You may review the report below and at:

————————————–
Status: Held for Document Update
Type: Technical

Reported by: Phillip Hallam-Baker \<> Date Reported: 2017-07-10 Held by: EKR (IESG)

Section: 4

Original Text
————-
Let CAA(X) be the record set returned in response to performing a CAA
record query on the label X, P(X) be the DNS label immediately above
X in the DNS hierarchy, and A(X) be the target of a CNAME or DNAME
alias record specified at the label X.

o If CAA(X) is not empty, R(X) = CAA (X), otherwise

o If A(X) is not null, and R(A(X)) is not empty, then R(X) =
R(A(X)), otherwise

o If X is not a top-level domain, then R(X) = R(P(X)), otherwise

o R(X) is empty.

Corrected Text
————–
Let CAA(X) be the record set returned in response to performing a CAA
record query on the label X, P(X) be the DNS label immediately above
X in the DNS hierarchy, and A(X) be the target of a CNAME or DNAME
alias record chain specified at the label X.

o If CAA(X) is not empty, R(X) = CAA (X), otherwise

o If A(X) is not null, and CAA(A(X)) is not empty, then R(X) =
CAA(A(X)), otherwise

o If X is not a top-level domain, then R(X) = R(P(X)), otherwise

o R(X) is empty.

Thus, when a search at node X returns a CNAME record, the CA will
follow the CNAME record chain to its target. If the target label
contains a CAA record, it is returned.

Otherwise, the CA continues the search at
the parent of node X.

Note that the search does not include the parent of a target of a
CNAME record (except when the CNAME points back to its own path).

To prevent resource exhaustion attacks, CAs SHOULD limit the length of
CNAME chains that are accepted. However CAs MUST process CNAME
chains that contain 8 or fewer CNAME records.

–Motion Ends–

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 214 Status:  Final Maintenance Guideline   Start time (22:00 UTC)   End time (22:00 UTC)

Discussion begins now and ends September 20, 2017 22:00 UTC (7 days)

Vote for approval begins September 20, 2017 22:00 UTC and ends September 27, 2017 22:00 UTC (7 days)

If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period.   Upon filing of Review Notice by Chair 30 days after filing of Review Notice by Chair

> From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.