---
author: Wayne Thayer
date: 2026-07-14 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-07-14 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

CA/Browser Forum

Server Certificate Working Group Minutes

July 16, 2026

## Opening Matters

Dimitris Zacharopoulos chaired the meeting. The meeting was called to order. The meeting was recorded, the list of attendees is below, and the Note Well was read.

## Review of Agenda

No changes to the agenda were proposed.

## Approval of Minutes

Draft minutes for the July 2, 2026, meeting were not yet available and approval was deferred until the next meeting.

## Membership Applications

Beijing Zhongyu Yongxin Network Technology Co., Ltd. (Interested Party)

The Working Group considered the application for Interested Party membership.

Dean Coclin reported that he had reviewed the application and confirmed that it had been properly completed, executed by the organization's CTO, and included the current IPR agreement.

No objections were raised. The application was approved by consensus. Wayne would notify the applicant and add the organization to the appropriate mailing lists.

## Ballot Status

SC-100 – DNSSEC Clarification and Consolidation

 * Rich Smith provided an update on the remaining discussion surrounding evidence retention for DNSSEC validation.

 * The principal remaining issue was whether the ballot should prescribe specific logging requirements. Following discussions with Trevoli Ponds-White (Amazon), the proposal will be to avoid mandating a particular implementation or logging mechanism. Instead, the ballot will be revised to require that CAs retain sufficient evidence demonstrating that DNSSEC validation was performed, while allowing flexibility regarding how that evidence is maintained.

 * Participants generally agreed that this approach would appropriately balance assurance with implementation flexibility.

 * Dimitris noted that the proposed revision also appeared to address concerns previously raised by Henry Birge-Lee on the mailing list regarding acceptable evidence.

 * Rich indicated that revised ballot language would be posted, after which the required discussion period would restart before the ballot could proceed to voting.

SC-103 – Require EKUs for Cross-Certified Subordinate CAs

 * No update was provided because the ballot sponsor was not present.

### Ballots Under IPR Review

The Working Group noted that SC-101v2 and SC-102 remained under IPR review.

### Recently Published

SC-087 (Registration Number Improvement for EV Certificates) has completed IPR review and the updated EV Guidelines (v2.0.3) have been published.

### Draft Ballots Under Consideration

Certificate Problem Reports / Revocation Clarification

 * Martijn Katerbarg reported no update due to being on holiday.

ML-DSA

 * Gurleen Grewal reported that work continues on preparing the ballot preamble before publication.

Revocation Timeline for CP/CPS Deviations

 * Dimitris reported that work has been slower than anticipated and noted that HARICA expects to publish an incident soon involving a CP/CPS documentation mistake, highlighting the practical importance of the proposal.

## Any Other Business

None.

## Next Meeting

The next Server Certificate Working Group meeting will be held on 30 July 2026.

Meeting Adjourned


## Attendees:

Aaron Gable (Let's Encrypt), Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adam Jones (Microsoft), Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Arman Asemani (Apple), Ben Wilson (Mozilla), Chris Clements (Google), Clint Wilson (Apple), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Georgy Sebastian (Amazon), Gurleen Grewal (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jaime Hablutzel (OISTE Foundation), Jeanette Snook (Visa), Johnny Reading (GoDaddy), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Apple), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Luis Osses (Amazon), Mahua Chaudhuri (Microsoft), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Miguel Sanchez (Google), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Polina Glazyrina (Sectigo), Rich Smith (DigiCert), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google), Sándor Szőke (Microsec), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)
