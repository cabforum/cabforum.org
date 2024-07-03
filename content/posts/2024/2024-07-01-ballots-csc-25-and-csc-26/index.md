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

## NOTICE OF REVIEW PERIOD

### CSC-25

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is available [here](Baseline-Requirements-for-the-Issuance-and-Management-of-Code-Signing.v3.8_redline.pdf).

Summary of Review
Ballot for Review:  Ballot CSC-25

Start of Review Period: July 1st, 2024 at 2:00 PM UTC
End of Review Period: August 1, 2024 at 2:00 PM UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dean Coclin <dean.coclin@digicert.com>) and also submit a copy to the CA/B Forum CSCWG public mailing list (email to public at cabforum.org <cscwg-public@cabforum.org>) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

### CSC-26

NOTICE OF IPR REVIEW PERIOD
This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is available [here](Baseline-Requirements-for-the-Issuance-and-Management-of-Code-Signing.v3.9_redline).

Summary of Review
Ballot for Review:  Ballot CSC-26

Start of Review Period: July 1st, 2024 at 3:00 PM UTC
End of Review Period: August 1, 2024 at 3:00 PM UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dean Coclin <dean.coclin@digicert.com>) and also submit a copy to the CA/B Forum CSCWG public mailing list (email to public at cabforum.org <cscwg-public@cabforum.org>) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at <https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf>)

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
