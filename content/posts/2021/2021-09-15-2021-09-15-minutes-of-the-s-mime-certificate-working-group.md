---
aliases:
- /2021/09/15/2021-09-15-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-09-15 20:04:00
tags:
- Minutes
- S/MIME
title: 2021-09-15 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

September 15, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), David Kluge (Google), Don Sheehy (WebTrust), Eusebio Herrera (Camerfirma), Inigo Barreira (Sectigo), Joanna Fox (TrustCor), Mads Henriksveen (BuyPass), Mauricio Fernandez (TeleTrust), Miguel Sanchez (Google), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the September 1 teleconference were approved.

### 5. Discussion

Ben Wilson raised whether the Certificate Issuers could be informally polled regarding the current and planned usage of ECC in S/MIME certificates, which information would be useful for Certificate Consumers. Subsequently a survey has been sent to the Management list, seeking Certificate Issuer feedback by October 8. The aggregate information (not CA specific) will be shared later with the WG.

Stephen Davidson noted an issue that the WG had ruled out the use of dataEncipherment as a keyUsage as this was typically not relevant to the S/MIME use case. However, research has identified that key management certs do exist that include dataEncipherment, possible as some dual use scenario. After discussion it was agreed that dataEncipherment should be allowed for the Legacy and Multipurpose profiles but not the Strict.

Stephen raised that an alternative suggestion had been made for the certificate profile OIDs. The current proposal is that each certificate type (mailbox, org, etc) each of whose arcs would be expanded for the validation (strict, multipurpose, etc). This creates 12 OIDs at this time. Another approach would have two types of OIDs: one for certificate type (mailbox, org, etc) and one for validation (strict, multipurpose, etc). This would create 7 OIDs, and leaf certs would express the relevant two OIDs. Clint Wilson and Ben Wilson expressed support for the current “single OID” proposal, using a single OID in the cert. Stefan Selbitschka did not note any obvious benefit to software. Corey Bonnell noted that the “two OID” option might lead to confusion when defining policy qualifiers specific to OIDs.

Discussion moved to the [Individual Personal-validation profile](https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit#gid=0).

There was discussion relating to the commonName being programmatically created from givenName+surname versus email. Clint Wilson voiced support for there being one option rather than choices. Stephen noted that the WG had feedback that enterprise users in particular preferred having options for display name in the CN, and the proposal was already a significant reform of existing practice.

This led to a discussion whether Pseudonym might be allowed in CN, and an extended discussion regarding the use of Pseudonym attribute with input from Inigo Barreiro and Eusebio Herrera. Concrete guidance on the use of Pseudonym is difficult to find in standards. It was decided to retain Pseudonym in the Mailbox profiles but to drop it from the Personal profiles.

Title will tentatively be allowed subject to defining a verification regime later.

Wendy Brown questioned if we are leaving enough scope to ensure Subject uniqueness from a CA. Clint said that spoke in favor of requiring an email in the Subject while Stephen pointed out that serialNumber is also available to the CA.

Renne Rodriguez indicated that we move to verification we would be well advised to provide guidance for the insertion of multiple/hyphenated names or surname-firstname formats into certs.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, September 29, 2021 at 11:00 am Eastern Time

### Adjourned