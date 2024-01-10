---
aliases:
- /2022/03/24/ballot-sc54-onion-cleanup/
author: Jos Purvis
date: 2022-03-24 19:23:01
tags:
- Ballot
- Server Certificates
title: 'Ballot SC54: Onion Cleanup'
type: post
---

## Voting Results

### Certificate Issuers

18 votes total, with no abstentions:

- 18 Yes votes: Amazon, Buypass, DigiCert, eMudhra, Entrust, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, JPRS, NAVER, OISTE, Sectigo, SwissSign, TrustCor, SecureTrust, Visa
- 0 No Votes
- 0 Abstentions

### Certificate Consumers

6 votes total, with no abstentions:

- 6 Yes votes: 360, Apple, Cisco, Google, Microsoft, Mozilla
- 0 No votes
- 0 Abstentions

### Bylaw Requirements

1. Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
  _This requirement was MET for Certificate Issuers and MET for Certificate Consumers._
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
  _This requirement was MET._

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot.
   _This requirement was MET._

## Ballot Contents

### PURPOSE OF BALLOT

Over the years the Server Certificate WG captured several minor cleanup issues related to Onion Certificates.

Here is a summary of the changes:

- Created a Defined Term for Onion Domain Name. We discovered a lot of repeated long text describing what an onion certificate is, and thought it would be best adding as a definition
- Removed EVG Appendix F contents since v2 onion certificates can’t be used anymore; it is kept as a placeholder
- Removed the obligation for the CA to ensure that the applicantSigningNonce includes specific entropy.
- Tweaked 3.2.2.8 a bit in the hopes of making the initial sentence shorter and easier to read.

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Ben Wilson of Mozilla and Corey Bonnell of DigiCert.

### MOTION BEGINS

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.8.1:
MODIFY the Baseline Requirements as specified in the following redline:

- [https://github.com/cabforum/servercert/compare/65e80e07855ecc1d2264c040ecc7d398f997d2c5…][1][13220d81c0001f79ffa239a00018aa5c556e9afd][1]

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EV Guidelines”), based on Version 1.7.8: MODIFY the EV Guidelines as defined in the following redline:

- [https://github.com/cabforum/servercert/compare/cda0f92ee70121fd5d692685b97ebb6669c74fb7…][2][13220d81c0001f79ffa239a00018aa5c556e9afd][2]

### MOTION ENDS

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

### Discussion (7+ days)

Start Time: 2022-03-08 19:00:00 UTC
End Time: Not before 2022-03-15 19:00:00 UTC

### Vote for approval (7 days)

Start Time: 2022-03-16 07:00:00 UTC
End Time: 2022-03-23 07:00:00 UTC

## Ballot Status

No IP Rights issues were raised during the review period. This ballot has been adopted into version 1.8.4 of the [Baseline Requirements for TLS Certificates](/working-groups/server/baseline-requirements/documents/) and version 1.7.9 of the [EV Guidelines for TLS Certificates](/working-groups/server/extended-validation/documents/).

[1]: https://github.com/cabforum/servercert/compare/65e80e07855ecc1d2264c040ecc7d398f997d2c5...13220d81c0001f79ffa239a00018aa5c556e9afd
[2]: https://github.com/cabforum/servercert/compare/cda0f92ee70121fd5d692685b97ebb6669c74fb7...13220d81c0001f79ffa239a00018aa5c556e9afd