---
author: Stephen Davidson
date: 2024-08-14 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-08-14 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

August 14, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller - (SwissSign), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Clint Wilson - (Apple), Daryn Wright - (Apple), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Judith Spencer - (CertiPath), Malcolm Idaho - (IdenTrust), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Mrugesh Chandarana - (IdenTrust), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pekka Lahtiharju - (Telia Company), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken by Martijn Katerbarg.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of July 31 were approved.

## 5. Discussion

Carillon Information Security Inc. has requested to join the SMCWG as an issuer.  Stephen Davidson confirmed their eligibility and IPR agreement.  The request was confirmed.

Stephen noted that Ballot SMC08 was passed on July 29, with the subsequent IPR period ending on August 28.  He noted that this would mean the deprecation of the Legacy generation profiles on July 15, 2025.  See https://cabforum.org/2024/07/15/ballot-smc08-deprecate-legacy-generation-profiles-and-minor-updates/ 

Stephen noted that nominations for CABF Chair positions were now open through August 26 at 11:00 Eastern.  

The WG discussed proposed text to clarify that additional Certificate Policy OIDs are allowed alongside the SBR OIDs.  Stephen noted that the SBR text was drawn from the TLS BR, which later was later removed entirely from the TLS BR.  See https://github.com/cabforum/smime/issues/255.  Stephen noted that this would be in the next ballot, along with the NetSec audit changes. Clint Wilson noted that the TLS BR has a similar NetSec audit ballot now.

The WG discussed Issue #212 on S/MIME Linting now that the TLS BR have incorporated pre-linting requirements.  Stephen indicated that there were two commonly used linting frameworks (PKILINT and ZLINT) that have support for S/MIME and/or the SBR.  He showed text that was adapted from the TLS BR text for consistency; this includes provisions for pre-issuance and post-issuance linting.  The draft proposals a SHALL of September 2025. There were no objections. 

The WG returned to Issue #239 and the draft for Multi-Perspective Issuance Corroboration https://github.com/cabforum/smime/issues/239.  Stephen noted that the related TLS ballot had passed and as far he knew there were no IPR issues.  There were no objections to the adoption of MPIC.  He said the TLS ballot had tight implementation timeframes, and so he was wary of leaving the associated S/MIME ballot for too long.  He confirmed that a review was made of CCADB and that only 14 issuers are tagged for S/MIME but are not tagged for TLS.  Stephen noted that he had reached out to the root store representatives hoping to get the word out to these issuers.  

Stephen discussed the text difficulties of varying from the TLS implementation due to the way the SBR incorporates the TLS BR sections, which do not separate the MPIC implementation guidelines from the implementation deadlines.  Judith Spencer and Wendy Brown suggested that perhaps the WG should wait to see the outcome of the TLS BR adoption before making a decision on if/how/when to implement it in the SBR.

Martijn Karterbarg suggested an option which to ballot MPIC as drafted but with future effective date (that could fall later than the TLS MPIC implementation schedule). This would have the effect of giving CAs plenty of lead time, but that they would possibly lose some of the “warm up” steps allowed in the TLS MPIC text.  It was suggested that September 15, 2025 might be a SHALL date (with a SHOULD before).

Clint Wilson suggested that MPIC should also be used in the mailbox validation method described in SBR 3.2.2.2.  Stephen said he did think that was a clear requirement in the TLS BR implementation, and asked for assistance in clarifying that possible requirement.  The MPIC discussion will continue.

## 6. Any Other Business

None

## 7. Next call

Next meeting: Wednesday, August 28 2024 at 11:00 am Eastern Time

## Adjourned

