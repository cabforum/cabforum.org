---
aliases:
- /2022-03-03-2022-03-02-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-03-03 20:44:00
tags:
- Minutes
- S/MIME
title: 2022-03-02 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG 

March 2, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Clint Wilson (Apple), Corey Bonnell (Digicert), Daniel Zens (GlobalTrust), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eusebio Herrera (AC Camerfirma SA), Fotis Loukos (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Mrugesh Chandarana (IdenTrust), Nick France (Sectigo), Patrycja Tulinska (PSW Group), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the February 16 teleconference were approved. The minutes from the F2F will be separately distributed.

### 5. Discussion 

Clint Wilson raised a question regarding the new “MX record method” described in Section 3.2.2.3 of the draft . Namely that text was proposed with the thought that the Applicant would be an email service provider. Client questioned whether an variant method would be desired or useful if an individual Applicant or even another service provider (rather than an email service provider) might want to use MX records to establish control.

Stephen Davidson indicated that the current text was written broadly so that it could apply if the Applicant was a service provider or the domain holder. Clint described a case where an individual might have an internal mechanism to tell a service provider that a certificate would be requested, but to communicate separately with the CA. This might facilitate automation but allow the individual to control the certificate rather than them being managed in bulk by the service provider. Fotis Loukos stated that the existing text would allow that, but it may make sense to separate the methods. Stephen and Clint agreed to bring a further description to the group.

As an aside Clint pointed out that a future version of the S/MIME BR should adopt CAA so that domain holders could restrict external service providers from acting as Applicants for a domain.

The WG continued discussion from the F2F meeting relating to Enterprise RA, and the overlap of content in 3.2.4 Individual Identity vetting and section 8.8 on internal audit. The group discussed Doug Beattie’s email to the list on the subject, which worried that Enterprise RAs might not have full legal names for their certificate holders.

Stephen pointed out that the requirement in the draft was not for FULL LEGAL Name but rather a name that was backed by ID, and furthermore that Enterprise RA records were considered authoritative sources for the Sponsor-validated profile.

Doug Beattie noted that his name was Douglas but he commonly was called Doug. Stephen noted that new details on naming were provided in 3.1.1 and 3.1.4 of the draft .

Inigo Barreira noted the ETSI language that requires givenName and surname to be formal names, but allows a “friendly name” use in the CN. Stephen noted that it was difficult to codify rules for converting proper names to nicknames or casual names and that the definition for the CN is currently prescriptive:

Stephen pointed out that the use of “role” names (like Help Desk) was harder to deal with because of the need to verify Subject info, except in cases with the email was repeated in the CN (“helpdesk@example.com).

Joanna Fox indicated the language that exists in the (EV) vetting for the Principal Individual of a Business Entity, wherein an individual can make a “personal statement” attestation with a notary that allows “names by which a person is or has been known including all other names used” . This might be an option for “supplementary evidence” when people want to use a name that varies from ID. Stephen noted that it was difficult to write rules other than “use common sense” that accommodate Peter wanting to be called Pete without opening the door for him to choose to be called PayPal.

Stephen noted that he believed that certificates issued via an Enterprise RA should include a flag such as an extension or something in the Subject so that relying parties could be made aware of their origin. Running out of time, it was agreed to return to this point.

The draft the S/MIME Baseline Requirements is available at

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, March 16, 2022 at 11 a.m. US Eastern.

### Adjourned