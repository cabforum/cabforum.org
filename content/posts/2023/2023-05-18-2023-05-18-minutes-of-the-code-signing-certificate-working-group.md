---
aliases:
- /2023-05-18-2023-05-18-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-05-18 17:00:28
tags:
- Code Signing
title: 2023-05-18 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Atsushi Inaba (GlobalSign), Ben Dewberry (Keyfactor), Bianca Martin (Amazon), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Eva Van Steenberge (GlobalSign), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Martijn Katerbarg (Sectigo), Mohit Kumar (GlobalSign), Roberto Quiñones (Intel), Rollin Yu (TrustAsia), Tim Crawford (BDO), Tim Hollebeek (DigiCert)

# Minutes

- The Antitrust statement was read
- Minutes from May 4th approved
- Ballot: CSC 18 – Malware base revocation (Martijn)
- In discussion period, voting period ending before meeting is over
- Dean: tracker shows quorum met
- Removing SSL BR References
- Martjin: About half docs reviewed for missing definitions. Removed 2 definitions that are not used. A couple may need to be added, will need to discuss
- Subject Name stability
- Email from new interested party (Mike Hearn)
- Ian: MSIX (Appx) does hash calculation of the publisher’s name value that is in the manifest and compares it to the full subject name value of signing certificate
- Was working fine when only used inside of store distribution. As its been rolled out broadly to allow MSI package into MSIX, they’ve run into this issue for companies that change their name or locale.
- New packages would validate fine but presents inability to update existing apps because it depends on Package Name alignment.
- This is Microsoft MSIX issue, not a broad certificate issuance problem.
- Tim: This is example of using \[subject\] name instead of global identifier and this has all the issues that are well known.
- Bruce: Even global identifier might change if company changes name, like with SSL and org ID
- Ian: Apple and Google offer ways to uniquely identify orgs. If Microsoft offered something similar, it would not be something that Public CAs should have to do.
- Ian will draft a response to this email
- June F2F is June 6th afternoon.
- Dean moves to cancel call scheduled for Jun 1st. No objections
- Agenda for F2F
- Time: 1:45pm to 3:45pm (nothing scheduled after this, so could keep going)
- Ian: no guest speaker for code signing workgroup. Roy Williams is going to talk about Secure Supply Chain Integrity, Trust and Transparency.
- Bruce: Spend some time reviewing time stamping changes Ian is proposing. Discuss EV Certificates. Continue discussion on Certificate Transparency
- Dean may not be able to attend in person, Bruce can facilitate