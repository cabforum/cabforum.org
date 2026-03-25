---
title: 'Ballot SMC016: Equivalence with Ballots SC096 and SC097'
author: Stephen Davidsoon
date: 2026-03-17
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-016
Aliases: 
- SMC016
---

# Ballot SMC016: Equivalence with Ballots SC096 and SC097

### Summary: 
 
This ballot maintains consistency between the S/MIME Baseline Requirements and the TLS Baseline Requirements with changes introduced by Ballots SC096 and SC097. Specifically, this ballot:

* Creates a carve-out of the logging requirements for DNSSEC specifically, stating these are not in scope. For audit purposes, change management logging is able to confirm if the appropriate controls are in effect or not.
* Sunsets all remaining use of SHA-1 signatures in Certificates and CRLs. It is noted that most uses of SHA-1 signatures are already deprecated by SC097. With this ballot, all unexpired Subordinate CA Certificates issuing S/MIME containing the SHA-1 signature algorithm must be revoked. This proposal does not prohibit the use of SHA-1 to generate issuerKeyHash or issuerNameHash values as currently required by RFC 5019.
* Includes minor formatting corrections.

 This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Martijn Katerbarg (Sectigo) and Ben Wilson (Mozilla).

**— Motion Begins —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.12.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...32915d18f165e1702aa759d01cdceb231d262ec0

**— Motion Ends —**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

### Discussion (at least 7 days)

* Start time: March 17, 2026 at 23:00 UTC

* End time: March 25, 2026 at 18:00 UTC

### Voting for Approval

* Start time: March 25, 2026 at 18:00 UTC

* End time: April 1, 2026 at 18:00 UTC