---
aliases:
- /2023-03-29-2023-03-29-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-03-29 17:43:32
tags:
- S/MIME
title: 2023-03-29 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

March 29, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Dave Chin – (CPA Canada/WebTrust), Don Sheehy – (CPA Canada/WebTrust), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Li-Chun Chen – (Chunghwa Telecom), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Mrugesh Chandarana – (IdenTrust), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: March 1 (Ottawa F2F) and March 15.

### 5. Discussion

Stephen Davidson noted the question raised by Bruce Morton question regarding use of QIIS ([https://lists.cabforum.org/pipermail/smcwg-public/2022-November/000581.html][1]) to verify an address of Reliable method of Communication under Section 3.2.3.2.1 and Section 3.2.6 of the SBR.

The EVG defines a QIIS at [https://github.com/cabforum/servercert/blob/main/docs/EVG.md#11115-qualified-independent-information-source][2]

Stephen noted that the QIIS allowance was in the early SBT drafts which leveraged the EVG – but was dropped when the simpler verification process was adopted. He noted that those discussions focused upon corporate details being tracked to an original government data source so the looser QIIS was omitted.

Pekka Lahtiharju suggested that QIIS that drew upon government data should be allowed, and that government datasources often did not provide API; Stephen responded that QIIS often did not identify the origin of different datapoints.

Martijn Katerbarg speculated that QIIS may already fit the definition of a Reliable Data Source as defined in Section 3.2.8. Stephen said that was primarily intended for vetting other attributes like subject: Title and is not one of the allowed resources under Section 3.2.3.2.1.

Pedro Fuentes noted that sometimes government records may not include telephone numbers. Stephen invited proposals for edits.

Stephen described the draft erratum text at [https://github.com/srdavidson/smime/commits/keyUsage_table_update][3]

The current changes include

- Clarification of Enterprise RA capabilities in 1.3.2
- Cleaning up of numbering in 4.9.1.1
- Addition of keyUsages for EdDSA in 7.1.2.3
- Clarification of ETSI audit regime in 8.4

The plan will be to move to ballot shortly.

Stephen noted that Corey Bonnell had presented a “lint” of existing S/MIME certificates found on the internet at the Ottawa F2F. DigiCert plans to open source this S/MIME linter to the community, which will assist certificate issuers in conducting the readiness assessments and internal audit. He noted the significant impact that cablint and zlint had made following the availability of the TLS BR, and believed that DigiCert’s S/MIME Linter would provide similar benefits. Additional information will be forthcoming from DigiCert in the coming weeks, who welcomed collaboration from other groups to expand the number of lints available in the tool.

Clint Wilson noted that he was seeking examples of the S/MIME certificates that are compliant with the SBR.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, April 12, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://lists.cabforum.org/pipermail/smcwg-public/2022-November/000581.html
[2]: https://github.com/cabforum/servercert/blob/main/docs/EVG.md#11115-qualified-independent-information-source
[3]: https://github.com/srdavidson/smime/commits/keyUsage_table_update