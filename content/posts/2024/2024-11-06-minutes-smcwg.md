---
author: Stephen Davidson
date: 2024-11-06 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-11-06 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

November 6, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Judith Spencer (CertiPath), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of October 10 (F2F #63) and October 23 were approved.

## 5. Discussion

Stephen Davidson noted that SMC09 was in through November 22.

Stephen noted that after lengthy dialogue in writing the ballot, the formal discussion period for SMC010 for MPIC would be from November 7-14, with the ballot endorsed by GlobalSign and Google.

The WG discussed Issue #259 https://github.com/cabforum/smime/issues/259 and agreed that the text should be amended to allow reuse of DCV for the method described in Section 3.2.2.3.

The WG discussed whether a separate method should be introduced in 3.2 to describe ACME for S/MIME https://datatracker.ietf.org/doc/rfc8823/ (issue #3).  Stephen noted that there was desire to accommodate automation of email control, which may become important as the Server Cert WG revisits DCV methods in the TLS BR.

The WG walked through the operation of RFC 8823 validation.  Stephen noted that the existing Section 3.2.2.2 text referred to a Random Value being distributed by email to the box, while the functions of RFC 8823 use a combination of email and SMTP.  He noted that he was aware of third-party certificate lifecycle tools that supported RFC 8823 and asked if public trust issuers supported it.

Stephen noted that, if the WG viewed it as an important option, either the text in 3.2.2.3 should be broadened, or a new method 3.2.24 should be written for RFC 8823.

Andy Warner and Paul Van Brouwershaven noted there was sometimes a wagon and horse issue and there was merit in describing new automation methods, noting that the TLS BR also added and removed them over time. 

Stephen asked if issuers or consumers knew of other email domain automation options that should be described in the S/MIME BR.

## 6. Any Other Business

The WG discussed a PR https://github.com/cabforum/smime/pull/261 submitted by Brice Morton to allow the use of QIIS/Reliable Data Source to obtain 1) phone or address information for a Subject which may not be available in government records and 2) to validate DBA names if they are drawn by the QIIS/Reliable Data Source from Government records.  The discussion will continue.

## 7. Next call

Next call: Wednesday, November 20, 2024 at 11:00 am Eastern Time

## Adjourned
