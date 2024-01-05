---
aliases:
- /2023-03-15-2023-03-15-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-03-15 15:31:03
tags:
- Minutes
- S/MIME
title: 2023-03-15 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

March 15, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chad Ehlers (IdenTrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dave Chin (CPA Canada/WebTrust), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Judith Spencer (CertiPath), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia Technologies, Inc.), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Rollin Yu (TrustAsia Technologies, Inc.), Stefan Selbitschka (rundQuadrat)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes from the March 1 F2F are to be distributed.

### 5. Discussion

Martijn Katerbarg noted a question raised by Christophe Bonjean relating to the use of the Pseudonym in the Legacy profile as described at [https://lists.cabforum.org/pipermail/smcwg-public/2023-February/000634.html][1]

Corey Bonnell clarified that the note 7.1.4.2.6 allowed that CAs could omit the specific attributes in the Subject but to include the same content that would otherwise have been used in those attributes in the subject:commonName alone. In other words, a Pseudonym may be used in the CN but only if verified in accordance with the requirements of Section 3.1.3 [https://github.com/cabforum/smime/blob/main/SBR.md#313-anonymity-or-pseudonymity-of-subscribers][2]

1. Legacy Generation profiles MAY omit the subject:givenName, subject:surname, and subject:pseudonym attributes and include only the subject:commonName as described in Section 7.1.4.2.2(a).

Adrian Mueller commented that a Pseudonym used in the CN without the corresponding subject:pseudonym attribute could be confused as being a real name. He noted that in some Swiss profiles Pseudonyms in the commonName would be prefixed by a “PSEUDO:” tag.

The discussion of the use of QIIS posed by [https://lists.cabforum.org/pipermail/smcwg-public/2022-November/000581.html][3] was tabled for a future discussion.

Dimitris Zacharopoulos provided an update that the ETSI ESI group is working on a proposed ETSI TS 119 411-6 to make the SMIME BR auditable under the etsi regime. He noted that the intent was to have a 1-to-1 mapping of the cert policy OIDs.

Martijn raised the discussion that the WG would seek to move an erratum ballot in the near future and sought feedback from members on other items that might be included, and possible endorsers. A draft of the changes may be seen at [https://github.com/srdavidson/smime/compare/ba234cef9a443716e09d2fd2dcb715b8b709dd61…7ba22046e1f13b2e45b0837725e42f2b75e3874a][4]

Corey subsequently noted that the subsection numbering in section 4.9.1.1 might be aligned with the TLS BR. (This is, in effect, a style change. There are currently several sets of numbered bullets that restart at 1 in the SBR while the TLS BR continues the numbering across the sets).

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, March 29, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://lists.cabforum.org/pipermail/smcwg-public/2023-February/000634.html
[2]: https://github.com/cabforum/smime/blob/main/SBR.md#313-anonymity-or-pseudonymity-of-subscribers
[3]: https://lists.cabforum.org/pipermail/smcwg-public/2022-November/000581.html
[4]: https://github.com/srdavidson/smime/compare/ba234cef9a443716e09d2fd2dcb715b8b709dd61...7ba22046e1f13b2e45b0837725e42f2b75e3874a