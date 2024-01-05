---
aliases:
- /2021-04-14-2021-04-14-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-04-14 20:53:00
tags:
- Minutes
- S/MIME
title: 2021-04-14 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

April 14, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Hazhar Ismail (MSC Trustgate.com), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Klauss Voss (Zertificon), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the March 31 teleconference were approved.

### 5. Discussion of certificate profile 

A review was made of the current state of the draft S/MIME Baseline Requirements (SBR), which have now been pulled into the CABF Repository at: in the pre-SBR branch.

A discussion took place on proposed language for 8. Compliance audit and other assessments.
See

Following discussion it was agreed that, for example in the case of WebTrust seals, the S/MIME Baseline Requirements (SBR) audit would be a standalone set of criteria audit. Bruce Morton raised possible complications in the case of the NetSec which may be referenced by the SBR. Although this is a standalone document from the perspective of the CABF, its coverage is integrated with the WebTrust TLS BR audit criteria. However, it was indicated that the NetSec criteria were a separate section of WebTrust TLS BR – and that this issue already exists for the Code Signing BR.

Dimitris Zacharopoulos reminded the group that previous discussions had occurred in the CABF before the formation of the SMCWG in which it had been suggested that NetSec be forked into this WG, or deviations from the Server WG’s NetSec specifically noted.  It was noted that NetSec will require a separate future discussion in the SMCWG.

It was questioned whether some of the “inherited” language in section 8 was necessary. For example, is it necessary in an S/MIME technical standard to require CAs to adhere to their local laws and licensing requirements? Stephen Davidson noted that this language may have more relevance in S/MIME, for example where countries may have laws relating to key escrow. In addition he noted the lack of definition for “licensed as a CA in each jurisdiction where it operates”: does that mean from where it is incorporated or from where its services may be sold or used? Dimitris indicated that ISO 17065 would define this as the CA place of business.

There were questions regarding the continuing applicability of the references to internal audit schemes for Government CAs in section 8.4 (item 3 and onwards related to non-core controls) as this related to legacy TLS schemes and may no longer be relevant. It was suggested to seek feedback from the Certificate Consumer trust store operators.

It was proposed that additional comments from members on this Section 8 should be shared the SMCWG public list. As the audit discussion had been so active, the intended discussion on the Mailbox-validation profile was deferred until a later call.

It was noted that proposed text for algorithms has been added to the draft in

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, April 28, 2021 at 11:00 am Eastern Time

### Adjourned