---
aliases:
- /2023-01-18-2023-01-18-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-01-18 20:05:30
tags:
- Minutes
- S/MIME
title: 2023-01-18 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 18, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Andrea Holland – (SecureTrust), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Don Sheehy – (CPA Canada/WebTrust), Enrico Entschew – (D-TRUST), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Jamie Mackey – (US Federal PKI Management Authority), Judith Spencer – (CertiPath (Private Person)), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Matthias Wiedenhorst – (ACAB Council), Morad Abou Nasser – (TeleTrust), Nome Huang – (TrustAsia Technologies, Inc.), Patrycja Tulinska – (PSW), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Russ Housley – (Vigil Security LLC), Stefan Selbitschka – (rundQuadrat), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the January 4 teleconference were approved.

### 5. Discussion

Martijn Katerbarg chaired the meeting.

The WG discussed the proposed text written by Stephen Davidson to add CAA to the S/MIME BR. See [https://github.com/cabforum/smime/compare/main…srdavidson:smime:CAA][1]

Martijn noted that the text was quite complete other than the effective date. It was discussed that an effective date should be considered for 2024, in other words after the first effective date for the S/MIME BR v1.0.0. This would allow time for Certificate Issuers with no previous CAA experience adequate time to implement the standard.

WG members were invited to consider the text and to contribute to the IETF discussion regarding the CAA Internet-draft at [https://mailarchive.ietf.org/arch/msg/spasm/Z8mRKrHgV2hfXY21Sa-6EPL-h9E/][2]

Ben Wilson noted that a discussion was being started to propose the addition of the S/MIME BR to Sections 2.3 and 3.1.2 of the Mozilla Root Store Policy. This would need to go through community discussion and review to talk about the Sept 1, 2023 adoption date and potentially a Sept 1, 2024 date by which all CAs would require eligible audits reported in CCADB.

Wendy Brown noted that the timetables described in the S/MIME BR may be sufficiently clear as it described audits being required “For Audit Periods starting after the Effective Date” for v.1.0.0.

Ben noted that the actual title of the TLS Baseline Requirements was obscure and that it would be easier for Certificate Consumers if the Server Certificate WG would update the title of that document to specifically reference TLS or Server Certificates.

Martijn asked in Mozilla would stipulate any requirements on ICAs that go beyond what is in the S/MIME BR. Ben noted that the overall trend was towards separating activity by EKU, and longer term this was encouraged even for roots.

Don Sheehy noted that WebTrust was meeting in the coming weeks to review the proposed criteria. Their goal was to make this available far in advance of the effective date to allow CAs to prepare or do self-assessments. Ben asked for an update of the ETSI regime. Inigo Barreira noted that Stephen Davidson and Dimitris Zacharopoulos were at the ETSI meeting this week where the topic was on the agenda.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, February 1, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/cabforum/smime/compare/main...srdavidson:smime:CAA
[2]: https://mailarchive.ietf.org/arch/msg/spasm/Z8mRKrHgV2hfXY21Sa-6EPL-h9E/