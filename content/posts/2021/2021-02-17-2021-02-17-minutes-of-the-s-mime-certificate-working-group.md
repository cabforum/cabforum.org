---
aliases:
- /2021-02-17-2021-02-17-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-02-17 21:24:00
title: 2021-02-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

February 17, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees {.wp-block-heading}

Andreas Henschel (D-TRUST), Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Ali Gholami (Telia Company), Atsushi Inaba (GlobalSign), Burkhard Wiegel (Zertificon), Bruce Morton (Entrust), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Christy Berghoff (Federal PKI), Corey Bonnell (DigiCert), David Chen (TWCA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Dimitris Zacharopoulos (HARICA), Hazhar Ismail (MSC Trustgate.com), James Knapp (Federal PKI), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Klauss Voss (Zertificon), Mevre Tunca (Zertificon), Matthias Wiedenhorst (ACAB’c), Mads Henriksveen (BuyPass), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE), Patrycja Tulinska (PSW), Li-Chun Chen (Chunghwa Telecom), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the February 3 teleconference were approved.

### 5. New Member Declaration {.wp-block-heading}

Existing CABF members Apple (Certificate Consumer) and AC Camerfirma (Certificate Issuer) were confirmed as members of the SMCWG.

### 6. Discussion of certificate profile {.wp-block-heading}

A discussion was undertaken on the format of our presentation to the upcoming CABF Virtual Face to Face, both to describe our progress towards creating the draft S/MIME Standard and to seek clarification several points. These topics include:

- Certificate policy types
- Continued use of commonName and email fields which are “discouraged but permitted” in other cert types
- Validity periods, balancing policy agility with user key management
- Proposals for validation of email control or authorization
- Moving the Draft SBR to GitHub

Stephen Davidson noted that our charter emphasizes that the SMCWG should leverage the work of other CABF WG standards. He proposed tying to specific versions of the referenced standards to prevent unintended “drift via changing reference”.

Discussion continued from the previous call regarding certificate policy types in which it was proposed to expand the array of policy types as follows:

- **Mailbox-validation**: The simplest S/MIME, including only email address. The same email control verification methods apply across all S/MIME types.
- **Organizational-validation**: Includes Organization details (legal entity) only. Example uses include invoice or statement mailers, etc.
- **Sponsored-validation**: An Organization “sponsors” certificates including personal details or mailbox names (validated by a delegated Enterprise RA) in conjunction with Org details and domains (validated by the CA). Typical use is employee S/MIME.
- **Individual-validation**: Includes personal details (for natural person). May include verified Org info.

For each of these, the following types would exist:

- **Legacy**: A basic profile that encompasses a range of reasonable existing practices to bring them into an auditable environment.
- **Multipurpose**: A more formal profile – but allows multipurpose use (e.g., signing in context of email or documents, clientAuth)
- **Strict**: Dedicated to S/MIME use, in line with the growing use of specialised Root hierarchies.

Stephen indicated that the Subject of the Multipurpose and Strict policies would likely be similar. He indicated that in future versions we may choose to vary the keyUsages available by type, but that would require wider community feedback.

Tim Hollebeek indicated allows flexibility to bring the wide variety of S/MIME use cases into an auditable framework, and that the good/better/best of the types would allow a roadmap for tightening of standards.

Dimitris Zacharopoulos reminded that we must stay focused on our primary goal which is S/MIME profiles. Sebastian Schulz supported the focus on Strict profiles. Tim indicated that much would flow across the profiles, and at this stage only a few CAs have dedicated hierarchies by type so this standard will be able to adapt with time.

Tom Connelly emphasized that we need to be careful in balancing simplicity for the CA but creating usability problems for users (for example by cutting allowed validity periods or by doing away with multipurpose certificates). Tim agreed that we must be aware of user needs and not simply move complexity around.

Stephen agreed to distribute draft text on the methods for 1) validating authority over email address via domain and 2) validating control over email address via email (the two requirements of the Mozilla policy.)

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

The March 3 call of the SMCWG has been cancelled but will be replaced by an overall meeting of the CABF (the Virtual F2F). Further details to follow.

### Adjourned {.wp-block-heading}