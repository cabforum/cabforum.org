---
aliases:
- /2021/02/18/2020-02-04-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-02-18 22:29:20
tags:
- Minutes
- Server Certificates
title: 2021-02-04 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Ali Gholami (Telia), Andrea Holland (SecureTrust), Arno Fiedler (D-TRUST), Ben Wilson (Digicert), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daniela Hood (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eusebio Herrera (AC Camerfirma), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Jeff Ward (CPA Canada/WebTrust), Jim Gorz (GoDaddy), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Juan-Angel Martin (AC Camerfirma SA), Karina Sirota (Microsoft), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Noorul Halimin Mansol (PoS Digicert), Patrick Nohe (GlobalSign), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Wendy Brown (US Federal PKI Management Authority)

## Minutes

### 1. Roll Call

Dean read the roll.

### 2. Read Antitrust Statement

Jos read the antitrust statement.

### 3. Review Agenda

No changes were made to the agenda.

### 4. Approval of minutes from last teleconference

The minutes from the January 21st teleconference were approved without changes.

### 5. Validation Subcommittee Update

Corey Bonnell said that three topics were discussed. First was the OU field. Paul Van Brouwershaven and Ryan Sleevi discussed Paul’s ballot, with Ryan expressing concerns that the OU information coming from an organization is still fundamentally unvalidated data. The discussion will continue on the list. The second topic was deprecation of the use of HTTP methods for wildcard certificate validation. Ryan repeated his request for data on the frequency of the use of this method from CAs. The third topic was discussion on cleanup of BR language around the applicability of CAA to Onion certificates. The group did not get back to the discussion of certificate profiles last week.

### 6. NetSec Subcommittee Update

Neil Dunbar reported that the subcommittee met on Tuesday. David Kluge has taken the lead to write two reports from the cloud services subcommittee. First, the Google compliance team has mapped various standards documents to cloud security, such as ISO 21188, and those are being compared with the NCSSRs. This will be the basis for increasing the scope of coverage of the NCSSRs. The other report is an examination of how components of the NCSSRs would help to prevent the DigiNotar breach. This will help determine where to tighten up the NCSSRs to make a recurrence far more difficult. The intention is to present these reports at the upcoming F2F. The rest of the discussion was on ballots. The intention is to withdraw SC38 and split it into 2-3 more tightly scoped ballots to address BR sections 1.3.2 and 4.1.1. Clint WIlson will help with another ballot to tighten up BR 5.4 and 5.5 on audit logging.

### 7. Ballot Status

#### Ballots in Discussion Period

_**SC38v2 – Alignment of Record Archival**_

Neil said that this ballot will be allowed to fail after the 21-day discussion period ends without updates.

## _SC40 – Security Requirements for Air-Gapped CA Systems_

Ben said that Ryan had some comments about the definition of what an air-gapped CA system is. The definition sentence can be clarified with some “ands”. Ben also suggested that we could rephrase the definition to have subsections to aid clarity. He said that we do want to move forward with this ballot. There is also the issue of how signed content is moved from the air-gapped system to an online system.

Jos said there is a question of transport, and also that some CAs keep air-gapped systems up and running while others only bring the system up when used. For the latter, If the CA can certify that the system has remained off, turning the system on to check its configuration seems backwards. On the other hand, how else do you check the configuration and verify that it hasn’t changed?

Ryan said that this is something that can be resolved. Do we have a tight and unambiguous enough definition of an air-gapped system as both physically and logically separate? If you have a system that is always running but physically disconnected, that’s great. A system plugged in to a network switch connected to other things is an entirely different scenario. If something is kept in a safe offline, then doing something when it is brought online makes sense. If this is the intended direction, then this is a minor issue.

Neil said that both physical and logical separation are the order of the day. A system connected via WiFi would not be logically separate.

Ryan said that a system in a cage with a wire sticking out – is that physically and logically separated? We can resolve this with some ‘ands’ and ‘ors’. However, as discussed on the forum, there is an interest from some CAs to use VLAN separation as logical separation.

Ben said that we can take the discussion back to the list.

## _SC41 – Reformat the BRs, EVGs, and NCSSRs_

Ryan said he will update SC41 with changes to address SC39 succeeding or failing. He has not heard any feedback from review of the documents outside of GitHub comments. Depending on the timing of SC40, SC41 may need to consider the impact of SC40 as well.

#### Ballots in Voting Period

## _SC39v2 – Definition of Critical Vulnerability_

Jos said that this is in the voting period and reminded members to vote. Voting closes on Tuesday the 9th at 17:00 UTC. We have not hit the quorum yet.

#### Ballots in Review Period

_None_

#### Draft Ballots Under Consideration

## _Ballot SCXX: Security Requirements for Air-Gapped CA Systems (Ben)_

Jos said that this is now SC40, discussed above.

## _Ballot SCXX: Debian Weak Keys (Chris)_

Chris said that they are reviewing Sectigo’s input and are moving toward a proposal but it is still under discussion.

## _Ballot SC34 Account Management (Tobi)_

Tobi said that there has been no progress.

#### 8. Any Other Business

No additional topics were discussed.

#### 9. Next call

**18 February at 11AM Eastern**

## _Adjourned_