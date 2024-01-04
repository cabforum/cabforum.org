---
aliases:
- /2023-04-12-2023-04-12-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-04-12 21:20:38
tags:
- S/MIME
title: 2023-04-12 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

April 12, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Christophe Bonjean – (GlobalSign), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Li-Chun Chen – (Chunghwa Telecom), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Morad Abou Nasser – (TeleTrust), Nome Huang – (TrustAsia Technologies, Inc.), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Russ Housley – (Vigil Security LLC), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: March 29.

### 5. Discussion

Stephen Davidson reminded the SMCWG of Clint Wilson’s request for leaf certificate examples that are compliant with the S/MIME BR.

Stephen reviewed the potential correction at [https://github.com/srdavidson/smime/commit/67ba77c6728543469683f4f8e50573d2b61621cc][1] to address the comment raised by Bruce Morton at [https://lists.cabforum.org/pipermail/smcwg-public/2023-March/000646.html][2] and separately by DigiCert.

It was noted that the text was derived from the EVG so a similar edit will be required there. Corey has submitted an issue at [https://github.com/cabforum/servercert/issues/428][3].

Corey suggested that the text could simply refer to ISO 3166-2 (without the 3 character cap) to make the text less sensitive to changes in that external document.

Stephen suggested that the SMCWG was approaching readiness to move ahead with the erratum ballot and asked for potential co-sponsors of the ballot to contact him. He suggested that the goal would be to set an effective date alongside the Sept 1 effective date of v1.0.0. Don Sheehy noted that a prompt move on the ballot would be preferred to allow auditors time to update criteria if needed.

Dimitris Zacharopoulos noted the ongoing Pseudonym discussion; Christophe Bonjean said he would propose updated text.

Stephen reminded the SMCWG that draft text existed to add CAA to the S/MIME BR and asked when the group would be ready to proceed to ballot, and when a possible effective date might be set. He hoped to provide a long implementation window as some CAs may not have existing CAA implementations. He noted that the Internet-draft proposed was entering last call at the IETF LAMPS WG. Dimitris suggested that the SMCWG wait until the Internet-draft becomes an RFC and be prepared to immediately move to ballot at that time. It was suggested that a 9-12 month period was an appropriate timeline for implementation.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, April 26, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/srdavidson/smime/commit/67ba77c6728543469683f4f8e50573d2b61621cc
[2]: https://lists.cabforum.org/pipermail/smcwg-public/2023-March/000646.html
[3]: https://github.com/cabforum/servercert/issues/428