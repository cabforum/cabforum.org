---
author: Corey Bonnell
date: 2024-08-22 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-08-22 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Brianca Martin (Amazon), Brian Winters (IdenTrust), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Ian McMillan (Microsoft), Inaba Atsushi (GlobalSign), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Rebecca Kelly (SSL.com), Roberto Quionones (Intel), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Tim Crawford (CPA Canada/WebTrust), Trevoli Ponds-White (Amazon), Yateesh Bhardwaj (GlobalSign).

## Minutes

### Read note-well

Bruce read the note-well

### Review of Agenda

No changes to the agenda.

### Approval of previous meetings

* June 27 meeting minutes were approved
* August 8 meeting minutes were approved

### Max validity of CS certs

* Ian plans to build a ballot for reducing the validity of certificates. Ian asked whether to use days vs months. Bruce replied that when linting is involved, it's better to be more accurate and express time in days.
* Marco asked for the proposed dates.
* Ian replied that the end-entity certificates' validity is moving to 15 months ~465 days.

### Simplifying EV

Tim H. was not on the call. Microsoft wants to stop using two types of certificates for code signing. The goal was supposed to bring both types of certificates together so ultimately there would be one type of code signing certificates.

Ian said it's not a pressing matter at the moment. There is no agreement or plan about a date. Early September there will be a better timeline to share with the group. He confirmed that the goal is to "fuse" the two types of certificates and produce one secure code signing certificate type to be consumed by certificate consumers.

Bruce raised some questions about where to draw the line. He proposed taking the latest version of the CSBRs and mark it up for discussion and simplify the EV. The proposal would be to walk-through the document and probably do it at the next F2F.

Dimitris proposed that a Member (or more) could take a stab and try to "fuse" the two types of certificates, produce a draft that could be discussed at the F2F. This sounds like it would be more productive.

Ian proposed to schedule some meeting sessions with Bruce to prepare this work.

### Fall elections

Martijn is currently the only candidate for Code Signing WG Chair.

### Any Other business

There are new mailing lists for code signing management and public lists. Please use the new email addresses.

### Next call

Next call is scheduled for September 5th.

Meeting adjourned.
