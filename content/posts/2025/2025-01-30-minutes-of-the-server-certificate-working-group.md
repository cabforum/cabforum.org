---
author: Wayne Thayer
date: 2025-01-30 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-01-30 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Alexander Truskovsky (AWS), Antti Backman (Telia Company), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brianca Martin (Amazon), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), David Kluge (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Gregory Tomko (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Jeff Ward (Aprio), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Josselin Allemandou (Certigna (DHIMYOTIS)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Lynn Jeun (Visa), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Roman Fischer (SwissSign), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

## Read Note Well

Dimitris read the note well

## Review Agenda

The agenda was approved.

## Approval of minutes

The minutes for the teleconference of 16 January 2025 were approved.

## Discussion

 ### Ballot SC81: Reducing Validity and Data Reuse Period
- The ballot is currently in the discussion period for at least two weeks.
- Dimitris stated that HARICA is preparing a response.
- Clint Wilson (Apple) confirmed that all questions in the GitHub issue and pull request had been addressed but invited further clarifications if needed.
- Dimitris questioned the feasibility of reducing the re-validation period to ten days, particularly concerning email and phone-based validation methods.
- Trevoli Ponds-White (Amazon Trust Services) argued that automation is possible, while Nicol So (CommScope) raised concerns about the burden on subscribers.
- Tim Callan (Sectigo) suggested that the discussion on deprecating affected methods could take place separately within the available timeframe before the change takes effect in 2028.
- Cynethia Brown (US Federal PKI Management Authority) had additional concerns but was experiencing network issues. She was encouraged to submit comments via the mailing list.
### Ballots in IPR Review Period

- SC83 (Winter Cleanup Ballot) and SC84 (DNS Label with ACME Account ID) are currently in the IPR review period.

### Ballots Under Consideration

- #### CA-Assisted Domain Validation
    A validation call was held last week, and Michael Slaughter (Amazon Trust Services) presented options. Further discussions are ongoing.

- #### DNSSEC Validation and RFC 8657 CA Parameters
    Discussion on requiring DNSSEC for CAA records across all methods is ongoing. The validation subcommittee is drafting clearer language.

## Any Other Business

None.

## Next call

Next call: 13 February 2025 at 11:00 am Eastern Time

## Adjourn

Meeting adjourned.
