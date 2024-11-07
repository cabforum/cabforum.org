---
author: Stephen Davidson
date: 2024-10-23 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-10-23 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

October 23, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daryn Wright (Apple), Inaba Atsushi (GlobalSign), Jozef Nigut (Disig), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of September 25 were approved.

## 5. Discussion
Stephen Davidson noted that the voting period for SMC09 was to close later in the day of the teleconference (October 23) and encouraged voting.  Assuming a successful ballot, IPR would be open through November 22.

Bruce Morton asked about the new Note 3 that was added and asked if the IPR was 30 or 60 days. He wondered if the text conflicted with the EVG in the case of Germany.  Stephen noted that NTR in Europe was intended to national under the ETSI requirements, and noted that a CR was being discussed in ETSI dealing with this issue.  He said that he would seek allowance to discuss the ETSI proposal in this group but noted that it was consistent with our approach and would also deal with the EUID that had been discussed in our WG previously.

Paul van Brouwershaven asked if normative content should be included in a note.  The WG concluded that the CABF standards include normative requirements in notes.  Stephen noted that a style guide for CABF writing would be helpful.

Stephen also noted that SMC10 dealing with MPIC was to proceed to ballot soon.  Andrea Holland asked what efforts that had been made to reach out to CAs that issue S/MIME but not TLS.  Stephen said that messages had been sent to the root program managers, to MDSP list, and to the contacts for the affected CAs as found in CCADB or the CA’s CPS.  He said that he had not received any feedback, but one of the orgs had in fact joined the WG.

Wendy Brown noted there was ongoing discussion in the Server Cert WG on MPIC implementation.

The WG reviewed several proposed ballots from the Server Cert WG dealing with domain validation that might have a knock on effect on the SMCWG.

The WG discussed SC-080 V3: Sunset the use of WHOIS to identify Domain Contacts and relying DCV Methods https://github.com/cabforum/servercert/pull/555. The WG concluded that the deprecation of this method did not “break” other language in the S/MIME BR, but Martijn Katerbarg noted that awareness should be raised of this “arm’s length” standards change for S/MIME CAs.

The WG discussed at some length SC-081 Impact of reduced cache of domain control https://github.com/cabforum/servercert/pull/553.  Stephen noted the concern that the change to TLS section 4.2.1 reducing SAN validation reuse from 398 days to 10 days by 2027 was a concern to many in S/MIME as email domain validation is used to scope the privileges of an Enterprise RA.  The TLS changes were possible because of the implied use of ACME or equivalent automation which was currently not feasible in S/MIME.

Stephen noted that the text in TLS BR 3.2.2.4 said “In all cases, the validation must have been initiated within the time period specified in the relevant requirement (such as Section 4.2.1 of this document) prior to Certificate issuance.”  The WG determined that the “such as” did not interfere with the time frames set in the S/MIME BR’s own Section 4.2.1 which continue to allow 398 days reuse of email domain validation.  Clint Wilson said that the S/MIME BR incorporates the TLS BR 3.2.2.4 “methods” but the S/MIME BR 4.2.1 took predence on reuse.

A minor clarification was noted that the text “In the event of changes to the TLS Baseline Requirements methods specified in Section 3.2.2.1, a CA MAY continue to reuse completed validations and/or supporting evidence for the period stated in this section.” should also mention 3.2.2.3.

The WG discussed possible next items to add to the WG’s roadmap.  Stephen asked for CAs and Certificate Consumers to suggest new automation methods that we should look at.  He mentioned the ACME for S/MIME RFC, which realistically fit within an existing method, but asked if it should be specifically called out.  

Stephen specifically asked for assistance from EU CAs in reviewing the text for the use of eID in light of the EUDI Wallet, and asked for expressions of interest from CAs in developing ballots to allow reliance on specific national e-signatures. 

## 6. Any Other Business

## 7. Next call

Next call: Wednesday, November 6, 2024 at 11:00 am Eastern Time

## Adjourned
