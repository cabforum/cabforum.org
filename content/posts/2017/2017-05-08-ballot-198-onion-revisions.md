---
aliases:
- /2017-05-08-ballot-198-onion-revisions/
author: Ben Wilson
date: 2017-05-08 04:52:30
tags:
- Server Certificates
title: Ballot 198 – .Onion Revisions
type: post
---

Results on Ballot 198 – .Onion Revisions

The voting period for Ballot 198 has ended. Here are the results.

**Voting by CAs – 13 votes total, including abstentions**

9 Yes votes: Buypass, CFCA, Cisco, DocuSign France, Entrust, GDCA, GlobalSign, HARICA, SHECA

0 No vote:

4 Abstain: Actalis, Izenpe, OATI, TurkTrust

100% of voting CAs voted in favor

**Voting by browsers – 4 votes total, including abstentions**

4 Yes votes: Apple, Google, Mozilla, Opera

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes. 17 votes (including abstentions) were cast – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**Ballot 198 passes.**

**Ballot 198 – .Onion Revisions**

Appendix F of the EV Guidelines is unclear on what a CA does with the Tor Service Descriptor Hash extension. This ballot clarifies that inclusion of the extension in the TBSCertificate is required.

The following motion has been proposed by Jeremy Rowley of DigiCert and endorsed by Ryan Sleevi of Google and Erwann Abalea of DocuSign France to introduce new Final Maintenance Guidelines for the “Guidelines for the Issuance and Management of Extended Validation Certificates” (EV Guidelines).

— MOTION BEGINS –

Revise Appendix F, Section 1 to read as follows:

**Appendix F – Issuance of Certificates for .onion Domain Names**

A CA may issue an EV Certificate containing the .onion Domain Name provided that issuance complies with the requirements set forth in this Appendix:

1. CAB Forum Tor Service Descriptor Hash extension (2.23.140.1.31)

The CA MUST include the CAB Forum extension in the TBSCertificate to convey hashes of keys related to .onion addresses. The CA MUST include the Tor Service Descriptor Hash extension using the following format:

cabf-TorServiceDescriptorHash OBJECT IDENTIFIER ::= { 2.23.140.1.31 }

TorServiceDescriptorHash:: = SEQUENCE {

algorithm                      AlgorithmIdentifier

subjectPublicKeyHash  BIT STRING             }

Where the AlgorithmIdentifier is a hashing algorithm (defined in RFC 6234) performed over the raw Public Key of the .onion service and SubjectPublicKeyHash is the value of the hash output of the raw Public Key.

–Motion Ends–

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

| | | |
| --- | --- | --- | |
BALLOT 198 Status: Final Maintenance Guideline |
Start time (22:00 UTC) |
End time (22:00 UTC) | |
Discussion (7 to 14 days) |
April 24, 2017 |
May, 2017 | |
Vote for approval (7 days) |
May 1, 2017 |
May 8, 2017 | |
If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. |
Upon filing of Review Notice by Chair |
30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.