---
aliases:
- /2022/11/11/ballot-sc58-require-distributionpoint-in-sharded-crls/
author: Iñigo Barreira
date: 2022-11-11 17:03:04
tags:
- Ballot
- Server Certificates
title: Ballot SC58 – Require distributionPoint in sharded CRLs
type: post
---

## Voting Results

## Certificate Issuers

19 votes total, with no abstentions:

- **19 Issuers voting YES:** TrustCor, Disig, Entrust, JPRS, Kamu SM, SECOM, Chunghwa Telecom, Fastly, SecureTrust, GDCA, HARICA, Let’s Encrypt, Sectigo, SSL.com, eMudhra, Certinomis, Izenpe, Digicert, OISTE
- **0 Issuers voting NO**
- **0 Issuers ABSTAIN**

## Certificate Consumers

3 votes total, with no abstentions:

- **3 Consumers voting YES:** Apple, Google, Mozilla
- **0 Consumers voting NO**
- **0 Consumers ABSTAIN**

## Bylaws Requirements

1. Bylaw 2.3(f) requires:
   - A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose. This requirement was **MET** for Certificate Issuers and**MET** for Certificate Consumers.
   - At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.
1. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot. This requirement was **MET**.

## Ballot Contents

### Purpose of Ballot

Recently, several conversations around the necessity of the distributionPoint field (and its containing Issuing Distribution Point extension) in sharded CRLs have come to the conclusion that, although the distributionPoint field serves an important purpose in defending against substitution attacks, RFC 5280’s language does not actually require its presence.

This ballot augments the Baseline Requirements’ CRL Profile to ensure that all sharded CRLs contain the distributionPoint field.

The following motion has been proposed by Aaron Gable of ISRG / Let’s Encrypt, and endorsed by Clint Wilson of Apple, Corey Bonnell of DigiCert, and Dmitris Zacharopoulos of HARICA.

### Motion Begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.8.4.

MODIFY the Baseline Requirements as specified in the following Redline:

[Redline](https://github.com/cabforum/servercert/compare/bbca71465ed8a8a76383086039f52c750009286a..348756d64e863c19bcab404671abeeec985d6041)

### Motion Ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

### Discussion (7+ days)

Start time: 2022-10-22 00:00:00 UTC

End time: Not before 2022-10-29 00:00:00 UTC

### Vote for approval (7 days)

Start time: 2022-10-31 16:00:00 UTC

End time: 2022-11-07 16:00:00 UTC

### Ballot Status

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.