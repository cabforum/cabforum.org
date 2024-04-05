---
author: Iñigo Barreira
date: 2024-03-14 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-03-14 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Antti Backman - (Telia Company), Brianca Martin - (Amazon), Bruce Morton - (Entrust), Chris Clements - (Google), Clint Wilson - (Apple), Corey Rasmussen - (OATI), David Kluge - (Google), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Dong Wha Shin - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Fumi Yoneda - (Japan Registry Services), Gregory Tomko - (GlobalSign), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Johnny Reading - (GoDaddy), Jos Purvis - (Fastly), Jozef Nigut - (Disig), Karina Sirota - (Microsoft), Mads Henriksveen - (Buypass AS), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Nargis Mannan - (VikingCloud), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelley - (Apple), Rich Kapushinski - (CommScope), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Stephen Davidson - (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yoshihiko Matsuo - (Japan Registry Services)

## Roll Call

Inigo Barreira read the roll.

## Read Antitrust Statement

Inigo read the note-well statement.

## Review Agenda

Dustin Hollenback noted that the Terms of Use/Subscriber Agreement ballot is now SC-71.

## Approval of minutes

Inigo said that the F2F minutes were distributed on 6-March. Dimitris Zacharopoulos asked for more time to review the application, so approval was deferred to the next call.  

## Membership

Keyfactor would like to upgrade from Interested Party to Associate Member, as discussed at the F2F. Dean asked if this was done individually by each working group. Inigo said yes. There were no objections, so Associate Member status in the SCWG was approved.

George Palmer applied as an Interested Party to the SCWG. There were no objections, so this application was approved.

## Discussion 

### GitHub procedure for open issues

Inigo shared a presentation. There are a large number of open issues in GitHub. One solution is “triage rotations” where we review each bug every 6 months. Another approach is to assign a reviewer to each issue. A third option is “bug bankruptcy” in which bugs that have not been updated after 3 years are automatically closed. Which is best?

Paul van Brouwershaven voiced support for the final option “automated comment” because it can be automated and manually reviewing bugs at meetings is not productive.

Inigo: how long before we close bugs?

Martijn Katerbarg suggested that we start at 9 years and gradually decrease the time. Paul suggested that the target should be 6 months.

Dimitris said that the issues in GitHub are not all bugs. What we do should depend on the context. Paul suggested that we use labels to distinguish types of issues. Dimitris suggested that the Infrastructure subcommittee should determine how best to do this.

Clint WIlson said that this issue isn’t urgent. Adding automated comments as a reminder is good, but we shouldn’t focus on the number of open issues. It can take a long time to get non-urgent topics addressed.

Paul said that it’s okay to have many issues as long as they are all things we want to work on. Automated reminders to comment or an issue will be closed addresses those issues that are no longer of interest.

Inigo asked about the automation and Paul posted a link to a possible solution in the chat: https://github.com/marketplace/actions/close-stale-issues

### Feedback from F2F in New Delhi

Inigo said that there were a number of topics that we didn’t have time to discuss at the F2F. Given all the changes that are planned, how can we improve publishing of new versions?

Dimitris said he has proposed we update bylaws and have periodic releases 2-3 times per year of documents that incorporate ballots passed since the last release. This would not affect the balloting and IPR review processes. This should be discussed by the Forum.

Enrico Entschew said that at the F2F we agreed to continue work on a longer revocation period by establishing conditions under which it would be applicable. Dimitris said that they plan to create a spreadsheet listing each revocation case and how the principles presented by Tim Callan at the F2F apply to it.

Clint said that he would like to participate in creation of the spreadsheet, but that we are looking at solutions rather than explaining why a longer revocation period is needed, what problems it solves, and what tradeoffs would be made. Dimitris said that he feels there is consensus that some revocation cases can be expanded beyond 5 days, but it sounds like Clint is not convinced. Clint said that there was one example that made sense to him, but for others there is concern that it’s not solving the right problem. Trevoli Ponds-White asked to participate, and also expressed agreement with Clint. Mads Henriksveen and David Kluge also expressed interest in participating.

Trev said that she is working on a ballot to remove reasons to revoke #6 and #7 based on discussion at the F2F.

Dimitris proposed some language to require linting at the F2F. He has endorsers and will work on a ballot. Lack of linting is becoming an issue, especially for newer CAs.

## Current status of ballots

### Ballots passed

- SC65 – EVGs in RFC 3647 format

- SC69 - Clarify router and firewall logging requirements

### Voting Period

- None

### Discussion Period

- None

### Draft / Under Consideration

- SCXX – Profiles cleanup ballot
- SC71 – Subscriber agreement and terms of use consolidation
- SCXX – Measure all hours and days to the second
- SC67 - Require MPIC
- SCXX - Compromised/weak keys

Wayne Thayer said that the purpose is to revisit the failed Weak Keys ballot by addressing the concern over the burden of checking for keys resulting from a bug that was fixed more than 15 years ago. Martijn and Clint both expressed concerns. Wayne said that he had proposed a compromise of checking the most common key sizes but Clint said that was only appropriate if issuance is limited to those sizes, so there is no obvious path to consensus. It may be that members are content with the status quo..

Nicol So said that Debian weak keys only represent one flawed implementation and requirements should not focus on that. Wayne clarified that the ballot considers more than Debian weak keys, but that is the area of contention.

Mads said that he was one of the CAs concerned about the amount of work required by the original proposal. Could there be a compromise to keep the Debian wording the same as today?

Dimitris said that he supports Wayne’s position that the Debian vulnerability was fixed many years ago. Perhaps we could add 3072 to the compromise. It is a burden to generate keys for 8K bits key size.

Clint said that it’s reasonable for CAs to limit the set of keys they accept. There have been incidents in the past few years where certs have been issued for Debian weak keys. The fact that any have been issued indicates that this is still a problem today. These incidents do not appear to be security researchers.

Martijn said that they have seen requests from customers, not security researchers. It might make sense for the ballot to exclude this part. There are repos containing common key sizes, so we could post those to a CAB Forum  site, require CAs to check for these, and require CAs to contribute other key sizes if they want to issue for those sizes.

Trev said that we should consider letting CAs generate their own keys. It’s rare for an AWS certificate manager customer to create their own keys.

## Any Other Business

None

## Next call 

Next call: 28 March at 11:00 am Eastern Time

Meeting adjourned
