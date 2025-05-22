---
title: 'Ballot SMC012: Introduce ACME for S/MIME'
author: Stephen Davidsoon
date: 2025-05-19
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-012
---
## Ballot SMC012: Introduce ACME for S/MIME

### Summary: 

This ballot introduces a new method for validation of mailbox control, using ACME for S/MIME as defined in RFC 8823: Extensions to Automatic Certificate Management Environment for End-User S/MIME Certificates.
Although similar to the existing method (3.2.2.2) “Validating control over mailbox via email”, ACME for S/MIME has been defined in a new method in order to better describe how a CA’s ACME server may respond to a POST request by sending the Random Value token components via email and SMTP.

The S/MIME Certificate Working Group encourages the proposal of new methods to facilitate the validation of mailbox authorization or control.

The ballot also includes several minor typographic corrections, including a clarification in section 7.1.4.2.1 regarding the use of directoryName in the SAN extension.

This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Stefan Selbitschka (rundQuadrat) and Guillaume Amringer (Carillon).

— Motion Begins —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.9.
MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...4a663e37e70083752c6fa9ae0d4820231cf54217

— Motion Ends —

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

* Start time: May 19, 2025 at 17:00:00 UTC

* End time: May 26, 2025 at 17:00:00 UTC


