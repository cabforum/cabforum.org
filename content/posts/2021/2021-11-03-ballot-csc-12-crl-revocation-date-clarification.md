---
aliases:
- /2021-11-03-ballot-csc-12-crl-revocation-date-clarification/
author: Corey Bonnell
date: 2021-11-03 12:00:00
tags:
- Code Signing
- Ballot
title: Ballot CSC-12 – CRL Revocation Date Clarification
type: post
---

## Results of IPR Review 

(Mailing list post is available [here][1].)

The review period has ended and no exclusion notices were filed.

The final documents, with the effective date being 2021-12-03, are available [here][2].

## Results of Voting 

(Mailing list post is available [here][3].)

| | | | |
| --- | --- | --- | --- |
| |
Yes |
No |
Abstain | |
Certificate Issuers |
Certum (Asseco)DigiCertEntrustE-TUGRAGlobalSignHARICASectigoSSL.com
| | | |
Certificate Consumers |
Microsoft
| | |

The ballot has PASSED.

## Purpose of the Ballot 

While RFC 5280, section 5.3.2 specifies that it is best practice to include the Invalidity Date CRL entry extension to denote when a certificate first became invalid, Certificate Consumer software commonly ignores this extension in favor of using the time encoded in the CRL entry revocationDate field for this purpose. This ballot clarifies that CAs shall use the revocationDate to denote when a certificate first became invalid even if that time precedes issuance of the latest CRL. Additionally, this ballot clarifies that if the CA is becomes aware of a more appropriate revocation date for a revoked Code Signing Certificate, then the CA may include this date in subsequently issued CRLs and OCSP responses pertaining to that revoked Code Signing Certificate.

## Motion 

This ballot updates the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” version 2.5 according to the attached redline which includes:

- Add the effective date of the CRL profile change in section 1.3.
- Modification of the third paragraph of section 13.2.1.
- Addition of two paragraphs after the third paragraph of section 13.2.1.
- Add explanatory footnote to the bottom of the last page of section 13.2.1.

[1]: https://lists.cabforum.org/pipermail/cscwg-public/2021-December/000663.html
[2]: /baseline-requirements-code-signing/
[3]: https://lists.cabforum.org/pipermail/cscwg-public/2021-November/000632.html