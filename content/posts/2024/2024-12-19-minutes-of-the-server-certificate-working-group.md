---
author: Wayne Thayer
date: 2024-12-19 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-12-19 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adriano Santoni (Actalis S.p.A.), Andrea Holland (VikingCloud), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Lynn Jeun (Visa), Mahua Chaudhuri (Microsoft), Marcelo Silva (Visa), Mark Nelson (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Roman Fischer (SwissSign), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft).

## Note Well

Dimitris read the note well

## Review Agenda

Dean requests we add a topic regarding Cloud-based CAs for a question that come through on the questions list.

## Approval of minutes

-	December 5 minutes are not yet ready.

## Membership applications

-	Membership Application for VIDA as a Certificate Authority
They do not appear to be a root store member yet. As such they are approved not as. Certificate Issuer but a Probationary Member.

## Github issue triage

Issue 515 - "Government Entity" Subscribers should be allowed to use a registration number in the serialNumber field.
-   The ballot language looks good. HARICA and Mozilla would be willing to endorse
Issue 519 - The BR and Delegated OCSP responder signing certificates
-   Section 7.1.2.8.1 could be modified to include some expected validity period for OCSP responder certificates
-   Try to get some input from CAs about the maximum validity of their OCSP responder certificates
-   Keeping the issue open until someone decides to take ownership and drive to a ballot
Issue 520 - Clarify Revocation Codes for Intermediate CAs
-   Recommendation: Create two subsections in order to specify which revocation reasons are allowed for revoked CA Certificates and end-entity Certificates
-   Update section 7.2.2 for improved clarity.
-   Issue assigned to Ben for followup
Issue 523 - Update all "http" to "https" in the TLS BRs
-   Included in the upcoming clean-up ballot
Issue 524 - Conformance to the latest version of the BR is a MUST
-   Mozilla thinks the entire "Implementer's Note" should be deleted from section 8.
Issue 525 - Update NCSSRs references
-   This will need to be handled for alignment with other Working Group Baseline Requirement documents
Issue 526 - Clean up usage of the "Certificate Profile" Defined Term
-   Deferred to another Teleconference where Tim H. and Corey will be present
Issue 527 - Update reference related to ETSI TS 102 042
-   Already removed in the upcoming cleanup ballot in 1.6.3
-   Martijn will add it to the Implementer's Note in section 8.
Issue 530 - Update reference related to FIPS 186-4
-   Part of the cleanup ballot
Issue 531 - Update reference related to ISO 21188:2006
-   Part of the cleanup ballot

## Cloud-based CAs question on questions list

Tim (Sectigo) injected that while this is an interesting idea, Sectigo has in the past investigated this as an option and deemed it to not be possible now.

Dimitris adds that the NSWG has a subgroup who are dealing with cloud based options for CAs. The NSR group might be a good start to prepare a response.

Dustin added that indeed they agree it currently is not possible

## Ballot Status

-   SC-80 - WHOIS – Has completed
-   SC-81 – Reuse and Validity term reduction - Ongoing discussion on the public list
-   SC-82 – CA Assisted DCV - Ongoing discussion on the public list and looking towards a new ballot in the next few weeks
-   SC-83 – Winter cleanup – In discussion period

## Any Other Business

We will skip the January 2nd meeting.

## Next call

January 16, 2025

## Adjourn

Meeting adjourned.
