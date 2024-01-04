---
aliases:
- /2021-06-02-ballot-sc46-sunset-the-caa-exception-for-dns-operator/
author: Wayne Thayer
date: 2021-06-02 23:08:22
tags:
- Server Certificates
title: 'Ballot SC46: Sunset the CAA exception for DNS Operator'
type: post
---

The voting on ballot SC46 has completed, and the ballot has **passed**.

**Voting Results**

**Certificate Issuers**

**17 votes total, with no abstentions**

·        17 Yes votes: Actalis, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, DigiCert, eMudhra, Entrust, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, Kamu SM, SwissSign, Telia Company, Visa

·         0 No Votes

·         0 Abstentions

·       One vote was not counted because it was received after the voting period had ended.

**Certificate Consumers**

**5 votes total, with no abstentions**

·       5 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla

·       0 No votes

·       0 Abstentions

**Bylaw Requirements**

1.      Bylaw 2.3(f) requires:

o     A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
_This requirement was MET for Certificate Issuers and MET for Certificate Consumers_.

o    at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
_This requirement was MET_.

2.      Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 13, so the quorum was 14 for this ballot.
_This requirement was MET._

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.

**Purpose of Ballot:**

This Ballot addresses security issues with Section 3.2.2.8 regarding CAA checking.

Currently, Section 3.2.2.8 permits a CA to bypass CAA checking if the CA or an Affiliate of the CA is the DNS Operator. This term is referred to through RFC 7719, and involves a precise technical definition regarding how a zone’s authoritative servers are configured and expressed (e.g. NS records). While this allows a CA to skip looking up the CAA record, it does not absolve them of the need to look up these other records on every issuance.

As practiced by CAs, this has clearly caused some confusion. For example, some CAs have incorrectly implemented policies that determine they’re authoritative based on self-assertion that they are authoritative, which is not consistent with the current requirements.

To avoid these issues, this sunsets the CAA exception on 2021-07-01 for the DNS Operator, simplifying the requirements and reducing ambiguities for CAs performing validation.

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Ben Wilson of Mozilla and Jacob Hoffman-Andrews of ISRG/Let’s Encrypt.

It can be viewed on GitHub as

— MOTION BEGINS —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.7.4:

MODIFY the Baseline Requirements as specified in the following Redline:

— MOTION ENDS —

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2021-05-13 20:00:00 UTC
End Time: 2021-05-26 14:00:00 UTC

Vote for approval (7 days)

Start Time: 2021-05-26 18:30:00 UTC
End Time: 2021-06-02 18:30:00 UTC