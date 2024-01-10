---
aliases:
- /2021/01/20/2021-01-20-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-01-20 13:22:00
tags:
- Minutes
- S/MIME
title: 2021-01-20 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 20, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust DataCard), Chris Kemmerer (SSL.com), Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hongquan Yin (Microsoft), James Knapp (Federal PKI), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Mevre Tunca (Zertificon), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rich Smith (Sectigo), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the January 6 teleconference were approved.

### 5. Discussion of certificate profile

Previous discussion had indicated consensus towards having a version of policy that accommodated accepted Legacy practices as well as a policy that formed a Strict view of S/MIME.

Doug Beattie proposed that the Legacy certificate policy would adopt the acceptable uses that the WG has discussed in past sessions, including multipurpose certificates. Stephen Davidson questioned whether the Strict policy would be dedicated top S/MIME alone, or might also accommodate some multipurpose types.

```
 Multipurpose S/MIME Strict S/MIME 
Mailbox-validation 2.23.140.1.5.1.1 2.23.140.1.5.1.2 
Organization-validation 2.23.140.1.5.2.1 2.23.140.1.5.2.2 
Sponsored-validation 2.23.140.1.5.3.1 2.23.140.1.5.3.2 
Individual-validation 2.23.140.1.5.4.1 2.23.140.1.5.4.2
```

Stephen requested that SMWG members take this concept to their organisations and provide feedback.

Ben Wilson suggested that it could be considered to have three levels – a wide legacy, future multipurpose, future S/MIME only. He indicated however he did not believe that differentiated UI would happen as only allow validated information should be allowed in the certs.

Sebastian Schulz pointed out that some organisations (such as using the Organization-validation or Sponsored-validation) might want a way to express a preference that a given email domain must use only Strict S/MIME.

Thomas Connelly asked why we would differentiate email signing from document signing. Dimitris Zacharopoulos supported the idea of Strict S/MIME and suggested distributing the concept to the public list for wider feedback. He suggested that one multipurpose use that might be associated with Strict S/MIME would be clientAuth.

Discussion reiterated that the Sponsored-validation type is intended for Enterprise RA situations that are common in S/MIME (for example where companies issue certificates to employees). In such cases the Sponsor is best suited to validate some information included in the certificate, such as title or employee ID. It is believed that the Mailbox-validation, Organisation-validation, and Individual-validation types will be able to pick up existing requirements from other CABF standards.

Morad Abou Nasser indicated that some users in Europe wish a Qualified S/MIME certificate and that the standard should accommodate the qcStatement extension etc. Stephen supported this, but said it would likely exclude the Sponsored-validation type.

Stephen suggested that the Strict S/MIME policy should continue to allow the use of split versus dual use keys. That was supported by Dimitris.

Stephen raised use of email addresses in the Subject (such as in the CN or Email). Dimitris suggested adopting the “deprecated but allowed” treatment that appears in other CABF standards. Stephen noted that in the past only the CA could validate email address/domains but raised attention to the RFC discussed on the SMCWG public list for ACME and SSO (the latter of which would be a delegation).

### 6. Any Other Business

None

### 7. Next call

The next call will take place on February 3, 2021 at 11:00am Eastern Time.

### Adjourned