---
author: Wayne Thayer
date: 2025-04-24 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-04-24 Minutes of the Server Certificate Working Group
type: post
---

## 1. Roll Call and Housekeeping

- Meeting called to order by Dimitris Zacharopoulos.
- Tom to take minutes; recording sent to him.

## Attendees:

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Iori Kondo (Cybertrust Japan), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Jeanette Snook (Visa), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading (GoDaddy), Josselin Allemandou (Certigna (DHIMYOTIS)), Jun Okura (Cybertrust Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Llew Curran (GoDaddy), Lucy Buecking (IdenTrust), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sissel Hoel (Buypass AS), Sooyoung Eo (NAVER Cloud Trust Services), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft).

## Read Note-well

Dimitris Zacharopoulos read the note well

## Review Agenda

**Topics:**

1.    Begin Recording - Roll Call
2.    Read note-well
3.    Review of Agenda
4.    Minutes approval

  a. April 10, 2025 Teleconference (Draft minutes have not been distributed yet)

  b. F2F#64 SCWG Meeting (Draft minutes were distributed 2025-04-22)

5.    Membership applications

  a. Antony Vennard (Interested Party, as an individual)

  b. Ganesh Mallaya (Interested Party, as an individual)

6.    Emails to Questions and questions on GitHub regarding Certificate validity period
7.    Ballot Status – see list below
8.    Any Other Business
9.    Next call: April 24, 2025
10.   Adjourn

## Approval of Minutes

a. April 10 minutes are not available for review.

b. Face-to-Face minutes distributed April 22; Ryan asked for more time to review the minutes on Chrome's behalf; deffered to the next meeting.

- Discussion on draft minutes process by Dimitris to be added as AOB; Mads was concered that he and a colleague were left off the attendance list; Dimitris asked for anyone missing from the list to submit an email to him.
- Ben suggested discussing different processes for F2F draft minutes as an AOB topic; Corey agrees that a holistic discussion would be beneficial - topic added to agenda of next meeting.

## Membership applications

a. Antony Vennard - no objections

b. Ganesh Mallaya - no objections

Both applications approved and individuals to be added to lists

## Questions on SC-081

- How to treat continuted comments on the ballot after it has been approved?
- No new topics, but allows community to make their sentiment known
- There is a "lock conversation" button to restrict new comments on the pull request
- After the IPR period a message can be added to the request to send comments to the CA/B F Questions List
- Suggested to move the discussion to the Infrastructure SC to work on proposal for consistant policy in all repositories
- Forum policy is to respond to all questions sent to the Questions List; statements/comments do not require a response

## Status of Ballots

a.    SC085: Require DNSSEC for CAA and DCV Lookups (Henry, Clint)
  - settled on final language and ready to move into a discussion period, soon.
  - Dimitris suggested a delayed effective date because of the complexity of the ballot; Corey agrees

b.     SC086: Sunset the Inclusion of Address and Routing Parameter Area Names (Corey)
  - Ballot is ready to go, but waiting on approval of ballot language by both endorsers
  - Ballot adds definitions and cleans up some previous language  

c.    SC0XX: Process RFC 8657 CAA Parameters (Wayne)
  - No new updates; delaying the ballot until after the DNSSEC ballot is approved to handle dependencies

d.     SC0XX: CA Assisted Domain Validation (Slaughter)
  - Slaughter is not on the call; no discussion

e.  Other ballots
  - Clint has sights on embedding domain validation methods into certificates; will focus on this topic after SC-085 finishes; link to GitHub in chat
  - Corey started a ballot on clearing registration language on EV Certs and has endorsers; will add to the wiki

## Any Other Business

-no other topics

## Next call

May 8, 2025

## Adjourn

Meeting adjourned.
