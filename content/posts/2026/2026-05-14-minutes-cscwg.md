---
date: 2026-05-14 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-05-14 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Working Group Minutes

## Date

2026-05-14

## Antitrust Reminder

The Note Well was read

## Review of Agenda

No additional agenda items were proposed.

## Discussion Topics

### SCWG Alignment Ballot

The Working Group reviewed the status of the SCWG alignment ballot following Microsoft's response on the mailing list.

Corey Bonnell confirmed that the remaining outstanding issue is establishing an effective date for the new linting requirements and weekly weak-key checks. Participants agreed that the OCSP-related concerns had been addressed.

Several possible effective dates were discussed. Following input from Karina Sirota Goodley, the group agreed that the effective date should be set sufficiently in the future to avoid immediate non-compliance for CAs. The Working Group reached consensus on using **15 March 2027** as the effective date for both the linting requirement and the weekly weak-key checks.

It was noted that, because the previous ballot had failed, the updated proposal would require a new ballot number. Corey Bonnell agreed to prepare the updated ballot, with Martijn Katerbarg and Dimitris Zacharopoulos serving as endorsers.

### Reserved Policy OID Mandatory in Code Signing Certificates

The Chair noted that the Reserved Policy OID ballot had successfully passed and was currently in the Intellectual Property Rights (IPR) review period.

### Update on Pending Ballot Proposals from Microsoft

Karina Sirota Goodley reported that work on Microsoft's planned ballot proposals had been delayed due to ongoing post-quantum cryptography (PQC) work.

The underlying concepts had been drafted, but the proposals had not yet been converted into ballot form. Karina indicated she would provide an update the following week regarding whether sufficient progress had been made to justify holding another Working Group meeting in two weeks.

## Any Other Business

Dimitris Zacharopoulos asked whether Microsoft had plans to accept post-quantum root certificates in the Microsoft Trusted Root Program for code signing.

Karina responded that there are currently no plans to accept PQC roots for code signing, although this may change in the future. She explained that Microsoft's platform work is currently focused on TLS support, with code signing expected to adopt composite signatures. She estimated that code signing support would likely become available during 2027, while TLS-related announcements are expected later in 2026.

The group also discussed the readiness of hardware security modules and hardware tokens for PQC. Karina noted that hardware support is still lagging behind software and standards development, and that some practical compromises may be required while the ecosystem matures.

The Chair concluded that the timing of the next Working Group meeting would depend on progress with Microsoft's ballot proposals. An update would be provided to the mailing list the following week.

## Adjourn

The meeting was adjourned.

## Attendees
Adam Fiock (SSL.com), Andrea Holland (IdenTrust), Brian Winters (IdenTrust), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Karina Sirota (Microsoft), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Rebecca Kelly (SSL.com), Scott Rea (eMudhra), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wiktoria Więckowska (Asseco Data Systems SA (Certum))