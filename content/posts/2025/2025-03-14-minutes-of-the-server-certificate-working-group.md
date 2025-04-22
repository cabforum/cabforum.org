---
author: Wayne Thayer
date: 2025-03-14 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-03-14 Minutes of the Server Certificate Working Group
type: post
---

## Attendees:

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Antti Backman (Telia Company), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Gregory Tomko (GlobalSign), Gurleen Grewal (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Johnny Reading (GoDaddy), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly).


## Read Note-well

Dimitris Zacharopoulos read the note well

## Review Agenda

No changes to the agenda.

## Approval of Minutes

The minutes for the teleconference of 27 February 2025, circulated on 5 March and as revised, were approved.

## Membership applications

Ryan Hurst was confirmed as an Interested Party.

## F2F#64 SCWG agenda

Dimitris noted that the agenda was discussed at the last meeting, and that there are 5 topics on the agenda, and invited feedback from members on those topics or additional topics. 

1. Clarify scope of TLS Baseline Requirements (Browser vs non-Browser use cases, websites accessible to the Internet vs websites accessible to specific networks, relationship with "WebPKI") (30-45 minutes)

2. Certificate Revocation: Is it effective at Internet scale? Browser requirements related to ongoing support of OCSP. (20-30 minutes)

3. Removal of id-kp-clientAuth KeyPurposeId from TLS server authentication certificates (20-30 minutes)

4. Ballot SC081: Introduce Schedule of Reducing Validity and Data Reuse Periods (20-30 minutes)

5. Classify GitHub open issues as "non-controversial" and seek volunteers (20-30 minutes)

Ryan Dickson commented that he hoped SC-081 could be moved earlier to allow adequate time for discussion, possibly after the TS BR scoping discussion, to resolve issues so that the ballot might move ahead.  This was supported by Chris Clements and Martijn Katerbarg. 

Ryan Dickson raised the topic of validation transparency (encoding the DCV method into the certificate content), and said that the topic was probably better suited to the Server Cert WG than the Validation subcommittee. Dimitris said that he would try to add this to the agenda.

Trevoli-Ponds White noted that there was time in the Forum agenda where a lawyer was speaking and this might be a source of time.

## Status of Ballots

Dimitris described the status of various ballots.

In Discussion Period

 - SC081v2: Introduce Schedule of Reducing Validity and Data Reuse Periods

In Voting Period

 - None

Under IPR review

 - None

Cleared IPR review, new Guidelines

 - SC084: DNS Labeled with ACME Account ID Validation Method (ended 2025-02-27 18:00:00 UTC)

 - TLS BRs version 2.1.4 effective on 2025-03-01

Draft / Under Consideration

 - SC0XX: CA Assisted Domain Validation

 - SC0XX: DNSSEC Validation and RFC 8657 CAA Parameters

Aaron Gable noted that many CAs may have minor deviations from the way ACME is defined in RFC 8555 and ballot text should acknowledge this. Wayne Thayer agreed.

Clint Wilson noted that the DNSSEC ballot will likely move to ballot status soon. Dimitris said endorsers were sought.  Corey Bonnell said the Validation subcommittee would also have this on their agenda at the F2F.

## Any Other Business

Dimitris encouraged participants to register for the F2F.  He noted that there had been some changes in the wiki signups.

## Next call

The F2F in Tokyo, followed by April 10, 2025 at 11:00 am Eastern Standard Time

## Adjourn

Meeting adjourned.
