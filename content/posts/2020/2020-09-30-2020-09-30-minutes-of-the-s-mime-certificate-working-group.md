---
aliases:
- /2020/09/30/2020-09-30-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-09-30 00:59:59
tags:
- Minutes
- S/MIME
title: 2020-09-30 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

September 30, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Adrian Mueller (SwissSign), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust DataCard), Burkhard Wiegel (Zertificon), Dean Coclin (DigiCert), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Dr. Holger Muehlbauer (TeleTrust), Hazhar Ismail (MSC Trustgate.com), Hugh Mercer (GlobalSign), India Donald (Federal PKI), James Knapp (Federal PKI), Janet Hines (Trustwave), Jeff Ward (WebTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Mike Guenther (SwissSign), Morad Abou Nasser (TeleTrust), Rufus Buschart (TeleTrust), Russ Housley (Vigil Security, LLC), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the September 16 teleconference were approved.

### 5. Discussion of approach and deliverables

The discussion continued regarding the fields in S/MIME leaf certificates.

Validity period: confirming that initial version will seek a maximum validity SHOULD of 27 months and a MUST of 5 years rather than seek to vary by use of tokens or other variables.

Subject DN: will be addressed later in our work, with the exception of noting that all email addresses in an S/MIME certificate must be verified whether in Subject DN or SAN. There was a preference towards adopting the BR and Gmail requirement for an email address in the Subject to be repeated in the SAN).

Subject Public Key Information: There was discussion at length regarding allowed algorithms. The Mozilla policy and BR focus on webpki preferences. However, there may be interest from Certificate Issuers and their customers in alternative algorithms. These include Curve25519 and Curve 448 (RFC 7748), BrainPool (recommended by German Government standard from BSI TR-03116), Gost (RFC 7901), SM2 (IETF draft-shen-sm2-ecdsa-02).

Currently the Mozilla root store agreement states that “Root certificates in our root program, and any certificate which chains up to them, MUST use only algorithms and key sizes from the following set”. Mozilla stated openness to adapt that text should there be demand amongst S/MIME Certificate Issuers or Certificate Consumers. A decision was made to gather more information and revisit the subject in a later meeting.

Key Usage: There was discussion relating to dual use versus split use certificates (and the latter applicability when key escrow is provided). It was pointed out that the Gmail policy would seem to exclude split keys (as MUST for digitalSignature and/or nonrepudiation). There is significant variation in practice.

There was discussion regarding key escrow: only allowing for encryption keys. There may be interest in marking keys where the CA generates keys, but may be deceptive as key escrow could be occurring outside the CA (such as using an enterprise key management system).

### 6. Any Other Business

No other business.

### 7. Next call

The next call will take place on October 14, 2020 at 11:00am Eastern Time.

### Adjourned