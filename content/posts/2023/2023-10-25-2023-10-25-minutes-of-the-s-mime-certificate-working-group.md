---
aliases:
- /2023-10-25-2023-10-25-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-10-25 20:27:50
tags:
- S/MIME
title: 2023-10-25 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

October 25, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Abhishek Bhat – (eMudhra), Adrian Mueller – (SwissSign), Adriano Santoni – (Actalis S.p.A.), Andrea Holland – (VikingCloud), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Cade Cairns – (Google), Christophe Bonjean – (GlobalSign), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Eva Vansteenberge – (GlobalSign), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Keshava Nagaraju – (eMudhra), Martijn Katerbarg – (Sectigo), Morad Abou Nasser – (TeleTrust), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tsung-Min Kuo – (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The F2F minutes are still pending.

### 5. Discussion

It was agreed to cancel the normal teleconferences to be held on November 8 and 22 due to conflicts with other meetings and public holidays. A special meeting “fill in teleconference” will be scheduled on November 15.

Don Sheehy noted that in future the NetSec requirements will be separated (from the TLS WebTrust) into a separate WebTrust audit. Dave Chin expected the criteria to be available by end of 2023 with the change occurring in April 2024.Stephen Davidson noted that while there were some Bugzillas posted for mississuances they were few and involved small numbers of certificates, which seemed to be a positive sign. He noted that CAs were reporting the use of linting both pre- and post-issuance.

Stephen noted that Ballot SMC04 would be distributed after the meeting to open the discussion period. The ballot is endorsed by Dimitris Zacharopoulos of HARICA and Paul van Brouwershaven of Entrust. It merely seeks to 1) clarify the dates table in section 1.2.1 and to add ETSI TS 119 411-6 as an audit criteria in Sections 1.6.3, 8.4, and 8.6. The general plan is to have a clarifications ballot SMC05 also in the fall.

Stephen noted that the RFC for CAA for S/MIME has been published as [https://rfc-editor.org/rfc/rfc9495.html][1] and that the SMCWG would soon start discussing a potential ballot to add a CAA requirement to the S/MIME BR. It was discussed that such a ballot might look at a SHOULD requirement at 6 months past the publication and a SHALL after 12 months. Dimitris Zacharopoulos suggested that feedback on the reasonableness of that period be solicited from CA software providers. Clint Wilson said that he would not like the date to be too far in the future, while Martijn Katerbarg said CAs should speak directly with their software vendors as well. Christophe Bonjean noted that implementation dates should avoid the implementation date for multipoint validation at the end of 2024.

The SMCWG discussed naming in the Sponsor (SV)- versus Organization-validated (OV) certificate types, where it was observed that conceivably the use of pseudonyms in a Legacy type SV certificate might stray into generic roles rather than actual people. It was emphasized that the definitions for SV referred to National Persons. There was a question whether a plain mailbox address should be allowed in the CN of an SV certificate that had no other individual details in the Subject. See discussion also at [https://github.com/cabforum/smime/pull/218][2].

Stephen noted that there was a balance in tightening the Legacy profile, when the Legacy profile was intended to have a degree of flexibility during migration as it would be deprecated anyway. He asked CAs to pay particular attention to practices in this area where SV certificates may have only a mailbox address in the CN.

Stephen noted that Clint had offered to conduct a survey of CAs using CCADB and asked for help in posing questions that were in line with the bylaws competition provisions. Dimitris asked the Certificate Consumers if any type of telemetry was available for S/MIME use.

### 6. Any Other Business

None

### 7. Next call

Next call: Thursday, November 15, 2023 at 11 am Eastern time.

### Adjourned

\_\_PRESENT

[1]: https://rfc-editor.org/rfc/rfc9495.html
[2]: https://github.com/cabforum/smime/pull/218