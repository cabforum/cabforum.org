---
author: Martijn Katerbarg
date: 2025-02-26 00:00:00
tags:
- Minutes
- S/MIME
title: 2025-02-26 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG
 
February 26, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## Attendees
Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Wendy Brown (US Federal PKI Management Authority)
 
## 1. Roll Call
Taken from recording.
 
## 2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.
 
## 3. Review Agenda
Minutes were prepared by Stephen Davidson.
 
## 4. Approval of minutes from last teleconference
The minutes of the January 29 and February 12 teleconferences were approved.
 
## 5. Discussion
Stephen Davidson walked thru the EUID ballot text at https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...d85ed6f54589728e1925deb415513cbf3b31a4fc  which had been amended reflecting input from the last teleconference, such as restoring the SHOULD declarations for unique identifiers, and use of the EUID form for German legal entities.  Adrian Mueller said the updated text satisfied the concerns he’d raised.  Martijn Karterbarg said that the SHOULD was appropriate as we could not anticipate variations in every government scheme, and that uniqueness was considered at the Subject DN level.
 
The WG discussed the requirements for unique identifier, and concluded that the existing text was adequate. Stephen noted that our text was slightly more specific than that proposed by ETSI which, for example, would allow German entities to be expressed either using the NTR+subdivision form, or the NTR+EUID form.
 
Stephen noted that 1) like other CABF standards the SBR included normative requirements in Notes, and 2) the current draft moved some requirements from Appendix A to Section 7.1.4.2.2 (d) in order to be grouped with similar requirements, for easier reference.  Adrian Mueller agreed to send the list of EUID codes to the SMCWG list.
 
Stephen noted that the corresponding ETSI update had been approved but was subject to a final editing step before it will be published; this could take up 2 months.  He asked if there were strong opinions.  Judith Spencer asked if we referred to that standard; Stephen said no, our goal was to be consistent with that standard.
 
The WG then discussed a topic that had been raised in the past and not resolved in full, namely whether revoked S/MIME should remain on CRL after their expiry. The rationale for the proposal is that encrypted emails may be retained and opened in future so the revocation information remains relevant.  See https://github.com/cabforum/smime/issues/95 .
 
It was noted that the CABF code signing requirements had a similar rule, requiring at least 10 year retention.  See https://github.com/cabforum/code-signing/blob/main/docs/CSBR.md#72-crl-profile. Tadahiko Ito noted that the retention was probably not relevant for encryption keys (which are used in a communications protocol), but might be for signing or archiving.  He mentioned an IETF draft dealing with email processing https://datatracker.ietf.org/doc/html/draft-ietf-lamps-e2e-mail-guidance-17 which may address the topic.  Stephen noted that a requirement would have to address split versus combined keys for Sign/Encrypt.
 
Pedro Fuentes asked if there was an opportunity to define signatures differently so status could be embedded within them.  Stephen said that was outside scope of the group, and might be better suited to IETF.
 
Adrian Mueller said this was a product feature that should be defined by CAs.  Stephen asked if “autoenroll” solutions might lead to non-security revocations that might lead to CRL bloat if this was adopted.  Andy Warner said that MDM really should be using private hierarchies.

Stephen noted that the draft text for an ACME for S/MIME ballot could be found at
https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...46f48f891743860a8ab30e8c8f0985bfe22c8d57.  It will be the topic of a future call.
 
## 6.     Any other business
None.
 
## 7. Next call
Next call: Wednesday, March 12, 2025 at 11:00 am Eastern Time
 
## Adjourned