---
aliases:
- /2023/02/01/2023-02-01-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-02-01 02:18:48
tags:
- Minutes
- S/MIME
title: 2023-02-01 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

February 1, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andrea Holland – (SecureTrust), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Matthias Wiedenhorst – (ACAB Council), Nome Huang – (TrustAsia Technologies, Inc.), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Russ Housley – (Vigil Security LLC), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Taavi Eomäe – (Zone Media), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the January 18 teleconferences were approved.

### 5. Discussion

Stephen Davidson noted that representatives were on the call from TrustAsia, who had not previously joined the WG. There was some confusion regarding lists on the wiki and membership tool. It was agreed that the TrustAsia representatives would leave the call and that the various membership lists would be checked. Stephen thanked the TrustAsia representatives for their cooperation.

The email verification procedures of Section 1.3.2.1 were discussed, following a question submitted by Christophe Bonjean. He noted that the text for Organization-validated or sponsor-validated profiles indicate the use of Section 3.2.2.1 (domain based) or Section 3.2.2.3 (operator of server). The text for the Mailbox-validated profiles describes Section 3.2.2.2 (email challenge).

Christophe asked if this prohibited Enterprise RAs from issuing mailbox-validated profiles on the basis of domain validation (3.2.2.1) or as operator of server (3.2.2.3). Stephen said that Mailbox-validated profiles could be issued using those methods if the domains belonged to the ERA.

Christophe asked if ERA could Sponsor-validated certificates based on email challenges (3.2.2.2). Stephen said only if the Section 3.2.2.1 or 3.2.2.3 procedures had also been carried out.

Bruce Morton asked why the mention of Mailbox-validated was even in the section as the verification was the responsibility of the CA. Stephen commented that the section was there to affirm that an Enterprise RA could issue certs for internal users as well as external users (with the Mailbox-validated profile).

Ben Wilson suggested adding text to describe issuance to internal vs external users. Stephen agreed to propose improvements to the text for consideration in a later Errata ballot. Eva Vansteenberge commented that the clarification might reside better in Section 3.2.3.

The WG discussed a question posed by Adrian Müller whether existing CAs can be used to issue leafs that are compliant with the SBR, or if the expectation was that new CAs should be required. Stephen asked if Certificate Consumers had any feedback. Stephen said that his interpretation was that an existing CA could be used if it met the requirements of Section 7.1.2.2. Adrian pointed out that the section requires certificatePolicies to be in the CA.

Bruce said that CAs issued after the effective date must be fully compliant – but some Certificate Issuers would wish to use pre-existing CAs from before the effective date. Corey Bonnell pointed out that existing CAs could be reissued to include the SBR certificatePolicies OIDs or anyPolicy. This was supported by Dimitris Zacharopoulos. Stephen asked if Certificate Consumers had any objection; no objection was raised.

Stephen noted that out the next meeting would seek to set an agenda for the Ottawa meeting. He also noted that we’d provide more information on the ETSI audit criteria in that next meeting.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, February 15, 2023 at 11:00 am Eastern Time

### Adjourned