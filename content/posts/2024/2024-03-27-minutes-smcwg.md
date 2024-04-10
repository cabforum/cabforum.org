---
author: Stephen Davidson
date: 2024-03-27 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-03-27 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

March 27, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andreas Henschel - (D-TRUST), Ben Wilson - (Mozilla), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Judith Spencer - (CertiPath), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Morad Abou Nasser - (TeleTrust), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tim Crawford - (CPA Canada/WebTrust), Wendy Brown - (US Federal PKI Management Authority)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of March 13 were approved.

## 5. Discussion

Stephen Davidson noted that Ballot SMC06 was in Discussion Period https://lists.cabforum.org/pipermail/smcwg-public/2024-March/000950.html with voting to begin on April 4.
The group discussed https://github.com/cabforum/smime/issues/233 relating to the use of recursive nameservers outside the CA’s audit scope.  He noted a related ballot had passed in Server Cert working group but was subject to an IP claim.  Should that be resolved, the language would need to be added to the S/MIME BR.
He noted that some of the relevant new language was inserted in the middle of section 3.2.2.2 of the TLS BR. The S/MIME BR incorporate the text from section 3.2.2.4.  He requested that the TLS BR, when new requirements are added that will be incorporated by other WG, isolate the new requirement in a new numbered section.
The WG went on to discuss another pending ballot in the Server Cert working group relating to Multi-perspective Domain Validation https://github.com/cabforum/smime/issues/239. This too introduces new requirements that are relevant to the S/MIME BR, and if the TLS ballot passes, will require an update to the S/MIME BR.
The WG then discussed https://github.com/cabforum/smime/issues/230 a request to “relax” the subject requirements in the S/MIME BR such that the subject:country may be allowed to differ from the country used in the organizationIdentifier.  This allowance exists in the EV Guidelines.  Stephen asked if CAs could provide concrete examples where an entity incorporated in one country had operations in another that did not include an entity registered in that country.
Stephen noted that this subject had been discussed at length earlier in the writing of the S/MIME BR and it was agreed that only address information from government sources should be used in the Subject and that the two jurisdictions should agree.  Adrian Mueller of SwissSign agreed.  
The WG discussed that the S/MIME “adopted and then improved” the organizationIdentifier text from the EV Guidelines - particularly in the use of the GOV, INT, and LEI (when Active/Corroborated) registration schemes.  It was urged that these methods be fed back and introduced in the EV Guidelines.
Stephen again urged certificate issuers to gather information relating to the use of the Legacy profiles, in particular improvements to the Strict and Multipurpose profiles that would facilitate migration, and the reasonable timeframe for the deprecation of Legacy.
## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, April 10, 2024 at 11:00 am Eastern Time

## Adjourned
