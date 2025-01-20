---
author: Stephen Davidson
date: 2024-12-18 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-12-18 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

December 18, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Albert de Ruiter (Logius PKIoverheid), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of December 4 were approved.

## 5. Discussion

The WG confirm the participation of Wojciech Jakubowski as an Intersted Party.  

Stephen Davidson noted that SMC010 passed and would complete IPR on December 22. No claims had been received at the time.

The WG discussed the impact of TLS Ballot SC-080v3 which requires CAs to modify then deprecate the use of WHOIS to identify domain contacts and in certain domain control validation methods, described in section 3.2.2.4.2 (Email, Fax, SMS, or Postal Mail to Domain Contact) and 3.2.2.4.15 (Phone Contact with Domain Contact). These TLS BR sections are incorporated by reference into section 3.2.2 of the S/MIME BR, so will automatically also affect S/MIME email domain validation. Stephen noted the pace of change to the TLS methods, and asked the WG to be alert to alternatives such as RFC 8322 that could assist in email certificate validation and automation.

The WG returned to discuss Issue #263 (EUID in OrganizationIdentifier attribute)  https://github.com/cabforum/smime/issues/263, noting that an update would keep pace with changes proposed for the corresponding ETSI use of the NTR registration scheme. Stephen thanked Adrian Mueller for his input. The WG discussed Stephen’s draft ballot text, with the proposed changes subsequently incorporated at https://github.com/srdavidson/smime/compare/cd7c998984050e61fabddda0cbba2e9b02954360...8150e7ac0cf4a6f0c2afd7ad9df98b12330c00bc.  Stephen noted that a ballot would likely move ahead in early 2025.

The WG returned to discuss Issue #3 (Additional methods for Domain Authorization or Mailbox Control). Stephen thanked Guillaume Amringer for his feedback to the list on the ACME method, particularly regarding the use of ACME External Account Binding. That feedback is incorporated at https://github.com/srdavidson/smime/compare/cd7c998984050e61fabddda0cbba2e9b02954360...893390696b4080acb00cb2df650d895fdbf6c738. It was decided to only modify the RFC requirements for conformity with the S/MIME BR or where a security risk was identified. It was decided to separately number the method rather than to create a subset of the mailbox control method (3.2.2.2) as additional methods would surely be created in future. Russ Housley noted that the ARI RFC (ACME renewal information) would be published in early 2025. The WG will have a future discussion regarding whether the use of ACME for S/MIME should or shall include support for ARI.
Stephen asked if the group should consider the Internet-draft “ACME Extension for Single Sign On Challenges” (https://tools.ietf.org/html/draft-biggs-acme-sso-00).  Russ noted that the draft had expired.  No support was voiced to proceed. 

Stephen noted that the PKI Consortium’s PQC conference in January included a talk about post-quantum S/MIME, and suggested that it may be an interesting topic for the WG as well.  He asked if the email Certificate Consumers would be willing to give a talk in 2025 about their PQC plans.

## 6.     Any other business 

The meeting of January 1, 2025 will be cancelled.  

## 7. Next call

Next call: Wednesday, January 15, 2025 at 11:00 am Eastern Time

## Adjourned

