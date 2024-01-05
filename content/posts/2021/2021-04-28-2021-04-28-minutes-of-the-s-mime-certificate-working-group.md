---
aliases:
- /2021-04-28-2021-04-28-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-04-28 18:33:00
title: 2021-04-28 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

April 28, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Eusebio Herrera (Camerfirma), Hongquan Yin (Microsoft), India Donald (Federal PKI), Juan Ángel Martin (Camerfirma), Klauss Voss (Zertificon), Li-Chun Chen (Chunghwa Telecom), Markus Wichmann (TeleTrust), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the April 14 teleconference were approved.

### 5. Discussion of certificate profile 

A discussion occurred regarding content of the draft S/MIME Baseline Requirements (SBR) at: . It was decided the group would target to have a rough draft of the Mailbox-validation profiles for the CABF summer virtual F2F in mid June.

The discussion moved to the Mailbox-validation legacy profile. Stefan Selbitschka and Stephen Davidson noted the language in section 4.2.1.6 of RFC 5280 regarding criticality of the SAN:

_Further, if the only subject identity included in the certificate is an alternative name form (e.g., an electronic mail address), then the subject distinguished name MUST be empty (an empty sequence), and the subjectAltName extension MUST be present. If the subject field contains an empty sequence, then the issuing CA MUST include a subjectAltName extension that is marked as critical. When including the subjectAltName extension in a certificate that has a non-empty subject distinguished name, conforming CAs SHOULD mark the subjectAltName extension as non-critical._

Corey Bonnell indicated that this section has been the subject of past discussions for the TLS BR. It was agreed that email address MAY be used in either Subject Email or Subject Common Name for legacy support reasons. It was also decided to test certain certificate formats such as certificates with no Subject. Globalsign, Mozilla, Apple, and Digicert have offered to collaborate. It was agreed that any email address in any field in the Subject must be repeated as rfc822 entry in the SAN.

All rfc822name email addresses must be verified by the CA. Dimitris Zacharopoulos suggested that otherName entries that include email addresses should also be verified. Following discussion, Curt Spann proposed that non verified otherName such as UPN in the Legacy profile should be allowed in the SAN as the type is generally not used in S/MIME.

Corey raised RFC 8398 relating to internationalized email addresses (also described in more detail on the smcwg public list by Russ Housely). It was agreed that rfc822Names and otherNames of type id-on-SmtpUTF8Mailbox must be validated and otherNames of any other type do not need to be validated in the Legacy profile.

Wendy Brown asked why the address C/L/ST fields were proposed as MAY if the intent was to have a Mailbox-validation only profile, as the inclusion of address information implied identity validation. After discussion, consensus was that address C/L/ST fields should not be included in any of the Mailbox-validation profiles.

Wendy Brown and Ben Wilson asked why OU was marked as MAY when the O field is not allowed. Stephen noted that surveys of legacy practice showed CAs using the OU to indicate such features as use of Enterprise RA or an eMail gateway. Stephen noted that the Sponsored-validation profile will clearly tag the Enterprise RA case – and the group had previously discussed the possibility of marking “managed on behalf of” certificates with an extension or other indicator.

There was discussion whether use of the OU was appropriate, for example given the animated debate in the CABF relating to similar use of OU in TLS. Consensus was that it should be disallowed.

CAs were specifically requested to review their S/MIME practices for email-only (ie no Identity content) in light of the draft Mailbox-validation legacy profile.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, May 12, 2021 at 11:00 am Eastern Time

### Adjourned