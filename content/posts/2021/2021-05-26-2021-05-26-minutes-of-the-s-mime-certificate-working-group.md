---
aliases:
- /2021-05-26-2021-05-26-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-05-26 21:06:00
tags:
- Minutes
- S/MIME
title: 2021-05-26 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

May 26, 2021

These are the Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Hazhar Ismail (MSC Trustgate.com), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Klauss Voss (Zertificon), Mads Henriksveen (BuyPass), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (WebTrust), Wendy Brown (Federal PKI)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the May 12 teleconference were approved.

### 5. Discussion of certificate profile 

The discussion regarding the [Mailbox-validation Legacy profile][1] continued.

Discussion took place between regarding the overlap between certificates intended for S/MIME and those intended for document signing, both of which may use the emailProtection EKU. The document signing certs may not have an email address or the digitalSignature keyUsage.

In our effort to improve the S/MIME ecosystem we must be mindful of the SMCWG Charter proscription of breaking other use cases.

There was a reminder of the [IETF Internet-draft][2] to create a generic EKU for document signing, which would assist in separating the S/MIME and document signing use cases.

The [SMCWG Charter][3] defines both that our deliverable address certs that contain the contain the emailProtection EKU and elsewhere as certificates to be used for S/MIME. There was concern that the scope of the S/MIME BR be clearly delineated, for example to prevent future linters from sweeping in document signing certs.

It was agreed that a certificate with the emailProtection EKU and containing an email address in the Subject or SAN should be considered in scope. Following points made by Dimitris Zacharopoulos and Wendy Brown it was agreed that that any Issuing CA that issued any certs of that type would be in scope. The goal of the Legacy/Multipurpose profiles is to accommodate those “crossover certs” with the intent that those profiles ultimately would be phased out in favor of the Strict. Client Wilson said that the long term goal must be to separate the S/MIME and document signing use cases as other areas have shown the policy and agility risks of multipurpose certificates.

Wendy Brown, Thomas Connelly, and Russ Housely discussed that there is a cost of separating certs by use case, and that current client software UI may present a challenge for users in identifying which certificate they are looking at, particularly over time when managing expired certificates required to view historic emails.

The discussion turned to EKU. Stephen Davidson pointed out that a review of S/MIME certs found on the internet showed that even “strict-looking” profiles used additional EKU beyond emailProtection. These include clientAuth, a range of Microsoft EKU, and document signing EKU.

Curt Spann indicated that while it may be acceptable in Legacy/Multipurpose profiles, it would be unusual to allow in the Stricter policies. Dimitris pointed out that no standards existed for clientAuth and other BR allowed its use.

It was agreed that the Microsoft EKU and the document signing EKU would be acceptable in Legacy/Multipurpose. Ben Wilson asked CAs to consider their issuance and to make the case for EKU combinations that may be required. Curt raised that it may be that the Legacy/Multipurpose profiles could be combined once the actual differences in the “identity” profiles are considered.

Stephen Davidson raised the question of the smimeCapabilities extension and asked if other specialist extensions were commonly used in S/MIME. Stephen noted that an additional tab called “leaf profile” has been added to the [worksheet][1] starting to lay out the other leaf certificate fields that will be in common across the profile types.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, June 9, 2021 at 11:00 am Eastern Time

### Adjourned 

[1]: https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing
[2]: https://datatracker.ietf.org/doc/draft-ito-documentsigning-eku/
[3]: /working-groups/smime/charter/