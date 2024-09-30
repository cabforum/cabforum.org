---
author: Stephen Davidson
date: 2024-07-17 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-07-17 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

July 17, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller - (SwissSign), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bruce Morton - (Entrust), Inaba Atsushi - (GlobalSign), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Jozef Nigut - (Disig), Judith Spencer - (CertiPath), Malcolm Idaho - (IdenTrust), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Nome Huang - (TrustAsia), Rebecca Kelly - (SSL.com), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Stefan Selbitschka - (rundQuadrat), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tsung-Min Kuo - (Chunghwa Telecom), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of June 19 were approved.

## 5. Discussion

Stephen Davidson noted that there were no IPR essential claims on Ballot SMC07, which was adopted July 15. See https://cabforum.org/2024/05/24/ballot-smc07-align-logging-requirement-and-key-escrow-clarification/

Stephen also noted that Ballot SMC08 entered discussion period on July 15.  See https://cabforum.org/2024/07/15/ballot-smc08-deprecate-legacy-generation-profiles-and-minor-updates/ 

The WG discussed Issue #251, which deals with two issues relating to the Network and Certificate System Security Requirements:

1.	NCSSR v2 applies after November 1, 2024, and
2.	For WebTrust audit periods starting after April 1, 2025 there is separate “seal” for NCSSR

Draft text has been proposed which will eventually move to ballot; see link at https://github.com/cabforum/smime/issues/251 

The WG discussed the impact of the current TLS Multi-Perspective Issuance Corroboration ballot (aka MPIC, see https://github.com/cabforum/servercert/compare/c4a34fe2292022e0a04ba66b5a85df75907ac2a2..2dcf1a8fe5fc7b6a864b5767ab1db718bc447463) on S/MIME.  

Stephen noted that the S/MIME BR refer to sections in the TLS BR that are modified to include MPIC.  The WG discussed whether MPIC was as essential to S/MIME as TLS.  There were no specific objections but the WG agreed to await the outcome of TLS ballot SC-067.

If TLS ballot SC-067 is successful, Stephen suggested that the SMCWG should be prepared to make decisions promptly as SC-067 includes specific implementation schedules.  The WG also discussed whether TLS adoption of MPIC would already “cover” most S/MIME issuers, or if a separate adoption schedule should be considered. A review was suggested based on CCADB, and to send a note to the SMCWG list alerting S/MIME issuers to the MPIC discussion.

Stephen noted that if MPIC was adopted in the S/MIME BR, at a minimum, new definitions and a pointer to the new TLS 3.2.2.9 should be considered for the SBR.  A draft text will be prepared.

## 6. Any Other Business

None

## 7. Next call

Next meeting: Wednesday, July 31 2024 at 11:00 am Eastern Time

## Adjourned

