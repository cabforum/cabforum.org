---
aliases:
- /2024/01/31/2024-01-31-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2024-01-31 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-01-31 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 31, 2024

These are the Draft Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Abhishek Bhat - (eMudhra), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bruce Morton - (Entrust), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dave Chin - (CPA Canada/WebTrust), Don Sheehy - (CPA Canada/WebTrust), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Judith Spencer - (CertiPath), Keshava Nagaraju - (eMudhra), Marco Schambach - (IdenTrust), Morad Abou Nasser - (TeleTrust), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelley - (Apple), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stefan Selbitschka - (rundQuadrat), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Crawford - (CPA Canada/WebTrust), Tsung-Min Kuo - (Chunghwa Telecom), Wendy Brown - (US Federal PKI Management Authority) 

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of January 17 were approved.

## 5. Discussion

Stephen Davidson noted that “Ballot SMC05: Adoption of CAA for S/MIME” was in IPR, ending on February 16.

Stephen noted the discussion that was occurring at the Server Certificate WG regarding delegated third party DNS and that such language would likely be added to the S/MIME BR as well.  See https://github.com/cabforum/smime/issues/233

The WG considered additional text changes related to Ballot SMC06: Clarifications and corrections to S/MIME BR including those found at https://github.com/cabforum/smime/issues. Stephen noted the WG would move this to ballot soon, likely in late February.

-	Issue 232: Forbid issuance of certificates to ceased organizations https://github.com/cabforum/smime/issues/232. Stephen presented proposed text, with a suggested effective date of September 2024.  Bruce Morton said he’d be surprised if CAs were not verifying this already. Following extensive discussion, the approach was agreed.  It was suggested that the Server Certificate WG and the Code Signing WG adopt similar measures.
-	Issue 234: Clarify private key delivery to subscriber https://github.com/cabforum/smime/issues/234. Stephen noted the current text had become tangled through editing, where a requirement adopted from the CSBR (to deliver a password separately from a hardware device) had become separated in the text in a way that could be read in an unintended manner.  He said there had been enquiries about this, the treatment of APIs, and the issue of 3DES which was still required for delivery of P12s to many mobile devices.  In addition the current text “example methods” was unique in the SBR and it was not clear if they were a MAY or SHOULD or an exhaustive list.  It was noted that the example for passwords was probably inadequate and should be changed in both the SBR and CSBR.  There was significant discussion regarding the requirement for 128-bit encryption when it was acknowledged that 112-bit was a more appropriate level at this time, although the WG should revisit that at a future date.  Stephen presented possible text to implement the agreed approach.  Subsequent to the meeting it was noted that a Bugzilla has been filed related to this section.  See https://bugzilla.mozilla.org/show_bug.cgi?id=1877680 finding #4.
-   Issue 199: Repeated subject DN attributes. Discussion was deferred.

See also https://github.com/srdavidson/smime/blob/Ballot-SMC06/SBR.md


## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, February 14, 2024 at 11:00 am Eastern Time

## Adjourned
