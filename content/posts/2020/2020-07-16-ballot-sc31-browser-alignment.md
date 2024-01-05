---
aliases:
- /2020-07-16-ballot-sc31-browser-alignment/
author: Wayne Thayer
date: 2020-07-16 18:23:06
tags:
- Ballot
- Server Certificates
title: 'Ballot SC31: Browser Alignment'
type: post
---

The voting period for Ballot SC31v3 has ended and **the Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 20 votes total including abstentions**

– 15 **Yes votes**: Amazon, Buypass, Certum (Asseco), Sectigo (former Comodo CA), DigiCert, eMudhra, GDCA, GlobalSign, GoDaddy, HARICA, Kamu SM, SSL.com, SwissSign, TWCA, TrustCor
– **4 No votes**: Comsign, Entrust Datacard, Firmaprofesional, OATI
– **1 Abstain**: D-TRUST

79% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 6 votes total including abstentions**

– 5 **Yes vote**s: Apple, Google, Microsoft, Mozilla, Opera
– 0 **No votes**:
– **1 Abstain**: Cisco

100% of voting Certificate Consumers voted in favor.

**Relevant Bylaw references**

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11** votes – quorum was met.”

**Purpose of Ballot:**

As a regular part of Root Program maintenance, and reflecting the independent nature of each Root Programs’ needs and requirements, Root Programs have introduced a number of requirements above and beyond those captured in the Baseline Requirements. For Root Programs, this approach results in a lack of certainty, as the requirements are not independently audited and assessed, unless otherwise provided for. For CAs, this introduces confusion when applying to have the same CA certificate trusted by multiple Root Programs, as the effective requirements that the CA and certificates need to comply with are the union of the most-restrictive policies.

The following ballot attempts to resolve this uncertainty for Root Programs, and ambiguity for CAs, by incorporating Root Program-specific requirements that are either effective or will, in the future, be effective.
This was originally drafted in  , and as a pull request is available at

The full description, and motivation, of each change, along with the effective dates, are available at the above pull request.

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Clint Wilson of Apple and Mike Reilly of Microsoft.
The changes between SC31v1 and SC31v2 can be viewed at [https://github.com/cabforum/documents/compare/90a7dfe95d32ae8c76a4fa55c7b038d4928872c6…1bb3be897213b21d15b837befa885b0ba34bfd3d](https://github.com/cabforum/documents/compare/90a7dfe95d32ae8c76a4fa55c7b038d4928872c6...1bb3be897213b21d15b837befa885b0ba34bfd3d) . This corrects “Not applicable” to “No stipulation”, updates the formatting/markup for Pandoc and provides additional example text to the effective date table for the Chair or Vice-Chair.
The changes between SC31v2 and SC31v3 can be viewed at[https://github.com/cabforum/documents/compare/1bb3be897213b21d15b837befa885b0ba34bfd3d…a9a7814da2328c3d3d54d8355eff6fe398354af8](https://github.com/cabforum/documents/compare/1bb3be897213b21d15b837befa885b0ba34bfd3d...a9a7814da2328c3d3d54d8355eff6fe398354af8) . This addresses an issue with certificate suspension for pre-existing, non-TLS certificates from TLS-capable subordinate CAs, and attempts to clarify the expectations around the use of CRL reason codes by requiring they be documented in the CA’s CP/CPS. This also shuffles a requirement already present in the BRs and the RFCs, regarding Delegated Responders being conflated with TLS-capable CAs, into the “Cleanup and Clarification” ballot.

**— MOTION BEGINS —
**
This ballot modifies “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”) as follows, based on Version 1.7.0

MODIFY the Baseline Requirements as defined in the following redline:
[https://github.com/cabforum/documents/compare/d5067bbbfb46906c65e476ef3d55dd3b2c505a09…a9a7814da2328c3d3d54d8355eff6fe398354af8](https://github.com/cabforum/documents/compare/d5067bbbfb46906c65e476ef3d55dd3b2c505a09...a9a7814da2328c3d3d54d8355eff6fe398354af8)

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EV Guidelines”) as follows, based on version 1.7.2:

MODIFY the EV Guidelines as defined in the following redline:
[https://github.com/cabforum/documents/compare/d5067bbbfb46906c65e476ef3d55dd3b2c505a09…a9a7814da2328c3d3d54d8355eff6fe398354af8](https://github.com/cabforum/documents/compare/d5067bbbfb46906c65e476ef3d55dd3b2c505a09...a9a7814da2328c3d3d54d8355eff6fe398354af8)

The Chair or Vice-Chair is permitted to update the Relevant Dates of the Baseline Requirements and the EV Guidelines to reflect these changes.

**— MOTION ENDS —
**
This ballot proposes two Final Maintenance Guidelines.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)
Start Time: 2-July 2020 00:00 UTC
End Time: after 9-July 2020 00:00 UTC

Vote for approval (7 days)
Start Time: 9-July 2020 17:00 UTC
End Time: 16-July 2020 17:00 UTC