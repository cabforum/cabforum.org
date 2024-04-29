---
author: Iñigo Barreira
date: 2024-02-15 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-02-15 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - (Let's Encrypt), Aaron Poulsen - (Amazon), Abhishek Bhat - (eMudhra), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Antti Backman - (Telia Company), Brianca Martin - (Amazon), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), David Kluge - (Google), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Eva Vansteenberge - (GlobalSign), Gregory Tomko - (GlobalSign), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jaime Hablutzel - (OISTE Foundation), Johnny Reading - (GoDaddy), Jos Purvis - (Fastly), Karina Sirota - (Microsoft), Keshava Nagaraju - (eMudhra), Kiran Tummala - (Microsoft), Lynn Jeun - (Visa), Mads Henriksveen - (Buypass AS), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Mark Nelson - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Miguel Sanchez - (Google), Mrugesh Chandarana - (IdenTrust), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Rebecca Kelley - (Apple), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Roman Fischer - (SwissSign), Sandy Balzer - (SwissSign), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yashwanth TM - (eMudhra), Yoshihiko Matsuo - (Japan Registry Services).

## Roll Call

Inigo Barreira read the roll.

## Read Antitrust Statement

Inigo read the note-well statement.

## Review Agenda

Agenda has been approved.

## Approval of minutes

The minutes of January 4th and February 1st were approved.  

## Membership

- Sun ShengNan: accepted as interested party. 
- Dong Yul Lee: accepted as interested party.
- Identrust: accepted as full member. 
- MOIS (Ministry Of Interior and Safety) of Korea: accepted as probationary member for 6 months before becoming full member.

## Discussion

### GitHub open issues

Iñigo
- About 100 open issues in GitHub.
- Some remain open for more than 4 years.
- Some are open from people that do not attend/belong to the CABF anymore.
- Some opened at some point but haven´t been updated since.
- The clean-up ballot will reduce this number to seventy-something but will grow again.
- GitHub usually publish the newest ones in the first page and maybe none pays attention to the latest pages (like the test keys, initially caught attention but then moved backwards and only discussed again when put in the agenda).
- Need to define a procedure on how to deal with this number..

Trev
- The main issue is that they are not self-contained, most of them. Just don´t know what happened at that time and why. They don´t have the full story of the issue.
- We could benefit from putting together like a set of required fields for putting in these issues and when checking old ones be able to answer a basic set of questions. And if we can´t, just close those old ones.

Clint
- Agreed with what Trev said but from my point of view I don´t see this number as an issue. These issues remaining open is kind of a backlog of identified issues, and maybe those were incorporated in other ballots but not removed from there but addressed in some way.
- But it's also often useful in, in these types of issues to talk about a proposed solution so that you're coming back to it. You're not just seeing the problem you're sort of seeing what someone else was thinking or what the group was thinking about how you could go about addressing it. To what the problem even means and, and the person's mind that opened it and so something like a, a template of, of information that should be included in the issue. Description seems like a, a pretty, you know, solid idea.

Iñigo
- I don't think having a specific number or, or being created like four years ago, it's a problem. It might concern if, after four years we haven't dealt with this open issues and, and I don't know if this is because there are so many that someone forgot about it, or any other concern, so it's not just the number. Not just the day, it's just, it's both, so it's just, it's work created a long time ago. Hasn't been updated and then I don't know if it's still valid or not.
- Also like what Trev proposed, a kind of template. Just wanted to bring the situation to the table, think about solutions and prepare something for the F2F. We need to improve the way to handle these open issues in Github. That was it.

Trev
- That makes sense, but I also say I totally agree with Clint. I just, I don't think it matters if the issues are open for years, what I think the reason it feels, the reason that we don't like it is because we can't action on them because not all of them contain enough context to do.
- So, I think we should solve that problem, and then later see if we actually have a problem where we need some kind of like, triage or checking on them or anything like that because, you know, there's nothing wrong with having a backlog of known things.

Chris
- Thanks, basically gonna say what Trev just mentioned and I agree with maybe some better formatting of the way that issues are presented in line with what Trev and Clint were saying, but the examples that you have here on the screen, I think almost all of them have like, a new owner as previous reviews, so I think that is one thing if you open up a new issue. 
- I do think it's important to reassign the ownership and then as this meeting has now expanded to an hour, you know, maybe dedicating some time to randomly or systematically triage, some of the open issues or just check in to see if there's any status from an owner, you know, maybe some time from each of these meetings could be dedicated to pulling through some of the open issues

Iñigo
- Yeah, I was going to ask about this triage so, we can spend fifteen minutes every call and do this kind of triage. 
- Well, I put some of this feedback in this kind of procedure for this and we'll discuss in, in the next F2F and see if we can.


### F2F agenda for New Delhi

Iñigo

- I have 3 topics:

o	Revocation proposed by Trev.

o	DNS delegation and this way save some time for validation SC bringing this to the Server cert slot. Michael Slaughter will present.

o	Linting proposed by Dimitris.

- Some other additional topics could be:

o	Number of new versions. Right now, every ballot generates a new version and that means a lot of work due to the number of ballots addressed in this WG. Also, this growing number of versions might have some additional implications on CAs, relying parties, customers, etc.

## Current status of ballots

Review of the current ballots situation as per the agenda.

Wayne asked if we could add the compromise key ballot proposal to the draft list and wanted to make a pitch for folks to review it, and if you're willing to endorse it so that I can get the ballot rolling.

## Any Other Business

None

## Next call

Next call: 14 March at 11:00 am Eastern Time

Meeting adjourned
