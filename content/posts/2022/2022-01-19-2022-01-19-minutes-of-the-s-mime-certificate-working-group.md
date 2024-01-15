---
aliases:
- /2022/01/19/2022-01-19-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-01-19 20:50:00
tags:
- Minutes
- S/MIME
title: 2022-01-19 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 19, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Dimitris Zacharopoulos (HARICA), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Miguel Sanchez (Google), Morad Abou Naser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW Group), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the January 5 teleconference were approved.

### 5. Discussion

The working group discussed there are three areas of verification in section 3.2 relating to the Applicant, depending on the certificate type:

- Mailbox validation
- Organization
- Individual

Stephen Davidson reviewed the proposed text for mailbox verification in section 3.2.2. This includes:

3.2.2.1 Validating authority over mailbox via domain

3.2.2.2 Validating control over mailbox via email

Clint Wilson highlighted that the proposed text in section 1.3.2 dealing with Enterprise RA may have fallen out of synch; it was agreed that the text will be updated to clarify that an Enterprise RA could use all the mailbox validation methods.

Dimitris Zacharopoulos questioned why the Random Value in the 3.2.2.2 method was required to be reset within 24 hours, noting that this caused issues for users acting on messages over a weekend or a vacation, or where emails are delayed in spam filters. Corey Bonnell pointed out that the equivalent text for random values in the TLS BR was 30 days. Stephen indicated that it had been taken from the NIST 800-63 standard. Fotis Loukos mentioned that current best practice was for a “timed out” user to generate a new random value. It was suggested that a compromise time span of a week might be found, or that the timing issue might also be addressed within the TLS BR.

Fotis reminded that there would be interest in accommodating the ACME method described in RFC 8823. Fotis suggested that only the methods from the TLS BR that are approved for wildcards should be accepted for SMIME email domain validation.

The group also discussed a proposed new 3.2.2.3 method proposed by Fotis of Google for “Validating applicant as operator of associated mail server”:

[The method](https://github.com/cabforum/smime/pull/34/files) relies upon checking the domain following the selection process in [RFC 5321 Section 5.1](https://datatracker.ietf.org/doc/html/rfc5321#section-5.1). Under this method, the Applicant is the email service provider who can be validated using TLS BR methods as controlling the target email domain.

It was agreed that use of this method may require adjustments to other sections such as Enterprise RA, subscriber issuers (such as private key archive or escrow, revocation).

Dimitris suggested that the method might require more frequent revalidation, noting the risk that an enterprise might change email service provider. Stephen noted that with time running out the group would continue discussion on mailbox validation and reuse during the next call.

Stephen noted that the initial version of the S/MIME BR would not require checking CAA, including the TLS CAA property tags. Clint indicated interest in returning to CAA in a future version.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, February 2, 2022 at 11 a.m. US Eastern.

### Adjourned