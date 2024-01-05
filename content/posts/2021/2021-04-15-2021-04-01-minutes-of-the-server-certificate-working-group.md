---
aliases:
- /2021-04-15-2021-04-01-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-04-15 17:01:10
tags:
- Minutes
- Server Certificates
title: 2021-04-01 Minutes of the Server Certificate Working Group
type: post
---

## Attendance 

Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Hazhar Ismail (MSC Trustgate), Janet Hines (SecureTrust), Jos Purvis (Cisco), Leo Grove (SSL.com), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Ryan Sleevi (Google), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trev Ponds-White (Amazon), Wendy Brown (US Federal PKI)

## Minutes 

### Review of Agenda 

No agenda changes were noted

### Minutes Approval 

- The minutes from Face-to-Face 52 were reviewed and approved after being posted on the wiki and announced on the list. Dean said there was one change noted on the list, but that had already been fixed.
- The minutes from the previous call were reviewed (toward the end of the call) but the attendance had not been included when the draft minutes were published on the list. The group therefore felt it important to hold off approving those minutes until the attendance list was attached and the minutes re-published.

### Validation Subcommittee 

Tim said last week’s was a short call. Corey and Tim had discussed some of Ryan’s updates to the certificate profile information, which is in the subcommittee minutes. They’ll be re-reviewing that in a week when Ryan is able to attend the next meeting.

### NetSec Subcommittee 

Neil said the committee met on Tuesday. They ran through the cloud services updates at their meeting: there was no meeting of that group last week but there will be in a few weeks’ time. They also reviewed updates on SC40, which is being dropped in place of a replacement ballot later on—mainly running out of time to mangle some of the text. Clint then introduced his text for three ballots that will flow out of the withdrawal of SC38, which the group reviewed together, particularly around the retention of a database of compromised keys. This would introduce a permanent duty for CAs to maintain a database of compromised keys. They then went through the restructure of 5.4 and 5.5 around audit log retention requirements. Questions came up around what “retaining OCSP queries” really meant–responses? IP addresses? They then went on to some early draft ballots from Neil to mandate file monitoring or system file invariance assurance during CA lifetime, and some improvements to vulnerability patching from the NSRs that are kind of open-ended at the moment (6 hrs for crit and 6mos for everything else) to try and tighten those up.

### Ballot Status 

#### Ballots in Discussion 

- SC42 (398) has a week and then Ben will start voting on it if there are no controversial comments or objections to it.
- SC43 (Acceptable Status) – Niko will be starting voting on this right after the call, incorporating the comments from the discussions provided by Bruce and Ryan (among others). Bruce noted he approves of the changes as incorporated.

#### Ballots in Voting 

None

#### Ballots in Review 

SC41 is nearly complete on review period; SC39 came out of review period and will be published right after the call.

#### Draft Ballots 

- _Debian Weak Keys (Chris Kemmerer):_ Chris is reviewing the language in the thread and stands by recommendations for CAs. What we’d discussed previously was placing this in an alternative location such as an appendix or annex; one question that needs resolution is what to do with resources made available by CAs (such as the work here by HARICA and others), how these would be integrated or offered by the CABF. These are useful, but the question is how these would be maintained or hosted going forward if they’re considered useful. Jos noted that this question has come up before around CA resources for the community. CAs are welcome to make those available themselves, but there’s been discussion about whether or not to centralize it or encourage self-hosting. No conclusions were reached, so it’s still an open question. Chris noted that they’ll be hosting these resources themselves for now.
- _SC34 Account Management (Tobias Josefowitz):_ No updates, still revising.

### Other Business 

No other business was raised on the call.

_Adjourned and handed to the Forum Plenary_