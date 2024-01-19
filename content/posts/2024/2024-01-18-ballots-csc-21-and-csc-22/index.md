---
aliases:
- /2024/01/18/ballots-csc-21-and-csc-22/
author: Corey Bonnell
date: 2024-01-17 00:00:00
tags:
- Code Signing
- Ballot
title: Ballots CSC-21 and CSC-22
type: post
---

## NOTICE OF REVIEW PERIOD

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice are available [here](Baseline-Requirements-for-the-Issuance-and-Management-of-Code-Signing.v3.6_redline.pdf) for CSC-21 and [here](Baseline-Requirements-for-the-Issuance-and-Management-of-Code-Signing.v3.7_redline.pdf) for CSC-22, in red-line draft format.

### Summary of Review

**Ballot(s) for Review**:  CSCWG 21 (version 3.6) and CSCWG 22 (version 3.7)

- Start of Review Period: 17 January 2024 at 09:00 Eastern Time
- End of Review Period: 18 February 2024 at 09:00 Eastern Time

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dean Coclin - <dean.coclin@digicert.com>) and also submit a copy to the CA/B CSCWG public mailing list (email to cscwg-public at cabforum.org before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

## CSC-21

### Results of Voting

|                       | Yes                                                          | No  | Abstain |
| --------------------- | ------------------------------------------------------------ | --- | ------- |
| Certificate Issuers   | DigiCert, eMudhra, Entrust, GlobalSign, HARICA, Viking Cloud |     | Sectigo |
| Certificate Consumers | Microsoft                                                    |     |         |

### Purpose of the Ballot

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 3.4 in order to clarify language regarding Signing Service and signing requests. The main goals of this ballot are to:

1. Clarify the Signing Service definition and the expected deployment model.
1. Remove requirements for signing request.
1. Change text so Signing Service is not categorized as a Delegated Third Party.
1. Not allow Signing Service to transport Private Key to Subscriber.
1. Ensure Network Security Requirements are applicable to Signing Service.
1. State audit requirements for Signing Service.

The following motion has been proposed by Bruce Morton of Entrust and endorsed by Tim Hollebeek of DigiCert and Ian McMillan of Microsoft.

### Motion

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” (“Code Signing Baseline Requirements”) based on version 3.4. MODIFY the Code Signing Baseline Requirements as specified in the following redline: <https://github.com/cabforum/code-signing/compare/e0da5532ab81e35e2e92536c1bc9ea3c36765b26..1a134a77e74fb93ca2581d288e5a82859d6e8f88>

## CSC-22

### Results of Voting

|                       | Yes                                                                   | No  | Abstain |
| --------------------- | --------------------------------------------------------------------- | --- | ------- |
| Certificate Issuers   | DigiCert, eMudhra, Entrust, GlobalSign, HARICA, Sectigo, Viking Cloud |     |         |
| Certificate Consumers | Microsoft                                                             |     |         |

### Purpose of the Ballot

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 3.4 in order to clarify language regarding Signing Service and signing requests. The main goals of this ballot are to:

1. Remove references to High Risk Certificate Request, since the CSBRs do not provide any actions for a high risk application.
1. Remove references to High Risk Region of Concern, since the CSBR appendix has never been populated.
1. Remove rules for a Takeover Attack to require the Subscriber to generate keys in a crypto device, since crypto device key generation is now a baseline requirement for all code signing certificates.
1. Remove option to transfer private key which has been generated in software.
1. Cleanup to remove Subscriber key generation option which expired effective 1 June 2023.
1. Cleanup to remove “any other method” to verify the Subscriber key was generated in a crypto device, since this option expired 1 June 2023.

The following motion has been proposed by Bruce Morton of Entrust and endorsed by Tim Hollebeek of DigiCert and Ian McMillan of Microsoft.

### Motion

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” (“Code Signing Baseline Requirements”) based on version 3.4. MODIFY the Code Signing Baseline Requirements as specified in the following redline: <https://github.com/cabforum/code-signing/compare/e0da5532ab81e35e2e92536c1bc9ea3c36765b26…50871dc08d39102daf6c93fa556a869790643fb6>
