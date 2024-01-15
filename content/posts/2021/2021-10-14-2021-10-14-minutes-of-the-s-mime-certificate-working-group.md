---
aliases:
- /2021/10/14/2021-10-14-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-10-14 12:58:00
tags:
- Minutes
- S/MIME
title: 2021-10-14 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

October 14, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Adriano Santoni (Actalis), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Bailey (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Dustin Ward (SSL.com), Enrico Entschew (D-TRUST), Fumihiko Yoneda (JPRS), Hazhar Ismail (MSC Trustgate.com), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Joanna Fox (TrustCor), Jos Purvis (Cisco), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Marcelo Silva (Visa), Mike Agrenius Kushner (PrimeKey), Nick France (Sectigo), Niko Carpenter (SecureTrust), Ono Fumiaki, Paul van Brouwershaven (Entrust), Rebecca Kelley (Apple), Rob Stradling (Sectigo), Roman Fischer (SwissSign), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Wendy Brown (Federal PKI), Yoshiro Yoneya (JPRS)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the September 29 teleconference were approved with corrections.

### 5. Discussion

Minutes were taken by Mads Henriksveen, summarized as follows.

Stephen Davidson introduced topic of ‘What’s an S/MIME cert’ from the perspective of the draft S/MIME BRs. Calling attention to the updated Apple CA Policy (see [https://www.apple.com/certificateauthority/ca_program.html](https://www.apple.com/certificateauthority/ca_program.html)) Clint Wilson said the EKU and SAN were the main focus. Effective April 1, 2022 Apple will considered a cert with emailProtection EKU and an active email address in the SAN to be S/MIME. He noted that the Subject is used for UI processing, not for trusted processing. Therefore, Apple are explicitly looking for email addresses in the SAN. After the effective date, newly issued S/MIME certs without SAN will not work in Apple email software. Excerpt:

Effective April 1, 2022, S/MIME certificates must:

- include the emailProtection EKU
- include at least one subjectAlternativeName rFC822Name value containing an email address
- not have a validity period greater than 825 days
- use a signature hash algorithm of greater than or equal strength to SHA-256 (see section 7.1.3.1 and 7.1.3.2 of the CA/B Forum’s Baseline Requirements).
- meet the following key size requirements:
  - For RSA key pairs, the modulus size must be at least 2048 bits when encoded and its size in bits must be evenly divisible by 8.
  - For ECDSA key pairs, the key must represent a valid point on the NIST P‐256, NIST P‐384 or NIST P‐521 named elliptic curve.

Effective October 1, 2022, CA providers must populate the “Pertaining to Certificates Issued by this CA” section of the CCADB for each included CA Certificate and each CA Certificate chaining up to an included CA Certificate in the Apple Root Program.

- The CRL URLs provided by CAs in this section must be available for successful retrieval by Apple systems a minimum of once every 4 hours.
- In order to populate this section for Root CA Certificates, please email the Apple Root Program ([certificate-authority-program@apple.com](mailto:certificate-authority-program@apple.com)) with the desired details and associated CCADB records.

Clint also indicated that all CAs are now required to follow the work of this SMCWG with the intent of being well informed of pending changes in the S/MIME standards. It was noted that there are many S/MIME issuers who are not participating in the SMCWG so Apple wished to focus attention on the draft standard.

Tim Hollebeek noted that certs compliant with the S/MIME BR would have one of the SBR cert policy OIDs.

The discussion moved to validity periods with Apple aiming to adopt the 825 day validity period also stated in the gmail policy. It was noted that we had previously proposed 825 days for the Strict and Multipurpose profiles but a longer 1095 day span for the Legacy profile.

It was noted that the Legacy profile was intended to bring as much of reasonable current practice into an auditable standard. Clint agreed on the approach and noted that there might be some pushback on short validity periods – but noted that Apple and others would want to identify an End-of-Life for that Legacy profile.

Wendy Brown noted the costs associated with shorter validity certs for enterprises that use tokens, and for users who must then manage a trail of expired certs. Client noted the preference toward automation for cert provisioning, and the importance of policy agility so that changes could flush through the system with years’ delay as old certs expired. It also impacted software providers ability to introduce new features.

Dimitris Zacharopoulos asked if there were restrictions on reusing keys. Clint noted that there were no planned rules against reusing keys except if they were weak or compromised. Dimitris also noted that the risks for TLS that drove preference for short validity were different than for S/MIME. Tadahiko Ito discussed the key management challenges, how for users to communicate with their correspondents that their certs/keys have changed. Clint said the emphasis was on shorter validity, but there may be some room for Legacy flexibility if there are end dates.

Sebastian Schulz pointed out that some of the changes can be done via technical enforcement rather than policy enforcement. Client said it was preferable that the two were aligned. Clint and Tim said it was important to get email clients to adopt the S/MIME BR. It was asked of the other cert clients (including Google, Microsoft, Mozilla) if they had comment on validity periods.

Stephen noted that changes are underway to the draft S/MIME BR in Github: [https://github.com/cabforum/smime/blob/preSBR/SBR.md](https://github.com/cabforum/smime/blob/preSBR/SBR.md)

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, October 27, 2021 at 11:00 am Eastern Time

### Adjourned