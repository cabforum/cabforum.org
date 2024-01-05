---
aliases:
- /2021-06-23-minutes-of-smcwg/
author: Stephen Davidson
date: 2021-06-23 20:51:00
tags:
- S/MIME
title: Minutes of SMCWG
type: post
---

June 23, 2021

These are the Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Don Sheehy (WebTrust), Enrico Entschew (D-TRUST), Eusebio Herrera (Camerfirma), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Rachel McPherson (TrustCor), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Crawford (WebTrust), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the May 26 teleconference were approved.

### 5. Discussion of certificate profile 

Discussion of the Mailbox-validation profile has concluded with a few exceptions, including validity period, use of LDAP, and additional extensions.

Stephen noted that changes have been made to the draft S/MIME BR in GitHub to reflect the use of Edwards Curve, as previously discussed. Corey Bonnell has also provided there the scripts that he used to derive the hex-encoded bytes.

The WG began to discuss contents of the [Organisation-validation Legacy profile][1]. This profile is intended for use where the Subject information describes a Legal Person/Legal Entity.

Although at this stage, the WG is simply laying out certificate profiles, a decision must be made whether verification will follow the OV-type requirements or EV. If EV were chosen, would the EV fields be required or optional?
Roughly described OV may verify that the holder is named Organisation X, while EV verifies the holder is a specific Organisation X in the identified jurisdiction.

A lengthy discussion occurred regarding the possible fields. Clint Wilson and Curt Spann indicated that a preference for the well-described verification processes in EV, but did not necessarily see the value of including all the EV fields in the certificates, and asked if user agents made decisions based on information included in S/MIME certificates.

Ben Wilson pointed out that similar verification would be used for the O information included in the Sponsored-validation profile (to be discussed later); and that the delegated Enterprise RA would only vary the mailbox-holder information.

Mads Henriksveen pointed out that the charter says “Methods for validating identities in TLS certificates also exist and should be leveraged where possible, as well as other identity validation standards common in the industry.”

It was pointed out that the VMC (Verified Mark Certificates) may have addressed the same topic. It was agreed to get additional information.

Paul van Brouwershaven noted that the ETSI standards defied semantics identifiers for Natural Person and Legal Person.

Wendy Brown raised the organisationUnit field may be relevant in S/MIME certificates, particularly for large Government entities. After considerable discussion it was agreed that this could only happen if the OU could be verified with similar procedures as used for the O, and linking the OU to the O. Wendy and Ben Wilson agreed to propose a verification

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, July 7, 2021 at 11:00 am Eastern Time

### Adjourned 

[1]: https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing