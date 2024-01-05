---
aliases:
- /2023-04-13-2023-04-13-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-04-13 22:31:39
tags:
- Minutes
- Forum
title: 2023-04-13 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Attendees:**

Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), David Kluge – (Google), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Iñigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Joanna Fox – (TrustCor Systems), Johnny Reading – (GoDaddy), Jos Purvis – (Fastly), Mads Henriksveen – (Buypass AS), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Ryan Dickson – (Google), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wayne Thayer – (Fastly), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services)

Dimitris announced the list of attendees.

Dimitris read the **note-well**.

**Minutes** of the March 30th meeting were approved. F2F 58 minutes were also approved.

Iñigo gave the **servercert-wg update**. Last time, the open Github issues

were discussed as well as converting the EVGs to 3647 format. There are

no plans to combine the EVGs and TLS BRs at this time.

Dean gave the **code signing-wg update**. CSC-18 (malware revocation) is in

the discussion period. The group all discussed removing references to

the TLS BRs in the CS BRs. Dimitris and Martijn are leading this effort.

Stephen gave the **smime-wg update**. The group is answering questions that

are being raised as CAs implement the SMBRs. There is an erratum ballot

that will resolve several minor issues and clarifications that were

identified. This draft ballot will be moved to discussion period soon.

The ballot will have the same effective date as the SMBRs itself. CAA

for SMIME was also discussed. The group has agreed to wait until the IETF

specification is published as an RFC to create a ballot. One Certificate

Consumer is looking for example hierarchies that comply with the SMBRs for

their testing. It was also announced that DigiCert will be releasing a

new linting suite for SMIME.

Jos reported that the **Infrastructure SC** did not meet this week.

Clint gave the **netsec-wg update**. Henry Birge-Lee joined the meeting to

discuss their research on DNSSEC and its potential utility as a mitigation

against network hijacking. Such a requirement may be proposed for inclusion

in the NCSSRs. The group discussed the relative priority for such a proposal,

especially in comparison with the working being done for multi-perspective

domain validation. Clint said he will lead a sub-group to develop a concrete

proposal.

Dimitris said that multi-perspective domain validation and DNSSEC falls more

firmly into servercert as opposed to netsec. Clint said that every CA for

all certificate types will be making outbound connections as part of their

validation processes, so they are relevant. Trev said this is why concrete

ballot language is needed to see whether changes to NCSSRs are needed.

Dimitris walked through the proposed Bylaws changes and the associated Github

1. Several members have provided feedback. Dimitris will reach out to the

contributors to the discussion on how to best resolve the outstanding items.

Dimitris also called for endorsers to these changes.

There was no other business. Meeting adjourned and the servercert-wg session began.