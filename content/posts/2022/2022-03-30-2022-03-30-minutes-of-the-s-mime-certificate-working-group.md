---
aliases:
- /2022/03/30/2022-03-30-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-03-30 21:51:00
tags:
- Minutes
- S/MIME
title: 2022-03-30 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG

March 30, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Ashish Dhiman (GlobalSign), Bruce Morton (Entrust), Cade Cairns (Google), Clint Wilson (Apple), Corey Bonnell (Digicert), Daniel Zens (GlobalTrust), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Eusebio Herrera (AC Camerfirma SA), Fotis Loukos (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Li-Chun Chen (Chunghwa Telecom), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the March 16 teleconference were approved. The minutes from the F2F will be separately distributed.

### 5. Discussion

The draft the S/MIME Baseline Requirements is available at

The WG discuss the organizationalIdentifer as described in Appendix A. This text was adopted from the EVG. One of the registration schemes is called VAT, after its origin in ETSI EN 319 412-1 section 5.1.4. A PR to the SBR draft was submitted to create new schemes for tax systems that are not VAT (for example in Japan). Stephen Davidson pointed out that the draft (as does the EVG) expands from the ETSI text to allow any “identifier allocated by the national tax authorities to a Legal Entity”. Dimitris Zacharopoulos provided background that the ETSI prefix used to be TAX but was divided in ETSI 319 412-1 to VAT for legal entities and TIN for natural persons. Following discussion, it was agreed this was acceptable. Therefore, the PR can be closed.

Dimitris pointed out that section 3.2.3.1.1 of the draft requires CAs to disclose Incorporating or Registration Agencies but does not require CAs to disclose all Information Sources used, for example the tax authorities.

It was raised that the definition in Appendix A required the LEI to be FULLY-CORROBRATED but the that restriction was not covered in the ISO 17442 field in 7.1.2.3. The same stipulation applies in all cases. In addition, Stephen pointed out that a new ISO 5009 provided additional information on the role LEI, and said he’d follow up to see if additional description was required.

The WG had extensive discussion on the commonName field, providing flexibility for the use of personal name style in that field versus the formality of the givenName and surname fields. Comments for clarity and corrections on the text were suggested by Wendy Brown and Bruce Morton. Clint Wilson wanted to ensure that the name in the commonName must be linked to the verified ID – giving the example of how to deal with nicknames like Sasha for Alexander in Bulgaria. Corey Bonnell suggested picking up the language from the Org name which states that common variations should be allowed.

Stephen noted that titles (such as Dr) if included in the commonNane are intended to be verified. Stephen agreed to make edits to the draft based on the discussion; see

The WG moved on to discuss the Pseudonym attribute. The draft currently ties use of the Pseudonym to a government ID – but Germany’s national ID is the only known ID with that attribute. It was suggested that this was not adequately flexible for many use cases, such as government officials whose role is more important than their name. It was suggested that additional flexibility could be created in the sponsor-validated profile. It was emphasized that Pseudonym certs are not intended to be anonymous. Dimitris said the most secure way to handle Pseudonym would be for the CA to insert a random value. Eusebio Herrera said that account number or employee numbers were often used. He offered to provide additional input in the form of a PR. This is now drafted at

Stephen emphasized that the document is close to ready for the “preballot review” discussed in previous calls, so members should begin alerting their internal organisation contacts that will need to be involved.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, April 13, 2022 at 11 a.m. US Eastern.

### Adjourned