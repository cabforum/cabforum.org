---
aliases:
- /2021-07-07-2021-07-07-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-07-07 20:29:00
tags:
- Minutes
- S/MIME
title: 2021-07-07 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

July 7, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Eusebio Herrera (Camerfirma), Hongquan Yin (Microsoft), India Donald (Federal PKI), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Matthias Wiedenhorst (ACAB’c), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Hollebeek (DigiCert), Vijay Kumar (eMudhra), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the June 23 teleconference were approved.

### 5. Proposed membership 

The proposed membership of e-commerce monitoring gmbh, globaltrust.eu as a Certificate Issuer was discussed, and subsequently confirmed. Current membership of the SMCWG is as follows:

- 28 Certificate Issuers: Actalis, Asseco Data Systems, BuyPass, Camerfirma, CFCA, Chunghwa Telecom, Comsign, DigiCert, D-TRUST, eMudhra, Entrust, GDCA, GlobalSign, GlobalTrust, HARICA, iTrusChina, MSC Trustgate.com, SECOM Trust Systems, Sectigo, SecureTrust, SHECA, SSC, SSL.com, SwissSign, Telia, TrustCor, TWCA, OISTE Foundation
- 6 Certificate Consumers: Apple, Google, Microsoft, Mozilla/Thunderbird, rundQuadrat, Zertificon
- 3 Associate Members: ACAB Council, U.S. Federal PKI, WebTrust
- 6 Interested Parties: Arno Fiedler, KPMG Korea, PSW, TeleTrusT, Vigil Security, Nathalie Weiler

### 6. Discussion of certificate profile 

It was confirmed that the SMCWG would continue its normal meeting schedule through the summer months.

The WG continued to discuss contents of the [Organisation-validation Legacy profile][1]. This profile is intended for use where the Subject information describes a Legal Person/Legal Entity.

The discussion centered on the use of verification methods drawn from OV vs EV – and the ramification this might have on Subject DN fields.

It was confirmed that if the EVG were used as a reference does not mean that the CA had to be EV-capable in root stores.

It was noted that even if the SMCWG elects to use sections of the EVG for verification it does not mean we have to follow the EVG cert profiles. In the original drafting of the EVG it was argued that additional identifier details were required in certificates to show that the CA had identified the correct specific entity. If that were desired, we could pursue different types of identifier:

- EV serialNumber, businessCategory, JOI
- organizationIdentifier per ETSI EN 319 412-1
- LEI in subject or extension

On previous calls, Certificate Consumers had been in favor of lighter SubjectDN in certificates.

Tadahiko Ito suggested the identifier schemes would need to be flexible. For example some countries use local language in their registries, which may not be compatible with ASCII.

Stefan Selbitschka pointed out that adding extensive information to the Subject may be of limited benefit as 1) it is not easily displayed in many email clients and 2) as seen in the TLS experience, extraneous information may increase the need for revocations.

Bruce Morton asked why we could not have both OV and EV. Tim Hollebeek noted that that Certificate Consumers had suggested that EV was a preferred method for the Strict and Multipurpose policy, but perhaps OV might be appropriate for the Legacy profile in order to facilitate bringing more of the S/MIME population into audit under the standards.

Dimitris Zacharopoulos suggested that in this first version of the standard perhaps the best approach is to allow more fields, noting the core mandatory ones, allowing CAs to choose which they use.

Stephen Davidson noted that in S/MIME seen in the wild there was great variety of formatting used in CN, such as the use of tags like (Contractor) or (Signing) after the name. In part this is given the difficulty that users with multiple certificates may have in telling them apart in the certificate store, or may be an artifact when information is pulled from Enterprise RA directories. He asked Certificate Issuers to review the options they allow, with a view to seeing if we could abstract any allowable patterns.

### 7. Any Other Business 

None

### 8. Next call 

Next call: Wednesday, July 21, 2021 at 11:00 am Eastern Time

### Adjourned 

[1]: https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing