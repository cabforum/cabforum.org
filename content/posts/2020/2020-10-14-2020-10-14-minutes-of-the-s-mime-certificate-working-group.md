---
aliases:
- /2020/10/14/2020-10-14-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-10-14 17:44:00
tags:
- Minutes
- S/MIME
title: 2020-10-14 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

October 14, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Adrian Mueller (SwissSign), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Andreas Henschel (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust DataCard), Burkhard Wiegel (Zertificon), Chris Kemmerer (SSL.com), Dean Coclin (DigiCert), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), India Donald (Federal PKI), James Knapp (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Li-Chun Chen (Chunghwa Telecom), Morad Abou Nasser (TeleTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE), Rich Smith (Sectigo), Rufus Buschart (TeleTrust), Russ Housley (Vigil Security), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the September 30 teleconference were approved.

### 5. Discussion of approach and deliverables

The discussion continued regarding the fields in S/MIME leaf certificates.

https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing

keyUsage: there was discussion relating to the encipherOnly and decipherOnly keyUsages that may accompany keyAgreement for ECDH, which were noted as being part of a key escrow scheme that is not known to be in common use. Following discussion, it was proposed these might be marked as “MAY but not recommended”. It was agreed that there is great variety in deployment for split vs dual use keys: settings will need to be specified for split vs dual use keys.

extendedKeyUsage: It was agreed that emailProtection MUST be present and serverAuth, codesigning, timestamping, anyExtendedKeyUsage, and ocspSigning MUST NOT be present.

It was agreed that MAY should include clientAuth, Adobe Authentic Documents Trust, Microsoft Document Signing. There was a discussion regarding default deny versus providing flexibility and future innovation. Settings will need to be specified for split vs dual use keys.

basicConstraints: If present, cA field MUST NOT be set true and pathLenConstraint field MUST NOT be present.

SKI: pick up from BR.

AKI: Identical to SKI in the issuing CA cert. authorityCertIssuer and authorityCertSerialNumber must not be populated.

certificatePolices: Define a CABF certificate policy OID asserting compliance with the SMCWG Baseline, and allow CA specific certificate policy OIDs. There was discussion regarding the use of expanding the OIDs to include a baseline email-verified versus a subject-verified OID, and the potential interest of Relying Parties in information such as the use of key escrow or cryptographic tokens.

MAY be present: cps (if present, MUST contain a valid HTTP or HTTPS link to the CPS) and user notice.

Discussion returned to the subject of key escrow; it was argued that keys with a digitalSignature MUST not be escrowed.

It was decided that a strawman would be further discussed on OID option, at least for marking out a roadmap, but that it was likely that for the initial version a single OID for the SMCWG Baseline would be adopted.

AIA: OPTIONAL use of caIssuers and ocsp (latter if present MUST contain at least one publicly accessible HTTP URI). AccessDescription MUST NOT contain any labels or parameters that are specific to an individual certificate. There was discussion relating to the use of LDAP, noting that it should be allowed but if included must be publicly available.

### 6. Any Other Business

No other business.

### 7. Next call

The next call will take place on October 28, 2020 at 11:00am Eastern Time.

### Adjourned