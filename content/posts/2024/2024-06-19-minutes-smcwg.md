---
author: Stephen Davidson
date: 2024-06-19 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-06-19 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

June 19, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Ashish Dhiman - (GlobalSign), Inaba Atsushi - (GlobalSign), Jozef Nigut - (Disig), Judith Spencer - (CertiPath), Keshava Nagaraju - (eMudhra), Martijn Katerbarg - (Sectigo), Nome Huang - (TrustAsia), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Rebecca Kelly - (SSL.com), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Thomas Zermeno - (SSL.com), Tim Hollebeek - (DigiCert), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Meeting was led by Martijn Katerbarg.  Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of May 30 (Bergamo F2F) and June 5 were approved.

## 5. Discussion

Tim Hollebeek of DigiCert gave a presentation on quantum-safe algorithms in the context of S/MIME. See http://lists.cabforum.org/pipermail/smcwg-public/attachments/20240619/69d4bf28/attachment-0001.pdf

He noted that upgrading asymmetric cryptography is necessary to protect email from quantum computer threats, particularly because currently encrypted emails can be harvested and stored until a cryptographically-relevant quantum computer is available. 

The S/MIME protocol needs to be updated to use new cryptographic algorithms that are quantum-safe. S/MIME key distribution and certificate management will be challenging during the transition period. KEM is very important to transport the content encryption key to the recipient. The industry needs to prioritize collaboration and experimentation to ensure a smooth transition before quantum computers become available.

Tim noted that “dual use” certs may be problematic as signing and encryption use separate algorithms in PQC.  “Split use” certs will be easier to shift.  IETF LAMPS will start efforts to update the S/MIME standard for PQC and other cryptographic improvements.

Tim discussed options for services to add a quantum-safe signature to old signatures that will become vulnerable, noting European interests in this topic.

Ballot SMC07 completes IPR on July 12. See https://cabforum.org/2024/05/24/ballot-smc07-align-logging-requirement-and-key-escrow-clarification/   

A new draft Ballot SMC08 dealing with the deprecation of Legacy is imminent.  See
https://github.com/cabforum/smime/compare/main...srdavidson:smime:Ballot-SMC08 

Martijn noted that the email lists for the SMWG would migrate to new email addresses imminently.

Martijn noted the NetSec issue https://github.com/cabforum/smime/issues/251 and asked if members would step up to draft a ballot.

## 6. Any Other Business

Ashish Dhiman raised the MPIC discussion occurring in the TLS WG.  Martijn noted the issue raised by Stephen at https://github.com/cabforum/smime/issues/239.  Tim noted the appeal of maintaining consistency between the TLS and S/MIME BR, although more detailed consideration and additional implementation time may be required for CAs that do not do TLS.  This will be standalone ballot.

## 7. Next call

Next call: It was suggested that the July 3 meeting might be cancelled due to proximity with US Independence Day holiday.

## Adjourned
