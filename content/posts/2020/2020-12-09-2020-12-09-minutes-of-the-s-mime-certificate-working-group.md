---
aliases:
- /2020/12/09/2020-12-09-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2020-12-09 13:58:00
tags:
- Minutes
- S/MIME
title: 2020-12-09 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

December 09, 2020

### Attendees

Adrian Mueller (SwissSign), Ahmad Syafiq Md Zaini (MSC Trustgate.com), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Arno Fiedler (Arno Fiedler), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Corey Bonnell (DigiCert), David Kluge (Google), Dean Coclin (DigiCert), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), James Knapp (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Morad Abou Nasser (TeleTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rich Smith (Sectigo), Rufus Buschart (TeleTrust), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

There was discussion relating to the change in CABF mailers, noting that members should check the listserv archives if they have not been receiving messages recently. Some mail systems started quarantining messages with the change in mailer.

### 4. Approval of minutes from last teleconference

It was noted that some members did not receive the draft Minutes of the November 25 call. Those will be re-distributed and approval of those Minutes is deferred until a later date.

### 5. New member

Following discussion and confirmation of eligibility, the membership of KPMG Korea as an Interested Party was confirmed by consensus.

### 6. Discussion of certificate profile

Extensive discussion took place regarding the certificate policy object identifiers for different forms of S/MIME certificates.

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) mailbox-validation (1)} (2.23.140.1.5.1)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) organization-validation (2)} (2.23.140.1.5.2)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) sponsored-validation (3)} (2.23.140.1.5.3)

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) individual-validation (4)} (2.23.140.1.5.4)

Corey Bonnell proposed to use the name “mailbox-validation” for the basic form of S/MIME certificate to avoid confusion with DV or EV TLS.

Ben Wilson noted that the S/MIME BR (SBR) standard should not cause a revocation event for certificates issued before its effective date. Russ Hously said that should not be a concern as only certificates including the SBR OIDs would be subject to the SBR.

There was discussion relating to the Subject and other fields that should be mandatory or optional/disallowed in each type of cert.

Doug Beattie suggested having some form of “legacy” OID(s) that would be more permissive but would have a sunset date. The “final” SBR OIDs would be more defined. Tim Hollebeek suggested that those OIDs could be further iterated as the SBR evolved.

There was discussion regarding the use of Common Name and Email in the Subject by client software, and the absence of such. Hongquan Yin subsequently followed up describing Outlook’s behavior.

_Common Name will be used as the “Display Name” for the subject the of the certificate in some places in the UI. If present, Email may be used as one of the email addresses. The Subject Alternative Name extension is also examined for rfc822Names. The email address can be specified there and not included in the Subject._

Tadahiko Ito pointed out that client software may present mail account names in precedence to information in the certificate. There was discussion of fields like Pseudonym and Serial Number which may include values that are not possible for a public CA to verify. It was proposed these may be acceptable in the Sponsored Validation category where an Enterprise RA may be able to validate the information. It was also suggested that use of those fields may be more appropriate for private trust.

Stephen Davidson asked Certificate Issuers to review their certificate populations to see if the Subject DN fields were used beyond the basic attributes so far discussed (and noting if the certificate is solely intended for S/MIME or is multipurpose).

Rufus Buschart indicated that the SBR would need to accommodate international naming conventions (giving the example of countries where individuals may have multiple names but express a preference to specific names in a cert).

A discussion was held on keyUsage combinations as described in ETSI TS 319 421-2.

A discussion took place regarding rfc822names, and whether the SBR should seek to explicitly describe what was an allowable email address. Consensus was that the SBR should simply elaborate the relevant standards.

It was proposed that in the SAN may include directoryName and otherName such as UPN only if they contain information verified by the CA (or Enterprise RA). Certificate Issuers were asked to review and provide feedback of their practices in this area.

A discussion was undertaken to define commonly used Exetnsions. Doug Beattie proposed an ultimate goal of defining “S/MIME only” certificates – that would eventually deprecate the use of multipurpose certs (in the belief that many of the unusual Subject attributes and Extensions may be related to those alternate use cases rather than the S/MIME use).

It was raised that some other use cases can rely upon the emailProtection EKU, such as PDF signing. It was proposed that an eventual CABF WG might be created for document signing but in meantime interested parties such as Adobe should be invited to join or monitor the SMCWG.

### 7. Any Other Business

It was agreed that the December 23, 2020 meeting will be cancelled.

### 8. Next call

The next call will take place on January 6, 2021 at 11:00am Eastern Time.

### Adjourned