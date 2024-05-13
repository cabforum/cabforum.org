---
author: Stephen R. Davidson
date: 2024-04-24 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-04-24 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

April 24, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Abhishek Bhat - (eMudhra), Adriano Santoni - (Actalis S.p.A.), Aggie Wang - (TrustAsia), Andrea Holland - (VikingCloud), Ashish Dhiman - (GlobalSign), Clint Wilson - (Apple), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Janet Hines - (VikingCloud), Jozef Nigut - (Disig), Judith Spencer - (CertiPath), Keshava Nagaraju - (eMudhra), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Morad Abou Nasser - (TeleTrust), Naveen Kumar - (eMudhra), Nome Huang - (TrustAsia), Pedro Fuentes - (OISTE Foundation), Rollin Yu - (TrustAsia), Russ Housley - (Vigil Security LLC), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tsung-Min Kuo - (Chunghwa Telecom), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of April 10 were approved.

## 5. Discussion

Stephen Davidson noted that Ballot SMC06 was in IPR until May 11. See https://lists.cabforum.org/pipermail/smcwg-public/2024-April/000957.html.
Stephen reviewed a proposed clarification from Tim Hollebeek, where section 1.1 defines applicability to leaf certificates only.  A proposed change makes clear the applicability to subCAs as well.  There were no objections.  See https://github.com/cabforum/smime/issues/243.
Among the allowed methods for individual vetting is the ability for the CA or RA to accept a certificate request that has been digitally signed using a certificate from approved frameworks, and to rely on validated certificate details.  
Stephen noted that when the BR was published it laid out acceptance criteria in 3.2.4.1 (4) (b) – but purposefully did not name any approved frameworks in 3.2.4.1 (4) (a) following a decision by the working group that each such framework should be the subject of a separate ballot. The working group discussed a draft proposed by Stephen to introduce reliance of eIDAS Qualified certificates. He clarified that this was to rely upon attributes in the certificate as evidence of vetting.  It did not affect the ability to rely upon electronically signed documents overall.
Clint Wilson said the existing acceptance criteria could also be improved, for example, by requiring confirmation that this type of reliance was intended in the use case for the certificate. He said it was important to be clear on the allowed reliance period. For more see https://github.com/cabforum/smime/issues/244.
Stephen noted that with the advent of eIDAS2 the text relating to eID would also need review (subsequently added as https://github.com/cabforum/smime/issues/245) 
Stephen noted that feedback was still welcomed from Certificate Issuers on improvements that would facilitate the transition to the Multipurpose and Strict profiles.  He proposed a two stage approach to deprecating the Legacy profile. Stage one proposed a cease issuance approximately a year following the ballot, for example June 15 2025. The long window is advisable to allow Enterprise RAs with integrations to CAs with adequate time to prepare. Stage two would occur after that time, to remove the many Legacy references in the S/MIME BR.  See more at https://github.com/cabforum/smime/issues/193.
Wendy Brown raised the negative impact of shorter validity period on implementations that use smartcards. Stephen agreed to add the topic to a future agenda.
## 6. Any Other Business

The membership of TrustAsia as a Root CA was confirmed. It was confirmed that the teleconference scheduled for May 22 has been cancelled.

## 7. Next call

Next call: Wednesday, May 8, 2024 at 11:00 am Eastern Time

## Adjourned


