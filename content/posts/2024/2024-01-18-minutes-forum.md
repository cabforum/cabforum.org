---
aliases:
- /2024/01/18/2024-01-18-minutes-forum/
author: Dimitris Zacharopoulos
date: 2024-01-18 00:00:00
tags:
- Forum
- Minutes
title: 2024-01-18 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Meeting of the CA/Browser Forum

## January 18, 2024

### 1. Roll Call
Aaron Gable - (Let's Encrypt), Abhishek Bhat - (eMudhra), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Andrea Holland - (VikingCloud), Ben Wilson - (Mozilla), Bindi Davé - (DigiCert), Brianca Martin - (Amazon), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Cade Cairns - (Google), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), David Kluge - (Google), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Fumi Yoneda - (Japan Registry Services), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Johnny Reading - (GoDaddy), Jos Purvis - (Fastly), Karina Sirota - (Microsoft), Keshava Nagaraju - (eMudhra), Lucy Buecking - (IdenTrust), Lynn Jeun - (Visa), Mads Henriksveen - (Buypass AS), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Mark Nelson - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Miguel Sanchez - (Google), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Rebecca Kelley - (Apple), Rich Kapushinski - (CommScope), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Steven Deitte - (GoDaddy), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Wayne Thayer - (Fastly), Yashwanth TM - (eMudhra), Yoshihiko Matsuo - (Japan Registry Services)

### 2. Read note-well
Dimitris read the note-well

### 3. Review of Agenda

Agenda was approved without modifications

### 4. Approval of minutes from the December 7, 2023 Teleconference

Minutes were approved

### 5. Approval of minutes from the January 4, 2024 Teleconference

Minutes have not been distributed yet.

### 6. Report about CSCWG Charter version 1.1

Dimitris:
The charter has been updated to version 1.1. The public website has a link to the GitHub version pointing to the master branch which is always the latest version. I'm not certain about the other PDF link on the website.

Ben Wilson:
I looked that as an open question, because it does require extra work and if people can just click on the link to GitHub, then they get the full text and the most current. I think that's probably good enough without having to create another page. The alternative is to create a separate Code Signing working group charter page where we just clip and paste.

Dimitris:
I thought there was a link to a PDF?

Ben Wilson:
I removed the link. But if there is a PDF, I'm happy to just upload the PDF and put a link to that PDF.

Dimitris:
We need to keep the history as well, so we need to point to the version 1.1, but also to previous versions. My preference would be to follow the practice of the server certificate WG. We can talk offline about this.

### 7. Server Certificate Working Group update

Inigo:
At the last meeting we only had a presentation. There are two ballots, one regarding the prefix for VAT and the one that is moving everything to the second. New version of the TLS BRs have been published. There are some new issues open in GitHub.

Corey Bonnell:
The Validation Subcommittee met last week. Majority of the discussion was surrounding domain validation and what is considered, or not considered a delegated Third party.  That's going to take up a significant amount of time at our next meeting next week as we explore the problem space.

### 8. Code Signing Certificate Working Group update

Bruce Morton:
Already talked about the charter update. We also passed two other ballots. One to update our signing service. The other one is to update the high risk requirements. And then in addition to that, we're still working on our EV guidelines, how that's referenced from the CS BRs. So, should we talk about a high risk ballot or not?

Dimitris:
We had some discussion on the list. So the problem with this ballot is that it was sent to the public list in the official discussion period, but it was missing the two endorsers. Tim looked at the bylaws, and in section 2.3, paragraph 3, it does state that you need to have two endorsers, but it doesn't say that you need to sent that out through an email. Information about the two endorsers was also documented on the wiki. My inclination is that it's meeting the spirit and all the language in the bylaws and there is no issue.

Bruce Morton:
I just wanted to clarify that the ballot was set up for discussion without identifying the endorsers, the ballot was sent out for voting with identifying the endorsers. So I was half right, not 100% wrong. I think that the working group knew who the endorses were and again, it was fully stated when thel the voting took place.

Dimitris:
And, of course, nobody raised any concerns. The issue was discovered after the voting was completed. So, I would just like to leave the floor open for any possible objections to this, or any different interpretation. Otherwise, we'll just proceed as the ballot has been accepted and moving on to the IPR review period.

No objections were raised.

### 9. S/MIME Certificate Working Group update

Stephen Davidson:
Ballot SMC05, which is the one that requires a certificate issuers to implement CAA processing for S/MIME certificates, passed yesterday. So it is entering its 30 day intellectual property review. Now, that ballot calls for CAs to implement CA for S/MIME, by September of this year as a recommendation ("SHOULD"), with mandatory adoption by March of next year. I certainly encourage CAs to look at that. The red line of the ballot is out on the CA/B For website under the S/MIME group.

The other item is that we are already very advanced in work on Ballot SMC06, which is a further clarification and corrections ballot, basically, implementing feedback that is coming from certificate issuers and auditors and so forth gleaned from their early experiences of implementing and running under the S/MIME BR. They're very definitely clusters of questions and desires for clarification. So that is a ballot that we will be moving ahead with in in the near future as well.

### 10. Forum Infrastructure Subcommittee update
Jos Purvis:
We basically took a look at what Paul is about to show you and spent much of the meeting discussing that. We think this could be a really, really great modification to the CA/B Forum website, but it is the sort of thing that we can approve from a tool's perspective but I think it is going to require some level of discussion in order to see whether we want to do this at the Forum level. So it is a really neat modification that converts our website from WordPress, to static markdown files that are then dynamically assembled by a program called Hugo. So basically if you want to modify the website, you do a check-out to get the latest version and then write pages in mark down. We think it's very promising. It has some real positive aspects in terms of change control and review and updates.

### 11. New Public website "under construction"

Paul van Brouwershaven:

This is about https://cabforum.github.io/cabforum.org/. I created some screenshots and added some comments to it for people to give some some guidance on how this works.
With some background information after the call and the main list. The website is currently running on GitHub, so there's no infrastructure really involved. It's all automatically generated on the homepage. We have the same information as there was before, except without the images I excluded that. But instead I included some recent posts, as I think that is more valuable to the the visitors that recent posts is automatically updated with the latest posts that are added on the forum. On the right side, you see the latest updates that is also automatically obtained from GitHub. This includes the latest release of the relevance repository so the repository service certificate work group repository, the code signing working and the NetSec, but only the S/MIME working group is currently creating releases. So that would be very useful. If groups would do the same thing. Then if you scroll a little bit down, and then you have them button edit if you click there, you would automatically go to GitHub, see to page. There's some meta data on the top page, which is a little bit more detailed for this page because it is one of the pages that is listed in the top menu, which is an instruction that is listed there. But in general, you specify the date, the title, and potentially the alter if it's in a post or some text. The minutes or working group then you can specify that there. We can see that in one of the other pages the content itself is written in MarkDown and there are some shortcuts. So, in this case, I say list pages, everything that is the type posts, and then limited to a certain amount in that same thing. I can specify show all the information from the service certificate working group or code signing, or only minutes, or a lead ballots and things like that. Then if we go back to the website and go to service certificate working group, for example, then also here, if you scroll down you members. and the members are automatically loaded from the member list, so more time created in an API, and we can call that API to automatically update this information. So, that saves us a bit of work and manually maintaining and correcting this information.

Stephen Davidson:
That saves a lot of work for the working group chairs.

Paul van Brouwershaven
Yeah, that's definitely the intention so we're more time is working on a lot of our features so that we can also make the names clickable that they would automatically point to the website of the members, which, which is nice. We currently only have that in the overall view of members. At least on the current website. , but that information is currently not available in the membership tools. So we will add that, the list of all members of the website that requires another API update and Mark Down is also working on that. So that we can do the same thing, for, the overall member view. Ff you. Then go to the charter. Which is the first link on the right. So, we have the menu on the right then you see the servers Server Certificate Working Group charter, which in this case includes two titles. One is the title of the page, and one is the title of the charter itself. Because the charter that is shown here is just the charter that is listed on our get a page. So as soon as we make a modification on GitHub, it is automatically reflected on the Web site. Currently that both is not triggered automatically, but we can configure that or do it once a day or whatever we prefer, but basically, we don't have to do anything as soon as we update GitHUb with new information that is reflected on the website. if you go to the next item minutes. Then you see here the minutes, currently, we post minutes, as a sort of blog post while, that would still work the same thing, I tried to clean this all a little bit up so that we have, organize them by year, instead of looking at hundreds of pages at the same time, . I'm not sure if something is happening, but my system starts responding. So, so that's what the minute. So we don't have to do anything here is all goes automatically, if you add the right tax to the markdown. So in this case that would be server certificate working group, in combination with minutes, but we can create templates or you can just copy the latest one and then update the date and the contents. But it's the same mark down as we write for for other things. Then we have the ballots. So the ballots, and maybe it's good to then also go to the code signing or the services of the. So here we see that there are two, open ballots and a few closed ballots, the ballots are also loaded from GitHub. We now they merge ballots to a pool requests. And if you flack or label the pool request Ballot it will automatically show up here. The only thing what we need to take into account is that the title of the pull request is formatted to certain standards. And that the description, the main description of the pull request is the description of what the ballot is supposed to be doing. Then when you click on this pool request, you will automatically go to that pull Request and get up and see the details there. So you can see what has changed in this ballot, we can extend this further, and I was thinking as we can add labels so that you can see if it's a draft ballot if its a failed ballot, if its, a merge ballot, which is currently as. Well, it's closed, which could be closed that the pull request is closed, but it's not merged, and I think it would be good to make sure that it reflects that, it's close successfully. So merged, or it’s abandoned it and the develop didn't go through, but this would also be maintained automatically if we are consistent in using a pull request and labeling the pull request with the right labels, then we don't have to update, or website accordingly, except with the results, which would be a post, that we would do the advantage from this is currently. We're looking at this for code signing working group, but my proposal is that we create an overview of all ballots that are being discussed every discussion period that is being voted on. That are recently passed, et cetera, and we can automate the generation of that overview, directly on our Web site with some simple, mark down templates.

Dimitris:
Can anybody create a pull request in our repository?

Paul van Brouwershaven:
Everyone can create a pull request, but not everyone can label pull requests. So only for administrators or or members can add labels to pull the requests. So do not have a label would not show up here. But that, that that's good. It's important that we, we keep control of, what is, shown on the pages. Then if you go, to the requirements page, and you might have seen that I renamed some of the pages, but all the existing content ish included on the website, this is the actual go time and requirements as currently effective. They are automatically rendered to HTML and shown on the website. So this is the same as we publish in the PDF documents. The the current version, and so this link will always hold the current version of the docent. And that is very useful if we want to short link that, you can just give the link to a certain section and point someone to the rendered version of the requirements as specifically, directly on our website. In addition to that, if we add to the GitHub release is also a PDF version of the docents, we could link to PDF versions and potentially even download and guide them on the website. If we don't trust it up as the functioning as the archive, which might be a consideration as well as say. Historic release information is available and get up or we can extract that from get up and show it, on these pages as well. But just always points to get up for the files that are on the website. You do have search, so, while this is a static page, .There is a search, and, that is ultimately indexed, on when we generate the website, you have tax on the site, you need to open them. It would be nice if that opens automatically. But then you can filter down on working group, or, if it's a ballot or or any other texts that are in, in the search results. There is a link checker as well. There are currently 50,573 links on the website, which we have 407,821 that are working, and about 209 that are actually giving an error. There are some that I excluded because they are get, comparisons, of branches that no longer exists. So, in practice, they're, they're, they’re returning the 404, and I'll find, but they're historic and and we probably don't want to remove them from the minutes. But but there are some links, for example, to rep, trust and other resources that are not working, and we might want to have a look at that and try to fix those 300 links that are on the website that are actually not working. That is also something that runs daily and and the report is being updated. , while it should update the same issue. It's generating a new issue at the moment. So, I will look at that.

Dimitris:
The officers, or people from the infrastructure subcommittee that were making changes to the WordPress website are pretty much familiar with Git, and I think it is a reasonable step forward to move away from WordPress. Unless people, think otherwise, or have objections to, to trying this out?

Stephen Davidson:
I think it’s great. I just we need to ensure that the documentation is excellent, that's because of the change over  in working group heads.

Paul van Brouwershaven:
I think people to have some instruction on how to add a file.I don't think it's that complicated to actually add the file, but it would be be good to generate some templates for meeting minutes and ballot results.

Stephen Davidson:
The thing that would be great about this is consistency across the working groups and ballots ballot results.Our announcements and adoption announcements, if they were totally standardized and automated, that would be awesome.

### 12. NetSec Working Group update

Clint Wilson:
We met on Tuesday. We had a quick update about the from the cloud security alliance, related to the section four ballot. This is something that's ongoing and we'll hopefully we'll have, the next version available for you shortly, but currently the kind of issue that that's being faced is how to enter into a memorandum of understanding, when the CA/B Forum doesn't really have its own, legal identity. .There are some other concerns, around it.You know, similar, I mean, just to to impact on the policy and things like that, but they're working through those, the Google team is working through those and hopefully we'll have a new version of the here in the next, few weeks. We chatted briefly about the document restructure ballot and work, which hopefully, we'll have a new version this week. , it has a number of updates that have been received over the last couple months and feedback is still welcome and worthwhile. Earlier in the Server Cert, we talked about delegated third parties, at one point during those discussions that had kind of been recommended that this might be a topic for the Net SEC working group. And so we brought it up, sort of just raised it with the group. It wasn't immediately obvious. It's because of the way the NetSec requirements interact with delegated third parties. What interaction might be worthwhile, related to the, the sort of lack of very clear lines of of what a delegated 3rd party is or might be in the, it wasn't really.Quite clear what what the meets requirements might need to to change in order to improve that that situation. , so we all agreed to kind of talk about it again in two weeks once we've had time to to continue thinking about it and having further discussions in other working groups. So if you have thoughts on that, we definitely welcome those at the meeting.

### 13. Agenda preparation for F2F 61

Dimitris:
Next item is the preparation for Face to Face 61.

Dimitris:
We have 25 representatives that have registered to be in person in New Delhi, and about 25 or 26 that have registered to participate remotely. So if you haven't registered yet, please do so, it's only 1 month away. I'd like to ask all working groups to, propose, agenda items. I believe Paul has created a draft by copying things from the previous face to face. , it was a good structure. , and I think we can use that same template. Again, any questions or discussion about the next face to face.

Paul van Brouwershaven:
I've left the latest day, the Wednesday in this case open for the entire day. Last meeting, we ended early for the ghost walk, but we don't have this time, so we can utilize it entire day for purposes needed.

### 14. Any Other Business

No other business to discuss

Dimitris:
Next call is February 1st. Meeting adjourned.