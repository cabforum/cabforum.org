---
date: 2026-01-08 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-01-08 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Working Group – Meeting Minutes  
**Date:** 8 January 2026  

## 1. Antitrust Reminder (Note Well)
The Note Well was read

## 2. Review of Agenda
- An additional item was added: **Interested Party Application**.

## 3. Discussion Topics

### Interested Party Application
- An application was received from **Digital Berry**, a CLM and token management system provider based in France.
- Dean confirmed the application was complete and properly signed by a senior representative.
- No objections were raised by the working group.

### SC-Alignment Ballot – Microsoft OCSP Concerns
- No representatives from Microsoft were present.
- No updates had been received via the mailing list.
- Given the lack of new information, this topic was skipped.

### Post-Quantum Cryptography (PQC)
- Brianca (Amazon) confirmed there were no updates on PQC.
- Microsoft was not present to provide any platform-related updates.

### Migration to a Single Code Signing Profile  
- The Chair presented initial work toward migrating to a single code signing profile, merging Code Signing and EV Code Signing.
- Work has begun on Sections 1 and 2 of the Code Signing Baseline Requirements (CSBRs), using a branch-based workflow rather than a formal PR at this stage.
- Key points discussed:
  - Likely need to move to a new major version (e.g., v4.0).
  - Proposal to allow the existing requirements until a TBD cutoff date, after which only the single profile would be permitted.
  - Maintaining both old and new requirements in one document was viewed as impractical.
  - Proposal to deprecate the EV Code Signing policy OID and move to a single OID.
  - Most changes so far are structural (removal of EV references, minor corrections).
  - Significant concern was raised about proceeding without active Microsoft participation:
  - Microsoft is currently the primary consumer of code signing certificates.
  - Risk of misalignment with Microsoft expectations, similar to prior issues (e.g., OCSP requirements).
  - Consensus that meaningful progress requires Microsoft engagement.

## 4. Any Other Business
- It was noted that Microsoft representatives have been absent for three consecutive meetings.
- It was agreed that Microsoft should be reminded of the purpose of the working group and the importance of their participation.

## 5. Adjourn

## 6. Next Meeting
**Date:** 5 February 2026 

## Attendees
Brianca Martin (Amazon), Brian Winters (IdenTrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Wiktoria Więckowska (Asseco Data Systems SA (Certum))