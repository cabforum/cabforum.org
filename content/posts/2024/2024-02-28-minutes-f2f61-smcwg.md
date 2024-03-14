---
aliases:
- /2024/02/28/2024-02-28-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2024-02-28 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-02-28 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

February 28, 2024, F2F #61

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees (physical and online)

Aaron Poulsen - (Amazon), Abhishek Bhat  - (eMudhra), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Andres Henschel - (D-TRUST), Antti Backman - (Telia Company), Arno Fiedler - (ETSI), Arnold Essing - (Telekom Security), Arvid Vermote - (GlobalSign), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bilal Ashraf - (SSL.com), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Christophe Bonjean - (GlobalSign), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dave Chin - (CPA Canada/WebTrust), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Enrico Entschew - (D-TRUST), Eva Vansteenberge - (GlobalSign), Fumi Yoneda - (Japan Registry Services), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jeremy Rowley - (DigiCert), Jos Purvis - (Fastly), Jozef Nigut - (Disig), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Keshava Nagaraju - (eMudhra), Leo Grove - (SSL.com), Li-Chun Chen - (Chunghwa Telecom), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Matthias Wiedenhorst - (ACAB Council), Miguel Sanchez - (Google), Mike Kushner - (KeyFactor), Mrugesh Chandarana - (IdenTrust), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Naveen Kumar - (eMudhra), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Raffaela Achermann - (SwissSign), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Roman Fischer - (SwissSign), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Sissel Hoel - (Buypass AS), Sooyoung Eo - (NAVER Cloud Trust Services), Star Simmons - (GoDaddy), Stephen Davidson - (DigiCert), Sven Rajala -(KeyFactor), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tim Hollebeek - (DigiCert), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha - (eMudhra), Yaswanth  - (eMudhra)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of February 14 were approved.

The membership of DiSig in the SMCWG was confirmed.

## 5. Discussion

Stephen Davidson provided an overview of recent activity at the SMCWG, which included passage of Ballot SMC04 (ETSI audit criteria) and Ballot SMC05 (CAA).  The group has also expended considerable effort on a draft Ballot SMC06 which is largely comprised of clarifications based on feedback from implementers, auditors, and users of the open source pkilint linter for the S/MIME BR, see https://github.com/digicert/pkilint.

Key Transparency Workshop
Stephen proposed holding a workshop at #62 F2F to discuss Key Transparency (KT).  KT addresses key discovery and key history, two of the biggest issues in S/MIME deployments.  See https://github.com/google/keytransparency/blob/master/docs/overview.md.  Large examples exist in messaging such as by Whatsapp, Signal, KeyBase, and Apple.  ProtonMail has a pilot for webmail:  https://proton.me/support/key-transparency 

As cloud service providers are now the dominant mode for email services, both personal and enterprise, Key Transparency becomes a possible enhancement for S/MIME certificates providing better discovery and lifecycle support.  Paul van Brouwershaven asked if this was within scope of the WG; Stephen argued that it fit within the charter focus on key management and certificate lifecycle; Clint Wilson agreed. Stephen said we had an opportunity to have “right people in the room” to advance the topic.  Tim Hollebeek noted that in the past invited guests were required to sign the IP agreement.  It was agreed to move ahead, with Stephen to request a suitable time bloc on the agenda.

Draft Ballot SMC06
Stephen walked through the text changes of Draft Ballot SMC06 which will be taken to vote soon.  The text is can be reviewed at https://github.com/srdavidson/smime/compare/ed36440d7c967732aa08739b14cc29bed257a67d...345a2358e1c6960bf3dcfc0ca5d400096ba59267.  He encouraged members to use the Issues list at https://github.com/cabforum/smime/issues to submit topics for consideration.

Roadmap
The WG reviewed topics for consideration in the coming months.  He noted there was an outstanding question regarding allowing the subject:country to differ from the country in the organizationIdentifier, which is not allowed in the S/MIME BR but is allowed in the EVG.  Stephen noted, and Clint concurred, that the WG needed to address the deprecation of Legacy profiles, identifying (and fixing where possible) obstacles to migration and setting a deprecation date, even it was a distance into the future.  The issue of polling WG members of their profile use, within the byelaws, was raised.  

Stephen noted other topics for longer term discussion including consideration of possible new methods for vetting and email control, such as the use of DNS for Sponsor-validated approvals, and the use of OAuth for authentication.

And finally, the WG discussed the desire of bringing forward a ballot to evaluate a e-signature scheme in line with 3.2.4.1 (4)(b).  He suggested that eIDAS was a suitable framework to start with.  He also noted that the text for 3.2.4.1 (3) should be reviewed in light oft he recently passed changes to eIDAS2 bringing forth the EUDI Wallet.  He asked CAs/TSPs with experience in this area to step forward.

## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, March 13, 2024 at 11:00 am Eastern Time

## Adjourned


