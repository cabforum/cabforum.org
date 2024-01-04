---
aliases:
- /2022-01-26-ballot-sc53-sunset-for-sha-1-ocsp-signing/
author: Jos Purvis
date: 2022-01-26 16:07:00
tags:
- Server Certificates
title: 'Ballot SC53: Sunset for SHA-1 OCSP Signing'
type: post
---

## Voting Results {#voting-results.wp-block-heading}

The voting on ballot SC53 has completed, and the ballot has **passed**.

### Certificate Issuers {#certificate-issuers.wp-block-heading}

21 votes total, with no abstentions:

- 21 Yes votes: Buypass, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, JPRS, Let’s Encrypt / ISRG, OISTE, Sectigo, TrustCor, SecureTrust
- 0 No Votes
- 0 Abstentions

### Certificate Consumers {#certificate-consumers.wp-block-heading}

5 votes total, with no abstentions:

- 5 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla
- 0 No votes
- 0 Abstentions

### Bylaw Requirements {#bylaw-requirements.wp-block-heading}

1. Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
  _This requirement was MET for Certificate Issuers and MET for Certificate Consumers._
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
  _This requirement was MET._

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot.
   _This requirement was MET._

## Ballot Contents {#ballot-contents.wp-block-heading}

### Purpose of Ballot {#purpose-of-ballot.wp-block-heading}

Weaknesses regarding the use of the SHA-1 hash algorithm for signatures have been known for several years. While there is currently a prohibition on the use of CA Private Keys to directly sign OCSP responses using SHA-1, Private Keys corresponding to OCSP delegated responders may still be used to sign OCSP responses using SHA-1. This ballot establishes a sunset date to prohibit delegated OCSP signing with the SHA-1 hash algorithm.

The following motion has been proposed by Corey Bonnell of DigiCert and endorsed by Ben Wilson of Mozilla and Bruce Morton of Entrust.

### Motion Begins {#motion-begins.wp-block-heading}

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.8.0:
MODIFY the Baseline Requirements as specified in the following Redline:

[https://github.com/cabforum/servercert/compare/cda0f92ee70121fd5d692685b97ebb6669c74fb7…637c6959c35bbd93cc451f7b22dfb48ac4255b9f][1]

### Motion Ends {#motion-ends.wp-block-heading}

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

#### Discussion (7+ days) {#discussion-7-days.wp-block-heading}

Start time: 2022-01-10 15:00:00 UTC

End time: 2022-01-17 15:00:00 UTC

#### Vote for approval (7 days) {#vote-for-approval-7-days.wp-block-heading}

Start time: 2022-01-17 15:00:00 UTC

End time: 2022-01-24 15:00:00 UTC

## Ballot Status {#ballot-status.wp-block-heading}

This ballot has cleared the IP Rights Review period with no IP Rights issues raised by the community. It has therefore been incorporated in to the [Baseline Requirements][2] as version [1.8.2][3].

[1]: https://github.com/cabforum/servercert/compare/cda0f92ee70121fd5d692685b97ebb6669c74fb7...637c6959c35bbd93cc451f7b22dfb48ac4255b9f
[2]: /baseline-requirements-documents/
[3]: /uploads/CA-Browser-Forum-BR-1.8.2.pdf