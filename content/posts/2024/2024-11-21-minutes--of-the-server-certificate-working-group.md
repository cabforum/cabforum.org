---
author: Wayne Thayer
date: 2024-11-21 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-11-21 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Antti Backman (Telia Company), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (VikingCloud), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Josselin Allemandou (Certigna (DHIMYOTIS)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

## Roll Call

Iñigo read the attendance list

## Read Antitrust Statement

Iñigo read the note-well

## Review Agenda

Agenda approved

## Approval of minutes

-	24 October: minutes circulated on 7/11
-   Seattle F2F SCWG (October 9): minutes circulated on 11/11

Minutes approved

## Membership

-	Jeff Ward as IP representing himself
-   Henry Birge-Lee as IP representing himself

Applications approved

## Review github open issues. Starting on #469

#469 Inconsistency in the use of policyQualifiers in the EVGs and TLS BRs

-   Chris Clements suggest to close because already covered by a ballot. Issue closed

#471 Merge language of BRs 9.16.3 and EVG 8.1

-   Need to review the different wording in both documents (TLS BRs and EVGs) to check if both say the same or need to just pick one and then refer to that in one of the documents or combine both documents wording into an approved language.

#472 Clarify effective date for EKUs allowed in Intermediate CA Certificates

-   Ben to review the language in the Mozilla policy and come back with a proposal. Issue assigned to Ben Wilson.

-   Tim H. started a discussion in the definitions WG

#481 "trusted roles" in 5.2.2 is not capitalized

-   This issue has been included in the upcoming clean-up ballot for the fall of 2024.

#484 Clarify when Root CAs may stop issuing CRLs

-   Assigned to Martijn to come with a proposal for a last CRL issuance

#492 Technically constrained subordinate CA certificate definition

-   Issues with the and/or included in the definition of technically-constrained subCAs. The easiest seems to remove the “or” and leave the “and”. Suggested to continue the discussion offline and come with a proposal.

-   Tim H. also included in the definitions WG.

#495 Clarify/expand on 7.1.2 introductory paragraph

-   Agreed to have a further discussion offline because it involves many other issues like OIDs, policies, cross-certification, etc.

## Current status of ballots

Passed
-   SC-80: Sunset the use of WHOIS to identify Domain Contacts and relying DCV Methods

Under IPR review

Failed
-   None

Voting Period
-   None

Discussion Period
-   SC82 – Clarify CA assisted DNS validation under 3.2.2.4.7

This ballot has finished its discussion period and has been moved into voting period. Clint has made some final questions that Michael has responded.

Review Period
-   None

Draft / Under Consideration
-   SC81 – Max validity dates
-   SCXX – Fall 2024 clean up

## Any Other Business

Dimitris thanks Iñigo for his work during these 2 years. Iñigo wishes good luck to Dimitris as the new SCWG chair.

## Next call

December 5th. This call will be run by the new SCWG chair, Dimitris Zacharopoulos

## Adjourn

Meeting adjourned.
