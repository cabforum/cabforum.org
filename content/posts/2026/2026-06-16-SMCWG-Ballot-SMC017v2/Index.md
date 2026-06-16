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

