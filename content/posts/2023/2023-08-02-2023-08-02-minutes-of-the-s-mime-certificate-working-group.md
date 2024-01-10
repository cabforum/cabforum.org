---
aliases:
- /2023/08/02/2023-08-02-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-08-02 12:05:27
tags:
- Minutes
- S/MIME
title: 2023-08-02 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

August 2, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Ashish Dhiman – (GlobalSign), Bruce Morton – (Entrust), Cade Cairns – (Google), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Don Sheehy – (CPA Canada/WebTrust), Enrico Entschew – (D-TRUST), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Li-Chun Chen – (Chunghwa Telecom), Marco Schambach – (IdenTrust), Morad Abou Nasser – (TeleTrust), Nome Huang – (TrustAsia Technologies, Inc.), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Renne Rodriguez – (Apple), Russ Housley – (Vigil Security LLC), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tsung-Min Kuo – (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

Stephen Davidson noted that the minutes for the June 9 F2F and the July 21 teleconference were distributed today so would be approved on a future call.

### 5. Discussion

Stephen Davidson that Ballot SMC03 was now in IPR, scheduled to conclude on 1700 UTC on August 11. He noted that there was an issue with the tooling that was complicating the production of redlines (showing unexpected changes to styles and numbering in addition to the expected text changes).

Stephen opened the floor for discussion of implementation issues. Enrico Entschew asked if a user had multiple given names (see 7.1.4.2.2 e) should they all be listed in the givenName or should/could there be multiple givenName attributes. It was agreed that under section 3, the user could chose which name(s) is used.

Renne Rodriguez asked about cert attribute ordering and questioned whether the SBR should consider moving towards the table format recently adopted in the TL BR Ballot SC62. Stephen said this could be added to the Fall F2F agenda where the WG will discuss our next priorities.

Stephen reviewed the issues list on GitHub at [https://github.com/cabforum/smime/issues][1] (noting that some items currently on the list will be closed off due to SMC03). He encouraged members to make use of the list as it was a useful input for the WG priorities.

Stephen asked members to consider in particular if the Section 3.2.2 methods for email domain/mailbox control were sufficient, and if it would be desirable to define additional automation friendly methods. It was likely that additional development might be desired in the area of Enterprise RAs.

Stephen noted that ETSI TS 119 411-6 (overlaying the SBR on ETSI requirements) had cleared remote consensus and was going through final edits/review at ETSI. Reference to this in the SBR will be a future ballot.

It was decided to cancel the August 15 teleconference.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, August 30, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/cabforum/smime/issues