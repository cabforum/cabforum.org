---
aliases:
- /2021-11-10-2021-11-10-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-11-10 22:50:00
tags:
- S/MIME
title: 2021-11-10 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

November 10, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Adriano Santoni (Actalis), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daniel Zens (GlobalTrust), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Eusebio Herrera (Camerfirma), Fotis Loukos (Google), India Donald (Federal PKI), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor), Juan Ángel Martin (Camerfirma), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the October 27 teleconference were approved.

### 5. Discussion 

Stephen Davidson emphasized that drafting was underway on the S/MIME BR and encouraged WG members to review the text at

It was asked if pull requests would be accepted; Stephen confirmed yes but requested that they focus on specific sections rather than broad ranging edits.

Discussion moved to External SubCAs (that is a CA operated by an entity other than the Root):

– Confirmation by the CA of compliance by the External subCA with the S/MIME Baseline Requirements is required before it is allowed to commence issuing. If technically constrained this is internal to the CA, if unconstrained an external audit is required. It was noted that root stores may require their prior approval of External subCAs, and there are moves to require additional reporting of these CAs in CCADB.

– Technical constraints – as drafted in section 7.1.2.2 (restricting the allowed EKU) and 7.1.5 (constraints).

[https://github.com/cabforum/smime/blob/preSBR/SBR.md#715–name-constraints][1]

Ben Wilson mentioned that discussion is occurring within the Mozilla community on related topics. Dimitris Zacharopoulos noted there was a historical discussion on mdsp whether the constraint on directoryName was required; he agreed to send that to the list.

– Internal audit obligations – it was agreed there will be a quarterly self-audit requirement by the CA which also extends to technically constrained External Sub-CAs (which do not require separate external audit at this time).

There was detailed discussion on the emphasis of internal audit on process/profile vs appropriate sampling of actual certs, it was agreed to stick close to the requirements defined in the TLS BR.

– External audit requirements – following a question from Bruce Morton, it was confirmed that if an External subCA is not technically constrained, it must have full external audit.

Clint Wilson asked to verify that verification of control of email address is always the responsibility of the CA, not allowed for Enterprise RA. Clint said there should be an approach of maximum transparency surrounding External SubCAs and other Delegated Third Parties.

Dimitris noted that the risks of S/MIME External SubCAs are probably no different than for TLS, so internal audit by the CA of technically constrained External SubCAs should be sufficient. Stephen noted that it is believed there are more S/MIME External SubCAs than existed for TLS. Ben noted that the S/MIME BR are a good opportunity for CAs to contribute to defining this supervision.

Fotis Loukos noted that S/MIME use cases vary from TLS so copying directly from the TLS BR may not always be best recourse to manage risks.

Future discussion will focus on identity validation for natural persons and legal entities

It was agreed to cancel the normal working group conference call scheduled for November 24 due to US holidays.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, December 8, 2021 at 11 a.m. US Eastern.

### Adjourned 

[1]: https://github.com/cabforum/smime/blob/preSBR/SBR.md#715--name-constraints