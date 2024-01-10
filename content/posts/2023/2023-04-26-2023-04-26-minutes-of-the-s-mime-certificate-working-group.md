---
aliases:
- /2023/04/26/2023-04-26-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-04-26 13:56:51
tags:
- Minutes
- S/MIME
title: 2023-04-26 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

April 26, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Christophe Bonjean – (GlobalSign), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Eva Vansteenberge – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Mrugesh Chandarana – (IdenTrust), Nome Huang – (TrustAsia Technologies, Inc.), Patrycja Tulinska – (PSW), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tsung-Min Kuo – (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: April 12.

### 5. Discussion

Stephen Davidson noted that DigiCert has released demo certs for the SBR profiles at [https://github.com/digicert/smbr-cert-factory][1], and that tentatively Corey Bonnell would give a presentation during the May 10 meeting of the S/MIME linter that DigiCert will release to the community as OSS.

Stephen presented the proposed text (from Christophe Bonjean) to clarify the use of Pseudonym at [https://github.com/srdavidson/smime/commit/fc91ff14449f7d2cdee630e1e5167695baa3d186][2]. There were no objections.

Stephen presented the proposed text to clarify that the LEI role can only be used with the Sponsor-validated profile at [https://github.com/srdavidson/smime/commit/fc91ff14449f7d2cdee630e1e5167695baa3d186][3]. Dimitris Zacharopoulos asked if the SBR had procedures to validate the role. Stephen responded that section 3.2.3.2.1 and 3.2.3.3 talked about “LEI data reference” intending to cover both the corporate LEI and the role reference. He agreed to look into whether additional clarification should be made.

Based on enquiries from several certificate issuers who are implementing the SBR, the WG returned to the topic of Enterprise RAs issuing certificates to external email domains using “3.2.2.2 Validating control over mailbox via email”. Christophe raised the question: why can’t an ERA combine an external mailbox with their own O details?

Stephen recounted the past dialogue that led to existing SBR text. He said the email domain “under the control of or authorised to use by” the ERA acted as a constraint, where the ERA can be assumed to reliably “sponsor” and have validated internal users, and that this allowed a simple delegation of RA without the larger audit obligations of a true RA.

Christophe said the case seemed simple for email services like gmail or outlook. Christophe said that the use of outside contractors or affiliates was common, and that it was up to the ERA to accept that they want to include an external email in association with their O.

Stephen noted it is difficult to build guardrails when you start to loosen the ERA constraints without adding audit burden. In many cases the external mailbox may not be “owned” by the individual but instead a third-party organisation which may not agree to their email domains being included in the ERA’s certificates.

Dimitris said that when an email is outside the control of the ERA, then it is no longer really acting as an Enterprise RA. He asked if we needed to tighten definitions.

Stephen noted that CAA might play an important role in this case where the third-party organisation may restrict issuance on their domains.

Judith Spencer confirmed that it’s fine for an ERA to issue to external people if they give them an email address on their own domain. She said it was also important for organisations to be able to issue to supply chain counterparties, whether as a Sponsor or Mailbox-validated profile. She noted the common practice to tag such external users with a \[Note\] in the commonName or in the OU, which is impeded in the SBR.

Stefan Selbitschka pointed out that if the CA itself issued a Sponsor-validated certificate it was not under an obligation to tie the O to the domain. Stephen agreed this was the case. He asked why this would then be enforced on the ERA?

Stephen noted that the conversation would need to continue on this point, and invited the WG to use the list as well. As this would represent a change in practice, it would best be handled as a new ballot rather than part of the erratum.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, April 26, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/digicert/smbr-cert-factory
[2]: https://github.com/srdavidson/smime/commit/fc91ff14449f7d2cdee630e1e5167695baa3d186
[3]: https://github.com/srdavidson/smime/commit/fc91ff14449f7d2cdee630e1e5167695baa3d186