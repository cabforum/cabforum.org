---
aliases:
- /2020-09-02-2020-09-02-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-09-02 17:47:27
tags:
- S/MIME
title: 2020-09-02 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

September 2, 2020

These are the final approved Minutes of the Teleconference described in the subject of this message.

### Attendees {.wp-block-heading}

Matthias Wiedenhorst (ACAB’c), Arno Fiedler (Arno Fiedler), Mads Henriksveen (BuyPass), Qiu Dawei (CFCA), Zhang Danmeng (CFCA), Li-Chun Chen (Chunghwa Telecom), Andreas Henschel (D-TRUST), Enrico Entschew (D-TRUST), Dean Coclin (DigiCert), Stephen Davidson (DigiCert), Bruce Morton (Entrust DataCard), India Donald (Federal PKI), Wendy Brown (Federal PKI), Thomas Connelly (Federal PKI), James Knapp (Federal PKI), Doug Beattie (GlobalSign), Hugh Mercer (GlobalSign), Atsushi Inaba (GlobalSign), Hongquan Yin (Microsoft), Ben Wilson (Mozilla), Hazhar Ismail (MSC Trustgate.com), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Nazmi Abd Hadi (MSC Trustgate.com), Patrycja Tulinska (PSW), Rich Smith (Sectigo), Chris Kemmerer (SSL.com), Thanos Vrachnos (SSL.com), Markus Wichmann (TeleTrust), Morad Abou Nasser (TeleTrust), Corey Bonnell (Trustwave), Janet Hines (Trustwave), Russ Housley (Vigil Security, LLC), Jeff Ward (WebTrust), Don Sheehy (WebTrust), Tim Crawford (WebTrust), Burkhard Wiegel (Zertificon), Nathalie Weiler (Nathalie Weiler)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

Dean Coclin proposed that the WG return to the confirmation of a Vice Chairman, which was tabled from the meeting of July 22, 2020. It was agreed. The Chair nominated WG member Mads Henriksveen of BuyPass. A discussion was held on voting in accordance with the Charter, and it was confirmed there were no other nominations. A subsequent consensus vote confirmed Mads as Vice Chair of the SMCWG.

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the August 19 teleconference were approved.

### 5. New Members {.wp-block-heading}

No new members, but Tim Crawford of BDO has joined the WebTrust representation on the SMCWG.

### 6. Discussion of approach and deliverables {.wp-block-heading}

A discussion was held of major use cases for S/MIME certificates:

SIGNING

- to protect integrity
- to assert authenticity/origin
- for content commitment or wilful acts

ENCRYPTING

- to protect confidentiality

There was discussion regarding individual S/MIME certs versus those used on gateways, as well as a high level discussion of email control validation including for an individual (challenge/response) versus an enterprise (which could also conceivably use BR domain methods, CAA, or MX records)

KEYGEN AND/OR KEY STORAGE

- keygen by CA
- crypto token
- operating system (NSS, CAPI, etc)
- web browser (browser crypto)
- application (on iOS, Android, etc)
- enterprise email gateway (including domain certs)
- cloud signer/encryptor (cloud user agent)

There was discussion relating to

- Protection of the private key; attestation by token/HSM – the difficulty of finding a balance between encouraging agility with shorter validity periods and recognizing the security of keys on tokens
- Dual use (sign/encrypt in one cert) or split keys (separate certs for sign and encrypt)
- Marking a certificate if the private key is escrowed, potentially forcing split keys
- The possibility of creating a CABF OID (as exists for DV, OV, EV, and codesigning) to mark compliance with the eventual SMCWG requirements

The discussion continued to continue reviewing known example requirements that apply to S/MIME certificates.

There was a discussion regarding gateway certs (if they adhere to RFC 3183/domain Security Services for S/MIME) or if they were standard certs. It appears there is variation in practice with some being issued to a group email address while others apply to an entire domain. Many are used for gateway-to-gateway authentication. Further investigation is required into standardization of these domain certs. Ben Wilson raised the Direct profile which includes a domain cert that appears to match that description – and offered to add it to the standards sheet:

The Chair suggested setting up a separate sheet to gather different CA profiles, given the wide apparent practice in S/MIME.

### 6. Any Other Business {.wp-block-heading}

No other business.

### 7. Next call {.wp-block-heading}

The next call will take place on September 16, 2020 at 11:00am Eastern Time.

### Adjourned {.wp-block-heading}