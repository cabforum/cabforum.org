---
author: Iñigo Barreira
date: 2024-04-11 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-04-11 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Abhishek Bhat (eMudhra), Adam Jones (Microsoft), Adriano Santoni (Actalis), Aggie Wang (TrustAsia), Alvin Wang (SHECA), Andrea Holland (VikingCloud), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Janet Hines (VikingCloud), Jaime Hablutzel (OISTE Foundation), Jay Wilson (Sectigo), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Karina Sirota (Microsoft), Keshava Nagaraju (eMudhra), Kiran Tummala (Microsoft), Llewellyn Curran (GoDaddy), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Miguel Sanchez (Google), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Naveen Kumar (eMudhra), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rich Kapushinski (CommScope), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google Chrome), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sissel Hoel (Buypass), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tim Hollebeek (DigiCert), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Yashwanth TM (eMudhra), Yoshihiko Matsuo (Japan Registry Services).

## Roll Call

Roll call read.

## Read Antitrust Statement

Dimitris read the note-well statement.

## Review Agenda

The Agenda as provided by Inigo was followed for the call.

## Approval of minutes

a)	Approval of minutes from the February 15, 2024 Teleconference (minutes have been distributed just prior to the call)

•	The minutes approval is delayed until next meeting due to their very recent posting.

b)	Approval of minutes from the March 28, 2024 Teleconference (minutes have NOT yet been distributed)

•	The minutes approval is deferred until after posting.

## Membership

No current Applications to review.

## Discussion

### Revocation

Revocation is topic listed for today, Kiran is invited to comment, but is having audio issues. 
Dimitris had previously prepared a spreadsheet of some revocation reasons that were under consideration to extend period to more than 5 days with appropriate justification.
Clint indicated that a draft document had been prepared and circulated to a small group of folks to review ReasonCode and timelines and some discussion had ensued but it’s not yet ready for main stream.

### PAG

Discussion on where it should be instatiated. It was agreed it should be handled in the WG where it arose, which is here. Decision to cover it after Ballot Review on today’s call.

Discussion regarding SC70

- Ben indicated a time limit for joining the PAG had been set to reduce potential of rework or re-discussion. The cut off for that nomination is tomorrow. A Doodle Poll was sent out interested parties to try to establish an appropriate time for the PAG.
- Dimitris suggested we use the mailing list instead to distribute the Poll
- Dimitris explained the implications of the Bylaws as related to the PAG. The key element is that the Draft Maintenance Guideline should remain in draft state until the PAG process is complete, because this essential claim came in before the end of the IPR review period.
- There is not stipulations on how long the PAG should take. The PAG chooses its own Chair and Vice Chair.
- Aaron G indicated he could sign into the PAG mailing list but was not getting any messages.
- Ben indicated they would test and work out the mailing list issues

## Current status of ballots

### Ballots passed

- SC72: Delete exception to policyQualifiers in EVGs; align with BRs by making them NOT RECOMMENDED. 

### Under PAG

- SC70: Clarify the use of DTPs for Domain Control Validation 

This Ballot was rescinded.

### Voting Period

- None

### Discussion Period

SC67 v1: Require domain validation and CAA checks to be performed from multiple Network Perspectives. Ends on 17/4/24.

- Ryan indicated that they are adjudicating comments in GitHub and anticipate a 2nd round of discussions

- Dimitris highlighted interesting discussion surrounding use of VPNs for MPIC which is worth reviewing by the group. Also, on the security question, there should perhaps be some discussion regarding security controls required for the VPN usage

- Ryan indicated there is no intention of limiting the usage of VPN for this aspect

SCXX – Compromised/weak keys

- This item was categorized incorrectly in the Agenda as it is currently pre-ballot and thus it was discussed here instead.

- Wayne confirmed it is pre-Ballot still and indicated there has been some discussion on whether to provide a list of resources or let CA’s manage their own. Wayne indicated he was leaning more to leaving up to the CA responsibility, but still looking for feedback. Expectation is that weak key check should be made regardless of key size as requested by Clint.

- Tim was ambivalent on Clint’s request. Suggested we just pick a reasonable proposal and proceed. 

- Dimitris indicated that during the early versions of the ballot, the WG had tried to describe the set of parameters that each CA needs to take into account in order to generate the proper set of Debian weak keys and it didn't work out so well. It was quite complicated to understand and implement 

- Aaron G suggested why not go with a “…repository or equivalent” in the language and then you could cover both scenarios. The 2nd question is – what happens when a new group of weak keys is discovered? An explicit enumeration has its benefits.

- Wayne said we just need the bar to stop moving…

- Tim indicated the burden is when definitions change, because then we have to re-prove to our auditors that we still meet it under new definition.

- There was general agreement that this particular point of repository vs CA responsibility has been discussed waaaaay too much. Suggestion from Aaron G that a simple list of keys to incorporate from a repository is the easiest path forward.

- Debate about which repository to use will be had on the list.

### Review Period

SCXX – Compromised/weak keys

This item is categorized wrong in the Agenda, it is currently pre-Ballot, see above for discussion

### Draft / Under Consideration

- SCXX – Profiles cleanup ballot
- SC71 – Subscriber agreement and terms of use consolidation

Dustin indicated they are behind on this item since he has been on leave and will seek to make progress shortly

- SCXX – Measure all hours and days to the second
- SC67 - Require MPIC
-	SC73 – Introduce linting in the TLS BRs

Dimitris (who has also been on leave) committed to sending something to the list on this in the next week

-	SC74 – Clarify CP/CPS structure according to RFC 3647

Dimitris indicated that this ballot is ready to go and should start discussion period shortly

## Any Other Business

None

## Next call

Next call: 25 April at 11:00 am Eastern Time

Meeting adjourned
