---
author: Stephen Davidson
date: 2024-12-04 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-12-04 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

December 4, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Daryn Wright (Apple), Enrico Entschew (D-TRUST), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (VikingCloud), Jozef Nigut (Disig), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Wendy Brown (US Federal PKI Management Authority)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of November 20 were approved.

## 5. Discussion

Stephen Davidson noted that SMC09 was adopted on November 22.

Stephen noted that SMC010 passed and would be in IPR until December 22.

The WG discussed the ongoing draft to include ACME for S/MIME as an explicitly defined method in the SBR.  Stephen noted that the current draft may be found at https://github.com/srdavidson/smime/compare/cd7c998984050e61fabddda0cbba2e9b02954360...893390696b4080acb00cb2df650d895fdbf6c738.  He noted that Guillaume Amringer had provided feedback on the list, and invited WG members to review the text as well as consider other validation automation standards for consideration.

The WG discussed Issue #242 (Increase minimal CA Key size for RSA keys) proposed by Martijn Katerbarg https://github.com/cabforum/smime/issues/242.  Stephen noted that ETSI TS 119 312 calls for cessation of the use of RSA keys <3000 bits by the end of 2028, which would indicate the need to step up to larger CA sizes soon.

Tim Hollebeek posed the counterpoint that quantum computing could render all RSA keys vulnerable, no matter the size and that care should be taken not to focus on upgrading RSA to the detriment of progressing towards PQC readiness.

Judith Spencer said that the US was looking at ceasing issuance of RSA 2048 in 2030 with ~a five year transition period from to move away from RSA.  Tim noted that all timeframes for algorithm transitions were moveable, and it often depended on the type of system and hardware dependencies.

Stephen and Martijn proposed drafting text for further consideration.

Martijn suggested that one possible approach, as a first step, would be to require new Issuing CAs created after a certain date to use a larger key size.  Clint Wilson agreed to look up in CCADB a rough idea of CA key sizes for S/MIME.  He subsequently provided the following:
* RSA 2048 - 63
* RSA 3072 - 2
* RSA 4096 - 103
* EC 256 - 5
* EC 384 - 35
* EC 521 - 1

Judith said that she was wary of having mass migration mandates at this time, but that the SBR should encourage CAs to begin using larger key sizes on new CAs.  Ben Wilson said that having a roadmap would be very useful to the industry even if dates were still unclear.

Stephen noted that Tim had provided a useful background presentation on PQC and S/MIME in the past.  He said it would be helpful if the SMCWG could provide a discussion paper that laid out the major steps involved in implementing quantum safe algorithms in S/MIME ecosystem, as well as the main standards efforts relevant to the task.  Tim to assist in outlining such a paper.

Tadahiko Ito said that key usage might also indicate different approaches for RSA replacement (for example authwhich is short horizon vs encryption which requires longer protection). Stephen said such a differentiation might be difficult in the current formulation of the SBR which is quite flexible in keyUsage pairings.

It was suggested to use time at the autumn 2025 F2F to discuss PQC, perhaps involving the authors of the relevant RFC as quest speakers.

The WG discussed Issue #263 (EUID in OrganizationIdentifier attribute)  https://github.com/cabforum/smime/issues/263.  Stephen noted that when the WG was drafting the SBR, it was noted that there were some possible variations in the use of the NTR registration scheme, such as in Germany, that might raise issues.  At the time DigiCert proposed corrections to the ETSI 412-1 text defining NTR.  He said it appeared that updates would be included in a new release of the ETSI standard in the spring – acknowledging the EUID that the SMCWG had previously discussed.  As such it would soon make sense to move ahead with corresponding updated in the SBR.  

He noted that Adrian Mueller had suggested text changes on the Issue boards, which may form the basis for a future ballot.  It was noted that the EUID was already in common use in the NTR for entities in Germany.

## 6.    Any other business 

The meeting of January 1, 2025 will be cancelled.  Stephen noted the group would focus on 2025 roadmap in coming meetings.

## 7. Next call

Next call: Wednesday, December 18, 2024 at 11:00 am Eastern Time

## Adjourned
