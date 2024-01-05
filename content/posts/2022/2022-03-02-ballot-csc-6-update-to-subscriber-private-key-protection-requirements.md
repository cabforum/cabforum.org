---
aliases:
- /2022-03-02-ballot-csc-6-update-to-subscriber-private-key-protection-requirements/
author: Corey Bonnell
date: 2022-03-02 13:00:00
tags:
- Code Signing
title: Ballot CSC-6 – Update to Subscriber Private Key Protection Requirements
type: post
---

## Results of Voting 

(Mailing list post is available [here][1].)

| | | | |
| --- | --- | --- | --- |
| |
Yes |
No |
Abstain | |
Certificate Issuers
| |
DigiCertEntrustGlobalSignHARICASecureTrust
| | |
Certificate Consumers
| |
Microsoft
| |

The ballot has FAILED.

## Purpose of the ballot 

Update the subscriber private key protection requirements in the Baseline Requirement for the Issuance and Management of Publicly-Trusted Code Signing Certificates v2.7.

The following motion has been proposed by Ian McMillan of Microsoft, and endorsed by Tim Hollebeek of DigiCert and Bruce Morton of Entrust.

## Motion 

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 2.7 according to the attached redline which includes:

1. Update section 16.3 “Subscriber Private Key Protection” to “Subscriber Private Key Protection and Verification”
1. Update section 16.3 “Subscriber Private Key Protection” to include sub-sections “16.3.1 Subscriber Private Key Protection” and “16.3.2 Subscriber Private Key Verification”
1. Update section 16.3 under new sub-section 16.3.1 to remove allowance of TPM key generation and software protected private key protection, and remove private key protection requirement differences between EV and non-EV Code Signing Certificates
1. Update section 16.3 under new sub-section 16.3.1 to include the allowance of key generation and protection using a cloud-based key protection solution providing key generation and protection in a hardware crypto module that conforms to at least FIPS 140-2 Level 2 or Common Criteria EAL 4+
1. Update section 16.3 under new sub-section 16.3.2 to include verification for Code Signing Certificates’ private key generation and storage in a crypto module that meets or exceeds the requirements of FIPS 140-2 level 2 or Common Criteria EAL 4+ by the CAs. Include additional acceptable methods for verification including cloud-based key generation and protection solutions and a stipulation for CAs to satisfy this verification requirement with additional means specified in their CPS. Any additional means specified by a CA in their CPS, must be proposed to the CA/Browser Forum for inclusion into the acceptable methods for section 16.3.2 within 6 months of inclusion in their CPS.

[1]: https://lists.cabforum.org/pipermail/cscwg-public/2022-March/000722.html