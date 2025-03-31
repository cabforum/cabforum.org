---
title: 2025-03-13 Minutes of the CA/Browser Forum Teleconference
author: Corey Bonnell
summary: Final minutes of the CA/B Forum call held on March 13, 2025.
date: 2025-03-13
tags:
  - Forum
  - Minutes
type: post
---

# Attendance
 
Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Antti Backman (Telia Company), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Gregory Tomko (GlobalSign), Gurleen Grewal (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Johnny Reading (GoDaddy), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly)

# Minutes

Read Note-well: Carried over from Server Cert WG meeting.
 
Review Agenda: No changes to the agenda.
 
Approval of Minutes: The minutes for the teleconference of 13 February 2025 and 27 February 2025 were approved.

Discussion:

## Server Certificate Working Group update (Dimitris Zacharopolous)
CyberTrust Japan was approved.  Discussion is ongoing regarding the TLS Scope (and related topics such as client auth, revocation at scale, etc.) and SC-081 which will be a major topic at the Tokyo F2F.
Corey Bonnell gave update for Validation Subcommittee. Their agenda for the Tokyo F2F will include discussion of the DNSSEC validation ballot, the SC-082 CA-assisted validation ballot, and the CAA parameters ballot.  The Validation Subcommittee will not meet the week before the F2F.

## Code Signing Certificate Working Group update (Martijn Katerbarg)
Retracted CSC-028 ballot as an issue was spotted and the ballot has been relaunched as CSC-29. The WG is discussing a pre-ballot for reduction of maximum validity period, which will be pushed out September or October. 

## S/MIME Certificate Working Group update (Stephen Davidson)
Ryan Hurst was confirmed as an Interested Party.  There will be ballots soon 1) introducing the EUID as a registration reference in the NTR scheme for the organizationIdentifier, and 2) introducing ACME for S/MIME for automated mailbox control vetting.  The S/MIME agenda for the Tokyo F2F will focus upon the methods in Section 3.2.4 dealing with individual vetting, particularly addressing the use of digital signatures in vetting and allowing the use of mDL (mobile drivers licenses). He noted that the mDL topic had relevance to other CABF groups as well.

## NetSec Working Group update (Clint Wilson)
The WG is discussing access control systems - including authentication, authorization auditing – which are part of security support systems in the NetSec requirements. F2F will include a discussion of a ballot updating the scope and applicability of CA infrastructure, and moving to putting into effect v2+ of the NetSec requirements.
Nicol So noted there was an issue with the NetSec website where document links were malfunctioning. Clint said this was being addressed.

## Definitions and Glossary Working Group (Tim Callan)
The WG will present at the F2F to help scope the size of the task.

## Forum Infrastructure Subcommittee update (Jos Purvis)
No update.

## Intellectual Property Rights Subcommittee (Ben Wilson)
There will be an update at the F2F as the IPR subcommittee charter requires updating.

## Bylaws changes (Ben Wilson)
No update.

## Any Other Business:
Dean Coclin noted that Tadahiko Ito had updated the information in the wiki for the Tokyo F2F with useful details for participants.  Please see the F2F agenda here: https://wiki.cabforum.org/books/meetings/page/meeting-64-agenda
Trevoli Ponds-White noted that that the agenda included a topic of legal advice by Brian Holland of Sectigo and questioned whether this was the correct audience.  Tim Callan noted that a TRO (temporary restraining order) had played a role in a mass revocation last year.  He noted that CAs did have to heed the courts but there were ways to reduce exposure.  
Trev said the topic might be valid but perhaps a better venue would be with CA lawyers, unless the topic dealt with modifications that should be made to the BR itself.  Dimitris agreed that this was more a CA legal topic than a CABF topic.  Tim said the subject matter would be geared towards policy makers and he saw no harm in exploring the topic.  He noted that while a TRO has only been used once, there was a risk it might reappear as a tactic in future mass revocations.

Next call: Next call: March 27, 2025 (F2F Meeting). 

Adjourn: The meeting adjourned. 

