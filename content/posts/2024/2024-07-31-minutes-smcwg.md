---
author: Stephen Davidson
date: 2024-07-31 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-07-31 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

July 31, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Clint Wilson - (Apple), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Janet Hines - (VikingCloud), Judith Spencer - (CertiPath), Mrugesh Chandarana - (IdenTrust), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelly - (SSL.com), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stefan Selbitschka - (rundQuadrat), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tsung-Min Kuo - (Chunghwa Telecom), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of July 17 were approved.

## 5. Discussion

Stephen Davidson noted that Ballot SMC08 was passed on July 29, with the subsequent IPR period ending on August 28.  He noted that this would mean the deprecation of the Legacy generation profiles on July 15, 2025.  See https://cabforum.org/2024/07/15/ballot-smc08-deprecate-legacy-generation-profiles-and-minor-updates/ 

Stephen noted that nominations for CABF Chair positions were now open through August 26 at 11:00 Eastern.  

The WG discussed Issue #246 which seeks to update Appendix A.2 for partity with the ETSI standards dealing with personal identifiers, including the ability to reference an eID identification number.  See https://github.com/cabforum/smime/issues/246 

The WG discussed Issue #251, which deals with two issues relating to the Network and Certificate System Security Requirements: first that NCSSR v2 applies after November 1, 2024, and second that there is separate “seal” for NCSSR for audit periods starting after April 1 2025.  Draft text has been proposed which will eventually move to ballot; see link at https://github.com/cabforum/smime/issues/251 

The WG discussed the impact of the current TLS Multi-Perspective Issuance Corroboration ballot (aka MPIC) on S/MIME.  See https://github.com/cabforum/smime/issues/239 which now includes draft text. Stephen reminded that SMC07 pinned the SBR to v 2.0.5 of the TLS BR but that, given the tight implementation timeframes in TLS Ballot SC-067, the WG should be prepared to move to ballot as soon as it was clear MPIC would clear IPR.

The WG discussed the difficulty of the proposed TLS BR ballot.  The DV methods in the TLS BR that are used by the SBR now call out a new section 3.2.2.9 in the TLS BR.  The section 3.2.2.9 text combines MPIC requirements with an implementation schedule.  This complicates targeted “inward” references from the SBR.

It was discussed if there are S/MIME issuing CAs that do not also issue TLS; Clint Wilson agreed to assist in getting information from CCADB.  Ashish Dhiman suggested that a “delayed” implementation schedule might be appropriate for S/MIME if there were many such CAs. Stephen suggested that the respective root programs might be able to reach out to those CAs.

## 6. Any Other Business

None

## 7. Next call

Next meeting: Wednesday, August 14 2024 at 11:00 am Eastern Time

## Adjourned
