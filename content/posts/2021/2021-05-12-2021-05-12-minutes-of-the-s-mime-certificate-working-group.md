---
aliases:
- /2021-05-12-2021-05-12-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-05-12 15:23:00
title: 2021-05-12 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

May 12, 2021

These are the Minutes of the Teleconference described in the subject of this message.

### Attendees {.wp-block-heading}

Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Christy Berghoff (Federal PKI), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Juan Ángel Martin (Camerfirma), Klauss Voss (Zertificon), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Matthias Wiedenhorst (ACAB’c), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the April 28 teleconference were approved.

### 5. Discussion of certificate profile {.wp-block-heading}

The discussion moved to the [Mailbox-validation Legacy profile][1]. Discussion moved to the SAN field, relating to internationalized email addresses and otherNames such as UPN resulting in consensus around following requirements:

All email addresses in Subject must be in SAN. MUST contain at least one item of type rfc822Name or otherName of type id-on-SmtpUTF8Mailbox.

MUST NOT contain items of type: dNSName, iPAddress, uniformResourceIdentifier.

otherName values MAY be included. otherNames of type id-on-SmtpUTF8Mailbox MUST be validated in accordance with RFC 8398. otherNames of any other type MUST be validated in accordance with the CA’s CPS.

It was agreed there was no need to explicitly allow or prohibit the specific other forms of otherNames. The most common use of the otherNames of any other type is in Enterprise RA situations, and validation practices must be documented the CA’s CPS. It was agreed that the WG would return to the topic of id-on-SmtpUTF8Mailbox later in context of validation requirements and technical constraints.

The language from RFC 5280 4.2.1.6 regarding criticality applies: “if the only subject identity included in the certificate is an alternative name form (e.g., an electronic mail address), then the subject distinguished name MUST be empty (an empty sequence), and the subjectAltName extension MUST be present. If the subject field contains an empty sequence, then the issuing CA MUST include a subjectAltName extension that is marked as critical. When including the subjectAltName extension in a certificate that has a non-empty subject distinguished name, conforming CAs SHOULD mark the subjectAltName extension as non-critical.”

An extended discussion took place relating to keyUsage, with particular emphasis on the requirements for split versus dual use keys. Clint Wilson provided guidance on Apple Mail’s requirements. The outcome of the discussion is as follows;

RSA

For signing only, bit positions MUST be set for:

digitalSignature

Bit positions MAY be set for:

nonRepudiation/

contentCommitment

For key management only, bit positions MUST be set for:

keyEncipherment

For dual use, bit positions MUST be set for:

keyEncipherment

digitalSignature

Bit positions MAY be set for:

nonRepudiation/

contentCommitment

Other bit positions MUST NOT be set.

ECC

For signing only, bit positions MUST be set for:

digitalSignature

Bit positions MAY be set for:

nonRepudiation/

contentCommitment

For key management only, bit positions MUST be set for:

keyAgreement

Bit positions MAY be set for:

encipherOnly

decipherOnly

For dual use, bit positions MUST be set for:

keyAgreement

digitalSignature

Bit positions MAY be set for:

nonRepudiation/

contentCommitment

encipherOnly

decipherOnly

Other bit positions MUST NOT be set.

It was questioned whether any CA issues certificates using the “encipherOnly / decipherOnly” bit positions from the Royal-Halloway key escrow scheme?

Discussion began of the EKU field. It was pointed out that many document signing certificates, such as AATL, used the emailProtection EKU often in conjunction with vendor-specific EKU for signing.

Tadahiko Ito described an [IETF Internet-draft][2] that has been introduced to create a generic EKU for document signing, which in future would assist in separating the S/MIME and document signing use cases.

It was suggested that in the Legacy profile, the standard may allow an expansive use of EKU given legacy practice with a more selective allowance in the Multipurpose and Strict profiles. Discussion of EKU and Extensions was deferred until the next meeting.

Stephen Davidson noted that an additional tab called “leaf profile” has been added to the worksheet starting to lay out the other leaf certificate fields that will be in common across the profile types.

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

Next call: Wednesday, May 26, 2021 at 11:00 am Eastern Time

### Adjourned {.wp-block-heading}

[1]: https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing
[2]: https://datatracker.ietf.org/doc/draft-ito-documentsigning-eku/