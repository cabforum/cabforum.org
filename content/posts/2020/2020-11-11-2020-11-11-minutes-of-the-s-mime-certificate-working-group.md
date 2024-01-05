---
aliases:
- /2020-11-11-2020-11-11-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-11-11 18:53:30
tags:
- Minutes
- S/MIME
title: 2020-11-11 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

November 11, 2020

These are the Draft Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), , Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Doug Beattie (GlobalSign), Hazhar Ismail (MSC Trustgate.com), Hugh Mercer (GlobalSign), James Knapp (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Markus Wichmann (TeleTrust), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Pedro Fuentes (OISTE), Russ Housley (Vigil Security), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Thomas Zermeno (SSL.com), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

The Chair proposed adding a new membership to the Agenda, and following confirmation of their eligibility Telia Company was accepted as a Certificate Issuer member of the SMCWG by a consensus vote.

### 4. Approval of minutes from last teleconference 

The minutes of the October 28 teleconference were approved.

### 5. Discussion of certificate profile 

A discussion was held regarding the new approach being adopted in the Validation subcommittee of the Server Certificate Working Group to express certificate profiles in the TLS BR. Tim Hollebeek of DigiCert provided a description of that approach and showed an example. Previously the BR provided long-text descriptions of each allowed field and its requirements.

The new approach expresses the profiles as complete tables, including the possible settings and permitted values for each field in a certificate type including references related to that field (RFC etc).

A separate table will be provided for each of root, intermediate, leaf certificates. More complicated field types – such as extensions, Subject DN and/or key usages – may be burst into separate tables.

It was agreed to also adopt this new BR format in the S/MIME Baseline Requirements (SBR).

It was further agreed that draft SBR would be created in markdown, and that as sections are drafted from agreed discussions in our calls, they will be moved to GitHub for comment.

There was a discussion regarding multipurpose certificates and that our additional SBR should err where prudent to the use of SHOULD NOT clauses rather than MUST NOT, and allow a transition period for adoption of stricter standards.

Parking lot items requiring further discussion:

- Validity period
- Split vs dual key use, escrow
- Algorithms beyond those identified in BR
- Additional extensions such as qcStatements

### 6. Any Other Business 

No other business.

### 7. Next call 

The next call will take place on November 25, 2020 at 11:00am Eastern Time.

### Adjourned