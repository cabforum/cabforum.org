---
aliases:
- /2023/05/10/2023-05-10minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-05-10 20:14:44
tags:
- Minutes
- S/MIME
title: 2023-05-10Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

May 10, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Bruce Morton – (Entrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Don Sheehy – (CPA Canada/WebTrust), Eva Vansteenberge – (GlobalSign), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Li-Chun Chen – (Chunghwa Telecom), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Matthias Wiedenhorst – (ACAB Council), Mrugesh Chandarana – (IdenTrust), Nargis Mannan – (VikingCloud), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Renne Rodriguez – (Apple), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: April 26.

### 5. Discussion

Corey Bonnell of DigiCert provided an overview of a new certificate linter called pkilint that has been released as open source software by DigiCert. He described pkilint as taking a different approach from previous linters that it is not limited to certificates but could also look at other PKI structures like CRLs and OCSP responses, and included the ability to look at ASN.1/DER encoding in detail. This allows comprehensive tests to be written to determine whether a specific field should be checked, rather than defining prescriptive tests for each check. Validators for related tests can be organized together for efficient linting.

Corey said that the initial version of pkilint includes ~150 lints covering:

- CABF S/MIME end-entity certificate
- CABF TLS certificate (still preliminary)
- PKIX certificate
- PKIX and CABF CRL (CABF lints still preliminary)
- PKIX OCSP
- PKIX issuer and subject certificates relationship

Corey noted that DigiCet intends to expand the number of checks, including for the TLS BR recent Ballot 62 for TLS certificate profiles.

Pkilint is available as an easy-to-install Python package at [https://pypi.org/project/pkilint/][1]

The source code is available on Github: [https://github.com/digicert/pkilint][2]. The list of current lints is at [https://github.com/digicert/pkilint/wiki/Validations-performed-by-SMIME-end-entity-certificate-linter][3]

Corey welcomed comments, issues, and participation in the project. Stephen noted that linters were key to accelerating the effectiveness of the TLS BR, and said he believed the S/MIME BR linter being released as open source by DigiCert would provide similar benefits to the S/MIME ecosystem, and would be particularly useful to Certificate Issuers in their preparations for compliance with the S/MIME BR later in 2023.

Corey distributed his presentation to the SMCWG list [https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000680.html][4]

Stephen noted that there was considerable interest in the Enterprise RA sections of the SBR and that would likely be the topic for the next teleconference or the F2F. He noted the recent contribution by Bruce Morton as an example [https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000676.html][5]

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, May 24, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://pypi.org/project/pkilint/
[2]: https://github.com/digicert/pkilint
[3]: https://github.com/digicert/pkilint/wiki/Validations-performed-by-SMIME-end-entity-certificate-linter
[4]: https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000680.html
[5]: https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000676.html