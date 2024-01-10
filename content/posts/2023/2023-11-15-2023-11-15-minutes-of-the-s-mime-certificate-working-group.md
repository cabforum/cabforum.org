---
aliases:
- /2023/11/15/2023-11-15-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-11-15 16:27:40
tags:
- Minutes
- S/MIME
title: 2023-11-15 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

November 15, 2023

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Christophe Bonjean – (GlobalSign), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Miguel Sanchez – (Google), Morad Abou Nasser – (TeleTrust), Paul van Brouwershaven – (Entrust), Rebecca Kelley – (Apple), Robert Lee – (GlobalSign), Russ Housley – (Vigil Security LLC), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes for the meeting at the F2F CABF#60 and the teleconference of October 25 were approved.

### 5. Discussion

Stephen Davidson confirmed that Ballot SMC04 has passed and was now in IP review, ending at 1700 UTC on December 8.

Stephen walked through the draft text of a ballot to introduce CAA for S/MIME, which may be seen at [https://github.com/srdavidson/smime/compare/241e92cde85c25d7e0d4a5c70118ecadacd4d72b…29f73eb50573bf3e04cb417aaf67be1c209f066b][1], noting that it drew heavily on the text already found in the TLS BR. Clint Wilson noted that CAA should be applied to all email addresses in the certificate, and that mailbox addresses in the Subject should be repeated in the SAN.

Stephen noted that he had reached out to KeyFactor (EJBCA) regarding the topic, and strongly encouraged CAs that use commercial software to speak with their respective vendors on the implementation of CAA for S/MIME.

Stephen outlined the timeline previously discussed in the WG, which would call for a SHOULD after ~6 months and a SHALL after ~12 months (final dates to be determined at the time of ballot). He asked for feedback on the acceptability of those timeframes.

Stephen then reviewed the issues at [https://github.com/cabforum/smime/issues][2] noting those that are already implemented in the draft of a future cleanup ballot which can be found at [https://github.com/srdavidson/smime/commits/Ballot-SMC05/SBR.md][3].

Stephen noted several new issues filed by Rob Lee and suggested to WG members that this was a good place to file questions that may be raised in the course of operating under the SBR.

The WG discussed the revocation backdating topic seen at [https://github.com/cabforum/smime/issues/221][4]. It was agreed to park the topic for now given the doubts that backdating had a use in the S/MIME protocol as it stands. Stephen said the WG would return to the topic in future if it simplified implementations for CA operators.

The WG discussed the topic of the SV Legacy Subject which had arisen in several teleconferences; Stephen noted that the group would return to it in December. One consideration was whether to tweak the Legacy profile, or to focus on the date upon which the Legacy profiles might be reasonably retired. Stephen again asked CAs to consider if there were elements missing from the Multipurpose or Strict profiles that might complicate this migration.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, December 6, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://github.com/srdavidson/smime/compare/241e92cde85c25d7e0d4a5c70118ecadacd4d72b...29f73eb50573bf3e04cb417aaf67be1c209f066b
[2]: https://github.com/cabforum/smime/issues
[3]: https://github.com/srdavidson/smime/commits/Ballot-SMC05/SBR.md
[4]: https://github.com/cabforum/smime/issues/221