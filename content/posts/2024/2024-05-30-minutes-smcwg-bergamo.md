---
author: Stephen Davidson
date: 2024-05-30 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-05-30 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---
## Minutes of SMCWG

May 30, 2024
Bergamo F2F #62

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees
Aaron Poulsen - (Amazon), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Antti Backman - (Telia Company), An Yin - (iTrusChina), Arvid Vermote - (GlobalSign), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bruce Morton - (Entrust), Christophe Bonjean - (GlobalSign), Chya-Hung Tsai - (TWCA), Clemens Wanko - (ACAB Council), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dave Chin - (CPA Canada/WebTrust), Dean Coclin - (DigiCert), Doug Beattie - (GlobalSign), Eva Vansteenberge - (GlobalSign), Inaba Atsushi - (GlobalSign), Iñigo Barreira - (Sectigo), Janet Hines - (VikingCloud), John Sarapata - (Google), Josselin Allemandou - (Certigna (DHIMYOTIS)), Jozef Nigut - (Disig), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Nargis Mannan - (VikingCloud), Nick France - (Sectigo), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Raffaela Achermann - (SwissSign), Rebecca Kelly - (SSL.com), Rob Stradling - (Sectigo), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Sven Rajala - (Keyfactor), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

Deferred

## 5. Discussion

### Ballot SMC07
Martijn Katerbarg has proposed a ballot to bring the S/MIME BR (SBR) into partity with the logging changes recently made in the TLS BR.  The ballot also clarifies that a CA that practices escrow may mantain keys past the expiry of the certificate life.  The discussion period ends on June 5.  See https://github.com/cabforum/smime/pull/249 

### Recent Activity
Stephen gave an overview of the SMCWG's recent activity which includes the passage of "Ballot SMC06 - Post implementation clarification and corrections" which has completed IPR and is effective as of May 11.

The group has discussed how to maintain partity with various TLS BR ballots (for logging, MPIC, DTP etc.).  Martijn Katerbarg noted that currently the SBR point to the "current" TLS BR, which may create a window of confusion when changes occur there that require an SBR ballot as well.  He suggested that the SBR might adopt a specific verson of the TLS BR to avoid confusion.  This could be cycled as the SBR was updated to impose the related changes.

Stephen noted that the group had been collecting changes at https://github.com/cabforum/smime/issues and intended to create another "rollup" ballot soon.

It was noted that the group has been discussing a proposed ballot introducing a method to rely upon eIDAS Qualified certificates for validating personal information. He noted that a similar update would be required for updating the eID method to include reference to the EU Digital Identity Wallet provisions of eIDAS2.  He asked for assistance from EU TSPs in reviewing that text.
Finally, a review was made of the extensive dialogue relating to the deprecation of Legacy generation.  Stephen noted that it was agreed from the start that Legacy would fall away (and in fact there had been requests to include deprecation in v1 of the standard).  The groups work has included a review of differences between the Legacy and Strict/Multipurpose, as well as requests for feedback from CAs regarding issues that hinder migration.

### Upcoming Dates
Stephen provided an overview of upcoming compliance dates in the SBR.

* Sept 15 - Transition end for Extant S/MIME CAs
*  Sept 15 - CAs should support CAA
* Sept 15 - CAs must declare CAA practices in their CPS
*  Sept 15 - Only “active” Orgs
*  March 15 - CAs must support CAA

### Legacy Deprecation
Stephen summarised the feedback relating to Legacy:
1. Sufficient headsup is required for ERAs with integrations
2. Shorter validity accentuates the key management challenges of S/MIME
3. Shorter validity creates an obstacle for large ecosystems using tokens
* Hardware limitations and costs
* Support costs
4. When split keys, why disallow Encryption being combined with EFS/BitLocker?

Following discussion it was agreed that a ballot should be brought forward.

### Charter Review
Stephen noted that the charter for the SMCWG was dated (as it largely described the startup activities of the SMCWG) and included duplication (and even some conflicts) with the CABF Bylaws.  It was agreed to draft an update of the charter, which would need to be voted upon at the Forum level.  Tim Hollebeek noted that all the WG charters may benefit from review, and this exercise may be a good test for that work.

## 6. Any Other Business
Stephen noted that he hoped to have an expanded session at the fall F2F on S/MIME, with invited guests to hold a discusson on ways to improve the S/MIME ecosystem, such as automation, key discovery, and cloud-based keys.  Paul van Brouwershaven said that we should be mindful of the group's charter. Tim Hollebeek said that in other similar cases such guests had been asked to join as Interested Parties.

## 7. Next call
Next call: Wednesday, June 5 2024 at 11:00 am Eastern Time

## Adjourned

