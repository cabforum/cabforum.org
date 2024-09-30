---
author: Stephen Davidson
date: 2024-08-28 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-08-28 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

August 28, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Corey Bonnell (DigiCert), Daryn Wright (Apple), Enrico Entschew (D-TRUST), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Patrick Patterson (Carillon Information Security Inc.), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tsung-Min Kuo (Chunghwa Telecom)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of August 14, as amended, were approved.

## 5. Discussion

Stephen Davidson noted that the IPR period for Ballot SMC08 closed at end of day UTC on August 28, and an updated v1.0.6 of the SBR would be released on August 29.

The WG discussed a draft text for SMC09, addressing the following:
•	Update for new NetSec WebTrust.
•	Clarity that multiple CP OIDs are allowed.  The current language was based upon text that was subsequently removed from the TLS BR.  The proposed text clarifies the intended requirement, which is that leaf certificates may include multiple CP OIDs that are documented in the CA’s CP or CPS.
•	Pre-linting, based upon a similar ballot recently passed for the TLS BR aiming for full adoption by September 2025.
•	A.2 natural person identifiers maintaining parity with ETSI standards, particularly with the new EID registration scheme.

See https://github.com/cabforum/smime/labels/SMC09  and https://github.com/srdavidson/smime/compare/927a78831c9330fe7c36d4a484c9eeed801c9c9d...e9c283c254744aaed47f429d158b85a21a28183d .  Stephen asked for endorsers.

The WG discussed a request for clarification of text in section 7.2.2 of the SBR:
“The CRLReason indicated SHALL NOT be unspecified (0). If the reason for revocation is unspecified, CAs SHALL omit the reasonCode entry extension.”

It was agreed that the text meant:
1)	CAs shall not insert 0 in the reasonCode extension when there is an unspecified cause of revocation.  The extension would be omitted in this situation.
2)	If the CA or subscriber does not provide a reason for revocation, it may be considered to be an unspecified cause of revocation.  The reasonCode extension would be omitted in this situation.

Stephen noted that the SBR did dictate using specific reasonCodes in some situations.

The WG returned to discussion of the draft MPIC text.  Stephen noted that arguments had not been made against the adoption of MPIC for S/MIME, but rather concerns had been posed on implementation timelines, particularly for CAs with no TLS operations.

Patrick Patterson asked if MPIC would only apply if automated means were used for validation.  Stephen noted that the SBR 3.2.2.1 and 3.2.2.3 referred to the TLS BR section 3.2.2.4 for the allowed methods of doing email domain verification.  Individual methods of that TLS BR section will require MPIC going foward.

Stephen noted that on a previous call it had been suggested that MPIC might be applicable to SBR 3.2.2.2 (mailbox-control) or other email exchanges by the CA.  Adrian Mueller commented that, depending on how the requirement was written, this might necessitate multiple emails and complicate the method.  Martijn Katerbarg noted that this issue had also been raised in the TLS discussion and had been set aside for now.  Stephen noted that this SBR, similarly, would not address that case, and invited those with an interest to make proposals for a future ballot.

The WG reviewed the text that will form the basis of ballot SMC10 for MPIC. He requested endorsers.  Noting that there are at least 14 CAs that only issue S/MIME certificates, he proposed using the approach that was suggested in a prior WG meeting.  In this approach, the S/MIME BR would 1) remove or update the current pinning to v 2.0.5 of the TLS BR, 2) adopt changes introducing MPIC but 3) assign effective date later than that used in the TLS BR.  He suggested a SHOULD of March 2025 and a SHALL of September 2025. This would have the practical effect of allowing more lead time for CAs with no prior awareness of MPIC to prepare, but “skip the warmup” stages described in 3.2.2.9 in the TLS ballot.

Stephen asked the browser representatives if there was any objection to this staged implementation of MPIC for the SBR. None was raised.

Ben Wilson noted that a TLS cert had 1-to-many relationship. Stephen responded that an S/MIME domain validation for an enterprise was similar as it could result in the issuance of many certificates.

Ben Wilson asked if efforts had been made to reach out to S/MIME-only public-trust CAs.  Stephen noted that there appeared to be only 14 such CAs in CCADB and that one, Carillon, was now a SMCWG member.  He noted that he had previously reached out to the root programs requesting that information be shared with their members, and direct contact was being made with the remaining 13 known S/MIME-only CAs (using the email addresses logged in CCADB or their CPS) to inform them of the MPIC discussion. No responses had been received so far.  Ben suggested that MPIC for S/MIME messaging also be sent to MDSP.

## 6. Any Other Business

Tom Zermeno asked for discussion on the subject of Affiliates.  It will be added to a future meeting.

## 7. Next call

Next meeting: Wednesday, September 11 2024 at 11:00 am Eastern Time

## Adjourned

