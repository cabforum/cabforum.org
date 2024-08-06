---
aliases:
- /2024/07/01/ballots-csc-25-and-csc-26/
author: Corey Bonnell
date: 2024-07-01 00:00:00
tags:
- Code Signing
- Ballot
title: Ballots CSC-25 and CSC-26
type: post
---

## RESULTS OF REVIEW PERIOD

### CSC-25

Ballot CSC 25: Import EV Guidelines into the Code Signing Baseline Requirements

The Intellectual Property Review (IPR) period for Ballot CSC25: Import EV Guidelines into the Code Signing Baseline Requirements has completed. No IPR Exclusion Notices were filed, and the ballot is adopted as of Aug 1, 2024.

The new Code Signing BRs will be published to the CABF public website in accordance with the Bylaws.

### CSC-26

Ballot CSC 26: Timestamping Private Key Protection Ballot

The Intellectual Property Review (IPR) period for Ballot CSC26: Timestamping Private Key Protection Ballot has completed. No IPR Exclusion Notices were filed, and the ballot is adopted as of Aug 1, 2024.

The new Code Signing BRs will be published to the CABF public website in accordance with the Bylaws.

## CSC-25

### Results of Voting

|                       | Yes                                                          | No  | Abstain |
| --------------------- | ------------------------------------------------------------ | --- | ------- |
| Certificate Issuers   | Certum, DigiCert, Entrust, HARICA, Identrust, Sectigo |     |  |
| Certificate Consumers | Microsoft                                                    |     |         |

### Purpose of the Ballot

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 3.7 in order to clarify language regarding Timestamp Authority Private Key Protection. The main goals of this ballot are to:
1.	Import all CSBR references that point to the EV Guidelines with the actual language of corresponding sections of version 1.8.0 of the EV Guidelines, in order to remove external dependencies.
2.	The Code Signing Working Group decided not to import rules related to the subject:organizationIdentifier field.

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Martijn Katerbarg of Sectigo and Corey Bonnell of Digicert.

### Motion

MODIFY the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” ("Code Signing Baseline Requirements") based on version 3.7 as specified in the following redline: <https://github.com/cabforum/code-signing/compare/d431d9104094f2b89f35ed4bf1d64b9a844e762b...d5af6d895b3666b5351509ad25d47ac5e87321fc>


## CSC-26

### Results of Voting

|                       | Yes                                                                   | No  | Abstain |
| --------------------- | --------------------------------------------------------------------- | --- | ------- |
| Certificate Issuers   | Certum, DigiCert, eMudhra, Entrust, GlobalSign, IdenTrust, Sectigo, SSL.com |     |         |
| Certificate Consumers | Microsoft                                                             |     |         |

### Purpose of the Ballot

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates“ version 3.7 in order to clarify language regarding Timestamp Authority Private Key Protection. The main goals of this ballot are to:

1.	Require Timestamp Authority Subordinate CA Private Keys to be stored in offline HSMs
2.	Add a requirement to remove Private Keys associated with Timestamp Certificates after a 18 months
3.	Add a requirement to reject SHA-1 timestamp requests

The following motion has been proposed by Martijn Katerbarg of Sectigo and endorsed by Bruce Morton of Entrust and Ian McMillan of Microsoft.

### Motion

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” (“Code Signing Baseline Requirements”) based on version 3.7. MODIFY the Code Signing Baseline Requirements as specified in the following redline: <https://github.com/cabforum/code-signing/compare/d431d9104094f2b89f35ed4bf1d64b9a844e762b...12130ff7c2b41d795d47925c084780ea0f7328cd>
