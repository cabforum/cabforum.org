---
author: Stephen Davidson
date: 2025-01-15 00:00:00
tags:
- Minutes
- S/MIME
title: 2025-01-15 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---


## Minutes of SMCWG

January 15, 2025

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adrian Mueller (SwissSign), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Dimitris Zacharopoulos (HARICA), Inaba Atsushi (GlobalSign), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Mike Agrenius Kushner (Keyfactor), Morad Abou Nasser (TeleTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Renne Rodriguez (Apple), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of December 18 were approved.

## 5. Discussion

The WG deferred conversation on Aprio’s application as an Associate Member, pending feedback from the Forum that the appropriate category may be Interested Party..

Stephen Davidson walked through the various implementation dates for 2025 from existing S/MIME BR requirements.

The WG discussed the proposed amendments to the Mozilla Root Store Policy (MRSP) affecting S/MIME hierarchies and leaf certificates. Ben Wilson provided an overview of the changes, noting that he sought to align the changes with the existing text in the S/MIME BR.  The updated changes (for new roots after Jan 1, 2025) reduced the concerns that the policy might lead to the curtailing of the Multipurpose generation profiles.  The policy also requires CAs to transition to single-purpose roots by 2028.  See https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/jzgUi8OHyhI/m/emN6C9iOCgAJ 

Stephen noted that cross signing would be an issue in coming years with the root transitions as it was not possible to coordinate inclusion across the different root programs.

Clint Wilson noted that the Apple policy already included restrictions for new roots (added after April 15 2024) that allow only the emailProtection and clientAuth EKU https://www.apple.com/certificateauthority/ca_program.html#:~:text=extendedKeyUsage%C2%A0OIDs.-,S/MIME,-All%20CA%C2%A0Certificates 

The WG noted the discussions in the Server Cert WG which may lead to a ballot that would require CAs to support the ACME accounturi and validationmethods parameters as specified in RFC 8657.  If that Ballot comes to pass, similar language might be added to the the S/MIME BR particularly if ACME for S/MIME is to be supported.  See https://github.com/cabforum/smime/issues/265   

The WG discussed Dimitris Zacharopoulos question regarding email sub-addressing whether if a certificate included both janedoe@example.com and janedoe+whatever@example.com as SAN, if validation of the latter could be omitted under method 3.2.2.2 of the S/MIME BR.  It was noted that several attempts have been made to standardize this behavior.  Clint said that this could prove risky as mail service providers were inconsistent in their behavior and symbols used in sub-addressing.  Pedro Fuentes noted that some providers “enforced” the use of the “.” character in the mailbox portion of email addresses but that Gmail removed it (in other words jane.doe is the same as janedoe at gmail).  Russ Housley noted that, if such a rule were to be approved, it would have to be case sensitive as janedoe@example.com could be different from JaneDoe@example.com for some providers. The WG agreed to take no immediate action but encouraged interested groups to provide research or revisit the sub-addressing standards.

## 6.     Any other business 

## 7. Next call

Next call: Wednesday, January 29, 2025 at 11:00 am Eastern Time

## Adjourned