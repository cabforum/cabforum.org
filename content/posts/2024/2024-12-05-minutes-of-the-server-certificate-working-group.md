---
author: Wayne Thayer
date: 2024-12-05 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-12-05 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Antti Backman - (Telia Company), Ben Wilson - (Mozilla), Bindi Davé - (DigiCert), Bineesh Ambali Vadakkekandi - (Microsoft), Bruce Morton - (Entrust), Chad Dandar - (Cisco Systems), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), Daryn Wright - (Apple), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Dustin Hollenback - (Microsoft), Gregory Tomko - (GlobalSign), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Iñigo Barreira - (Sectigo), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Ji Eun Seong - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Lucy Buecking - (IdenTrust), Luis Cervantes - (SSL.com), Mads Henriksveen - (Buypass AS), Mahua Chaudhuri - (Microsoft), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michael Slaughter - (Amazon), Michelle Coon - (OATI), Miguel Sanchez - (Google), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Rebecca Kelly - (SSL.com), Rollin Yu - (TrustAsia), Ryan Dickson - (Google), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yamian Quintero - (Microsoft)

## Meeting Management

-   Dimitris read the Notewell.
-   Two changes to the agenda were identified: adding a membership approval and removing the minutes approval (Dimitris)

## Approval of Minutes

-	The minutes of 21 November were approved

## Interested party Application

Dimitris noted an IP application from Wojciech Jakubowski, and confirmed that Dean had reviewed the IPR and application and found them in compliance. Clint asked and Dean/Dimitris confirmed this was for an individual. The application was approved.

## Github Issues

Dimitris reviewed the set of issues in GitHub, starting from issue 496 and attempting to work through roughly ten issues per call.

1.  Issue 496 opened by Tadahiko Ito in March around whitespace in the CAA `contactphone` property not matching the RFC requirements, and asking whether this would be considered a violation if a record had a space (and thus did not conform). The consensus was that this was a cleanup-type issue to remove the spaces and conform to the RFC presentation; the issue was assigned to Martijn to be incorporated into the forthcoming cleanup ballot.
2.  Issue 498 opened by Ryan Dickson around the `extKeyUsage` flag for Root CAs and correcting this to indicate the extension is prohibited. This was also cleanup-balloted.
3.  Issue 499 opened by Stephen Davidson around the EV Guidelines `cabfOrganizationIdentifier` extension and proposing making it optional as it appears not to have ever been used by relying-party software. Several people noted that this is fundamentally not relied on and the syntax defined in the EVG is defective leading to potential reliability concerns, proposing that it instead be removed. However, others noted that this extension is noted in ETSI standards, making its removal/non-reliance difficult. Clint and Dimitris volunteered to work on an email discussing this extension and the problems with it, to be sent to ETSI to open discussions around the problem.
4.  Issue 502 opened by Clint Wilson correcting language in BRs section 3.2.2.4.7. This was marked as already addressed in the current cleanup ballot in process with Martijn.
5.  Issue 505 making CRLs required and OCSP optional, submitted by Doug Beattie. One concern is that there is no "grace period" noted for issuance of a CRL, potentially leading to the interpretation that a CRL must be generated at the same instant a CA is created. Since this was not the intent of the original restriction, the discussion centered on how to resolve the problem; ultimately the conclusion was that the intent of the policy was to marry the 7-day no-CRL window from the CCADB into this requirement. Martijn volunteered to see if he could work cleanup language out for this.
6.  Issue 506 around `certificateHold` reason code in CRL entries, opened by Doug Beattie. The group opted to revisit this in approximately a year, linking it to issue 532 and researching some clearer language for this requirement in the meantime.
7.  Issue 512 opened by Ben Wilson around removing the point-in-time readiness assessment from section 8.1, which is an old requirement. Ben volunteered to take this as a separate ballot proposal given that it may require additional discussion.
8.  The group briefly reviewed issue 513 on section title alignment in the BRs with RFC 3647, but concluded it was not a brief discussion topic.

## Review of Pending Ballots

### Ballot Numbering
In preparation for moving to SCWG chair, Dimitris reviewed the current slate of open ballots and their status. He noted that there is considerable inconsistency in ballot naming: numbering, titles, leading zeroes, and so forth all seemed to lack consistency. He proposed identifying a standard for numbers/labels for ballots that would help with both naming and with sorting the list when generating it programmatically in our website code. The group agreed on a leading-zero three-digit style to create consistent numbering with a single-digit version if needed, resulting in a format of `SC0XXvN` where `XX` is the ballot number and `N` is the version number (only if > 1).

### Ballot Status

- SC80 (Sunset the use of WHOIS) had passed since the last meeting. It is currently in IPR; there was an inquiry received to `questions@` about this particular requirement. Ryan Dickson volunteered to draft a response to that inquiry.
- SC82 (Clarify CA-Assisted DNS Validation) had failed since the last meeting. Dimitris asked for any comments or discussions on it. The group agreed that there was a need for this method, but not about whether it was already a thing permitted or in place under the BRs. This required more discussion, and was relegated to the Validation Subcommittee for review and re-introduction.
- SC81 is still in discussion and was receiving active feedback. Clint indicated he planned an extended discussion period on this ballot owing to both the holidays and the need for considerable review and discussion around the problem. Since much of the discussion was taking place in the Validation Subcommittee, Clint agreed to share the new version with both the Validation Subcommittee and the larger Server-Cert community, albeit likely after the holiday break.

## Any Other Business

- Nicol noted that we may have come to the wrong conclusion around issue 496 earlier; this was referred to the next meeting for further discussion.

## Next call

The next call will be 19 December. No further business was noted, the meeting was adjourned.
