---
aliases:
- /2022/01/05/2022-01-05-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-01-05 21:58:00
tags:
- Minutes
- S/MIME
title: 2022-01-05 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 5, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Clint Wilson (Apple), Corey Bonnell (Digicert), Daniel Zens (GlobalTrust), Dimitris Zacharopoulos (HARICA), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Miguel Sanchez (Google), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW Group), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Sebastian Schulz (GlobalSign), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the December 22 teleconference were approved.

### 5. Discussion

The working group discussed the approach to initial identity authentication for Organizations. Stephen Davidson reminded the group that the charter called for the S/MIME Baseline Requirements to leverage existing work created by other CABF working groups.

Stephen said that section 3.2 of the SMIME BR would lay out the three major components of Subject data used in certificates: Organization information, Mailbox authorization or control, and Individual identity.

Bruce Morton questioned if we should be allowing OV vs EV levels for the Org vetting. Dimitris Zacharopoulos said that EV was possibly much higher than is used by many CAs for S/MIME today and wondered if there was broad support from Cert Consumers for that higher level. Corey Bonnell noted that Apple had asked for a unique identifier to be verified for Org subjects.

Clint Wilson reiterated that Apple was looking for a high standard of verification, and that EVG was already approved and is proven so might be easier for us to adopt – but that’s not to say it is the only acceptable option. Ben Wilson said that some of the additional checks in EVG like operational existence may not be deemed essential as they were vestiges of early concepts in EV that leaned heavily on site visits for the vetting.

The group discussed the use of the EV Guidelines for the Organization vetting, walking thru the actual EVG text on screen at some length. The EVG do not follow RFC 3647, so elements of EVG section 11 will be adopted as appropriate for the S/MIME BR. There was discussion whether to attempt to update/consolidate the EVG text, or to make only minimum changes to the previously approved text in order to simplify approval of S/MIME BR v1.

There was discussion whether the S/MIME use required the check of the Org legal existence – or if the additional EVG sections on physical existence or operational existence where required. Ben Wilson noted that the physical checks where normally easily done via the same data sources but allowed expanded checks if a different address from the registration is desired to be used. Dimitris noted that EVG requires these address checks even if the cert includes no address information.

Russ Housely noted that we needed to verify that the Org that is vetted is the Org that has email control over the domain where those methods are used.

The information relating to roles and validation of authority – which is intermingled with the Org vetting in the EVG – will most likely be pulled into a separate subsection per RFC 3647.

Stephen noted that he would start pushing some of the draft text up to the [github repository](https://github.com/cabforum/smime/blob/preSBR/SBR.md) which should make it easier for members to review in context.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, January 19, 2022 at 11 a.m. US Eastern.

### Adjourned