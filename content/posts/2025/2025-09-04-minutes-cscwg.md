---
date: 2025-09-04 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2025-09-04 Minutes of the Code Signing Certificate Working Group 
type: post
---
# Certificate Signing Certificate Working Group (CSCWG) – Meeting Minutes

**Date:** September 4, 2025  

## 1. Note Well
The Note Well was read.

## 2. Review of Agenda
- Agenda was circulated late last night/this morning.
- **Added on the call:** Approval of Minutes.

### Approval of Minutes (added)
- **July 24, 2025** — Approved (attendee list corrected).  
- **August 21, 2025** — Approved.  
- Minutes to be posted to the public list/site.

## 3. Discussion Topics

### Progress update on Validity Reduction ballot
- **Status:** Two endorsers confirmed.
- **Next step:** Nate (Microsoft) will start the discussion period today; Martijn available to assist.

### SC-Alignment ballot — Update re: Microsoft OCSP concerns
- Karina (Microsoft) has draft language in progress; will share next week.
- Group preference is to make progress now; depending on Microsoft’s edits, proceed either by:
  - restarting the alignment ballot without OCSP changes and handling OCSP separately, or
  - incorporating Microsoft’s OCSP edits into a revised single ballot.
- Effective dates: Several items in the cleanup/alignment text now in the past; plan to bump future-effective dates consistently when relaunching.
- Corey (DigiCert) will run the next iteration once Microsoft’s language is received.
- After the alignment ballot concludes, Martijn to prepare a cleanup ballot to remove stale effective dates/duplicates.

### GitHub Issues walkthrough
Reviewed a subset of open issues; outcomes:
- Reference loop (Section 6.1.1 / 6.1.3)  
  - Decision: Closed.  Resolved by BR/EVG import; tracked under ballot CSC-19.

- Capitalization “must not” (Section 4.2.2 and related)
  - Instances remain (e.g., 4.2.2.2; 7.1.4.2.2).  
  - Action: Fix in upcoming cleanup ballot; leave issue open with note.

- OCSP for expired certificates
  - Group reaffirmed OCSP is optional; CRLs are required to retain entries for 10 years.  
  - Will verify wording to ensure the “optional” intent is clear; keep aligned with Microsoft’s general move away from OCSP usage.

- Ten-year CRL retention vs. expiring issuing CAs
  - Discussed complications (final CRL vs. expired CA signing; backdated revocation/invalidity date).  
  - Direction: Prefer long-lived issuing CAs with limited issuance windows to meet revocation obligations.  
  - Action: Martijn filed a new issue to consider limiting allowed issuance time for SubCAs to account for 10-year CRL retention.

- Section 6.1.2 – Private key delivery to subscriber
  - Current language aligns with signing requirements (archive/backup only).  
  - Decision: Closed; no further changes needed.

- Self-audit requirements  
  - Decision: Closed; covered by BR/EVG import.

- Data-retention period for revoked certificates  
  - Clarifies retention of issuance evidence until CRL drop-off.  
  - Status: Still open; marked as a good-first-issue for a future ballot volunteer.

## 4. Any Other Business
- None raised.

## 5. Adjourn

## Attendees

Brian Winters (IdenTrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lora Randolph (Microsoft), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nate Santiago (Microsoft), Nome Huang (TrustAsia), Wiktoria Więckowska (Asseco Data Systems SA (Certum))