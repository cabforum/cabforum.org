---
aliases:
- /2023/12/20/2023-12-20-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-12-20 00:00:00
tags:
- Minutes
- S/MIME
title: 2023-12-20 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

December 20, 2023

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Cade Cairns – (Google), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Paul van Brouwershaven – (Entrust), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of December 6 were approved.

## 5. Discussion

Stephen Davidson confirmed that Ballot SMC04 was published as S/MIME BR 1.0.2 on December 8. See <https://cabforum.org/smime-br/> for more details.

Stephen said there had been extensive consultation and feedback on regarding the addition of CAA for S/MIME to the S/MIME BR, and the intent was to go to ballot at the start of January 2024, proposed by Corey Bonnell (DigiCert) and endorsed by Dimitris Zacharopoulos (HARICA) and Ben Wilson (Mozilla).

Stephen described the ballot text (seen in updated form) at <https://github.com/cabforum/smime/compare/5fb2a7ee94d1c5684d5f32af11572e8c10cd2f8c…1fbbdc8f908e6eba779b4ea0de1cbfd20e156c3a>

Dimitris requested that the references to RFC 8659 be removed as they were incorporated as a normative reference within RFC 9495. Stephen preferred to maintain the text in 4.2.2.1 that ruled out the TLS property tags for S/MIME but it was agreed that RFC 4945 covered this in sufficient detail. Stephen also agreed to drop the RFC 8659 references.

Bruce Morton queried the language in 4.2.2.1 that required a contract provision for the CA to skip CAA for technically constrained subCAs as it seemed that might require communication with leaf cert holders. Stephen agreed to clarify the language that the contract was with the subCA not the leaf holders. It was suggested that this change also be made in the TLS BR.

Stephen noted that CAA was one of the areas where coordination was required between the different CABF BR such that requirements are consistent and specified for the same CPS subsections. Paul van Brouwershaven noted the consolidation analysis underway at <https://vanbroup.github.io/documents/#3224-caa-records>.

Dimitris asked whether additional language needed to be added to the S/MIME BR concerning how the DNS verification of CAA should occur, noting the recent bug at <https://bugzilla.mozilla.org/show_bug.cgi?id=1839305>. Stephen noted that there was already detail on this in RFC 8659.

In cases where DNSSEC is not deployed for a corresponding FQDN, an Issuer SHOULD attempt to mitigate this risk by employing appropriate DNS security controls. For example, all portions of the DNS lookup process SHOULD be performed against the authoritative nameserver. Data cached by third parties MUST NOT be relied on as the sole source of DNS CAA information but MAY be used to support additional anti‑spoofing or anti-suppression controls.

Corey was not aware of anything in the standards that prevented delegation of such a service, but thought it would be difficult to get an audit in such circumstances. Stephen asked if members had proposals for language to deal with this and questioned whether the topic belonged in the S/MIME BR or rather a higher level requirement like NetSec. Dimitris said that earlier discussions in the ServerCert WG had related to Whois.

Stephen noted that in January the WG would work to finalise another clarifications ballot found at <https://github.com/srdavidson/smime/blob/Ballot-SMC06/SBR.md>

Stephen thanked members of the WG for their participation and support in 2023, having undertaken the significant task of creating the first standard for an existing and diverse certificate use. He said it was a good sign of the standard’s clarity that it appeared to have been adopted around the world with few major incidents.

## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, January 3, 2024 at 11:00 am Eastern Time

Adjourned
