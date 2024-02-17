---
aliases:
- /2024/01/17/2024-01-17-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2024-01-17 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-01-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 17, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Cade Cairns - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dimitris Zacharopoulos - (HARICA), Don Sheehy - (CPA Canada/WebTrust), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Janet Hines - (VikingCloud), Judith Spencer - (CertiPath), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Matt Cooper - (CertiPath (Private Person)), Mrugesh Chandarana - (IdenTrust), Nome Huang - (TrustAsia), Rebecca Kelley - (Apple), Rollin Yu - (TrustAsia), Russ Housley - (Vigil Security LLC), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Crawford - (CPA Canada/WebTrust), Tsung-Min Kuo - (Chunghwa Telecom)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of January 3 were approved.

## 5. Discussion

Stephen Davidson noted that “Ballot SMC05: Adoption of CAA for S/MIME” was in voting period.

Stephen noted the discussion that was occurring at the Server Certificate WG regarding delegated third party, and noted that the outcome of that discussion would have equal impact for S/MIME BR.  He invited WG members to consider if there where other areas that might be delegated under S/MIME that might differ from TLS.

Stephen noted also the discussion occurring on the SMCWG regarding the Certificate Template Information extension, including that the inclusion of third-party extensions brought along the need to comply with obligations relating to those extensions.

The WG considered additional text changes related to Ballot SMC06: Clarifications and corrections to S/MIME BR including those found at https://github.com/cabforum/smime/issues

-	Issue 229: Update for Registration Scheme for OrgID.  Clint Wilson questioned the “as amended” text as he was wary of including external references that might change without review.  Tadahiko Ito said that sometimes it could be difficult to track amendments to laws referred to in standards. It was noted that we already accept untracked amendments in the ISO 3166 references.  Martijn Katerbarg suggested that the text in A.10 be amended to make clear in these cases where the OrgID prefix does not match the Countryname ISO code.  The approach was agreed.
-	Issue 223: ISO code as SHOULD not MAY.  It was noted that this language also appeared in the TLS BR which has now been updated to MUST.  It was agreed to change.
-	Issue 232: Forbid issuance of certificates to ceased organizations.  Agreed to include language similar to EVG.  It was suggested that similar requirements should likely be added to the TLSBR and CSBR.
-	Issue 222: subject:organizationIdentifier requires subject:countryName to be present.  Agreed to modify as proposed.

See also https://github.com/srdavidson/smime/blob/Ballot-SMC06/SBR.md

## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, January 31, 2024 at 11:00 am Eastern Time

## Adjourned
