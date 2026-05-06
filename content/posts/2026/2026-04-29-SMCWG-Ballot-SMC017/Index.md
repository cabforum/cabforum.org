---
title: 'Ballot SMC017: Increase Minimum RSA CA Key Size'
author: Stephen Davidson
date: 2026-04-29
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-017
Aliases: 
- SMC017
---

# Ballot SMC017: Increase Minimum RSA CA Key Size

### Summary: 

This ballot increases the minimum RSA key size for Root and Subordinate CA certificates in the S/MIME BRs from 2048 to 4096 bits for keys created on or after September 15, 2026, while retaining the 2048-bit minimum for Subscriber certificates. 

The ballot further requires that by September 15, 2027, CAs SHALL NOT issue certificates from any Sub-CA whose RSA key modulus is less than 4096 bits, effectively sunsetting issuance from legacy 2048-bit Sub-CAs.

This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Ben Wilson (Mozilla) and Roman Fischer (SwissSign).

**— Motion Begins —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.13.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/21bda9e4a5f04f373dbd359b4e2213a3f4910c76...a6d582ab7da98ac1ca7fd92f35f321aa9f70df37

**— Motion Ends —**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

* Start time: April 29, 2026 at 18:30:00 UTC

* End time: May 6, 2026 at 18:30:00 UTC

Voting for Approval 

* Start time: May 6, 2026 at 21:30:00 UTC

* End time: May 13, 2026 at 21:30:00 UTC

