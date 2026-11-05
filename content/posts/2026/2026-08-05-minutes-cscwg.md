---
date: 2026-08-05 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-08-05 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Certificate Working Group Minutes

## Meeting Information

- **Date:** 5 August 2026

## 1. Antitrust Reminder

Martijn read the CA/Browser Forum antitrust reminder.

## 2. FoxTempest Investigation

Karina introduced Sean Farrell and Jason Lyons from Microsoft's Digital Crimes Unit.

Microsoft presented its investigation into FoxTempest, a malware-signing-as-a-service operation. The actor fraudulently obtained short-lived Code Signing certificates and sold them to ransomware and other malicious actors.

Microsoft disrupted the operation through internal security improvements, seizure of supporting infrastructure, and cooperation with law enforcement. The investigation demonstrated that malicious actors may repeatedly create fraudulent accounts or move between certificate providers after being blocked.

## 3. Threat Intelligence Sharing

Microsoft proposed developing a threat intelligence sharing framework with Code Signing CAs.

Potential indicators include:

- Fraudulent organization and account information
- Email addresses and IP addresses
- Payment information
- Certificate and revocation information
- Validation bypass techniques
- Known malicious actors and behavioral patterns

Participants discussed starting with confirmed malicious actors before considering more sensitive watch-list information.

Microsoft may be able to use its existing Cyber Threat Intelligence Program platform to support API-based information sharing. The initial framework should define which indicators can be shared, how they will be exchanged, and any applicable legal or privacy constraints.

The work will continue within the existing Code Signing Certificate Working Group rather than through a separate working group.

## 4. Next Steps

Microsoft will conduct internal reviews and share a draft indicator-sharing framework for Working Group feedback.

Microsoft will also consider providing a shareable summary of the FoxTempest investigation to support discussions with CA legal and risk teams. The summary may focus on the actor's methods and relevant indicators rather than sensitive investigative details.

Participants supported establishing milestones and progressing the framework incrementally.

## 5. Administrative Matters

The regular meeting scheduled for 6 August was cancelled without objection.

The next regular meeting is scheduled for 20 August 2026.

## 7. Adjournment

The meeting was adjourned.

## Attendees
Adam Fiock (SSL.com), Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Brian Winters (IdenTrust), Dean Coclin (DigiCert), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Martijn Katerbarg (Sectigo), Mayowa Frisch (IdenTrust), Mrugesh Chandarana (IdenTrust), Nick France (Sectigo), Nome Huang (TrustAsia), Rebecca Kelley (DigiCert), Roberto Quionones (Intel), Scott Rea (eMudhra), Yateesh Bhardwaj (GlobalSign)

