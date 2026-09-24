---
author: Wayne Thayer
date: 2026-08-27 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-08-27 Minutes of the Server Certificate Working Group
type: post
---

# Final minutes for the CA/Browser Forum Server Certificate Working group - August 27, 2026


## Meeting Date:

- 2026-08-27


## Note Well:

- Dimitris Zacharopoulos chaired the meeting.

- The Note Well was read.


## Review of Agenda:

- No changes were made to the published agenda. A recent email was noted, but decided to wait for Dean to review for the next meeting.


## Approval of Minutes:

- August 13, 2026 Teleconference approved without objection.


## Membership Applications:

- GÉANT (application as an Interested Party) 

	- Decision: pending until they respond with an authorized signatory)

- Deutsche Telekom Security GmbH (Certificate Issuer)

	- Decision: Approved as member

- Carl Magnus Bruhner (Interested Party - individual)

	- Decision: Approved as interested party - individual


## Reasons for revocation discussion:

- Ben Wilson proposed reviewing revocation reasons and improving taxonomy for better clarity. The goal is to improve revocation circumstance in TLS-BR 4.9.1.1.


## F2F #68 SCWG Agenda topics:

- Discussion on CP vs CPS vs CP/CPS, expectations for RFC 2119 language, "descriptive" vs "prescriptive", or “vague", "narrative", "non-technical" vs "specific", “detailed", “technical"

- Ryan Dickson of Google Chrome offered 4 ideas of presentations they could make

	- Clear explanation of what they expect CAs to disclose in section 7 for DV profiles.

	- How to further improve listing expectations. Improving the language to listing specific to the type of profiles they issue

	- F2F 66 presentation call back <https://drive.google.com/file/d/12QCFfLG6NvGFlnIwU_AVM5mD-tZ4hn89/view?usp=drive_link> , establishing timeline on when dedicated use-case certs should be fully dedicated.

	- Discussion on how to make the information that was relied on for validation more available to certificate consumers, and how this might work in the coming MTC utopia.

- Lucy Bucking from IdenTrust mentioned discussing solutions using common tools to make machine readable CP/CPS. 

- Trevoli brought up wanting a topic of 

- Dimitris offered to work out the topic with Google Chrome offline, and encouraged any other topic to be sent to him or the mailing list.


## Ballot Status:

- SC-103 - Require EKUs for Cross-Certified Subordinate CAs (Aaron)

	- Is moving forward slowly. Current discussion is focused around the validity of the idea rather than implementation.

- SC-102 - EV Domain Reuse and Validity Alignment

	- Cleared IPR and PR is now merged in.


### Voting Period:

- SC104 <https://github.com/cabforum/servercert/pull/665>: Set

presence of AIA extension to SHOULD for Subscriber Certificates

(GTS, Chrome, Stephen)

	- No comments


### Draft:

- SC0XX <https://github.com/cabforum/servercert/pull/622>: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)

	- 

- SC106 <https://github.com/slghtr-says/servercert/pull/8>: Allow ML-DSA (Slaughter) (ATS taking over from GTS)

	- Has filed for official ballot number. Will open formal discussion period soon.

	- Notably it forces a pure chain and not allow hybrid alternatives. 

	- Ben expressed concern in the pure chain decision and they agreed to take the discussion to the list for concerns and alternatives.

	- Chris Clements primary concern is around ecosystem readiness and how CT will work with them. He would like to see updates in the preamble to address the CT ecosystem readiness. The challenge is primarily with the 6962 logs.

	- Dustin Hollenback agreed with Chris’ concerns and asked that if a cert consumer needs this that they speak up with the need.

	- Dimitris notes that because the entire chain is ML-DSA, there should not be risk to the CT ecosystem. Hybrid with ML-DSA chaining up to a classical root would force a CT log to accept it, but a pure chain can just be not accepted by the CT logs. There are CT enforcing browsers, and CT non-enforcing browsers and we should be supporting both.

	- Wayne mentioned that this is a straight forward path to PQC, and MTC hasn’t been universally accepted so we need to still move forward with it, while protecting the CT ecosystems.

- SC105 <https://github.com/cabforum/servercert/pull/678>: Remove High Risk language from TLS BR and EVG (Stephen)

	- No Comments



## Adjourn:

- The meeting adjourned. The next is scheduled for 2026-09-10.


## Attendees:

Dimitris Zacharopoulos (HARICA), Tobias Josefowitz (Opera), Jeff Ward (Aprio), Logan Mabe, Sandy Balzer - SwissSign, Chad Dandar, Wayne Thayer, Polina Glazyrina (Sectigo), Steven Deitte - GoDaddy, Kiran Tummala, Tadahiko Ito - SECOM, Scott Rea - eMudhra, Kiran Tummala, Tim Callan (Sectigo), Sándor SZŐKE, dr. (Microsec), Arno Fiedler, ETSI ESI VC, Greg Tomko (GlobalSign), [WISeKey] Jaime Hablutzel, Peter Miskovic-Disig, Adam Fiock, Jun Okura: Cybertrust, Nate Smith - GoDaddy, Arno Fiedler, ETSI ESI VC, Jozef Nigut - Disig, Chris Clements (Google Chrome), Adriano Santoni (Actalis), Atsushi INABA - GlobalSign, ONO Fumiaki - SECOM Trust Systems, Aaron Poulsen - SSL.com, Zoey Wang - TrustAsia, Luis Cervantes (SSL.com), Aaron Gable (ISRG), Corey Rasmussen (OATI), Karina Goodley, Andrea Holland (IdenTrust), Martijn Katerbarg - Sectigo, Lucy Buecking - IdenTrust, Rollin Yu - TrustAsia, Trevoli Ponds-White - Amazon Trust Services, Nome Huang - TrustAsia, Thomas Zermeno, Jos Purvis (Fastly), Michelle Coon (OATI), Stefan Kirch Telekom Security, Roman Fischer (SwissSign), wendy brown (FPKIMA), Sean Huang (TWCA), Peter Miskovic - Disig, Rich Smith (DigiCert), David Kluge, Ryan Dickson (Google Chrome), Luis Osses (Amazon Trust Services), Karolina Ruszczynska - Certum, Johnny Reading - GoDaddy, Li-Chun Chen, Chunghwa Telecom, Ben Wilson - Mozilla, Michael Slaughter (Amazon Trust Services), Dustin Hollenback, Inigo Barreira, Daryn Wright, Rebecca Kelley, Antti Backman - Telia Company, Arnold Essing - Telekom Security, Chad Dandar, Adam Jones (Microsoft), Trevoli Ponds-White - Amazon Trust Services, Adam Jones (Microsoft), Moritz Schaal (D-Trust), Marcelo Silva - Visa, Eric Kramer (Sectigo), Wayne Thayer
