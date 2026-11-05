---
date: 2026-09-03 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-09-03 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Certificate Working Group Minutes

## Meeting Information

- **Date:** 3 September 2026

## 1. Antitrust Reminder

Martijn read the CA/Browser Forum antitrust reminder.

## 2. Review of Agenda

The agenda was reviewed. Scott provided a logistical update for the Vienna face-to-face meeting. Attendees were asked to confirm social-event guests and transportation requirements.

## 3. Threat Intelligence Sharing

Karina confirmed that Microsoft will proceed with a small threat intelligence sharing pilot involving approximately five CAs with existing agreements.

The pilot will initially use email to exchange information and determine:

- What information Microsoft and participating CAs can share
- Which indicators are useful
- What legal arrangements are required
- How the initiative could later be expanded to all Code Signing CAs

Microsoft will share high-level findings with the Working Group while protecting case-specific information. Karina will send further details to the selected CAs.

## 4. Certificates for Individuals

Dimitris raised ambiguity in the Code Signing Baseline Requirements regarding the `organizationName`, `givenName`, and `surname` fields for certificates issued to individuals.

Dimitris will draft clarifying language, using the S/MIME Baseline Requirements as a reference. The proposal will be discussed at the face-to-face meeting.

## 5. Face-to-Face Agenda

The proposed agenda for the Vienna meeting will include:

- Threat intelligence sharing
- Individual certificate subject fields
- Certificate Transparency for Code Signing
- Reuse of subscriber key pairs
- Possible restructuring of Code Signing certificate profiles
- Review of open GitHub issues

Karina will investigate Microsoft's interest and capacity regarding Certificate Transparency for Code Signing.

Martijn will also contact other Code Signing certificate consumers regarding possible participation in the Working Group.

## 6. Key Pair Reuse

Yateesh asked whether the Code Signing Baseline Requirements restrict reuse of a subscriber key pair for a new certificate.

Participants confirmed that the current requirements do not prohibit key reuse. The associated risks and whether additional requirements are needed will be discussed at the face-to-face meeting.

## 8. Adjournment

The meeting was adjourned. The next regular call will be skipped, and the Working Group will reconvene at the Vienna face-to-face meeting.

## Attendees
Brian Winters (IdenTrust), Dimitris Zacharopoulos (HARICA), Inaba Atsushi (GlobalSign), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Scott Rea (eMudhra), Thomas Zermeno (SSL.com), Yateesh Bhardwaj (GlobalSign)
