---
aliases:
- /2020/07/23/2020-07-09-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-07-23 14:27:00
tags:
- Minutes
- Server Certificates
title: 2020-07-09 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Adam Clark (Visa), Andrea Holland (SecureTrust), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Curt Spann (Apple), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dre Aremeda (GoDaddy), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Mads Henriksveen (Buypass AS), Mayur Manchanda (Visa), Michelle Coon (OATI), Mike Reilly (Microsoft), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rachel McPherson (TrustCor Systems), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Stephen Davidson (Digicert), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Mozilla).

## Minutes

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda

No changes to the agenda were noted.

### 4. Approval of minutes from last teleconference

Minutes were approved

### 5. Validation Subcommittee Update

- Continuing work on certificate profiles
- Wayne introduced a discussion on removal of validation method #10 and replacing it with RFC 8737 TLS ALPN
- Validation data reuse periods were discussed as well in the last meeting. Trev started discussion on validation reuse issue to follow up from the f2f. Excellent discussion in the minutes that members are encouraged to read

The draft minutes of that particular Subcommittee meeting are available at the following thread:

- [https://lists.cabforum.org/pipermail/validation/2020-July/001500.html](https://lists.cabforum.org/pipermail/validation/2020-July/001500.html)

### 6. NetSec Subcommittee Update

Neil was not on the SCWG call and Ben mentioned that there was no subcommittee call last week and the committee would be meeting after this CA/Browser meeting.

Ben recommended skipping any updates on NetSec this week.

### 7. Ballot Status

#### Ballots in Discussion Period

_SC28 (Logging and Log Retention)_

Discussion period was restarted

_SC31 (Browser Alignment)_

Voting will start later today.

Dean discussed that we have some CAs not aligned with the cert lifetime issue which was voted down with SC22. He feels many CAs don’t want to vote on this ballot with the cert lifetime. How do we resolve this? We could 1) remove this section on cert lifespans, 2) vote as is, or 3) try to satisfy CA concerns on the cert lifetime item. Maybe have a statement that the CA disagrees with the one year certs but they want to support the rest of the ballot for the good of the industry. This gives CAs a way to point customers to the discussion and voting comments as to each CA stance. Ryan: the majority of these type of proposals were already mentioned on the discussion in the public forum. Google does not support adding this caveat. CAs can point to their voting comments and any other comments made in their vote on the ballot. We don’t need a special provision in the ballot. Including such a provision would not be conducive for the good of the Forum and current processes. Tim: I appreciate trying to find common ground if possible. DigiCert does not have a problem with the one year cert issue but most concerned with the effectiveness of the Forum and working together to find common ground and progress as a community going forward. Dimitris: there was a change in ID certs away from “should.” Ryan: V3 incorporated many suggestions including Corey’s excellent contributions. V3 is in discussion now and was meant to address issues brought up in the discussion on V2.

#### Ballots in Voting Period

_SC30 (Disclosure of Registration/Incorporating Agency)_

#### Ballots in Review Period

None.

#### Draft Ballots under Consideration

Spring 2020 cleanup and clarifications (Ryan)

Current draft in GitHub needs to be updated for markdowns. We’ll see where SC31 goes and that may determine where we go with this ballot. Also the PANDOC friendly markdown (SC26) discussion may have input into this ballot as well.

_Update to BR section 6.1.1.3_
Been doing testing. Took more time than anticipated. We did get enough info to draft a good updated proposal. The update will explain changes as a result from testing. Good progress overall.

### 8. Approval of minutes from F2F 50

- Dean mentioned that he didn’t see Google’s presentation uploaded yet. Dimitris: most info was captured in the minutes. Ryan will provide the link to the deck for upload and minutes
- Minutes are now approved

### 9. Any Other Business

No other business was discussed.

### 10. Next call

The next call will take place on July 23, 2020 at 11:00am Eastern Time.

### Adjourned