---
aliases:
- /2021-10-27-2021-10-27-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-10-27 16:45:00
tags:
- S/MIME
title: 2021-10-27 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

October 27, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees {.wp-block-heading}

Adrian Mueller (SwissSign), Adriano Santoni (Actalis), Ali Gholami (Telia Company), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daniel Zens (GlobalTrust), Don Sheehy (WebTrust), Enrico Entschew (D-TRUST), Eusebio Herrera (Camerfirma), Hazhar Ismail (MSC Trustgate.com), India Donald (Federal PKI), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Markus Wichmann (TeleTrust), Matthias Wiedenhorst (ACAB’c), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Wendy Brown (Federal PKI)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the October 14 teleconference were approved.

### 5. Discussion {.wp-block-heading}

Discussion continued on the maximum validity period in light of the Apple programme and the gmail guidelines stipulating 825 day maximum validity. Based on feedback from the CAs and elsewhere, Ben Wilson of Mozilla suggested that this period may be short, at least in the initial version of the S/MIME BR that could be stepped down in future versions. He suggested that S/MIME has a different threat model from TLS.

Wendy Brown noted that a short profile might push enterprises away from public trust S/MIME. It was also noted that equally the shorter life may encourage those enterprises to move forward with automation. Tadahiko Ito noted that automation for S/MIME was not necessarily widely deployed today.

Clint Wilson suggested that another approach would be to allow a longer validity for the Legacy profile – in return for stating a future deprecation date for that profile. Clint noted that Apple had not received much feed back on the updated CA policy, including the 825 day validity period. Stephen Davidson noted there may be a tradeoff of having the flexible Legacy profile at 825 days for an extended period, versus having the Legacy profile for 1095 days with a fixed sunset for its use.

It was discussed whether S/MIME validity was best dealt with as a policy issue or should be a matter of technical enforcement by application software. It was generally agreed that a common policy standard was preferred. It was agreed that the WG should seek affirmation from the Cert Consumers/ root stores that they intend to accept the S/MIME BR as the minimum requirement for S/MIME.

It was raised that the S/MIME ecosystem will be simpler to standardize when some of the overlaps, such as document signing, are clarified (such as by the IETF proposal for a dedicated EKU for doc signing).

Discussion was held the contents of the primary deliverable as described in the SMCWG charter, and whether the WG was adequately on track:

Verification of control over email addresses

- Certificate profiles for S/MIME certificates and Issuing CA certificates
- Key management and certificate lifecycle
- CA operational practices, physical/logical security, etc.

Stephen Davidson emphasized that drafting was underway on the S/MIME BR and encouraged WG members to review the text as coverage for some topics that have not been specifically discussed in the WG have been carried over from the TLS BR.

- Draft S/MIME Baseline Requirements
- Draft S/MIME Profiles

Comments and contributions are welcomed, particularly on methods relating to mailbox verification. We are generally taking the approach of “incorporating in” relevant text from other CABF documents rather than “referring out”. Future discussion will focus on:

- Identity validation for natural persons and legal entities

Clint Wilson raised that he would like to add focused discussion on the requirements surrounding the ‘problematic practice’ of the operation of external Sub CAs to the agenda of a future meeting. Stephen noted this would be done alongside discussion of delegated RAs.

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

Next call: Wednesday, November 10, 2021 at 11 a.m. US Eastern.

### Adjourned {.wp-block-heading}