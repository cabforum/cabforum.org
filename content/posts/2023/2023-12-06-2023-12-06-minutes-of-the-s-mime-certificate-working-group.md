---
aliases:
- /2023/12/06/2023-12-06-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-12-06 19:45:52
tags:
- Minutes
- S/MIME
title: 2023-12-06 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

December 6, 2023

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Alison Wang – (TrustAsia), Andrea Holland – (VikingCloud), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Cade Cairns – (Google), Christophe Bonjean – (GlobalSign), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Inaba Atsushi – (GlobalSign), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Mrugesh Chandarana – (IdenTrust), Nome Huang – (TrustAsia), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia), Russ Housley – (Vigil Security LLC), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Hollebeek – (DigiCert), Tsung-Min Kuo – (Chunghwa Telecom), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes for the teleconference of November 15 were approved.

### 5. Discussion

Stephen Davidson confirmed that Ballot SMC04 was scheduled to conclude IPR review on December 8 and no comments had so far been received.

Stephen walked through the draft text of a ballot to introduce CAA for SMIME, which may be seen at [https://github.com/srdavidson/smime/compare/241e92cde85c25d7e0d4a5c70118ecadacd4d72b…c432153a4375fbfa59bd3a75fd55e915b2f31938][1]

He noted that he’d received good feedback from Cade Cairns and others, and welcomed comments on the text as the plan is to move to ballot in January. The ballot will be proposed by Corey Bonnell. Ben Wilson offered to be an endorser.

Stephen noted that there was a proposal to change the location of CAA info in the TLS BR and that he hoped the groups would maintain consistency.

It was agreed to set adoption as a SHOULD starting on Sept 15 2024 and a SHALL starting on March 15 2025. He noted that CAs should be contacting vendors or engineering teams about those dates.

The WG discussed the Sponsor Legacy profile, in particular if the standard should be made more specific to ensure that the subject is a human user, not an unattended mailbox or device (which were intended to use the Mailbox or Org-validated profiles). Stephen noted the Sponsor Legacy was intended to be a flexible profile to assist in moving the S/MIME universe into the auditable environment of the S/MIME BR.

He said the WG had the choice to tighten the Legacy profiles, which implied them being around for a long while, or to focus attention on implementation issues that prevented movement to the Multipurpose or Strict profiles. He asked CAs to provide feedback from their implementation, noting that he understood that ERAs may have difficulty providing givenName and surname as separate fields rather than the just the complete name as a CN. Tim Hollebeek commented this may be a dominant issue for ERAs that might otherwise move to the Multipurpose profile.

Ben said that for now the WG should retain the flexibility of the Legacy profiles with clarifications if required but that it was important to gather data to inform the improvement of the standard as well as the eventual deprecation of the Legacy.

Martijn Katerbarg proposed improvement to Section 1.2 describing Mailbox profiles as the current text might be understood to ban the CN, which was not intended.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, December 20, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/srdavidson/smime/compare/241e92cde85c25d7e0d4a5c70118ecadacd4d72b...c432153a4375fbfa59bd3a75fd55e915b2f31938