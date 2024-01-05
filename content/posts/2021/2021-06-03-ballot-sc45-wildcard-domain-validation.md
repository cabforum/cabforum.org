---
aliases:
- /2021-06-03-ballot-sc45-wildcard-domain-validation/
author: Wayne Thayer
date: 2021-06-03 21:43:09
tags:
- Server Certificates
title: 'Ballot SC45: Wildcard Domain Validation'
type: post
---

## Voting Results 

**Certificate Issuers**

**22 votes total, with no abstentions**

·        22 Yes votes: Actalis, Buypass, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, D-TRUST, eMudhra, Entrust, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, Izenpe, Kamu SM, Sectigo, SSL.com, SwissSign, Telia Company, TrustCor, SecureTrust, Visa

·         0 No Votes

·         0 Abstentions

**Certificate Consumers**

**5 votes total, with no abstentions**

·       5 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla

·       0 No votes

·       0 Abstentions

**Bylaw Requirements**

1. Bylaw 2.3(f) requires:

o     A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
_This requirement was MET for Certificate Issuers and MET for Certificate Consumers_.

o    at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
_This requirement was MET_.

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 13, so the quorum was 14 for this ballot.
   _This requirement was MET._

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.

## Purpose of Ballot 

This Ballot addresses security issues with the use of methods 3.2.2.4.6, 3.2.2.4.18, and 3.2.2.4.19 of the Baseline Requirements to authenticate an entire domain namespace. These methods rely on an HTTP based demonstration of control, which only demonstrates control over a particular host and service, rather than the entire Domain Namespace.

Effective 2021-12-01, these methods MUST NOT be used to issue Wildcard Certificates and MUST NOT be used as Authorization Domain Names for subordinate FQDNs of the validated FQDN.

Although not directly modifying the same section, this Ballot does interact with Ballot SC42: 398-day Re-use Period, and so two versions are presented, based on whether or not SC42 finishes the IP review period without issues. If SC42 is adopted, 3.2.2.4.6 does not need to change, because no past validations can be reused to issue new certificates after the effective date. However, if SC42 were to fail, 3.2.2.4.6 is also modified to keep consistent with .18 and .19.

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Jos Purvis of Cisco and Dimitris Zacharopoulos of HARICA.

It can be viewed on GitHub as

— MOTION BEGINS —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.7.4.

If SC42 finishes the IP Review period without issues and is adopted, MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/servercert/compare/47248d77d371356780b08cfa971b26d88d704ca8..e244864fc86819ac43ef82a79c9c43b9366cf087

If SC42 fails to finish the IP Review period without issues and is not adopted, MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/servercert/compare/47248d77d371356780b08cfa971b26d88d704ca8..2ab50e3667c676d3591318474c3cbff99be8baf2

— MOTION ENDS —

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2021-05-20 19:00:00 UTC
End Time: 2021-05-27 19:00:00 UTC

Vote for approval (7 days)

Start Time: 2021-05-27 19:00:00 UTC
End Time: 2021-06-03 19:00:00 UTC