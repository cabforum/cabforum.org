---
author: Iñigo Barreira
date: 2024-05-09 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-05-09 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - (Let's Encrypt), Abhishek Bhat - (eMudhra), Adam Jones - (Microsoft), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Ben Wilson - (Mozilla), Brianca Martin - (Amazon), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Chad Dandar - (Cisco Systems), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), Dimitris Zacharopoulos - (HARICA), Dong Wha Shin - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Doug Beattie - (GlobalSign), Enrico Entschew - (D-TRUST), Georgy Sebastian - (Amazon), Gregory Tomko - (GlobalSign), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jaime Hablutzel - (OISTE Foundation), Johnny Reading - (GoDaddy), Jos Purvis - (Fastly), Keshava Nagaraju - (eMudhra), Kiran Tummala - (Microsoft), Luis Cervantes - (GoDaddy), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Michelle Coon - (OATI), Miguel Sanchez - (Google), Mrugesh Chandarana - (IdenTrust), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Naveen Kumar - (eMudhra), Nicol So - (CommScope), Nome Huang - (TrustAsia), Rebecca Kelly - (SSL.com), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Steven Deitte - (GoDaddy), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Tim Hollebeek - (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority)

## Roll Call

The call’s recording was enabled.

Inigo greeted participants and opened the meeting.

Aaron Gable is taking minutes.

Inigo completed Roll Call (attendees listed above).

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

Inigo reviewed the agenda.

No additional agenda items were raised for discussion.


## Approval of minutes

Minutes from April 25th approved.


## Membership

Ellie Schieder has applied as Interested Party
- Also applied to the NetSec and S/MIME working groups
- Trevoli Ponds-White and Clint Wilson confirm that NetSec has accepted the application
- Stephen Davidson confirms that S/MIME has accepted the application
- No objections, so we accept the application

Dimitris Zacharopoulos reminds us that Interested Parties do not automatically get access to conference calls and F2F meetings, just posting rights on mailing lists


## Discussion

### GitHub open issues

- "Clarify Certificate Policies for Sub-CAs"
   - This issue was filed before the Profiles Ballot, and parts of it may no longer be relevant
   - Trevoli suggests that we review whether this issue is still relevant offline
   - Aaron volunteers to do so after the call
   - Clint suggests that, even though the exact language referenced in the second half may not exist anymore, the central concern may still be relevant
   - Ben Wilson reminds us that the anyPolicy OID is dangerous when a root is approved for EV issuance
- "CA is prohibited from signing own server certs"
   - Original reporter did not sign the IPR agreement, lots of sidetrack discussion of that
   - Aaron points out that Ballot SC-66 (2023 Fall Clean-Up) addressed this by adding a sentence to 1.3.3
   - Clint says that he agrees: with that language, the CA is not generating a key *on behalf of* a Subscriber, but rather *is* the Subscriber
   - The issue is closed
- "BRs: Clarify policies around notBefore and notAfter for Subscriber and CA certificates"
   - Dimitris points out that this was addressed by SC-62 (Profiles) which put strict limits on the amount of back- and forward-dating of certificates
   - The issue is closed
- "BRs: Make nameConstraints critical"
   - Aaron points out that as of SC-62, Name Constraints SHOULD be critical
   - Clint says that Apple devices are updated to the point that making this extension critical should be fine
   - Dimitris still has questions about compatibility with old devices
   - Clint confirms that his research indicates minimal to zero risk
   - Dimitris also requests a census of how many CAs are still using nameConstraints
   - Adriano Santoni also requests research into nameConstraints support in other platforms like Java, .NET, NodeJS, golang
   - Aaron points out that research could include a census of how many name-constrained certificates already have the extension marked as critical
   - Trevoli questions the importance of making this change
   - Tadahiko Ito says that making this change is less important now that Technically-Constrained SubCAs are now audited
   - Wendy Brown asks for clarification on why criticality is important here
   - Tim Hollebeek says that a client which does not understand the nameConstraints extension would treat a non-critically name-constrained certificate as unconstrained
   - Clint points out that the BRs' SHOULD is a departure from RFC 5280's MUST
   - Censys.io indicates that approximately 20% of trusted name-constrained certificates already have that extension marked as critical
   - Aaron suggests that this means that we would know if these certificates were broken on various platforms
   - Trevoli disagrees, pointing out that many of these intermediates are operated by very small CAs
   - Clint says that Apple operates several of these CAs and issues large numbers of end-entity certificates from them
   - Trevoli says that maybe we should just go ahead and do it, with a relatively distant effective date, since it won't affect existing SubCAs. But we shouldn't roll it into a larger profiles ballot, given the difficulties implementing SC-62.
   - Issue is kept open with next action assigned to Clint Wilson
- "BRs: Clarify how SRVName subjectAltNames should behave"
   - Dimitris says that this was discussed in Validation, and that Tim Hollebeek described it as a "very geeky" problem
   - Tim says that this is more like a feature request than a bug. Interested in tackling it, but very low priority.
   - Tim says that SRVNames are useful because they can bind name:port combos.
   - Issue is kept open
- "BRs: Permit 3.2.2.4.20 for onion domains?"
   - Aaron points out that this has been resolved, Appendix B (2) lists 3.2.2.4.20 as an acceptable method
   - Issue is closed



### PAG

- Ben Wilson was elected chair of the PAG
- An email was drafted by the PAG and sent to GoDaddy requesting clarification on the intent behind the exclusion notice
- The ballot in question (SC-070) focused on the BRs, while the exclusion notice focused on the EV guidelines
- GoDaddy's response was requested by Friday May 17
- Another PAG meeting will be scheduled for Monday May 20
- Dimitris points out that the PAG is focusing on the procedural aspects of the exclusion notice, and has not yet addressed the contents of the patents themselves


### F2F agenda

- Inigo Barreira asks for potential topics to discuss at the upcoming F2F
- No topics suggested at this time


## Current status of ballots

- SC-073 (Compromised and weak keys): now in IP Review period
- SC-074 (CP/CPS structure): in voting period
   - Tim asks folks to change their vote on this, since he believes it could use another round of revision, to clarify how precisely section headings need to match RFC 3647 (particularly with regards to capitalization)
   - Dimitris, as the author of the ballot, points out that the effective date of September 15 2024 could give us time to fix it
   - Rich Smith points out that RFC 3647 even has internal inconsistencies / typos
   - Tim says that there's no mechanism for withdrawing a ballot, but votes can be changed so sufficient "no" votes (especially from Certificate Consumers) can sink it
- SC-070 (Clarify DTP): in PAG review
- SC-067 v1 (MPIC): Still in discussion period
- SC71 (Subscriber agreement / Terms of Use): Being revised by authors

## Any Other Business

- Wayne Thayer has a question about when CAs are required to comply with the new version of the NetSec requirements
- Dimitris and Ben say that the BRs need a ballot to adopt the latest version.
- Clint indicates that he had plans to put together such a ballot in June. Such a ballot would have an immediate effective date, because the new version of NetSec itself has an effective date in November.


## Next call

- We do not yet have a finalized agenda for the ServerCert WG meeting at the F2F
- A draft agenda has been posted to the wiki
- Videoconference on May 23 cancelled due to upcoming F2F


Meeting adjourned
