---
aliases:
- /2019/03/16/ballot-sc16-other-subject-attributes/
author: Wayne Thayer
date: 2019-03-16 00:07:47
tags:
- Ballot
- Server Certificates
title: 'Ballot SC16: Other Subject Attributes'
type: post
---

The voting period for Ballot SC16 has ended and the **Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 22 votes total including abstentions**

- **20 Yes votes:** Buypass, Certigna (DHIMYOTIS), Certum (Asseco), CFCA, Chunghwa Telecom, Comsign, D-TRUST, DarkMatter, DigiCert, eMudhra, Entrust Datacard, E-TUGRA, GDCA, GlobalSign, HARICA, Kamu SM, SSL.com, TWCA, TrustCor, SecureTrust (former Trustwave)

- **0 No vote:**

- **2 Abstain:** Actalis, Visa

100% of voting Certificate Issuers voted in favor.
**Voting by Certificate Consumers – 4 votes total including abstentions**

- **4 Yes votes:** Apple, Google, Microsoft, Mozilla

- **0 No votes:**

- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
31 member companies attended the Cupertino F2F meeting, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **12**, so quorum was **13 votes** – quorum was met.

## Purpose of Ballot

This ballot intends to clarify requirements placed on Subject attributes in Subscriber certificates in BR section 7.1.4.2 and EVGL section 9.2.8. Specifically, Subject fields must contain more than just metadata if they are present in a certificate. The OU field is permitted in EV certificates, but no unspecified Subject attributes are permitted.

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Doug Beattie of GlobalSign and Tim Hollebeek of DigiCert.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.3:

Capitalize the heading of Baseline Requirements section 7.1.4 Name Forms

Add a second paragraph to Baseline Requirements section 7.1.4.2 as follows:

Subject attributes MUST NOT contain only metadata such as ‘.’, ‘-‘, and ‘ ‘ (i.e. space) characters, and/or any other indication that the value is absent, incomplete, or not applicable.

Replace Baseline Requirements section 7.1.4.2.2(j.), in its entirety, with the following text:

j. Other Subject Attributes

Other attributes MAY be present within the subject field. If present, other attributes MUST contain information that has been verified by the CA.

This ballot modifies the “Guidelines For The Issuance And Management Of Extended Validation Certificates” as follows, based on Version 1.6.8:

Replace EV Guidelines section 9.2.8, in its entirety, with the following text:

9.2.8. Subject Organizational Unit Name Field

Certificate field: subject:organizationalUnitName (OID 2.5.4.11)

Required/Optional: Optional

Contents: The CA SHALL implement a process that prevents an OU attribute from including a name, DBA, tradename, trademark, address, location, or other text that refers to a specific natural person or Legal Entity unless the CA has verified this information in accordance with Section 11. This field MUST NOT contain only metadata such as ‘.’, ‘-‘, and ‘ ‘ (i.e. space) characters, and/or any other indication that the value is absent, incomplete, or not applicable.

Add EV Guidelines section 9.2.9, with the following text:

9.2.9. Other Subject Attributes

CAs SHALL NOT include any Subject attributes except as specified in Section 9.2.

## Motion ends

This ballot proposes a set of Final Maintenance Guidelines.

\*\\*\* WARNING \*\**: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at: [https://github.com/wthayer/documents/compare/master…wthayer:EV-Subject-Information](https://github.com/wthayer/documents/compare/master...wthayer:EV-Subject-Information)

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: March 1, 2019 17:00 UTC

End Time: After March 8, 2019 17:00 UTC

Vote for approval (7 days)

Start Time: March 8, 2019 19:00 UTC

End Time: March 15, 2019 19:00 UTC

|
| |

|
| |