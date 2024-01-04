---
aliases:
- /2020-09-16-2020-09-16-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-09-16 00:51:57
title: 2020-09-16 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

September 16, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees {.wp-block-heading}

Li-Chun Chen (Chunghwa Telecom), Tsung-Min Kuo (Chunghwa Telecom), Andreas Henschel (D-TRUST), Dean Coclin (DigiCert), Stephen Davidson (DigiCert), Bruce Morton (Entrust DataCard), Thomas Connelly (Federal PKI), Doug Beattie (GlobalSign), Hugh Mercer (GlobalSign), Atsushi Inaba (GlobalSign), Hongquan Yin (Microsoft), Ben Wilson (Mozilla), Hazhar Ismail (MSC Trustgate.com), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Pedro Fuentes (OISTE), Patrycja Tulinska (PSW), Tadahiko Ito (SECOM Trust Systems), Chris Kemmerer (SSL.com), Markus Wichmann (TeleTrust), Morad Abou Nasser (TeleTrust), Rufus Buschart (TeleTrust), Corey Bonnell (Trustwave), Russ Housley (Vigil Security, LLC), Jeff Ward (WebTrust), Don Sheehy (WebTrust), Tim Crawford (WebTrust), Burkhard Wiegel (Zertificon)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the September 2 teleconference were approved.

### 5. New Members {.wp-block-heading}

SECOM Trust Systems was accepted as a Certificate Issuer member of the SMCWG by a consensus vote.

### 6. Discussion of approach and deliverables {.wp-block-heading}

A discussion was held of major use cases for S/MIME certificates:

There was a continued discussion about suitable validity periods for S/MIME certificates. It was noted that S/MIME had more diverse use cases than TLS, and perhaps the best approach initially was to propose a SHOULD at a shorter span (such as 27 months) and a MUST at a maximum (such as 5 years). Gmail enforces a maximum of 27 months; Federal PKI PIV cards of 36 months; several CAs expressed 36 months. Greater variety may be seen in private trust S/MIME.

This lead to a discussion of the goals of setting validity period. Shorter validity periods may increase policy agility to allow reliable aging out the certificates in case of changes to policies or crypto standards. However, they may create challenges to other practices like the use of cryptotokens, and frequent certificate rotation may place a burden on users to maintain an archive of past keys/certificates in order to access past emails.

It was discussed that signing certificates may merit a different validity period from those used for encryption, or vary depending the amount of information in the Subject DN (for example driver’s licenses which frequently show a residential address have shorter validity than a passport which typically show only the holder’s details). It was noted that regimes like ETSI TR 119 300 for crypto suites also have a bearing.

There was discussion of who is the dominant Relying Party for S/MIME. Many S/MIME implementations are within a group of enterprises, whose consideration may be different from a “retail” standalone user or a government user. It was suggested that for issues like validity period that, when the SMCWG narrows a position, to seek wider feedback either from the CABF and/or other Relying Parties.

Again it was suggested setting up a separate sheet to gather different CA profiles for S/MIME.

### 6. Any Other Business {.wp-block-heading}

No other business.

### 7. Next call {.wp-block-heading}

The next call will take place on September 30, 2020 at 11:00am Eastern Time.

### Adjourned {.wp-block-heading}