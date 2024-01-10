---
aliases:
- /2021/02/03/2021-02-03-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-02-03 20:06:00
tags:
- Minutes
- S/MIME
title: 2021-02-03 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

February 3, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Ahmad Syafiq Md Zaini (MSC Trustgate.com), Ali Gholami (Telia Company), Andreas Henschel (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust DataCard), Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), India Donald (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Mevre Tunca (Zertificon), Morad Abou Nasser (TeleTrust), Neil Dunbar (TrustCor), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rich Smith (Sectigo), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Thomas Zermeno (SSL.com), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI), Yair Eisenstein (Comsign)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the January 20 teleconference were approved.

### 5. New Member Declaration

rundQuadrat OG was determined as eligible and approved as a Certificate Consumer member of the SMCWG.

### 6. Discussion of certificate profile

A review was commenced of proposed/draft certificate profiles derived from the policies previously discussed:

- **Mailbox-validation**: The simplest S/MIME, including only email address. The same email control verification methods apply across all S/MIME types.

- **Individual-validation**: Includes personal details (for natural person) with validation performed based upon BR 3.2.3.

- **Organizational-validation:** Includes Organization details (legal entity) with validation based on BR 3.2.2.1-3.2.2.3 (or perhaps EV equivalent). Example uses include invoice or statement mailers, etc.

- **Sponsored-validation**: An Organization “sponsors” certificates including personal details or mailbox names (validated by a delegated Enterprise RA) in conjunction with Organisation details (validated by the CA).

Each policy will have a Multipurpose/Legacy and Strict variant:

- **Multipurpose/Legacy**: The Multipurpose profiles create a formal profile and practices for dominant legacy S/MIME types, including multipurpose certficates, and include more flexibility in Subject information and extensions.

- **Strict**: The Strict profiles provide a more streamlined certificate profile dedicated to S/MIME use. This is in line with the growing use of specialised Root hierarchies by certificate type (eku).

It was proposed to allow the Subject email and commonName field in all certificate types (discouraged but permitted) in all profiles due to unknown use in Certificate Consumer UI and allowed use in other standards such as ETSI.

A long discussion occurred regarding the flexible definition of commonName in many standards. Morad Abou Nasser indicated that the TeleTrust policies may have useful rules for commonName.

A lengthy discussion occurred regarding validity. It was agreed that the Strict policy should have a maximum 27 month validity in order to provide better policy agility, refresh of validation, and consistency with the move of other CABF standards towards shorter validity. Wendy Brown noted there was an argument in favor of longer validity when keys were held on tokens, and that fast rotation of keys may work against end users who have to manage them to read their email archive. She proposed that differing allowed validity spans for signing vs encryption may help if split keys are used.

Bruce Morton proposed that the Multipurpose should allow a longer (ie 39 month) validity, while Dimitris Zacharopoulos proposed the same validity should apply across all types. It was suggested this be tabled for feedback on public list or at the CABF Virtual F2F. Dimitris and Sebastian Schulz agreed to help draft that proposal.

Stephen Davidson reminded that at this stage our concern is defining the core certificate profiles and to defer detailed discussion of field formats and validation until later. It was agreed in our next meeting to discuss what would be presented to the Virtual F2F and what areas of feedback would be sought at that meeting.

### 6. Any Other Business

None

### 7. Next call

The next call will take place on February 17, 2021 at 11:00am Eastern Time.

### Adjourned