---
author: Wayne Thayer
date: 2025-05-08 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-05-08 Minutes of the Server Certificate Working Group
type: post
---

## 1. Roll Call and Housekeeping

Meeting called to order by Dimitris Zacharopoulos.

---

## 2. Reading of Note-well

Dimitris read the note-well.

---

## 3. Review of Agenda

A second membership application was added to the agenda.

---

## 4. Minutes approval

- April 10, 2025 Teleconference - Draft minutes have not been distributed yet
- April 24, 2025 Teleconference - Minutes distributed 2 days ago, and they were approved.
- F2F#64 SCWG Meeting - Draft minutes were distributed 2025-04-22. Ryan Dickson said that he submitted a PR that has not yet been merged. Dimitris said that he will review and merge the PR and send out updated minutes for approval at the next meeting.

---

## 5. Membership applications

- Michael Richardson (Interested Party, as an individual) - Dean Coclin said that the IPR was signed as an organization, and confirmed that Michael is authorized to sign. The membership was approved as a company representative, not an individual.

- Dean Coclin said that we received an email from Yinglan Lu, a validation agent at Turingsign Global who wants to join as an individual. Ben Wilson said that the IPR subcommittee has concluded that this is not a good idea even though it has been allowed in the past. Dean said that we need to follow current practice and allow this. There were no objections, the application was approved.

---

## 6. Ballot Status

In Discussion Period
- SC086: Sunset the Inclusion of Address and Routing Parameter Area Names (Corey)

Corey Bonnell said that the proposers are formulating a response to the comments made on the maiing list.

In Voting Period
- None

Under IPR Review
- SC081v3: Introduce Schedule of Reducing Validity and Data Reuse Periods (End of Review Period: 2025-05-13 03:00:00 UTC) 

Cleared IPR Review, New Guidelines
- None

Draft / Under Consideration
- SC085: Require DNSSEC for CAA and DCV Lookups (Henry, Clint)

Dimitris said that the discussion has become very technical. Clint Wilson said that the discussion is around the correct RFC references to include in the BRs. There is also discussion of a Nov 2025 or Feb 2026 effective date. Once consensus is reached on an effective date, the discussion period can begin. The ballot will be discussed further on the next Validation SC call.

Dimitris suggested that March is one of the months we've agreed to align on for effective dates, so it is preferred over February, Dimitris also said that CAs need to build accurate tools to support this change, so more time may be needed.

- SC0XX: Process RFC 8657 CAA Parameters (Wayne)

Wayne Thayer said that this is on hold until SC085 is voted on and completes IPR review.

- SC0XX: CA Assisted Domain Validation (Slaughter)

Michael Slaughter said that the text was reviewed at the last Validation subcommittee call. Feedback has been incorporated and the updated language will be discussed at the next Validation SC meeting.

- SC0XX: Validation method in TLS Certificates (Clint)

Clint said that he is currently focusing on other ballots. Dimitris asked what happens if the ACME protocol is used for a request but validation is performed outside of ACME by an RA using a non-ACME method? Clint said that the CA would include the validation method(s) used for domain validation, regardless of the use of the ACME protocol as a delivery mechanism.

Corey said that there is also SC087, the registration number ballot. Language is on GitHub and discussion is happening there. Awaiting completion of SC086 before moving forward.

---

## 7. Any other business

Dimitris said that the F2F is coming up and we should work on an agenda. Dean said that he has posted a draft agenda to the wiki.

---

## 8. Next call: May 22, 2025

---

## 9.	Adjourn

---

## Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adriano Santoni (Actalis S.p.A.), Antti Backman (Telia Company), Ben Wilson (Mozilla), Brianca Martin (Amazon), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Gregory Tomko (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iori Kondo (Cybertrust Japan), Jaime Hablutzel (OISTE Foundation), Jeanette Snook (Visa), Jeff Ward (Aprio), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kate Xu (TrustAsia), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marcelo Silva (Visa), Martijn Katerbarg (Sectigo), Matthew McPherrin (Let's Encrypt), Michael Slaughter (Amazon), Michelle Coon (OATI), Mohd Redha Hamzah (Pos Digicert Sdn. Bhd.), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Scott Rea (eMudhra), Sooyoung Eo (NAVER Cloud Trust Services), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)


