---
author: Wayne Thayer
date: 2025-07-31 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-07-31 Minutes of the Server Certificate Working Group
type: post
---


# Minutes of the CA/BF ServerCert Working Group, 2025-07-31

## Administrivia

- Minutes taken by Aaron Gable
- Recording started
- Attendance taken by Webex
- Note-well read by Wayne Thayer
- Agenda (shared by Dmitris Zacharopoulos) approved
- Prior minutes
  - 2025-04-10 teleconference (taken by Trevoli Ponds-White): approved
  - 2025-07-17 teleconference (taken by Scott Rea): not yet distributed
- Membership applications
  - Joshua Garrett approved as individual Interested Party

## Ballot Status

### In discussion period

- SC086: Sunset the Inclusion of Address and Routing Parameter Area Names
  - No updates at this time

### In IPR review period

- SC089: Mass Revocation Planning

### Recently published guidelines

- SC085: Require DNSSEC for CAA and DCV Lookups
  - Published as TLS BR v2.1.6

### Drafts

- SC087: Registration Number Improvement for EV Certificates
  - Corey Bonnell: no updates at this time
- SC088: Persistent DNS DCV
  - Michael Slaughter: no updates at this time
  - Wayne Thayer: planning to move this into discussion period soon
- SC0XX: Process RFC 8657 CAA Parameters
  - Wayne Thayer: was on hold until SC085 passed, now ready to proceed
- SC0XX: Validation method in TLS Certificates
  - Clint Wilson: no updates at this time

## Topic: Debian Weak Keys

- Martijn Katerbarg: Planning to add P-521 Weak Keys to the [CABF Debian Weak Keys repository](https://github.com/cabforum/Debian-weak-keys)
- This is not a new requirement; any CAs issuing P-521 certs should have generated these themselves already

## Any Other Business

- Next call 2025-08-28
  - August 14 is cancelled due to no available chairs

## Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Alvin Wang (SHECA), Ben Wilson (Mozilla), Brianca Martin (Amazon), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Daryn Wright (Apple), Dean Coclin (DigiCert), Doug Beattie (GlobalSign), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iori Kondo (Cybertrust Japan), Jaime Hablutzel (OISTE Foundation), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Josselin Allemandou (Certigna (DHIMYOTIS)), Jun Okura (Cybertrust Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))