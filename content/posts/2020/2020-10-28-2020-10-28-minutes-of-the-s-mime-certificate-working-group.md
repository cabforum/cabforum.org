---
aliases:
- /2020-10-28-2020-10-28-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-10-28 09:44:50
title: 2020-10-28 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

October 28, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees 

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Burkhard Wiegel (Zertificon), Chris Kemmerer (SSL.com), Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Don Sheehy (WebTrust), Hazhar Ismail (MSC Trustgate.com), Hugh Mercer (GlobalSign), India Donald (Federal PKI), James Knapp (Federal PKI), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Markus Wichmann (TeleTrust), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Patrycja Tulinska (PSW), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Thomas Zermeno (SSL.com), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the October 14 teleconference were approved.

### 5. Discussion of approach and deliverables 

A brief overview was given of the discussion pertaining to the SMCWG held at the CABF virtual face to face on October 20, which included a vote by consensus to confirm Google’s participation as a Certificate Consumer member. The minutes of that session will be included as part of the CABF virtual face to face.

Current membership of the SMCWG includes 25 Certificate Issuers (Actalis, Asseco Data Systems (Certum), BuyPass, CFCA, Chunghwa Telecom, Comsign, DigiCert, D-TRUST, eMudhra, Entrust DataCard, GDCA, GlobalSign, HARICA, iTrusChina, MSC Trustgate.com, SecureTrust, SECOM Trust Systems, Sectigo, SHECA, SSC, SSL.com, SwissSign, TrustCor, TWCA, OISTE Foundation), 4 Certificate Consumers (Google, Microsoft, Mozilla/Thunderbird, Zertificon), 3 Associate Members (ACAB Council, U.S. Federal PKI, WebTrust), and 5 Interested Parties (Arno Fiedler, PSW, TeleTrusT, Vigil Security, Nathalie Weiler).

The discussion continued regarding the fields in S/MIME leaf certificates.

It was noted that not all Certificate Issuers have a fixed certificate type identified in their CPS as S/MIME, but rather various classes of certificates (for example based up identity validation level) may be made S/MIME capable.

It was noted that eIDAS Qualified certificates were among such. Mads Henriksveen agreed to gather more detail, including the fields such as qcStatements that might be used.

Subject Alternative Name: It was agreed MUST contain at least one rfc822Name, MAY include Microsoft UPN, and MUST NOT contain items of type: dNSName, iPAddress, uniformResourceIdentifier.

It was noted that a reference to RFC 8398 (Internationalized Email Addresses in X.509 Certificates) should be considered.

A discussion was held on countryOfCitizenship (1.3.6.1.5.5.7.9.4) which is specified as optional in the US Federal policies. It was agreed that, although the first version of the S/MIME Baseline Requirements (SBR) would likely err on the side of permissive use of certain Subject DN and extension fields, the goal of the SBR would be to specify verification procedures for all certificate fields that were approved for use.

A discussion was held on the table described in section 4.3.2 (Key Usage) of ETSI 319 412-2 (Certificate profile for certificates issued to natural persons) which provides different issuance options for certificates that include non-repudiation/content commitment, digital signature, and key encipherment or key agreement.

That standard provides that different combinations MAY be used but split keys (sole key usage) SHOULD be used. This formulation may be of interest in forming requirements relating to CA key generation or escrow. A lengthy discussion occurred regarding key escrow by CA vs enterprise key management system and that rather than banning the practice it may be better for the SBR to address best practice for key escrow, although this would certainly need to be a long term goal.

It was raised that CAs should be encouraged to submit their S/MIME certificate profiles in order to discover practices that vary from the SMCWG discussion. It was noted that another option would be to publish an early version of the SBR that included mandatory disclosure requirements relating to grey areas in our discussions, allowing us to make properly informed decisions and transition dates.

### 6. Any Other Business 

No other business.

### 7. Next call 

The next call will take place on November 11, 2020 at 11:00am Eastern Time.

### Adjourned