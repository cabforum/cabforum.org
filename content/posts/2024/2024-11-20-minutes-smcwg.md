---
author: Stephen Davidson
date: 2024-11-20 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-11-20 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---


## Minutes of SMCWG

November 20, 2024

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Daryn Wright (Apple), Dimitris Zacharopoulos (HARICA), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Marco Schambach (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom)

## 1. Roll Call

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of November 6 were approved.

## 5. Discussion

Stephen Davidson noted that SMC09 was in IPR through November 22.

Stephen noted that SMC010 was in voting thru November 21.

The WG confirmed Jeff Ward’s participation as an Interested Party.

The WG discussed a proposal to add a new method as 3.2.2.4 to conduct mailbox control validation using “Extensions to Automatic Certificate Management Environment for End-User S/MIME Certificates” (RFC 8823) https://datatracker.ietf.org/doc/rfc8823/ 

Stephen presented a draft text for a potential ballot and invited feedback what guard rails should be added to the RFC 8823 specifications.  He noted that such additional requirements were common in the TLS methods.  See draft at https://github.com/srdavidson/smime/compare/c8c05f4c314ea86578b1e6206bb601d3fcd3aa08...5fed675fbcb041b1cce55ce40a23960e4a18d80b  

Dimitris Zacharopoulos said that the S/MIME BR should stick as close as possible to the RFC, and did not need to repeat normative requirements of the RFC.

The WG discussed that the gradual reduction of alternatives of domain validation options in the TLS BR might ultimately have implications for the S/MIME market, particularly as the TLS BR is moving towards automation methods that are specific to TLS.  Stephen said it was important for the S/MIME sector to begin exploring alternatives.

The WG agreed it was appropriate to add an RFC 8823 method.  Stephen asked for feedback from Certificate Issuers and Certificate Consumers if there are other automation methods that should be added to the S/MIME BR for email domain or mailbox control.

Russ Housley said the term “unique Random Value” was flawed.  Tim Hollebeek suggested that “newly-generated” might be a better fit.  Clint suggested “unique within 30 days”.  Stephen noted that the unique term was used in various CABF documents.

The WG agreed to call out that RFC 8823 does not have an explicit support for External Account binding. Guillaume Amringer said that the RFC defined order processing using ACME, and as it used ACME standard protocols, if the client was associated with an existing ACME account it should work; it just could not establish a new account.  It was suggested that this could be defined should there be popular adoption of the new method.  

Clint Wilson said that he felt that CAs who were using this method today are compliant with the S/MIME BR but supported calling it out specifically as a method because of the different approach from standard email-based mailbox control.

Stephen noted that there was another internet-draft “Automated Certificate Management Environment (ACME) Extension for Single Sign On Challenges” that was intended for other uses but could be used for S/MIME. This might be another possible method. https://tools.ietf.org/html/draft-biggs-acme-sso-00 

## 6.     Any other business 

The meeting of January 1, 2025 will be cancelled.

## 7. Next call

Next call: Wednesday, November 20, 2024 at 11:00 am Eastern Time

## Adjourned
