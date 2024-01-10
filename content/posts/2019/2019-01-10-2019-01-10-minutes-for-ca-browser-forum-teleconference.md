---
aliases:
- /2019/01/10/2019-01-10-minutes-for-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2019-01-10 17:49:51
tags:
- Forum
- Minutes
title: 2019-01-10 Minutes for CA/Browser Forum Teleconference
type: post
---

## Attendees (in alphabetical order)

Ben Wilson (Digicert), Chris Kemmerer (SSL.com), Daymion Reynolds (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Fotis Loukos (SSL.com), Frank Corday (Trustwave), Gordon Bock (Microsoft), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Joanna Fox (GoDaddy), Jos Purvis (Cisco Systems), Kenneth Myers (US Federal PKI Management Authority), Li-Chun Chen (Chunghwa Telecom), Marcelo Silva (Visa), Michelle Coon (OATI), Neil Dunbar (TrustCor Systems), Niko Carpenter (Trustwave), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Tim Callan (Sectigo), Tim Shirley (Trustwave), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

### 1. Roll Call

The Chair took attendance

### 2. Read Antitrust Statement

The Chair read the Antitrust Statement.

### 3. Review Agenda

Today’s Agenda was approved.

### 4. Application of eMudhra for CA/B Forum Membership

eMudhra was accepted as a Full Member to the CA/B Forum. Dean to make the announcements.

### 5. Forum Infrastructure Working Group update

The Infrastructure WG met and discussed about the wiki. They will try standing up a test instance of DocuWiki and see how copying (converting) pages from moin-moin will work out. They also talked about cloud-hosting solutions that might make things a little easier. The WG will also look at sharepoint offered by Microsoft.

On the document management front, Wayne posted a set of instructions on creating a red-lined version of a ballot using GitHub. The WG plans on posting this guide to the wiki. Hopefully members will look at these instructions, try them out for ballots and see how they work.

Finally, for the web site, the WG will soon spin up a test version that will be setup in a “managed” WordPress instance that GoDaddy has and will hopefully make things easier compared to managing a full copy of a server hosting this application. The goal is to have a test and production site so people can try out the test site and if they are ok, we can deploy the changes to production. Migrating things off of the current server will help decommissioning the existing GoDaddy’s server.

The WG also discussed about reaching out to Amazon, Google and Microsoft asking for some cloud-infrastructure sponsorship to host virtual machines and virtual appliances that will help the Forum migrate to new services.

### 6. Follow-up on new WG Charters (Code Signing, S/MIME)

Ben sent a draft charter for each candidate WG to a small group of members for comments. He did not receive any comments for the Code Signing WG Charter. Some blanks include sponsors and a possible initial Chair until the first meeting of the WG. He is looking for volunteers. He also mentioned that this Code Signing Working Group should take care of the provenance of the Code Signing requirements documents, adopt and move with those documents as Guidelines.

For the S/MIME WG Charter, Ben received some comments from Dimitris and Wendy Brown. Individual identity should be considered to be in-scope for the Charter but recognize that this would be subsequent work. First, the S/MIME WG would focus on validating e-mail addresses and work on Certificate Profile issues.

It was also mentioned that clientAuthentication should also be included in-scope or at least not prohibited in an S/MIME Certificate.

Ben plans on working the drafts with the comments he received and send them out to the public list. Similarly, he needs someone to volunteer as an initial Chair for the S/MIME Working Group. If anyone is interested in being an initial Chair for either Working Groups, please contact Ben.

There was a short discussion about Membership in a possible S/MIME Working Group and how would Certificate Consumers look like.
– Marcelo asked how would the “Browsers” look like in the S/MIME Working Group
– Ben replied that they would not be members unless they produced an S/MIME client.

Ben wondered how this category would look like if the clientAuthentication was added in-scope and whether Operating Systems that use clientAuthentication for access to certain resources would qualify as Certificate Consumers. What if a Member doesn’t produce an S/MIME Client but is using Client Authentication?

Dimitris said that clientAuth EKU is not prohibited in the Baseline Requirements and should not be prohibited from S/MIME Certificates either. The Charter should be primarily scoped for S/MIME with validation rules for e-mail addresses and leave possible room for identity but not particular rules for clientAuthentication.

Wendy’s concern is restrictions on CAs for identity validation. When a CA authenticates an individual and gives that individual a Certificate that can be used for email signatures, it’s practically the same work you do to authenticate an individual for a Certificate used for Client Authentication.

Wayne recalled a discussion at the last F2F where we mentioned that the broader the scope the harder for the WG to focus and achieve any results. He agrees with Wendy’s comments that the Charter should not be too restrictive but a narrower scope to start with would be better.

### 7. Bylaws and Charter discussion group

Ben mentioned that this topic is about working on improvements to Bylaws, Charters and other governance issues, and whether that work could be done as an informal group. He has abandoned the idea of creating a charter for a WG for these activities.

Rich said that with the current CA/B Forum structure with Working Groups (basically doing all of the work), leaves the Forum at large to basically discuss governance issues. He doesn’t see the benefit of a separate Governance Working Group.

Wayne asked if we could have a smaller group to focus on Governance topics on the regular CA/B Forum teleconference or separate calls. He thinks there’s nothing to forbid us from doing that and believes it would be a good thing to do.

Dimitris recommended using the time of the CA/B Forum regular teleconference calls to discuss Governance issues and improvements, since the calls have become quite short and there is usually free time. If we see that we don’t have enough time to discuss these governance topics, we can create a separate Webex room and move governance discussions there.

Ben agreed and recommended we add these items to the end of the agenda for each bi-weekly call, and use the public mailing list to send out drafts.

### 8. Any Other Business

Dean asked who sends the Calendar invites to new members and Ben responded that he can send eMudhra the Invitations. Dimitris reminded Dean that there is a page on the wiki that stores the Calendar meetings, passwords and .ics calendar files.

### 9. Upcoming F2F 46 meeting March 12-14, 2019 (hosted by Apple)

Dimitris sent a message to Apple’s representatives with some pending questions related to the F2F. Hotel information needs to be published on the wiki and members will be informed as soon as that happens. Will wait until Monday and will post the currently-known information for hotel reservations on the wiki.

### 10. Next call

January 24, 2019 at 11:00 am Eastern Time.

### Adjourned