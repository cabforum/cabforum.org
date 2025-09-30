---
author: Martijn Katerbarg
date: 2025-09-11 00:00:00
tags:
  - Minutes
  - Forum
title: 2025-09-11 Minutes of the Forum
type: post
---

## Meeting Date:

- 2025-09-11
 
## Attendees: 
 
Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Enrico Entschew (D-TRUST), Eric Kramer (Sectigo), Gregory Tomko (GlobalSign), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kiran Tummala (Microsoft), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sean Huang (TWCA), Sven Rajala (Keyfactor), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
 
## Note Well:
 
- Tim Callan opened the meeting. The note well was not re-read.
 
## Review of Agenda:
 
- No changes or additions to the agenda.
 
## Approval of Minutes:
 
- April 10, 2025 Teleconference approved.
- July 17, 2025 Teleconference (Draft minutes were distributed on 2025-08-31) approved.
- August 28, 2025 Teleconference (Draft minutes were distributed the same day) approved.
 
## Server Certificate Working Group update: 
 
- Corey Bonnell reported on the VSC and said that the IP Address persistent DCV method was discussed. Ryan Dickson walked through the SC-090 gradual sunset of manual validation methods and the group had a good discussion.
- Dimitris Zacharopoulos said that we talked about Ballot SC-085 DNSSEC checks for email based validation which was raised by SwissSign. There was discussion about the expectations for DNSSEC enforcement. Apple explained that DNSSEC should apply to these lookups. Chrome agreed, noting that DNSSEC is important and should apply to the MTA lookups. We need this improvement in the overall security of the validation methods. The group concluded by reviewing Ballot status and concluded that the definition of ADN should be discussed in the VSC. 
 
## Code Signing Certificate Working Group update:
 
- Martijn Katerbarg stated in last week’s meeting they went through a batch of old issues. They still have a Ballot pending that will be introduced by Microsoft for introducing reduced certificate validity periods. They had a discussion around limiting the issuance terms of SubCAs to align with the existing revocation for keeping a revoked certificate on a CRL for 10 years after expiration of said certificate. 
 
## S/MIME Certificate Working Group update:
 
- Martijn stated there was a continued discussion on the pseudo name.
- Passed Ballot SMC-014 yesterday. Will require DNSSEC for CAA records.
 
## NetSec Certificate Working Group update:
 
- Clint Wilson said they met on Tuesday.
- They talked a bit about potential F2F topics and came away thinking about cloud services some more and specifically if there are parts of the infrastructure that can move into cloud environments.
- They talked a little about the rate of change within the CA/B Forum and NetSec Working Group and the effort it takes to keep up with these changes. 
- They followed-up on their discussion on AI Governance and started collecting resources that have guidance.
 
## Definitions and Glossary Working Group update:
 
- Tim Hollebeek stated he will meet with Tim (Callan) tomorrow morning.
 
## Forum Infrastructure Subcommittee update:
 
- Ben Wilson stated they did not have a meeting.
 
## Intellectual Property Rights Subcommittee update:
 
- Ben stated they met this week and reviewed edits to the IPR Policy. They specifically looked at section 4.1 and the confusion that it could create if there were two IPR review periods occurring at the same time that deal with the same language. Ben wants to craft some language that makes recognition of the Bylaw language and ensure that there are no conflicts between the IPR Policy and the Bylaws. Ben has some draft language that he’s working on. Part of the discussion in the Subcommittee suggested that there are other stakeholders who know the mechanics of how this is supposed to work and why we changed the Bylaws to say the things it says about this kind of situation. Ideally, if a second review period launches when another one barely closes, there would be a redline from the most recent IPR review period for consideration. It’s a hard situation to describe.
- In section 4.5 of the IPR Policy we require that new members sign a separate agreement that contributes all of their IP that might be conflicting with a guideline to a royalty free. We’re going to strike that.
- They discussed the exclusion notice template.
- Tim C. asked for the motivation behind addressing the overlapping IPR review notices, and whether this resulted from an incident. Ben suggested that it was just something someone noticed during a review of the IPR Policy.
 
## Any Other Business:
 
- Tim C. reminded everyone that registration for the next F2F meeting will close on September 15, 2025. There is a cap of 75 attendees. 
 
## Adjourn