---
aliases:
- /2020-09-08-08-19-2020-minutes-of-the-s-mime-certificate-working-group/
author: Jos Purvis
date: 2020-09-08 19:41:24
tags:
- S/MIME
title: 2020-08-19 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

August 19, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees {.wp-block-heading}

Matthias Wiedenhorst (ACAB’c), Arno Fiedler (Arno Fiedler), Mads Henriksveen (BuyPass), Qiu Dawei (CFCA), Zhang Danmeng (CFCA), Li-Chun Chen (Chunghwa Telecom), Tsung-Min Kuo (Chunghwa Telecom), Andreas Henschel (D-TRUST), Tim Hollebeek (DigiCert), Dean Coclin (DigiCert), Bruce Morton (Entrust DataCard), Wendy Brown (Federal PKI), Thomas Connelly (Federal PKI), Doug Beattie (GlobalSign), Hugh Mercer (GlobalSign), Atsushi Inaba (GlobalSign), Hongquan Yin (Microsoft), Hazhar Ismail (MSC Trustgate.com Sdn Bhd), Ahmad Syafiq Md Zaini (MSC Trustgate.com Sdn Bhd), Fakrul Radzi (MSC Trustgate.com Sdn Bhd), Nazmi Abd Hadi (MSC Trustgate.com Sdn Bhd), Pedro Fuentes (OISTE), Rich Smith (Sectigo), Robin Alden (Sectigo), Tim Callan (Sectigo), Markus Wichmann (TeleTrust), Morad Abou Nasser (TeleTrust), Neil Dunbar (TrustCor), Corey Bonnell (Trustwave), Russ Housley (Vigil Security, LLC), Burkhard Wiegel (Zertificon), Peggy Hüpenbecker (Zertificon), Mevre Tunca (Zertificon)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

Dean Coclin proposed a change in membership status (see below).

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the August 5 teleconference were approved with an update to the attendance list.

### 5. Approval of New Members {.wp-block-heading}

The declarations of the following were noted:

- Certificate Consumer: Zertificon
- Interested Party: Nathalie Weiler

Their membership in the SMCWG was accepted by consensus. In addition, Dean Coclin clarified the status of current Associate Member MSC Trustgate.com Sdn Bhd as being eligible as a Certificate Issuer. A change in membership status was accepted by consensus. As such, the current membership of the SMCWG is:

- Certificate Issuers: Actalis, Asseco Data Systems (Certum), BuyPass, CFCA, Chunghwa Telecom, Comsign, DigiCert, D-TRUST, eMudhra, Entrust DataCard, GDCA, GlobalSign, HARICA, iTrusChina, MSC Trustgate.com, Sectigo, SHECA, SSC, SSL.com, SwissSign, TrustCor, Trustwave, TWCA, OISTE Foundation
- Certificate Consumers: Microsoft, Mozilla/Thunderbird, Zertificon
- Associate Members: ACAB Council, U.S. Federal PKI, WebTrust
- Interested Parties: Arno Fiedler, PSW, TeleTrusT, Vigil Security, Nathalie Weiler

### 6. Discussion of approach and deliverables {.wp-block-heading}

It was agreed to begin a discussion of certificate profiles starting at the S/MIME end entity, working up the chain, in comparison to major requirements and standards. The worksheet currently includes aspects of standards from Mozilla, Gmail and the US Federal PKI (thanks for Wendy Brown’s assistance):

Certificate Issuers were asked to review their profiles for variance from these settings for discussion, with feedback preferred on the public list.

Certificate Consumers were requested if there are technical requirements (must have/can’t have) imposed by their products or services on certificates.

Ben Wilson was requested to check the profile against the Mozilla program requirements.

Pertaining to Serial Number, it was discussed whether the requirement for 64 unpredictable bits was a legacy of the SHA1 deprecation or a necessary ongoing security feature. It is a requirement of the Mozilla Root Store Policy 5.2.

Pertaining to Signature Algorithm, assistance was requested in either obtaining an English translation of BSI TR-03166 or in translating the text from German (with particular interest in the use of RSASSA-PSS). It was noted that ECDSA SHA-512 is not supported under Mozilla, with the question if the same applies to Thunderbird.

Pertaining to Validity Period, there was discussion relating to the tradeoffs between shorter validity for crypto agility as championed in TLS, the use of tokens found in many S/MIME implementations, and in use cases such as email gateways. It was proposed that domain certificates would benefit from a separate profile. Discussion to be continued.

### 6. Any Other Business {.wp-block-heading}

Again, WG members are encouraged to submit relevant standards and requirements to the public list.

### 7. Next call {.wp-block-heading}

The next call will take place on September 2, 2020 at 11:00am Eastern Time.

### Adjourned {.wp-block-heading}