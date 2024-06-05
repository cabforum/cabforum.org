---
author: Stephen Davidson
date: 2024-05-08 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-05-08 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

May 8, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Abhishek Bhat - (eMudhra), Adriano Santoni - (Actalis S.p.A.), Aggie Wang - (TrustAsia), Andrea Holland - (VikingCloud), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bruce Morton - (Entrust), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dimitris Zacharopoulos - (HARICA), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Janet Hines - (VikingCloud), Judith Spencer - (CertiPath), Keshava Nagaraju - (eMudhra), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Morad Abou Nasser - (TeleTrust), Mrugesh Chandarana - (IdenTrust), Nome Huang - (TrustAsia), Rebecca Kelly - (SSL.com), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stefan Selbitschka - (rundQuadrat), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Tsung-Min Kuo - (Chunghwa Telecom), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of April 24 were approved.

## 5. Discussion

Stephen Davidson noted that Ballot SMC06 was in IPR until May 11. See https://lists.cabforum.org/pipermail/smcwg-public/2024-April/000957.html.

The WG discussed and approved the change of KeyFactor from an Interested Party to an Associate Member, Ellie Schieder as an Interested Party, and Posteo e.K as a Certificate Consumer.
The WG reviewed and discussed a ballot proposed by Martijn Katerbarg which would bring the S/MIME BR up to date with a recent ballot at the TLS BR for logging.   See more at https://github.com/cabforum/smime/issues/241 

The WG had an extensive discussion regarding the migration to Multipurpose/Strict profiles.  Stephen noted that so far only two points had been raised by Certificate Issuers:

*	Having adequate time (such as one year) to allow ERAs using integration time to adapt.
*	Concerns relating to the impact of shorter validity on deployments using tokens/smartcards.

Judith Spencer and Wendy Brown commented that the shorter validity had real impact on large (including public sector) deployments that use tokens/smartcards, including:

*	limited storage on tokens/smartcards;
*	the increased burden of key exchange; and
*	and the costs of support for rekeying.

The question was raised whether it would be feasible to increase the validity for the Multipurpose profile to 1185 days in general, or in cases where tokens/smartcards are used.  Clint Wilson spoke about the security and crypto agility benefits of shorter validity periods.  It was agreed this topic would be continued in Bergamo.

## 6. Any Other Business

None.

## 7. Next call

Next call:  the teleconference scheduled for May 22 has been cancelled. Next meeting is Bergamo F2F #60.

## Adjourned


