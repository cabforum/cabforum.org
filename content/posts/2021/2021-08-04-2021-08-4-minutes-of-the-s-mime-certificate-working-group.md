---
aliases:
- /2021-08-04-2021-08-4-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-08-04 20:59:00
title: 2021-08-04 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

August 4, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Christy Berghoff (Federal PKI), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Eusebio Herrera (Camerfirma), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the July 23 teleconference were approved.

### 5. Discussion 

Clint Wilson asked about the status of the OIDs for the S/MIME BR certificate profiles, and whether they are firm enough for CAs to start considering to use them. Stephen Davidson noted the OIDs and their order have already shuffled several times in our proceedings. When the certificate profiles are considered sufficiently firm, a ballot will be held to finalize those OIDs.

Corey Bonnell gave an overview of discussion at the recent IETF 111 – LAMPS WG meeting relating to the proposal for a general purpose EKU for Document Signing at . Russ Housley said that opposition was mainly in wishing more granularity in the EKU for signing in different formats (PAdES, XAdES, etc).

Additional information on that discussion may be found at

The relevance is having a long term “escape path” for other cert use cases that overlap with our emailProtection standards.

A detailed discussion took place, and continued on the public list, regarding the disparity between the Mailbox/Organization/Individual profiles (which focus on what is in the Subject) versus the Sponsored profile (which is differentiated by its delegated RA status). There was concern that the S/MIME BR must enforce consistent verification across all the cert profile types no matter if the RA is done by the CA or is delegated.

While it was noted that the majority of S/MIME today are most likely issued via Enterprise RA, it was agreed that the Sponsored profile really was intended as “Individual associated with an Organization” such that our certificate profiles become:

- Mailbox (limited subject focused on email)
- Organization (legal entity)
- Individual Corporate (natural person associated with a legal entity)
- Individual Personal (natural person)

The Individual Corporate is effectively a combination of verified fields from Organization and Individual Personal fields.

This should simplify the definition of the profiles by their content alone.

It was discussed that Enterprise RAs who wished to issue certificates to external users might be allowed to use the Mailbox profile as the mailbox-control verification must always be conducted by the CA.

Later, when we start defining verification steps, we can assign which fields must be done by CA and which may be delegated. It will also be simpler to describe the audit/compliance obligations for delegated RA. We may later choose to “mark” certificates where verification is performed by a delegated RA, for example with an extension.

Tadahiko Ito asked if the Individual Corporate cert could include multiple O and multiple corresponding email addresses.

Stefan Selbitschka pointed out that in the Org profile, there really was no way to prevent a personal email address from being used with the organization details.

Next meeting returns to discuss the Organization profile.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, August 18, 2021 at 11:00 am Eastern Time

### Adjourned