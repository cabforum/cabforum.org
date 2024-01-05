---
aliases:
- /2021-08-18-2021-08-18-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-08-18 20:31:00
tags:
- Minutes
- S/MIME
title: 2021-08-18 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

August 18, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Burkhard Wiegel (Zertificon), Clint Wilson (Apple), Don Sheehy (WebTrust), Enrico Entschew (D-TRUST), Eusebio Herrera (Camerfirma), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the August 4 teleconference were approved.

### 5. Discussion 

The eligibility and declaration from IdenTrust to participate as a Certificate Issuer was confirmed by consensus.

Discussion returned to the Organisation-validation profile at . This is the profile that is used to issue certificates naming a legal entity in the subject.

Following discussion, it was agreed that for cert profiles that include organisation information, the existing verification procedures of either the EVG or TLS BR should be used – and that an identifier should be included in the cert that results from that vetting. It was discussed that there should be options for the identifier; options are:

A            use the Subject organizationalIdentifier field per ETSI EN 319 412-1

B            use the Subject JOI/businessCategory/serialNumber per EVG

C            use the LEI extension per ISO 17422

CAs could chose which option to use, identified in their CPS.

Certificate Consumer representatives noted that it was unlikely that such information would be regularly displayed, and at this stage the most important fields from a UI perspective would be the Subject CN and DN email.

It was agreed that the CN should be restricted to be either a repeat of the O or the DN email. Wendy Brown raised the issue of OU and the US Government and agreed to work with Ben Wilson to come up with a proposal for validating allowed OU from public data sources. If that were accepted potentially the OU could also be allowed in the CN either alone or as an O: OU combination (for example U.S. Government: Department of State).

The current proposal requires allows variations of MAY/MUST for the subject geographic fields. There was discussion if they should be user or required if a more specific identifier is included in the certificate. There was discussion whether some of the fields that are rarely used in SMIME, such as streetAddress or postalCode, should be blocked from some certificate types. For example, granted that S/MIME are only incidentally caught in Censys, there are only ~200 certs found with postalCode in the Subject, most from a single provider.

qcStatements would be allowed, as well as the LEI extension. No other extensions would be allowed in the Strict policy.

In the next session, the group will move on to discuss the Individual profiles.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, September 1, 2021 at 11:00 am Eastern Time

### Adjourned