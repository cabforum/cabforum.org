---
aliases:
- /2021-10-04-ballot-csc-11-update-to-log-data-retention-requirements/
author: Corey Bonnell
date: 2021-10-04 02:00:00
tags:
- Code Signing
title: Ballot CSC-11 – Update to log data retention requirements
type: post
---

## Results of IPR Review {.wp-block-heading}

(Mailing list post is available [here][1].)

The review period has ended and no exclusion notices were filed.

The final documents, with the effective date being 2021-11-03, are available [here][2].

## Results of Voting {.wp-block-heading}

(Mailing list post is available [here][3].)

| | | | |
| --- | --- | --- | --- |
| |
Yes |
No |
Abstain | |
Certificate Issuers |
Certum (Asseco)DigiCerteMudhraEntrustGlobalSignHARICASectigoSecureTrust
| | | |
Certificate Consumers |
Microsoft
| | |

The ballot has PASSED.

## Purpose of the Ballot {.wp-block-heading}

Update the log data and retention of log data requirements in the Baseline Requirement for the Issuance and Management of Publicly-Trusted Code Signing Certificates v2.5. The following motion has been proposed by Ian McMillan of Microsoft, and endorsed by Dimitris Zacharopoulos (HARICA) and Bruce Morton (Entrust).

## Motion {.wp-block-heading}

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 2.5 according to the attached redline which includes:

- Update section 15 “Data Records” removing references to \[SSL/TLS\] Baseline Requirements for this section in totality
- Update section 15 “Data Records” to include sub-section 15.1 “Types of Events Recorded” and describing the requirements for CAs and Third Party Delegates while removing “Signing Services”
- Update section 15 “Data Records” to include sub-section 15.2 “Timestamp Authority Data Records”
- Update section 15.1 to clarify 4(f) for security event logging on Timestamp Authority servers
- Update section 15.1 on 4(d) for security event logging to no longer include “hardware failures”
- Update section 15 “Data Records” to include sub-section 15.3 “Data Retention Period for Audit Logs”
- Update section 15.2 to no longer reference Baseline Requirements section 5.4.3 and defined a specific retention period for CA, subscriber certificate, Timestamp Authority, and security event data records for at least 2 years

[1]: https://lists.cabforum.org/pipermail/cscwg-public/2021-November/000634.html
[2]: /baseline-requirements-code-signing/
[3]: https://lists.cabforum.org/pipermail/cscwg-public/2021-October/000597.html