---
aliases:
- /2017-02-24-ballot-185-limiting-lifetime-certificates/
author: Ben Wilson
date: 2017-02-24 08:06:18
tags:
- Ballot
- Server Certificates
title: Ballot 185 – Limiting the Lifetime of Certificates
type: post
---

**Results on Ballot 185**

The voting period for Ballot 185 has ended. Here are the results.

**Voting by CAs – 25 votes total plus abstentions**

1 Yes vote: Let’s Encrypt

24 No votes: DigiCert, Entrust, AS Sertifitseerimiskeskus, Izenpe, ANF Autoridad de Certificación, Comodo, Certinomis, HARICA, GlobalSign, Quo Vadis, GoDaddy, Actalis, Symantec, Trustwave, CFCA, Secom, TWCA, GDCA, Certum, OATI, Buypass, SHECA, CNNIC, Cisco

3 Abstain: Logius PKI, SwissSign, Chunghwa Telecom

4% of CAs voted in favor

**Voting by browsers – 4 votes total plus abstentions**

2 Yes votes: Google, Mozilla

2 No votes: Microsoft, Qihoo 360

1 Abstain: Apple

50% of browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Half of currently active Members is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. This requirement was not met for either CAs or browsers. At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

Accordingly, the ballot fails.

**Ballot 185 – Limiting the Lifetime of Certificates**

The following motion has been proposed by Ryan Sleevi of Google, Inc and
endorsed by Josh Aas of ISRG and Gervase Markham of Mozilla to introduce
new Final Maintenance Guidelines for the “Baseline Requirements Certificate
Policy for the Issuance and Management of Publicly-Trusted Certificates”
and the “Guidelines for the Issuance and Management of Extended Validation
Certificates”

— MOTION BEGINS —
Modify Section 6.3.2 of the “Baseline Requirements Certificate Policy for
the Issuance and Management of Publicly-Trusted Certificates” as follows:

Replace Section 6.3.2, which reads as follows:
“””
6.3.2. Certificate Operational Periods and Key Pair Usage Periods

Subscriber Certificates issued after the Effective Date MUST have a
Validity Period no greater than 60 months.
Except as provided for below, Subscriber Certificates issued after 1 April
2015 MUST have a Validity Period
no greater than 39 months.

Until 30 June 2016, CAs MAY continue to issue Subscriber Certificates with
a Validity Period greater than 39
months but not greater than 60 months provided that the CA documents that
the Certificate is for a system or
software that:
(a) was in use prior to the Effective Date;
(b) is currently in use by either the Applicant or a substantial number of
Relying Parties;
(c) fails to operate if the Validity Period is shorter than 60 months;
(d) does not contain known security risks to Relying Parties; and
(e) is difficult to patch or replace without substantial economic outlay
“””

with the following text:
“””
6.3.2. Certificate Operational Periods and Key Pair Usage Periods

Subscriber Certificates issued on or after 24 August 2017 MUST NOT have a
Validity Period greater than three hundred and ninety-eight (398) days.

Subscriber Certificates issued prior to 24 August 2017 MUST NOT have a
Validity Period greater than thirty-nine (39) months.
“””

Modify Section 9.4 of the “Guidelines for the Issuance and Management of
Extended Validation Certificates” as follows:

Replace Section 9.4, which reads as follows:
“””
9.4. Maximum Validity Period For EV Certificate

The validity period for an EV Certificate SHALL NOT exceed twenty seven
months. It is RECOMMENDED that EV
Subscriber Certificates have a maximum validity period of twelve months.
“””

with the following text:
“”””
9.4 Maximum Validity Period for EV Certificate

EV Certificates issued on or after 24 August 2017 MUST NOT have a Validity
Period greater than three hundred and ninety-eight (398) days.

EV Certificates issued prior to 24 August 2017 MUST NOT have a Validity
Period greater than twenty seven (27) months.
“””
— MOTION ENDS —

Ballot 185 – Limiting the Lifetime of Certificates
Status: Final Maintenance Guideline

Review Period:
Start Time: 2017-02-10 00:00:00 UTC
End Time: 2017-02-17 00:00:00 UTC

Vote for Approval:
Start Time: 2017-02-17 00:00:00 UTC
End Time: 2017-02-24 00:00:00 UTC

Votes must be cast by posting an on-list reply to this thread on the Public
Mail List.

A vote in favor of the ballot must indicate a clear ‘yes’ in the response.
A vote against must indicate a clear ‘no’ in the response. A vote to
abstain must indicate a clear ‘abstain’ in the response. Unclear responses
will not be counted. The latest vote received from any representative of a
voting Member before the close of the voting period will be counted. Voting
Members are listed here: /about/membership/members/

In order for the ballot to be adopted, two thirds or more of the votes cast
by Members in the CA category and greater than 50% of the votes cast by
members in the browser category must be in favor.