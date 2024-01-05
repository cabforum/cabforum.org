---
aliases:
- /2020-02-20-ballot-sc27v3-version-3-onion-certificates/
author: Wayne Thayer
date: 2020-02-20 09:29:06
tags:
- Ballot
- Server Certificates
title: 'Ballot SC27v3: Version 3 Onion Certificates'
type: post
---

## Ballot Results 

The voting period for Ballot SC27v3 has ended and **the Ballot has Passed**. Here are the results:

**Voting by Certificate Issuers – 15 votes total including abstentions**

– **9 Yes votes**: Buypass, Camerfirma, Certum (Asseco), GDCA, HARICA, Let’s Encrypt, SHECA, SSL.com, TrustCor
– **0 No votes**:
– **6 Abstain**: Certigna (DHIMYOTIS), Entrust Datacard, Firmaprofesional, GlobalSign, SwissSign, TurkTrust

100% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 4 votes total including abstentions**

– **4 Yes vote**s: Apple, Google, Microsoft, Mozilla
– 0 **No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

**Relevant Bylaw references**

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11** votes – quorum was met.”

## Ballot SC27v3: Version 3 Onion Certificates 

**Purpose of Ballot:**

This ballot will permit CAs to issue DV and OV certificates containing Tor onion addresses using the newer version 3 naming format.
In ballot 144, later clarified by ballots 198/201, the Forum created rules for issuing EV certificates containing onion addresses. A primary reason for requiring EV level validation was that onion addresses were cryptographically weak, relying on RSA-1024 and SHA-1. More recently a newer “version 3” addressing scheme has removed these weaknesses. For much the same reason that EV certificates are not always a viable option for website operators (e.g. sites operated by individuals), many onion sites would benefit from the availability of DV and OV certificates for version 3 onion addresses.
The Tor Service Descriptor Hash extension required in the EV Guidelines to contain the full hash of the keys related to the .onion address is no longer needed as this hash is part of the version 3 address.

Older version 2 onion addresses are still in use, so this ballot does not remove the existing EV Guidelines requirements for onion names.
Reference to discussion of EV onion certificates:

Reference to reasons we required EV in the past:

Reference to prior discussion of this topic:

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Roland Shoemaker of Let’s Encrypt and Dimitris Zacharopoulos of HARICA.

**— MOTION BEGINS —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.7, or based on Version 1.6.7 as modified by ballot SC25:

ADD a paragraph to section 3.2.2.4 of the Baseline Requirements as defined in the following redline:
ADD Appendix C to the Baseline Requirements as defined in the following redline:

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” as follows based on version 1.7.1:
MODIFY Appendix F as defined in the following redline:
**— MOTION ENDS —**

This ballot proposes two Final Maintenance Guidelines.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 25-January 2020 00:00 UTC

End Time: 12-February 2020 20:00 UTC

Vote for approval (7 days)
Start Time: 12-February 2020 20:00 UTC

End Time: 19-February 2020 20:00 UTC