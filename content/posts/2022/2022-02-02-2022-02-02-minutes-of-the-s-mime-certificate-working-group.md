---
aliases:
- /2022-02-02-2022-02-02-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-02-02 18:02:00
tags:
- S/MIME
title: 2022-02-02 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG 

February 2, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Cade Cairns (Google), Clint Wilson (Apple), Corey Bonnell (Digicert), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Fotis Loukos (Google), Hongquan Yin (Microsoft), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Miguel Sanchez (Google), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW Group), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the January 19 teleconference were approved.

### 5. Discussion 

Stephen Davidson and Clint Wilson noted the update to the Apple root certificate program at which includes some points dealing specifically with S/MIME.

- Effective April 1, 2022, S/MIME certificates must:
- include the emailProtection EKU
- include at least one subjectAlternativeName rFC822Name value containing an email address
- not have a validity period greater than 1185 days
- use a signature hash algorithm of greater than or equal strength to SHA-256 (see section 7.1.3.1 and 7.1.3.2 of the CA/B Forum’s Baseline Requirements).
- meet the following key size requirements:
- For RSA key pairs, the modulus size must be at least 2048 bits when encoded and its size in bits must be evenly divisible by 8.
- For ECDSA key pairs, the key must represent a valid point on the NIST P‐256, NIST P‐384 or NIST P‐521 named elliptic curve.

(Note – this provides clarity on a question Stephen send to the list asking about the use of otherName of type id-on-SmtpUTF8Mailbox in the SAN; under the Apple policy there must always be at least one rfc822Name in the SAN.)

The group returned to discussion of Mailbox validation that was commenced in the January 19 meeting, in particular considering the draft section 3.2.2.3 “validating the applicant as operator of associated mail server(s)” using an MX record, as proposed by Fotis Loukos. It was agreed this was an acceptable new method.

Fotis raised the point that in section 3.2.2.1 we should only allow the “wildcard permitted methods” from the TLS BR. Those methods show you have control of DNS and therefore can set an MX record. This would rule out the methods 18 (agreed upon change), 19 (acme), and 20 (ALPN) which are not allowed for wildcards. Fotis will provide more information.

The discussion moved to reuse periods in section 4.2.1. It was agreed to use the same 398 days for the TLS BR methods and for the new MX record method. Doug Beattie suggested the same period should apply to mailbox validation described in section 3.2.2.2. Fotis described that individual email addresses changed with greater frequency than overall domain control and so should have a shorter reuse periods. The group discussed the risks of reusing a validation if a mailbox had changed control in the interim. It was agreed that the mailbox control method should have a lower 31 day reuse in the draft.

Stephen noted that section 4.2.1 will have to be revisited again in any case to deal with reuse periods for individual vetting. He noted that a proposed change request for relevant ETSI standards would set the reuse periods for vetting personal ID at 3 years.

Stephen provided a quick overview of the topics for the upcoming F2F – more detail to come.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, February 16, 2022 at 11 a.m. US Eastern.

### Adjourned