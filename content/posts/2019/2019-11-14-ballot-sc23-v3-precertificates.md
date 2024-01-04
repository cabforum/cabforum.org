---
aliases:
- /2019-11-14-ballot-sc23-v3-precertificates/
author: Wayne Thayer
date: 2019-11-14 16:40:22
tags:
- Server Certificates
title: Ballot SC23 V3 – Precertificates
type: post
---

## Ballot Results {.wp-block-heading}

The voting period for Ballot SC23 has ended and the **Ballot has Passed**. Votes were received from Actalis, Trustcor, and Izenpe after the voting period had ended and were not counted. Here are the results:
**Voting by Certificate Issuers – 15 votes total including abstentions**

- **15 Yes votes:** Buypass, CFCA, Chunghwa Telecom, Sectigo (former Comodo CA), D-TRUST, DigiCert, Disig, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, Let’s Encrypt, SHECA, SecureTrust (former Trustwave)

- **0 No votes:**

- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.**Voting by Certificate Consumers – 4 votes total including abstentions**

- **4 Yes votes:** Cisco, Google, Microsoft, Mozilla
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(6) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(7), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
20 member companies attended the last teleconference, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **10**, so quorum was **11 votes** – quorum was met.

## Ballot SC23 V3 – Precertificates {.wp-block-heading}

**Purpose of Ballot:**

This ballot intends to clarify requirements placed on Precertificates in BR section 4.9.10.

During a lengthy discussion on the mozilla.dev.security.policy forum \[1\], it was discovered that BR section 4.9.10 combined with BR section 7.1.2.5 prevents a CA from responding “good” for a precertificate. This is a problem because there is no guarantee that a certificate corresponding to a Precertificate has not been issued, resulting in root store policies such as \[2\] that require CAs to treat the existence of a Precertificate as a presumption that a corresponding certificate has been issued and thus that a valid OCSP response is required.

This ballot intends to resolve the problem by clarifying in the BRs that a CA may provide revocation information for the serial number contained in a Precertificate.
\[1\]

\[2\]

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Jeremy Rowley of DigiCert and Rob Stradling of Sectigo.

**— MOTION BEGINS —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.6, or based on Version 1.6.6 as modified by ballot SC24:

**ADD a reference to section 1.6.3 of the Baseline Requirements as defined in the following redline:**

https://github.com/cabforum/documents/compare/master@%7B10-23-19%7D…sleevi:2019-10-OCSP

**REPLACE section 4.9.10 of the Baseline Requirements in its entirety as defined in the following redline:**

https://github.com/cabforum/documents/compare/master@%7B10-23-19%7D…sleevi:2019-10-OCSP

**— MOTION ENDS —**

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 3-October 2019 18:00 UTC

End Time: 07-November 2019 03:00 UTC

Vote for approval (7 days)

Start Time: 07-November 2019 03:00 UTC

End Time: 14-November 2019 03:00 UTC