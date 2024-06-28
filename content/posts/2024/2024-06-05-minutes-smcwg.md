---
author: Stephen Davidson
date: 2024-06-05 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-06-05 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---
## Minutes of SMCWG

June 5, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller - (SwissSign), Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dimitris Zacharopoulos - (HARICA), Inaba Atsushi - (GlobalSign), Iñigo Barreira - (Sectigo), Janet Hines - (VikingCloud), Judith Spencer - (CertiPath), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Mrugesh Chandarana - (IdenTrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelly - (SSL.com), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stefan Selbitschka - (rundQuadrat), Stephen Davidson - (DigiCert), Taavi Eomäe - (Zone Media), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of May 8 were approved.

## 5. Discussion

Stephen Davidson noted that Ballot SMC07 started voting today. https://cabforum.org/2024/05/24/ballot-smc07-align-logging-requirement-and-key-escrow-clarification/   This ballot maintains parity with the TLS BR on logging requirements and clarifies that escrow of keys is allowed after the expiry of a certificate.

The WG returned to discussion regarding a deprecation ballot for Legacy Generation profiles. Stephen noted that at the Bergamo F2F it had been decided to bring forward a ballot to deprecate use of the Legacy profiles after June 15, 2025.  He walked through proposed text.  See https://github.com/cabforum/smime/compare/main...srdavidson:smime:Ballot-SMC08 

Dimitris Zacharopoulos said that the concern of a shorter validity period creating issues for token deployments should be considered. Stephen noted that the issue could be separated as a subsequent ballot on that topic could be passed in time for the June 2025 effective date.  The group discussed options, such as those adopted by the Code Signing WG, for determining if a certificate was on a token.  Clint Wilson noted that the Legacy profiles could be used up until June 2025, which would provide some relief for token-heavy deployments, and suggested that interested parties bring forward concrete proposals.

The group reviewed the Issues list at https://github.com/cabforum/smime/issues; Stephen noted that a future ballot would roll up many of the items.

Corey Bonnell described Issue #248 https://github.com/cabforum/smime/issues/248 updating the use of SmtpUTF8Mailbox from RFC 8398 to RFC 9598.

Stephen noted that Issue #233 (for delegation) would move ahead when IPR issues were resolved in TLS, and that Issue #239 (MPIC) would possibly move to ballot in TLS soon.

Stephen requested that EU TSPs with experience in eID contribute to Issue #245 https://github.com/cabforum/smime/issues/245 as the EUDI Wallet moved towards fruition.

The WG reviewed a proposed clarification in Issue #243 that the S/MIME BR applies to both CAs and leaf certs https://github.com/cabforum/smime/issues/243.

Martijn Katerbarg described Issue #242 suggesting that we review the CA key size requirements https://github.com/cabforum/smime/issues/242. It was suggested that these requirements echo the NIST guidelines.  Clint observed that many CAs already seemed to be moving in that direction, so a change would probably not be controversial.  He also noted that a conversation should start soon about the impact of PQC on S/MIME as such messages could be stored, so forward protection was perhaps more pressing than for TLS.  

Clint noted (now at Issue #251 https://github.com/cabforum/smime/issues/251) that WebTrust had separated Network Security into a separate audit so changes might be required to the S/MIME BR.

## 6. Any Other Business

None.

## 7. Next call

Next call: Wednesday, June 19 2024 at 11:00 am Eastern Time

## Adjourned
