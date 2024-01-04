---
aliases:
- /2022-03-01-ballot-sc51-reduce-and-clarify-audit-log-and-records-archival-retention-requirements/
author: Jos Purvis
date: 2022-03-01 19:53:00
tags:
- Network Security
- Server Certificates
title: 'Ballot SC51: Reduce and Clarify Audit Log and Records Archival Retention Requirements'
type: post
---

## Voting Results {.wp-block-heading}

### Certificate Issuers {.wp-block-heading}

21 votes total, with no abstentions:

- 21 Yes votes: Amazon, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, DigiCert, Disig, eMudhra, Entrust, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, JPRS, Let’s Encrypt / ISRG, SSL.com, TWCA, TrustCor, SecureTrust, Visa
- 0 No Votes
- 0 Abstentions

### Certificate Consumers {.wp-block-heading}

5 votes total, with no abstentions:

- 5 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla
- 0 No votes
- 0 Abstentions

### Bylaw Requirements {.wp-block-heading}

1. Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
  _This requirement was MET for Certificate Issuers and MET for Certificate Consumers._
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
  _This requirement was MET._

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot.
   _This requirement was MET._

## Ballot Contents {.wp-block-heading}

### Purpose of Ballot {.wp-block-heading}

The purpose of this ballot is to consolidate and clarify aspects of audit log and records archival retention expectations and time-periods within 5.5.2.
Foremost, this ballot reduces retention periods for records archival to 2 years.
Further, currently audit log events as outlined in section 5.4.1, and then referenced in 5.4.3 lead to confusion around the log retention that is defined and exclusive to each section, and how that retention feeds into records archival requirements. To further clarify the objectives of that interaction, an explicit requirement has been introduced in 5.5.1 stating that CAs must archive lifecycle event records.

As minor adjustments to related requirements, this ballot also clarifies what is expected by the term “OCSP Entries” as a logged lifecycle event; as OCSP Entry is an undefined term, this was replaced with OCSP Response such that it should be clear that a CA will be logging the event of signing an OCSP Response (including the elements stipulated in 5.4.1). Similarly, some certificate lifecycle events expected to be retained are currently separated into 5.5.2; these have been incorporated into 5.4.1 instead. This ballot also explicitly calls out the need for delegated third parties to abide by the established retention periods for audit logging and records archival procedures.This ballot also formalizes incorporation of terms defined in the NCSSRs as also applying to the BRs.

### Motion {.wp-block-heading}

The following motion has been proposed by Clint Wilson of Apple and endorsed by Trevoli Ponds-White of Amazon and Dustin Hollenback of Microsoft.

**—–Motion Begins—–**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as defined in the following redline, based on Version 1.8.1:
[https://github.com/cabforum/servercert/compare/65e80e07855ecc1d2264c040ecc7d398f997d2c5…2281a6c78692c3444db9a162df4ff217014b9f1f][1]

**—–Motion Ends—–**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: February 11 2022 21:00 UTC
End Time: February 18 2022 21:00 UTC

Vote for approval (7 days)

Start Time: February 18 2022 22:00 UTC
End Time: February 25 2022 22:00 UTC

## Ballot Status {.wp-block-heading}

No IP Rights issues were raised during the review period, which concluded 15 April 2022. This ballot has been incorporated into version 1.8.3 of the [Baseline Requirements](/baseline-requirements-documents/).

[1]: https://github.com/cabforum/servercert/compare/65e80e07855ecc1d2264c040ecc7d398f997d2c5...2281a6c78692c3444db9a162df4ff217014b9f1f