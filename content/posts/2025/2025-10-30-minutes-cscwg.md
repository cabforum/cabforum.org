---
date: 2025-10-30 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2025-10-30 Minutes of the Code Signing Certificate Working Group 
type: post
---
# CSCWG – Meeting Minutes

Date: October 30, 2025  

## 1. Note Well
The Note Well was read.

## 2. Review of Agenda
Agenda accepted as sent.  
Minutes backlog noted; drafts to be circulated for approval at a future call.

## 3. Discussion Topics

### SC-Alignment ballot — Microsoft OCSP concerns
- Still awaiting Microsoft’s specific concerns on OCSP language from the failed SC-alignment ballot.
- Nate will ping Karina for an update and ETA.
- Group prefers to understand concerns before carving items out.

### F2F take-aways and next steps
- F2F largely focused on guest presentations (law enforcement and researcher). Slides will be linked from CSCWG minutes; recording is available.
- PQC for code signing:
  - Brianca requested adding PQC back to the agenda; most other groups are progressing PQC.
  - Nate: Windows Insider builds support experimenting with ML-DSA for code signing via APIs (e.g., SignTool verify); ADCS support is not yet in public preview. He will share public docs to CSCWG-public.
- Hardening against threat actors:
  - Ideas discussed: CT-like logging for code signing (with privacy considerations), clearer revocation signaling (malware-specific reason code), and adding telemetry that helps anti-malware vendors.
  - Concern: privacy in certificates vs. value to defenders.
  - Nate will check with Microsoft Defender contacts on what certificate data or logging would be most useful; may join a future call for a discussion.
- Single profile work:
  - Martijn started drafting a ballot toward a single profile (EV-style validation). Open to collaborators.
  - Open question: replace JOI fields with organizationIdentifier (as in S/MIME). No positions taken yet.

### Future schedule of teleconferences
- Proposal: move from biweekly to every 4 weeks, and use the mailing list more actively between calls.
- No objections on the call. Martijn will confirm via CSCWG-public.

## 4. Any Other Business
None raised.

## 5. Adjourn

## Attendees

Brianca Martin (Amazon), Brian Winters (IdenTrust), Inaba Atsushi (GlobalSign), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nate Santiago (Microsoft), Nome Huang (TrustAsia), Rebecca Kelly (SSL.com), Thomas Zermeno (SSL.com), Wiktoria Więckowska (Asseco Data Systems SA (Certum))