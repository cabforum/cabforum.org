---
aliases:
- /2021-03-31-2021-03-31-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-03-31 20:19:00
title: 2021-03-31 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

March 31, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Atsushi Inaba (GlobalSign), Bruce Morton (Entrust), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Dimitris Zacharopoulos (HARICA), Hazhar Ismail (MSC Trustgate.com), Russ Housley (Vigil Security), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Klauss Voss (Zertificon), Inigo Barreira (Sectigo), Matthias Wiedenhorst (ACAB’c), Mads Henriksveen (BuyPass), Morad Abou Nasser (TeleTrust), Patrycja Tulinska (PSW), Li-Chun Chen (Chunghwa Telecom), Rebecca Kelley (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Thomas Connelly (Federal PKI), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the March 17 teleconference were approved.

### 6. Discussion of certificate profile 

A review was made of the current state of the draft S/MIME Baseline Requirements (SBR), which have now been pulled into the CABF Repository at: .

The working draft will continue using Stephen Davidson’s srdavidson fork but will be periodically pulled into the CABF Repository, so members may choose to fork that CABF version. The preSBR branch will be used as the document is in early editing. Later well adopt the “branch per ballot” approach used by other CABF WG. Members can also use the Issues function in the CABF Repository.

The SMCWG charter notes the SBR are “subject to coordination with other Forum CWGs to ensure consistency and avoid redundancy.” It was agreed that for the sake of simple reference, most sections will be reproduced in their entirety in the SBR because the text in the BR sometimes required minor revision for suitability in the SBR. However, certain BR sections prone to change such as the BR 3.2.2 will be incorporated by reference to a specific version of the BR. In both cases, when ballots change the BR our group will need to conduct a review of the SBR.

A review was made of the draft text for 3.2.2.2 on validation of domain authorization or mailbox control at [https://github.com/cabforum/smime/blob/PreSBR/SBR.md#3222–validation-of-domain-authorization-or-control][1]. The BR methods will be adopted for domain authorization, and the SBR describes the requirements for verification of mailbox control.

It was agreed that the SBR would maintain its own schedule for verified information reuse in Section 4.2.1. It was agreed that new methods such as acme-smime, acme-sso, or the use of MX records are of interest, but will be considered after v1 of the SBR. It was suggested that members review the text and provide further feedback regarding the SMCWG public list.

A discussion took place regarding the proposed profile for Mailbox-validation certificates at . Comments may be left on that sheet, but will have greater prominence on the SMCWG public list. Curt Spann enquired why, in addition to the Strict profile, we also provided Multipurpose and Legacy profiles.

Stephen Davidson provided a summary of previous discussions on that point, including the current popular issuance of “signing certs” that had S/MIME as just one use and the charter which admonishes “care will be exercised by the SMCWG to avoid unintended adverse effects” to other use cases. As the charter is to write a standard for certs that include the emailProtection EKU, we need to accommodate different use cases.

Sebastian Schulz suggested that we should focus on the Strict S/MIME profile in keeping with the root stores’ shifting preference towards single purpose hierarchies. Stephen pointed out that use may not be determined solely by EKU (for example, many AATL signing certs use the emailProtection EKU).

Clint Wilson raised that multipurpose certs had some parallel in the TLS world where certs were used in too many cases, hampering agility. Wendy Brown indicated that dedicated hierarchies also have a tradeoff by forcing users to maintain more leaf certs. Stephen pointed out the goal in the first version of the SBR was to set a baseline that could pull the S/MIME ecosystem into an auditable framework which would be refined in future versions.

### 6. Any Other Business 

None

### 7. Next call 

### Next call: Wednesday, April 14, 2021 at 11:00 am Eastern Time 

### Adjourned 

[1]: https://github.com/cabforum/smime/blob/PreSBR/SBR.md#3222--validation-of-domain-authorization-or-control