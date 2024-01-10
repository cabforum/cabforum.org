---
aliases:
- /2021/04/22/ballot-sc42-398-day-re-use-period/
author: Jos Purvis
date: 2021-04-22 15:47:00
tags:
- Ballot
- Server Certificates
title: 'Ballot SC42: 398-day Re-use Period'
type: post
---

## Voting Results

The voting on **SC42v2** has completed, and the ballot has **passed**.

### Certificate Issuers

**2\*\*\*\*6 votes total, with no abstentions**

· 24 Yes votes: Actalis, Amazon, Buypass, Certum (Asseco), CFCA, Chunghwa Telecom, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, Let’s Encrypt/ISRG, Sectigo, SwissSign, Telia Company, TrustCor, SecureTrust, Visa, iTrusChina, Kamu SM

· 0 No Votes

· 0 Abstentions

### Certificate Consumers

**5 votes total, with no abstentions**

1. 5 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla

1. 0 No votes

1. 0 Abstentions

### Bylaw Requirements

1. Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
  _This requirement was MET for Certificate Issuers and MET for Certificate Consumers_.
- at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
  _This requirement was MET_.

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 12, so the quorum was 13 for this ballot.
   _This requirement was MET._

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.

## Ballot Text

### Ballot SC42v2: 398-day IP Address and Domain Validation Reuse Period.

- *Type of Ballot:*\*

This is a ballot to adopt two Final Maintenance Guidelines which modify the Forum’s Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates (BRs) and the Guidelines for the Issuance and Management of Extended Validation Certificates (EVGs).

- *Purpose of Ballot:*\*

This ballot changes validation reuse periods for FQDN and IP Address validation to 398 days in section 4.2.1 of the BRs and for all purposes in section 11.14.3 of the EVGs. The ballot does not change the 825-day reuse period in section 4.2.1. of the BRs for Organizational Validation (OV) information.

Specifically:

- It inserts as the last sentence in the third paragraph of BR section 4.2.1, “Effective 2021-10-01, for validation of Domain Names and IP Addresses according to Section 3.2.2.4 and 3.2.2.5, any reused data, document, or completed validation MUST be obtained no more than 398 days prior to issuing the Certificate.”

- It replaces eight instances of “thirteen months” or “thirteen-month” in EVG section 11.14.3 with 398 days.

The following motion has been proposed by Ben Wilson of Mozilla and endorsed by Dimitris Zacharopoulos of HARICA and Chema Lopez of Firmaprofesional.

- *## Motion begins*\*

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“BRs”), based on Version 1.7.3:

Insert as the last sentence in the third paragraph of section 4.2.1 of the BRs, “Effective 2021-10-01, for validation of Domain Names and IP Addresses according to Section 3.2.2.4 and 3.2.2.5, any reused data, document, or completed validation MUST be obtained no more than 398 days prior to issuing the Certificate.” as illustrated in the following redline on GitHub:

https://github.com/cabforum/servercert/compare/9672b03bec91ad9a80f826e928e47f5c1f82964b…7cd105daf3baba01579c167d9fc10afacd49c503

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EVGs”) as follows, based on Version 1.7.4:

REPLACE all eight instances of “thirteen months” (or “thirteen-month”) in section 11.14.3 of the EVGs with 398 days and 398-day, respectively, as illustrated in the following redline on GitHub:

https://github.com/cabforum/servercert/compare/9672b03bec91ad9a80f826e928e47f5c1f82964b…7cd105daf3baba01579c167d9fc10afacd49c503

- *## Motion ends*\*

This ballot proposes two Final Maintenance Guidelines.

The procedure for approval of this ballot is as follows:

- *Discussion (7+ days)*\*

Start Time: 2021-04-08 17:00:00 UTC

End Time: 2021-04-15 17:00:00 UTC

- *Vote for approval (7 days)*\*

Start Time: 2021-04-15 17:00:00 UTC

End Time: 2021-04-22 17:00:00 UTC