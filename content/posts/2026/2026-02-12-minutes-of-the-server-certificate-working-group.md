---
author: Wayne Thayer
date: 2026-02-12 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-02-12 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

Notes by: Janet Hines (VikingCloud)

##  Begin Recording - Roll Call
## Read note-well
Note-well was read by Dimitris

## Review of Agenda
No changes in the agenda

## Minutes approval
January 29, 2026 (Draft minutes have not been distributed yet)

## Membership applications
Praveen Palaniswamy - Interested Party (Individual) was approved.

## Current status of Ballots

This is the latest status of ballots since the last meeting.

### In Discussion Period

 * SC095: Clean-up 2025 (Karolina) - Discussion period restarted today for this ballot.  No additional changes will be added to this ballot.

### In Voting Period

 * None

### Under IPR review

 * SC096: Carve-out for DNSSEC verification logging requirements (IPR Review ends 2026-02-14 18:00:00 UTC)
 * SC094v2: DNSSEC exception for email DCV methods (IPR Review ends 2026-02-14 18:00:00 UTC)
 * SC097: Sunset all remaining use of SHA-1 signatures in Certificates and CRLs (IPR Review ends 2026-02-25 09:00:00 UTC)

### Cleared IPR review, new Guidelines

 * None

Draft / Under Consideration

 * SC095: Clean-up 2025 (Karolina)
 * SC087: Registration Number Improvement for EV Certificates (Corey) - This ballot will hold until after the cleanup ballot has completed its voting period to minimize the chance of any conflicts.
 * SC0XX: Cleanup for ADN CNAME
 * SC0XX: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)
 * SC0XX: Validation method in TLS Certificates (Clint) 
 * SC0XX: Update Revocation timeline for errors affecting CP/CPS deviations but in accordance with the BRs (Dimitris)
 * SC0XX: Process RFC 8657 CAA Parameters (Wayne) - Needs a second endorser for this ballot.  It will get started as well after the cleanup ballot has completed.
   * Dimitris raised the question about how to interact with this to specify domain validation methods without specifying a specific CA and Account URI.  Wayne will investigate.


Any Other Business

 * Face to Face 
   * Server Cert WG Meeting is on Day 1.  Email topics for discussion to Dimitris or Wayne.


 * SERVFAIL and the DNSSEC requirements question - Martijn sent email yesterday.  Looking for the real intent for that ballot.
   * Was the intent to hold issuance on any type of SERVFAIL or just on DNSSEC-signed SERVFAIL
     * DCV has the parent zone as an allowance, but CAA does not.
     * Clint and the subcommittee members in attendance reached the agreement and noted specifically for the minutes that: "SERVFAIL alone is not a reason to block issuance, but in combination with DNSSEC signed zone, the CA MUST NOT issue."
     * Martijn will open an issue on GitHub for this. 

Next call: February 26, 2026

Adjourn

## Attendees

Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Antti Backman (Telia Company), Ben Wilson (Mozilla), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Enrico Entschew (D-TRUST), Eric Kramer (Sectigo), Gurleen Grewal (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (VikingCloud), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Julie Olson  (GlobalSign), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Raffaela Achermann (SwissSign), Rebecca Kelly (SSL.com), Roman Fischer (SwissSign), Ryan Dickson (Google), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum)).
Aaron Gable (Let's Encrypt), Adriano Santoni (Actalis S.p.A.), Alvin Wang (SHECA), Antti Backman (Telia Company), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Daryn Wright (Apple), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Kramer (Sectigo), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jeanette Snook (Visa), John Mason (Microsoft), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Luis Osses (Amazon), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Sándor Szőke (Microsec), Scott Rea (eMudhra), Sean Huang (TWCA), Sven Rajala (Keyfactor), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly)


