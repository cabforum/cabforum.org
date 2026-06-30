---
title: 'Ballot SMC017v2: Increase Minimum RSA CA Key Size'
author: Stephen Davidson
date: 2026-06-16
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-017v2
Aliases: 
- SMC017v2
---

# [Voting Results] Ballot SMC017v2: Increase Minimum RSA CA Key Size

The voting period for Ballot SMC017v2: Increase Minimum RSA CA Key Size has completed. The ballot has: PASSED.

### Voting Results

**Certificate Issuers**

17 votes in total:

 * 17 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), DigiCert, D-TRUST, eMudhra, GlobalSign, HARICA, IdenTrust, MSC Trustgate Sdn Bhd, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

**Certificate Consumers**

4 votes in total:

 * 4 voting YES: Apple, Microsoft, Mozilla, rundQuadrat

 * 0 voting NO:

 * 0 ABSTAIN:

**Bylaws Requirements**

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was MET.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was MET.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was MET.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 10 for this ballot. This requirement was MET.

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues. This will be notified in a separate email.


# Ballot SMC017v2: Increase Minimum RSA CA Key Size

### Summary: 

This ballot increases the minimum RSA key size for Root and Subordinate CA certificates in the S/MIME BRs from 2048 to 4096 bits for keys created after September 15, 2026, while retaining the 2048-bit minimum for Subscriber certificates. The ballot further requires that by September 15, 2027, CAs SHALL NOT issue Subscriber certificates from any Sub-CA whose RSA key modulus is less than 3072 bits, effectively sunsetting issuance from legacy 2048-bit Sub-CAs. The ballot also includes minor typographic corrections.

This ballot is proposed by Martijn Katerbarg (Sectigo) and endorsed by Ben Wilson (Mozilla) and Stephen Davidson (DigiCert)

**— Motion Begins —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.14.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/3948f7f538133f6e9d731660f0fc36bfc8d98c13...ff477d9adb959f6b9c4318784267ed82232fedac


**— Motion Ends —**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

* Start time: June 16, 2026 at 18:00:00 UTC

* End time: June 23, 2026 at 18:00:00 UTC

