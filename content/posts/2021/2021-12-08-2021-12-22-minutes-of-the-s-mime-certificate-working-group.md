---
aliases:
- /2021-12-08-2021-12-22-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-12-08 17:55:00
tags:
- S/MIME
title: 2021-12-22 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

December 8, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Enrico Entschew (D-TRUST), Fotis Loukos (Google), Inaba Atsushi (GlobalSign), Joanna Fox (TrustCor Systems), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mauricio Fernandez (TeleTrust), Morad Abou Naser (TeleTrust), Patrycja Tulinska (PSW Group), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Sebastian Schulz (GlobalSign), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the November 10 teleconference were approved.

### 5. Discussion 

The WG discussed the high-level approach to verification of individual identity.

Existing S/MIME covers a lot of ground from little-to-no verification through to full face-to-face/equivalent verification such as under the Qualified EU requirements.

Stephen Davidson pointed out that whatever is defined for CA verification will need to be flexible to accommodate Enterprise RAs.

Fotis Lukos indicated a preference to adopt existing public sector standards, such as the NIST 800-63A standard. A discussion of was held of the IAL2 level in that standard, which provides options for presenting different combinations of identity documents to meet a target. It was discussed whether these requirements were stronger than what’s required for S/MIME – as many validation regimes are considering identity as part of “legal admissibility” for example in context of e-signatures. There was extended discussion what was the correct level of identity proofing for S/MIME.

For Sponsored or Individual profiles this might include:

- givenName and surname
- Address (if included)
- Title (if included) – this is relatively simple if the cert is “sponsored” and includes a job title … but may require additional external verification if it includes reference to a regulated profession like “Lawyer”

It was agreed that the S/MIME BR should have flexibility for different “strength” of ID, perhaps using a combination of documents, and should address topics such as changed names and expired documents.

By comparison, Stephen described the individual identity requirements as shown in 3.2.3 of the BR, and for the Principal Individual of a Business Entity in 11.2.2 of the EVG, which includes more detail on options. Russ Housely suggested the “100 Points” model used in Australia for AML/KYC presented options for combinations of documents to reach a desired security target: [https://en.wikipedia.org/wiki/100_point_check][1]

Stephen described the ETSI survey of identity proofing standards published as ETSI TS 119 460. [https://www.etsi.org/deliver/etsi_tr/119400_119499/119460/01.01.01_60/tr_119460v010101p.pdf][2]. This work was performed in prep for the ETSI standard on identity proofing ETSI TS 119 461, which sets out requirements for different methods of doing identity proofing (manual/F2F, automated/app/eID/video/etc) which may have different security concerns. [https://www.etsi.org/deliver/etsi_ts/119400_119499/119461/01.01.01_60/ts_119461v010101p.pdf][3]

Fotis pointed out that NIST 800-63A 4.4.1.6 has stipulations for the duration of some communications (like the random value in mailbox confirmations) and suggested that these should also be adopted by the TLS BR. Stephen said he’d adopted the 24 hour for mailbox validation but for the domain validation sections from the TLS BR, a proposal should be made to the Validation subcommittee of the Server WG of the CABF.

Sebastian Schulz stated out that Enterprise RAs should be allowed to use HR records to support identity verification. In some cases, identity verification for the Enterprise may have been outsourced as part of an onboarding process. It may be that an extension should be used to indicate “Sponsored” certificates that have been issued by an Enterprise RA.

Stephen asked if WG members 1) had strong feelings for the right level of identity proofing for S/MIME or 2) had experience with vetting regimes that might be appropriate for S/MIME.

Clint Wilson noted that Apple had solicited feedback to its proposed changes to the root store program, particularly as pertains to validity periods for S/MIME as that document will be completed in the near future. Best contact is

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, December 22, 2021 at 11 a.m. US Eastern.

### Adjourned 

[1]: https://en.wikipedia.org/wiki/100_point_check
[2]: https://www.etsi.org/deliver/etsi_tr/119400_119499/119460/01.01.01_60/tr_119460v010101p.pdf
[3]: https://www.etsi.org/deliver/etsi_ts/119400_119499/119461/01.01.01_60/ts_119461v010101p.pdf