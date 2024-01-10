---
aliases:
- /2021/03/03/2021-02-18-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-03-03 20:37:13
tags:
- Minutes
- Server Certificates
title: 2021-02-18 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Aaron Gable (Let’s Encrypt), Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Mads Henriksveen (Buypass AS), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Peter Miskovic (Disig), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Shelley Brewer (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority)

## Minutes

### 1. Read Antitrust Statement

Jos read the antitrust statement.

### 2. Roll Call

Dean read the roll.

### 3. Review Agenda

No changes were made to the agenda.

### 4. Approval of minutes from last teleconference

The minutes from the February 4th teleconference were approved without changes.

### 5. Validation Subcommittee Update

Tim Hollebeek said that there was a significant discussion on IP address validation and the use of Start of Authority (SOA) DNS records for IP address validation. To be clear, the use of SOA records is not permitted. The subcommittee then discussed Ryan Sleevi’s work on formatting certificate profiles into tables in markdown. Tim said that we are close to being able to put the work on profiles and formatting together into a document that we can review. The subcommittee didn’t have time to discuss ADN wildcard validation on the call. On the next call they will discuss an agenda for the upcoming face-to-face (F2F) meeting.

### 6. NetSec Subcommittee Update

Neil Dunbar reported that the subcommittee met on Tuesday. The cloud services team continued discussion on what documents to produce. Consensus is that rather than creating a standalone document they will reference ISO and other documents. Next, the subcommittee continued their work to analyze the DigiNotar breach to close down practices that are not strictly forbidden but clearly should be. The subcommittee had a long discussion on SC40 trying to address issues on wording around data flowing into and out of an air-gapped system. They wIll try to get some new wording out to resolve these ambiguities. Finally, they discussed a draft presentation for the F2F. They plan to hold an open forum on how to present future work coming from the subcommittee because ballots may not always be the best approach. One idea is to produce a reference implementation to act as an example of how to properly implement the NCSSRs. Clint and Neil continued to work on the fallout of ballot SC38 to address BR section 4.1.1’s suspicious certificate database and a reformatting of BR 5.4 and 5.5 retention periods.

### 7. Ballot Status

#### Ballots in Discussion Period

- **SC38 – Alignment of Record Archival**

Neil said that this ballot is past the 21-day period and has automatically failed. Jos said that he will confirm and post an update to the list.

#### Ballots in Voting Period

- **SC41 – Reformat the BRs, EVGs, and NCSSRs**

Ryan asked everyone to vote.

#### Ballots in Review Period

- **SC39v3 – Definition of Critical Vulnerability**

Jos asked everyone to perform an IPR review and file exclusions if needed.

#### Draft Ballots Under Consideration

- **Ballot SC40: Security Requirements for Air-Gapped CA Systems (Ben)**

Ben Wilson said that there are two comments. The first is about data going in and out of root CA system. CAs input things to sign and then take out signed objects. The second comment was that this process needs to be more secure. The first is easy to fix via a change to the “unidirectional” language. The second is quite difficult to fix succinctly. It might be better suited for the reference implementation document that Neil mentioned. Ben will post a revision to keep the discussion alive. Wayne Thayer noted that the changes in this ballot can have significant unintended consequences, a few of which have already been discussed. Wayne encouraged all CAs to closely review the ballot while it is still in the discussion phase and easy to modify. Jos stated his agreement with Wayne.

- **Ballot SCXX: Debian Weak Keys (Chris)**

Chris Kemmerer said that he’d like to discuss this at the upcoming F2F, and that he will send a proposal in advance. Jos will add this to the agenda.

- **Ballot SC34 Account Management (Tobi)**

Tobi **Josefowitz** said that if SC41 passes this pull request will have conflicts, and asked what the procedure is for that. Jos said that Tobi could update the PR by merging in the changes from SC41. Ryan offered to help via Slack and suggested that Tobi rebase the change on top of the SC41 branch. Tobi said that it’d be nice if we can retain the comments, and Ryan said that he would think about how to do that. Ryan said that he’d invite Tobi to the Infrastructure Slack group. Jos noted that Slack is a good way to ask questions of the Infrastructure subcommittee, and Ryan said that Slack is great for real-time communications but the mailing list is also an appropriate place to ask questions.

### 8. Any Other Business

Jos said that the agenda has been posted on the wiki and asked members to review and contact him with any proposed updates.

### 9. Next call: TBD (after the F2F) at 11AM Eastern

Adjourn; Immediately convene meeting of CA Browser Forum call (same call)