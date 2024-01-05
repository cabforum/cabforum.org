---
aliases:
- /2021-01-06-2021-01-06-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-01-06 23:05:00
tags:
- Minutes
- S/MIME
title: 2021-01-06 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

January 6, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees 

Adrian Mueller (SwissSign), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust DataCard), Burkhard Wiegel (Zertificon), Chris Kemmerer (SSL.com), Christian Heutger (PSW), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), James Knapp (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Markus Wichmann (TeleTrust), Matthias Wiedenhorst (ACAB’c), Mevre Tunca (Zertificon), Morad Abou Nasser (TeleTrust), Neil Dunbar (TrustCor), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rufus Buschart (TeleTrust), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the November 25 and December 9 teleconference were approved.

### 5. Discussion of certificate profile 

A discussion took place about the work approach in the first quarter of 2021. It was agreed that the WG would focus upon defining Certificate Policies that accommodated a permissive approach (for example allowing multipurpose certificates and a wider range of fields) as well as a pure S/MIME approach. The goal is to move the leaf certificate profile sections of the draft S/MIME Baseline Requirements (SBR) into the CABF GitHub at the end of the quarter. In addition the WG will consider starting to collect pending issues for discussion in the CABF GitHub. The intent is to focus upon the Issuing CA and Root CA profile requirements in Q2.

Sebastian Schulz suggested that the focus should initially be on a strict S/MIME approach (i.e., the profile the WG has proposed as mailbox-validation) rather than trying to define standards around legacy practice.

Wendy Brown questioned the benefit of allowing only strict/SMIME when it appears currently that the majority of certificates in use are multipurpose of some form, and that the profiles the WG is proposing as sponsored-validation and individual-validation should be allowed for multipurpose signing use. Stephen Davidson noted that the permissive profile would intend to allow flexibility, although perhaps not with the same breadth of current practice as the SBR should define a validation regime for each allowed attribute.

Tadahiko Ito proposed that the SBR should ultimately require protection of the private key for signing certificates that include the nonRepudation keyUsage.

Wendy Brown suggested that the WG further enquire how the Certificate Consumers use the certificate information in UI, and the extent to which enterprise solutions allow custom configuration that may rely upon certificate information. Sebastian Schulz offered to assist. Morad Abou Nasser offered to take specific questions to the enterprise members of TeleTrust.

Tadahiko Ito emphasized that the SBR must accommodate international names. Russ Housley said that different vendors had varying roadmaps for adoption.

Doug Beattie stated that some trusted CAs were moving to new dedicated hierarchies by certificate type, so the strict S/MIME profile would be necessary for those starting with a clean slate. He said that the permissive/legacy profile could initially be loose, but should have a timeline to be tightened as to which fields might be used.

Stephen Davidson noted that many CAs approached personal certificates from the validation point of view – for example, by doing high identity validation of the certificate holder, they desire to make a signing certificate useful in multiple contexts including signing documents or S/MIME. It was suggested in a stricter approach that the same validation might support different dedicated certificates for those uses.

### 6. Any Other Business 

### 7. Next call 

The next call will take place on January 20, 2021 at 11:00am Eastern Time.

### Adjourned