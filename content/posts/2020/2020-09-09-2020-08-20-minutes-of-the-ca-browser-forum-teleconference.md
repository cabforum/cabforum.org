---
aliases:
- /2020-09-09-2020-08-20-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2020-09-09 18:52:45
title: 2020-08-20 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Attendees (in Alphabetical Order) 

Present:
Amanda Mendieta (Apple)
Andrea Holland (SecureTrust)
Andreas Hentschel (D-TRUST)
Ben Wilson (Mozilla)
Bruce Morton (Entrust Datacard)
Clint Wilson (Apple)
Corey Bonnell (SecureTrust)
Chris Kemmerer (SSL.com)
Curt Spann (Apple)
Daniela Hood (GoDaddy)
Dean Coclin (Digicert)
Doug Beattie (GlobalSign)
Dustin Hollenback (Microsoft)
Hazhar Ismail (MSC Trustgate)
Inaba Atsushi (GlobalSign)
Joanna Fox (GoDaddy)
Jos Purvis (Cisco Systems)
Karina Sirota (Microsoft)
Kirk Hall (Entrust Datacard)
Mads Henriksveen (Buypass AS)
Mayur Manchanda (Visa)
Michelle Coon (OATI)
Neil Dunbar (TrustCor Systems)
Niko Carpenter (SecureTrust)
Patrick Nohe (GlobalSign)
Pedro Fuentes (OISTE Foundation)
Rae Ann Gonzales (Godaddy)
Robin Alden (Sectigo)
Ryan Sleevi (Google)
Stephen Davidson (Digicert)
Tim Callan (Sectigo)
Tim Hollebeek (Digicert)
Tobias Josefowitz (Opera Software AS)
Trevoli Ponds-White (Amazon)
Wayne Thayer (Mozilla)
Wendy Brown (US Federal PKI Management Authority)

## Minutes 

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust statement was read.

### 3. Review Agenda 

Dimitris still being on vacation, Dean chaired this meeting.

The agenda was accepted with no modifications.

### 4. Approval of minutes from last teleconference 

The minutes were approved.

### 5. Forum Infrastructure Subcommittee update 

Jos provided the update. The subcommittee met on the 12th August.

Password reminders have been removed from the list, following requests from some participants that this be done. Jos asked to be notified if those reminders are still being received. The team are still reviewing the various lists to ensure this feature has been turned off.

Forum Infrastructure is now tracking GitHub IDs as part of the repository management, in the Google Docs spreadsheet of membership. This is being done to allow validation of pull requests against the repository. Jos noted that not everyone’s GitHub ID looks like their name, thus it is advantageous to be able to recognize the identity of the pull requestor.

A password solution is now online, and the team is busy moving things like saved list server and infrastructure passwords into that tool. The team will work with the various committee chairs and vice chairs to ensure that they have access to the solution.

The subcommittee completed a review of the GitHub account and organization and has removed a number of people who are no longer part of the CA/B Forum. Jos believes that they are down to members and interested parties now.

Wayne renamed the “master” branch of the GitHub repository to “main”, as part of the ongoing industry trend to remove that kind of language. No difficulties have been observed stemming from the rename, but Jos did say that if parties are having any difficulties it might be useful to check if the renamed branch could be the source of any problem.

The subcommittee also discussed a proposal to separate out the GitHub repository to separate documents owned by each working group. At the moment, all documents exist within a single repository, meaning that if a working group needs changes to the documents for which they are responsible, that change needs to be approved by the whole Github organization, and the changes are against the same repository as the EV Guidelines, the Baseline Requirements, or even the Bylaws.

The proposal is that there would be a repository for the Bylaws, one for the Server Certificate Working Group which would cover the EV Guidelines and the Baseline Requirements, one for the Code Signing Working Group, one for the S/MIME Working Group, and another which would cover tools like document templates and graphics to be shared amongst the others. This proposal is still under examination – there would need to be rules established for managing the Github repositories, rules for merges, and rules for adding users to roles within the repository and so on. This proposal is expected to integrate these rules as some sort of ballot, but probably not as an update to the Bylaws, but rather a separate document.

Jos reiterated his offer of GitHub training – he has had a few requests for training, and if people want answers to questions like “What is Github?”, “how does Git work?”, Jos is happy to put something together if those interested would let him know.

### 6. Code Signing Working Group update 

Dean provided the update.

The combined document has been voted in, which is currently in the IPR review period. In the past call, the working group reviewed the many emails which have been submitted in the last six months regarding additions, changes and corrections to the document.

The group has a list of items which are being maintained on the group Google Drive. The link is in the Code Signing Working Group minutes, so anyone can follow that link to see what is being worked on. Dean said that the link will be in the minutes of the call from last Thursday, which should be out shortly.

This list shows the status and disposition of each of the items being considered, as well as what the group thinks should be done to address each issue.

The group is about half way through the list; some of the items are relatively easy to fix; some require more input and study. For such items requiring input and study, the group will be inviting specialists and other experts to help sort through the list. Dean stated that there has been good progress, with some excellent participation by a diverse group covering a global audience, who have worked on, and continue to work on, addressing those issues.

The next meeting of the Code Signing Working Group will be next Thursday \[27 September 2020\].

### 7. S/MIME Working Group update 

Stephen provided the update.

The S/MIME Certificate Working Group met yesterday \[Wednesday 19 August 2020\]. This was the third meeting of the group.

Some new members have been added, including a certificate consumer, being an email gateway provided called Zertificon. A Swiss university has asked to join as an interested party. The group continues to look for interested members of the community to join.

The group has started the discussion on S/MIME certificate profiles, similar to the work performed in other working groups, going through the fields one by one, looking at known, existing standards and requirements, such as the Mozilla Root Store Policy, or the GMail policy, or the US Federal PKI Certificate Policy.

This is a useful exercise in rapidly converging on the common ground which exists, but is leading to a more detailed discussion on what the use cases are for S/MIME, which may be more varied than individual providers in the chain might have formed a view upon. Stephen said the group is making good progress, and continues to invite parties with knowledge of relevant standards and policies to submit them to the group; at the same time welcoming additional participants to join.

The next meeting of the S/MIME Certificate Working Group is Wednesday, 2 September 2020.

### 8. Elections update 

Dean said that Dimitris had sent out an email on August 17, stating that the nominations for Officers of the CA/B Forum is now open, and those nominations remain open through the 23rd. Dean noted that this was interesting, as the wiki says that the nominations are open through the 31st. He was unsure of which was correct.

Dimitris has asked people to post nominations on the wiki, which is different to how it has been done in the past, which was to post to the mailing list. On the wiki page there are nominations for the position of CA/B Forum Chair, Server Certificate Working Group Chair and the Code Signing Working Group Chair.

At the moment, it shows Dean’s name as candidate for CA/B Forum Chair. For Server Certificate, Wayne Thayer has declined nomination, so an open spot remains for that position. For Code Signing, Bruce Morton gets an automatic nomination unless he declines. Those being the positions, Dean asks that people seriously consider nominating themselves, other people at their companies or other candidates, if they think those people would be suitable for these two year positions. Dean would like to see a good level of participation from the global CA/B Forum membership.

Tim (Hollebeek) added a quick observation that anyone nominating another should seek the permission of that party to be nominated first. Tim noted that a couple of years ago, someone got nominated by surprise, and this was an unfortunate case which shouldn’t be repeated. Dean concurred.

Dean said that only the three Chair positions are open now – the Vice Chair positions open in October.

### 9. Any Other Business 

There was no other business.

### 10. Adjourn 

The meeting was adjourned and will reconvene on September 3, 2020 at 11:30 am Eastern Time