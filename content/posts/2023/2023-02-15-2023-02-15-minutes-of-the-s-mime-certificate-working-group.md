---
aliases:
- /2023-02-15-2023-02-15-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-02-15 02:02:05
tags:
- S/MIME
title: 2023-02-15 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

February 15, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andrea Holland – (SecureTrust), Andreas Henschel – (D-TRUST), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Kemmerer – (SSL.com), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Don Sheehy – (CPA Canada/WebTrust), Enrico Entschew – (D-TRUST), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Judith Spencer – (CertiPath), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Mrugesh Chandarana – (IdenTrust), Patrycja Tulinska – (PSW), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the February 1 teleconference were approved.

### 5. Discussion

Stephen Davidson noted that he understood that many Certificate Issuers were already working on their implementation plans for the S/MIME BR and asked if there was any feedback regarding the document.

Ben Wilson noted that Mozilla would most likely allow the use of EdDSA by CAs but at this time may not support them, although investigations were ongoing at both Mozilla and Thunderbird. Tadahiko Ito noted that the 25519 and 448 curves were now included in FIPS 186-5.

Stephen displayed draft text clarifying the Enterprise RA role described in Section 1.3.2.1. [https://github.com/srdavidson/smime/commit/49bacdf09b3bb3b27a78ece305ec08987cbd026f][1] The draft lays out that:

- The Enterprise RA may request `Mailbox-validated`, `Organization-validated` or `Sponsor-validated` profiles to email domains they control (i.e., “internal”) using Section 3.2.2.1 (TLS BR methods) or Section 3.2.2.3 (DNS method)
- The Enterprise RA may request  `Mailbox-validated` profiles for email domains they do NOT control (i.e., “external”) with the CA using Section 3.2.2.2 (mailbox control). This is not strictly an Enterprise RA function – but the WG wanted to indicate that Enterprise RAs should use this lightweight profile for external users.

Don Sheehy noted that a first version of the WebTrust standard had been approved and they hoped to have it published by the beginning of April. He noted that Certificate Issuers could contact David Chin at CPA Canada f they wished to see that draft. Stephen noted that ETSI was now working on a similar set of criteria, with goal of getting to final document by May. Clint Wilson asked if the Certificate Consumers could see the draft before it was made final.

Stephen noted that the WG could have 2 hours allotted at the F2F meeting Ottawa. He suggested that we use the time to discuss implementation issues with the S/MIME BR, CAA for S/MIME, as well as longer term strategy for the S/MIME BR and topics the document could address to improve overall email security. He asked members who wished to add items to the agenda to contact him.

Stephen welcomed feedback from the Certificate Consumers on how they planned to adopt the SBR.

Corey Bonnell provided an update of the Internet-draft for CAA for S/MIME, which now has a successful call for adoption. Stephen noted that the WG could move to ballot but the effective date would probably not be until March 2024.

Clint noted that he felt March was an acceptable timeframe but that two implementation dates for CABF ballots per year was probably insufficient, and he felt a more frequent cycle was preferable. Stephen noted that was being addressed in the overall CABF bylaw discussions.

### 6. Any Other Business

None

### 7. Next call

Next call: at the Ottawa F2F.

### Adjourned

[1]: https://github.com/srdavidson/smime/commit/49bacdf09b3bb3b27a78ece305ec08987cbd026f