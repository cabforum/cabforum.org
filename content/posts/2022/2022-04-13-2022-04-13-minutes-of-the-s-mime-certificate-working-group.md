---
aliases:
- /2022-04-13-2022-04-13-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-04-13 21:57:00
tags:
- Minutes
- S/MIME
title: 2022-04-13 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG 

April 13, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Morad Abou Naser (TeleTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the March 30 teleconference were approved. The minutes from the last F2F will be separately distributed.

### 5. Discussion 

The draft the S/MIME Baseline Requirements is available at

The working group discussed functional role mailboxes like Help Desk (i.e., not directly associated with a person). These vary from the Pseudonym (i.e., directly associated with a person).

Stephen Davidson walked through new Pseudonym text that was drafted following the last WG session, incorporating ideas and text proposed by Dimitris Zacharopoulos:

Stephen Davidson questioned whether the functional role type cert would be best handled under the Sponsor-validated or Organization-validated profile. It was suggested the Organization-validated profile might be more appropriate given that the functional role-type mailbox could be a machine or a list of people rather than an individual.

Stephen suggested that the S/MIME BR could define a term for Functional Name that would create guardrails for the functional role names allowed in the commonName. This would be similar to the Personal Name term we have already defined for givenName/surname flexibility.

Stephen suggested one guardrail could be allowing only the left hand side of the email address as a Functional Name. Stefan Selbitschka indicated that was a poor guardrail as the email operator could choose any name – and it would be better to tie to the full email address. It was indicated that Functional Names faced some of the same issues as OU – they are hard to verify.

Dimitris asked if there was another x.509 attribute that was more appropriate for this use. Stephen indicated another option could be “organisationName+left hand side of email address”. He asked for other proposals/feedback to define methods for Functional Name.

Stephen indicated the discussion occurring on the list regarding varying perspectives on the use of the serialNumber attribute. The current text is flexible, allowing “identifier assigned by the CA or RA to identify and/or to disambiguate the Subscriber”.

Stephen described three common uses of the serialNumber attribute in S/MIME certificates:

1. A random value added by the CA or RA to disambiguate a subject
1. Numbers particular to an Enterprise RA such as an employee number or customer ID
1. Official personal identifiers as described in ETSI EN 319 412-1 Section 5.1.3 (e.g. IDCxx-nnnnn, PASxx-nnnnn, TINxx-nnnnn)

Dimitris suggested that disambiguators should be verifiable and not dependent on the CA, such as in option 3. Wendy Brown suggested that would not be acceptable in some countries. Stephen suggested that perhaps a table, as used for other attributes in the draft, would help describe the possibilities allowed per cert profile. He agreed to propose some text.

Stephen thanked WG members who have provided feedback as PR on GitHub and on the list. He reiterated that the document is close to ready for the “preballot review” discussed in previous calls, so members should begin alerting their internal organisation contacts that will need to be involved.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, April 27, 2022 at 11 a.m. US Eastern.

### Adjourned