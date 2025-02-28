---
title: 2024-12-05 Minutes of the CA/Browser Forum Teleconference
author: Martijn Katerbarg
summary: Final minutes of the CA/B Forum call held on December 5, 2024.
date: 2024-12-05
tags:
  - Forum
  - Minutes
type: post
---

## Attendees
Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Antti Backman - (Telia Company), Ben Wilson - (Mozilla), Bindi Davé - (DigiCert), Bineesh Ambali Vadakkekandi - (Microsoft), Bruce Morton - (Entrust), Chad Dandar - (Cisco Systems), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), Daryn Wright - (Apple), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Dustin Hollenback - (Microsoft), Gregory Tomko - (GlobalSign), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Iñigo Barreira - (Sectigo), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Ji Eun Seong - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Lucy Buecking - (IdenTrust), Luis Cervantes - (SSL.com), Mads Henriksveen - (Buypass AS), Mahua Chaudhuri - (Microsoft), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michael Slaughter - (Amazon), Michelle Coon - (OATI), Miguel Sanchez - (Google), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Rebecca Kelly - (SSL.com), Rollin Yu - (TrustAsia), Ryan Dickson - (Google), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yamian Quintero - (Microsoft)
 
## Meeting Management
  * The Notewell had already been read.
  * No updates or changes to the agenda were noted.
 
## Approval of Minutes
  * The November 7 minutes were still outstanding and not available for approval. The 21 November minutes were reviewed and approved by acclamation.
 
## Working Group Updates
 
### Server Certificate WG
No further updates beyond the prior discussion on this call were noted, as there was no previous meeting to review owing to the US holiday prior.
 
### Code-Signing WG
No update due to the US holiday intervening.
 
### SMIME Cert WG
  * SMC-09 was adopted on 22 November, requiring pre-linting for S/MIME certificates
  * SMC-010 passed and is currently in IPR (emerging on 22 December), incorporating MPIC. Stephen recommended that CAs look over these carefully.
Stephen also noted discussions in progress around:
  * *ACME in validation of SMIME certificates* with a draft ballot underway, and interest in other methods for the automation of SMIME validation.
  * *Key-size change proposals in RSA for CAs existing after 2028 vs. post-quantum migrations*, which may lead to a roadmap from the group on making post-quantum work in SMIME emails.
  * *A change in the ETSI standards around the new European registry number (EUID)* that resulted from an inquiry from the SMIME WG — the implementation of that change opens the door to changes and improvements in the SMIME BRs.
 
### NetSec WG
Clint noted that they met Tuesday and heavily discussed a draft ballot defining terms for CA infrastructure and how to break this out to individual elements in the CA infrastructure and scope. Wayne asked about the reference in the TLS BRs to NCSSR version 1.7 and where the ballot stood for fixing that reference. Clint replied that he'd been working on a draft for it, but it was on hold in order to try and account for pending cleanup changes to the NCSSRs. Wayne recommended moving forward with it as there is some ambiguity about compliance as long as the reference still needs correction.
 
### Definitions & Glossary WG
No updates from the group at this time — the group is planning to get moving further in the new year.
 
### Infrastructure Subcommittee
No update due to the US holiday intervening.
 
### IPR Subcommittee
Ben put out a poll for the next meeting and the conclusion was 17 December. They plan to meet and discuss any of the open items, in preparation for work in the new year.
 
## Style Guide
This topic was removed from the agenda as it had not progressed.
 
## Bylaws Changes
Ben hadn't had time to work further on this but work is definitely forthcoming.
 
## Any Other Business
  * Dean noted the spring meeting in March in Tokyo had 35 people signed up locally and only one person remotely, with 2 potential interesting guest speakers. Tadahiko invited anyone with questions about the meeting and location to contact him directly. Dean recommended booking hotels early as this is cherry-blossom season which fills up quickly.
  * Dean reviewed the plans for the October meeting at Certum with Kateryna. She said preparations have started on the date, but they're trying to find something that will not collide with other local events.
  * Trevoli noted that we should revive the wiki page that listed other conferences. It exists, but needs updating to account for conferences in 2025. Tim Callan volunteered to review and update it.
  * Dean encouraged the new slate of chairs/vice-chairs to have transition meetings with the previous slate, in order to coordinate handoffs and information transfer.
 
## Next Meeting
The next call will be 19 December. No further business was noted, the meeting was adjourned.
