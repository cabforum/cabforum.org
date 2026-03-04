---
author: Martijn Katerbarg
date: 2026-01-29 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-01-29 Minutes of the Forum
type: post
---

**Minutes:**

## CA/Browser Forum Plenary Call, 29 January 2026

Minutes by Jos Purvis (Fastly)

### Minutes

#### I. Meeting Logistics

Tim Callan presided over the meeting in lieu of Dean Coclin.
Tim re-emphasized the contents of the note-well.

#### II. Working Group Summaries

- **Code-Signing Certificate Working Group:** Martijn indicated there hadn't been a meeting of the working group since the last Forum call, so there were no updates.
- **S/MIME Certificate Working Group:** Martijn provided an update for the group. They met on 28 January with discussions around the ballot for mobile driver's licenses, which will need some minor changes before becoming a formal ballot, as well as the potential impact to SMTP service that the impending separation of client-auth/server-auth in certificates might have. He also mentioned the pending ballot to remove any uses of SHA-1, which could potentially spill over into other areas such as code-signing or TLS as there are still multi-purpose CAs or subCAs that are issuing certs with SHA-1 in the chain somewhere. The S/MIME Certificate Working Group is looking to coordinate both the SHA-1 and the Client-Auth/Server-Auth changes with the other working groups, to ensure any potential impact is understood and minimized. There is also a pair of ballots around DNS exceptions and DNS logging exceptions that will likely merge into a single ballot in the future.
- **NetSec Working Group:** Clint indicated the group met on Tuesday the 27th and discussed a previous proposal the group had entertained for adopting or incrementally adopting cloud services. The current iteration attempts to differentiate the operating environments for "security support systems", which could exist in a cloud/not-physically-present environment with a risk assessment from the CA, and the actual CA infrastructure itself (root, issuing CAs, etc.), that could not exist there. The discussion was thorough and productive within the working group, and cloud service providers have been providing some guidance to the discussion as well, but the group has not yet reached any conclusions.
- **Definitions and Glossary Working Group:** Tim Callan indicated the work in this space may have stalled, in that the group is more or less where they were four months ago. There's a strong draft of changes to consider, but they need some further discussion to get this to ballot.
- **Forum Infrastructure Working Group:** Jos indicated the group hadn't met since the last Forum call.
- **Server Certificate Working Group:** Dimitris summarized the discussions around cleanup ballots and which dates should be removed; the group had roughly agreed on deleting everything prior to 2024. He also mentioned discussions around the SHA-1 ballot (which has since passed) and the ADN ballot that was discussed.

Corey Bonnell supplied a summary from the Validation Subcommittee. They discussed the confusion around the change from allowing validation re-use under the ADN as opposed to the requested FQDN, and will be sending out some emails for clarification. There are some interested parties invited to discuss the CAA parameters ballot that Wayne Thayer (Fastly) proposed that the group will be following up on, and an IETF draft circulating in the LAMPS working group around CAA security.

#### III. Discussion Items — Current Business

##### Face-to-Face Meetings

Tim reminded the group that the Forum has moved to two face-to-face meetings per year, spring and fall. The March 10-12 meeting this year will be hosted in Houston, TX, US, by SSL.com; the fall meeting is scheduled for September in Vienna to be hosted by eMudhra. Ben asked for clarity regarding the dates of the September meeting; Tim volunteered to take that up with Scott Rea at eMudhra after the call.

Dimitris asked for clarity regarding the NetSec update and whether the proposed changes meant _no_ requirement for physical security around security support systems even in cloud providers. Clint clarified that there's a definition of "physically secure environment" tied to RFC3647 definitions and with an accompanying risk assessment from the CA, and that the proposal was that security systems would not require the RFC-3647-specific components but just the risk assessment, and that this was an initial straw-dog proposal from Corey in order to stimulate discussion around the topic; no consensus had yet been reached on the topic.

#### IV. New Business

There were no further new-business items.
Tim adjourned the call, noting the next call would be 12 February.

### Attendees

- Aaron Gable (Let's Encrypt)
- Adriano Santoni (Actalis S.p.A.)
- Alvin Wang (SHECA)
- Antti Backman (Telia Company)
- Ben Wilson (Mozilla)
- Clint Wilson (Apple)
- Corey Bonnell (DigiCert)
- Corey Rasmussen (OATI)
- Cynethia Brown (US Federal PKI Management Authority)
- Daryn Wright (Apple)
- Dimitris Zacharopoulos (HARICA)
- Dustin Hollenback (Apple)
- Eric Kramer (Sectigo)
- Hogeun Yoo (NAVER Cloud Trust Services)
- Inaba Atsushi (GlobalSign)
- Iñigo Barreira (Sectigo)
- Jeanette Snook (Visa)
- John Mason (Microsoft)
- Johnny Reading (GoDaddy)
- Jos Purvis (Fastly)
- Jun Okura (Cybertrust Japan)
- Karina Sirota (Microsoft)
- Kateryna Aleksieieva (Asseco Data Systems SA (Certum))
- Li-Chun Chen (Chunghwa Telecom)
- Lilia Dubko (CPA Canada/WebTrust)
- Lucy Buecking (IdenTrust)
- Luis Cervantes (SSL.com)
- Luis Osses (Amazon)
- Mahua Chaudhuri (Microsoft)
- Marco Schambach (IdenTrust)
- Martijn Katerbarg (Sectigo)
- Masaru Sakamoto (Cybertrust Japan)
- Michelle Coon (OATI)
- Nate Smith (GoDaddy)
- Nome Huang (TrustAsia)
- Ono Fumiaki (SECOM Trust Systems)
- Pedro Fuentes (OISTE Foundation)
- Peter Miskovic (Disig)
- Rollin Yu (TrustAsia)
- Sándor Szőke (Microsec)
- Scott Rea (eMudhra)
- Sean Huang (TWCA)
- Sven Rajala (Keyfactor)
- Tathan Thacker (IdenTrust)
- Thomas Zermeno (SSL.com)
- Tim Callan (Sectigo)
- Tobias Josefowitz (Opera Software AS)
- Trevoli Ponds-White (Amazon)
- Wayne Thayer (Fastly)
