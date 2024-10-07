---
author: Stephen Davidson
date: 2024-09-11 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-09-11 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

September 11, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller (SwissSign), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Li-Chun Chen (Chunghwa Telecom), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of August 28 were approved.

## 5. Discussion

Stephen Davidson noted 

Stephen Davidson noted that the following requirements from the S/MIME Baseline Requirements (SBR) kick in on September 15:

•	SHALL use compliant ICA, transition end for Extant ICAs (from version 1.0.1, ballot SMC03)
•	SHOULD adopt CAA for S/MIME, CPS update required (from version 1.0.3, ballot SMC05) 
•	SHALL check Active status of Legal Entity Applicants (from version 1.0.4, ballot SMC06)

The WG discussed a question that had been posed regarding the defined term Affiliate, which was adopted intact from the TLS BR:
Affiliate: A corporation, partnership, joint venture or other entity controlling, controlled by, or under common control with another entity, or an agency, department, political subdivision, or any entity operating under the direct control of a Government Entity.

However, in the SBR the term affiliate is used in Section 7.1.4.2.2(c) to allow the use of the Subject OU to include “the full legal organization name of an Affiliate of the subject:organizationName in the Certificate”.  The question was whether the department was lower case (as in sales or helpdesk) or upper case (as in the Department of Defense).  The WG agreed that the intention was to allow only properly formed entities such as O=US Government / OU = Department of Homeland Security.

The WG discussed a bug that has arisen regarding the use of the NTR registration scheme for German entities.  See https://bugzilla.mozilla.org/show_bug.cgi?id=1917405.  The bug argues that German registration occurs at the state court level not federal and that uniqueness of identifiers is not assured.  Stephen Davidson noted that this was a known issue, but that in ETSI use (from which this scheme originated) the use of NTRDE as a national identifier was acceptable – although some CAs were adding sub-identifiers for the courts (rather than the states as specified in the SBR).  Stephen noted that he had filed a request recently with ETSI to resolve this issue.  It is not known if the issue affects countries other than Germany.

It was agreed that a subset of the WG, (including Martijn Katerbarg and others) would investigate options to improve this in the SBR.

The WG turned to the issue of the adoption of MPIC for methods 3.2.2.1 and 3.2.2.3 (as well as CAA) in the SBR.  Stephen showed the draft text at https://github.com/srdavidson/smime/compare/5a0a6c46045bd7e1ed089b352de7f2a7f40eb3af...c2748a3c4ade01d3c97c90bb2618711632c54bda.  He said the text closely mirrored the TLS BR implementation.

Stephen noted that 14 CAs issue only public trust SMIME and have no TLS involvement.  He noted that he had sent a description of MPIC for S/MIME to the MDSP list as well as to the 13 non-member CAs via their contact details shown in CCADB and their CPS.  He received no acknowledgements from the CAs, but noted that some of the CAs appear to issue certs with emailprotection EKU but not email addresses in the certificates (ie for document signing).

It was agreed to ballot an immediate SHOULD implementation but to extend the SHALL date by up to two months beyond the TLS ballot text to accommodate S/MIME CAs who may not have been following the MPIC discussions.

Stephen described that he was wary of delaying the period for too long, as it risked also pausing the adoption in the SBR of other changes that seemed inevitable to the domain validation methods in the TLS BR.

Stephen noted that a follow-on ballot might address MPIC in the context of method 3.2.2.3 (mailbox control).

Stephen noted that Ballot SMC09 (dealing with WebTrust for Netsec among other items was ready for ballot and he sought endorsers.

The WG decided to proceed with the September 25 call, which overlaps the ENISA meeting attended by many CAs.  The call will be led by Martijn.

## 6. Any Other Business

## 7. Next call

Next meeting: Wednesday, September 25 2024 at 11:00 am Eastern Time

## Adjourned
