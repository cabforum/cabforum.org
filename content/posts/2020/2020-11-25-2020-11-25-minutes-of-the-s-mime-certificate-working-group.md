---
aliases:
- /2020/11/25/2020-11-25-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-11-25 13:53:00
tags:
- Minutes
- S/MIME
title: 2020-11-25 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

November 25, 2020

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Adrian Mueller (SwissSign), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Ali Gholami (Telia Company), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Burkhard Wiegel (Zertificon), Chris Kemmerer (SSL.com), Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), India Donald (Federal PKI), James Knapp (Federal PKI), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Nazmi Abd Hadi (MSC Trustgate.com), Neil Dunbar (TrustCor), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Russ Housley (Vigil Security), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

The Chair proposed deferring the discussion of new membership, and adding a new agenda item relating to certificate policy OIDs.

### 4. Approval of minutes from last teleconference

The minutes of the November 11 teleconference were approved.

### 5. Discussion of certificate profile

Stephen shared a preview of the S/MIME Baseline Requirements section 7 in markdown format, currently in a private GitHub Repository. The draft uses the table format agreed upon in earlier meetings. With the help of the Infrastructure WG, the plan is to move towards using the cabf-smcwg-br repository in early 2021 including for commenting and tracking of issues.

In part based upon Doug Beattie’s comment on the public list, a discussion was held on certificate-policy OIDs. The OID arc 2.23.140.1.5 has been reserved for the S/MIME Baseline Requirements (SBR). The proposal is to adopt familiar validation levels (DV, OV, IV) as found in TLS – with an additional level for personal certs that include organizational details. Dimitris Zacharopoulos suggested this should be linked to OV; Corey Bonnell subsequently suggested the term “Sponsored Validation” (SV) to describe this level.

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) domain-validation (1)} (2.23.140.1.5.1)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) organization-validation (2)} (2.23.140.1.5.2)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) sponsored-validation (3)} (2.23.140.1.5.3)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) individual-validation (4)} (2.23.140.1.5.4)

If required, extensions may be defined under the CABF certificate-extensions arc 2.23.140.2. Examples might include identifiers for keys generated or stored on cryptotokens etc.

Stephen Davidson proposed that certain Subject attributes be restricted, mandatory or optional depending on the certificate policy. Tim Hollebeek suggested that initial versions of the standard should be inclusive of common Issuer practice. Wendy Brown indicated that the L and S fields might be considered optional except if required to disambiguate the Subject.

A discussion was held regarding the Subject attributes described in RFC 3739 Section 3.1.2:

domainComponent

countryName

commonName

surname

givenName

pseudonym

serialNumber

title

organizationName

organizationalUnitName

stateOrProvinceName

localityName

A particular focus involved attributes such as title and in particular pseudonym, which may be beyond the ability of the CA to verify. It was agreed that some might make sense in a “Sponsored Validation” context. It was indicated that pseudonym may reasonably be used for profile names or English adopted names for international names.

It was agreed that at this stage we will focus on which fields might be allowed for the various certificate-policy levels – knowing that we must return to the required verification steps later in the process.

Certificate Issuers were requested to identify if they used Subject attributes not identified here. Wendy Brown mentioned the use of dnQualifier to disambiguate Subjects, and indicated the range of uses of the CommonName field, such as “Stephen Davidson (contractor)”. Dimitris Zacharopoulos raised the use of the organizationIdentifier attribute in OV certificates.

It was pointed out that the Subject email field was deprecated albeit still in common use. A discussion began regarding rfc822name and the extent to which the SBR should seek to define an email address. Lacking time, the remaining agenda items were deferred to a future meeting.

### 6. Any Other Business

It was agreed that the December 23, 2020 meeting would be cancelled.

### 7. Next call

The next call will take place on December 9, 2020 at 11:00am Eastern Time.

### Adjourned