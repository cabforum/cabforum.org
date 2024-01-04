---
aliases:
- /2018-11-12-ballot-sc-12-sunset-of-underscores-in-dnsnames/
author: Wayne Thayer
date: 2018-11-12 18:40:21
tags:
- Server Certificates
title: 'Ballot SC12: Sunset of Underscores in dNSNames'
type: post
---

The voting period for Ballot SC12 has ended and **the Ballot has Passed**. Here are the results:

**Voting by Certificate Issuers – 23 votes total including abstentions**

- **20 Yes votes:** Actalis, Amazon, Buypass, Camerfirma, Certum (Asseco), Sectigo (former Comodo CA), D-TRUST, DigiCert, Digidentity, DocuSign France, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, QuoVadis, SHECA, SSL.com, TWCA, Trustwave
- **2 No votes:** Chunghwa Telecom, Entrust Datacard
- **1 Abstain:** TrustCor

91% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 6 votes total including abstentions**

- **4 Yes votes:** Apple, Comodo Security Solutions, Cisco, Mozilla
- **2 No votes:** Google, Microsoft
- **0 Abstain:**

67% of voting Certificate Consumers voted in favor

Relevant Bylaw references

Bylaw 2.3(f) requires:

- a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
- at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11 votes** – quorum was met.

______________________________________________________________________

**Purpose of Ballot**

Ballot 202 included a provision creating a permanent exception permitting the underscore character to be used in SAN fields of type dNSName. Since that ballot failed in 2017, the practice has continued despite being non-compliant with RFC 5280. This ballot creates a brief sunset period intended to allow Subscribers who are relying on FQDNs containing underscores to transition away from them, either by changing the name or deploying a wildcard certificate.

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Dave Blunt of Amazon and Tim Shirley of Trustwave.

**— MOTION BEGINS —**
Add the following language to BR section 7.1.4.2.1 (Subject Alternative Name Extension):

Prior to April 1, 2019, certificates containing underscore characters (“\_”) in domain labels in dNSName entries MAY be issued as follows:

- dNSName entries MAY include underscore characters such that replacing all underscore characters with hyphen characters (“-“) would result in a valid domain label, and;
- Underscore characters MUST NOT be placed in the left most domain label, and;
- Such certificates MUST NOT be valid for longer than 30 days.

All certificates containing an underscore character in any dNSName entry and having a validity period of more than 30 days MUST be revoked prior to January 15, 2019.

After April 30, 2019, underscore characters (“\_”) MUST NOT be present in dNSName entries.
**— MOTION ENDS —**

This ballot proposes a Final Maintenance Guideline. A comparison of the changes can be found at: [https://github.com/wthayer/documents/compare/master…wthayer:Underscores](https://github.com/wthayer/documents/commit/9926d75d0b9a1969034a25864741eae4421a51e5)

The procedure for approval of this ballot is as follows:

Discussion (7-21 days)
Start Time: 2018-10-26, 19:00 UTC
End Time: 2018-11-02, 22:00 UTC

Vote for approval (7 days)
Start Time: 2018-11-02, 22:00 UTC
End Time: 2018-11-09, 22:00 UTC