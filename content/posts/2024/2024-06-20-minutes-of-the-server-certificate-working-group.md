---
author: Iñigo Barreira
date: 2024-06-20 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-06-20 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - (Let's Encrypt), Aaron Poulsen - (Amazon), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Ben Wilson - (Mozilla), Brianca Martin - (Amazon), Bruce Morton - (Entrust), Chad Dandar - (Cisco Systems), Corey Rasmussen - (OATI), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Doug Beattie - (GlobalSign), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Jos Purvis - (Fastly), Kiran Tummala - (Microsoft), Llew Curran - (GoDaddy), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Miguel Sanchez - (Google), Naveen Kumar - (eMudhra), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelly - (SSL.com), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Hollebeek - (DigiCert), Tobias Josefowitz - (Opera Software AS), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority)

## Roll Call

Inigo Barreira opened the meeting and started the roll call. 

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

No additional topics were proposed.

## Approval of minutes

- Draft minutes from F2F #62 have been circulated for review.

- Minutes from SCWG call June 6th circulated on June 7th were approved.


## Membership

No new applications.

## Discussion

### GitHub open issues

- GitHub´s open issues triage (10 issues per call min):
  - 417 – Amend BRs to Clarify Auditing of "Parked" CA Keys – Important to update section 6.1.1.1 and section 8 to cover audit. Ben will continue to work on this one, looking for support.
  - 420 – The title of the TLS BR should include a reference to TLS/serverAuth – Completed/Closed
  - 422 – Section 4.9.10: Untangle "assigned" vs "reserved" serials, precertificates, and OCSP – Not an urgent item. May need to update definitions to address the issue. Assigned to Tim H to be moved to Definitions and Glossary WG.
  - 423 - Remove specific version in the WebTrust reference in section 1.6.3 – Completed/Closed
  - 424 – RA definitions: Almost anything is an RA – Move to Definitions and Glossary WG
  - 428 – VG 9.2.8 is overly restrictive for the syntax of ISO 3166-2 states/provinces - S/MIME has fixed the issue which states “For the NTR Registration Scheme identifier, where registrations are administrated at the subdivision (state or province) level, a plus "+" (0x2B (ASCII), U+002B (UTF-8)) followed by an up-to-three alphanumeric character ISO 3166-2 identifier for the subdivision of the nation in which the Registration Scheme is operated.” Ballot will be need for EVG.
  - 430 – Clarify maximum period for DCV usage – Completed/Closed
  - 431 – Align OV and EV org name requirements – Assign to Martijn
  - 432 – Standardize format and style in CABF documents – Work on formatting style. Some information being assembled in the CABF Wiki. 
  - 433 – Proposal for automated onion service certificate issuance based on fully qualified onion service key signed certificate request - Iñigo to check if this person finally applied as interested party and if not, close the issue. If yes, keep it for a while.
  -  435 – Error in definition of "Translator" – Assign to Tim who will propose text for a clean-up ballot. 


### PAG

GoDaddy is withdrawing their exclusion notice. GoDaddy will be asked to submit withdrawal of their exclusion notice; Ben will ask. The ballot can be re-submitted. 

## Current status of ballots

- Passed
   - None
- Failed
   - None
- Voting Period
   - SC75: Pre-sign linting
- Discussion Period
   - SC67 v3: Require domain validation and CAA checks to be performed from multiple Network Perspectives – no updates, continue discussion. 
- Review Period
   - SC71: Terms of Use – Not sure of status. Ballot may be abandoned. If not, then the discussion period could be extended. Inigo will contact Dustin to get status.
- Draft/Under Consideration
   - SCXX: Profiles cleanup ballot – on hold.


## Any Other Business

No other business.


## Next call

4 July call cancelled. Next call is 18 July 2024.


## Adjourn

Meeting adjourned.
