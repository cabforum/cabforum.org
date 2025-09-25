---
author: Wayne Thayer
date: 2025-09-11 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-09-11 Minutes of the Server Certificate Working Group
type: post
---


# Minutes of the Server Certificate Working Group teleconference - September 11, 2025

## Meeting Date:

- 2025-09-11

## Note Well:

- Read by Dimitris Zacharopoulos.

## Review of Agenda:

- No additions or changes.

## Approval of Minutes:

- July 17, 2025 Teleconference (Draft minutes were distributed on 2025-09-01) approved.

- July 31, 2025 Teleconference (Draft minutes were distributed the same day) approved.

- August 28, 2025 Teleconference (Draft minutes were distributed the same day) approved.

## Membership Applications: 

- Dimitris noticed that the signature field included the exact full name and does not look like a signature.

- No objections with Justin Nogossek joining as an individual Interested Party.

## Discuss the sunset of Precertificate Signing CAs (issue #588): 

- Ryan Dickson introduced the topic and added the following links to chat:

  - https://github.com/cabforum/servercert/issues/588

  - https://groups.google.com/a/chromium.org/g/ct-policy/c/87iKRKn8WpE/m/TaOJUjDVAwAJ

  - https://github.com/cabforum/servercert/pull/615

  - https://docs.google.com/document/d/1jKLt0ISVohEwIZOTXFjAtXKsdp_7HBPmuIYdtWIm_wU/edit?tab=t.0

- Ryan described a general desire to sunset Precertificate Signing CAs, which Chrome feels is justified given the ongoing complexity they introduce across the ecosystem.

- Precertificate Signing CAs are name constrained CAs that are solely responsible for signing precertificates. The concept was specified in RFC 6962, the original CT RFC, back in 2013, and was formally introduced into the TLS BRs during SC-62, the profiles ballot. 

- From our understanding the overwhelming number of CA Owners included in the Chrome Root Store, and presumably true for other root stores, do not rely on this practice. Earlier this year, we filed GitHub issue 588 that proposed the sunset of precertificate signing CAs with our motivation being born out of the complexity the use of these CAs introduced into path building and validation of Chrome’s PKI Monitoring tooling. At that time, we understood, and still understand, this concern with regard to added complexity was shared by members of the CT ecosystem. 

- The recent issue raised in the Certificate Transparency Policy group was the impitus for progressing this issue to a formal ballot.

- Ryan described complexity for ecosystem monitors and added complexity incurred by the CA Owners that adopt these practices. Ultimately we understand this to create opportunities for additional points of failure and general maintenance burden.

- Earlier this week a message was shared in the Certificate Transparency Policy group that identified a log implementation being unusable from that point forward due to a bug with how that logs implementation was found to validate paths and ultimately did not accommodate validation through these Precertificate Signing CAs. As we understand, the log software is being patched to address this problem.

- Again, allowing this practice to continue introduces needless complexity, adds maintenance burden for CAs, it complicates validation logic for ecosystem monitors and as we saw this week it can introduce bugs that impact the entire ecosystem.

- In this spirit, we’ve moved forward with a formal ballot to sunset the practice. We have Let’s Encrypt as an endorser and we’re looking for others.

  - (Clint Wilson volunteered to endorse in Chat)

- We understand and hope that this is an attainable configuration change for the two known CA Owners. As such, we set the date for January 15, 2026 in the draft.

- Dimitris concurred that two CAs are affected by this proposal and he’s not sure how complicated of a change this will be.

- Janet Hines agreed with the direction and stated VikingCloud is still scoping the change from their perspective to best determine a most appropriate sunset date.

- Dimitris reminded the group of the general trend to align changes in March. Ryan proposed January because at the last VSC or SCWG meeting there was a comment requesting no more March dates. 

- Tim Hollebeek agreed with the justification that Precertificate Signing CAs are a rarely used option that lacks integration, and this ballot will eliminate complexity. From a purist cryptographic perspective having a Precertificate Signing CA is the right thing to do. It's the wrong thing to do in this situation. We’re eliminating complexity here because we’re eliminating a rarely used option that didn’t interact well with the rest of the ecosystem. 

- Aaron Gable pointed out that although the webPKI has not adopted CT 2.0 because we’re skipping straight from 1.0 to static-ct-api. CT 2.0 also does away with the concept of Precertificate Signing CAs.

- Ryan changed the draft effective date to March 15, 2026, and invited additional feedback from Janet. The Ballot can move into formal discussion in about a week, now that we have two endorsers.  

## F2F#66: SCWG topics for discussion: 

- Dimitris reviewed the topics from the last F2F which were OCSP deprecation, removal of clientAuth, revocation requirements, upcoming ballots, and GitHub open issues. 

- Dimitris asked for topics to be proposed. The SCWG has 2-3 hours for discussion. These can be sent directly to him, or the mailing list. 

## Ballot Status: 

- SC090: Gradually sunset all remaining email-based, phone-based, and 'crossover' validation methods from Sections 3.2.2.4 and 3.2.2.5. Chris Clements stated that this was discussed in the last VSC meeting and formally introduced it in that meeting. The ballot is in the very early stages of discussion and there is no intent to move this into formal discussion until SC-088 comes to completion or minimally moves into a voting period. 

  - Dimitris mentioned a DNSSEC ballot that passed in the S/MIME Working Group saying he had a discussion with the team and it sounds like there are a lot of signaling challenges. Corey Bonnell said that the topic was on the VSC agenda for last week but the group ran out of time. This will be discussed in the next meeting. 

- SC087: Registration Number Improvement for EV Certificates. Corey has an action item to update the ballot with feedback. 

- SC086: Sunset the Inclusion of Address and Routing Parameter Area Names. Dimitris proposed some changes which appear to be in the process of being accepted. Dimitris suggested moving forward with both SC086 and SC088 at the same time. 

- SC088: Persistent DNS DCV. This ballot has entered a second round of public discussion. 

## Any Other Business: 

- No other business was discussed.

## Adjourn

The meeting was adjourned.

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Enrico Entschew (D-TRUST), Eric Kramer (Sectigo), Gregory Tomko (GlobalSign), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kiran Tummala (Microsoft), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sean Huang (TWCA), Sven Rajala (Keyfactor), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
