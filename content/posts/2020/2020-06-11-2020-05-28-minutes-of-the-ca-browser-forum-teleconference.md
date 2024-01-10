---
aliases:
- /2020/06/11/2020-05-28-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2020-06-11 13:52:44
tags:
- Forum
- Minutes
title: 2020-05-28 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Attendees (in alphabetical order)

Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Curt Spann (Apple), Daniel Rendon (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jos Purvis (Cisco Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michael Guenther (SwissSign), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Quo Vadis), Taconis Lewis (US Federal PKI Management Authority), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Andrea Holland (SecureTrust).

## Minutes

### 1. Roll Call

The Chair took attendance.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda

Accepted without changes. Neil volunteered to take minutes on the next call.

### 4. Approval of minutes from previous teleconference

Accepted without objections.

### 5. Forum Infrastructure Subcommittee update

Jos gave the reports.

- Website migration to the new managed WordPress installation occurred.
- A migration side effect, that the admin interfaces of any of the mailing lists could not be reached, was fixed very quickly by the good folks at GoDaddy.
- Regarding emails: All of the old links will still redirect you automatically to the old server for doing any of the mailman stuff or searching archives or something like that.
- Next step is getting the mailer system itself moved. It’s needed to resolve a few things with SMTP in AWS.
- Did figure out the automatic builds for the new pandoc formatted baseline requirements documents. Now it’s just needed to stage that as a pull request and then we’ll be using the new formats and automatically building all three formats using pandoc instead of the old multi step process.
- Had an extensive discussion about the June meeting and planning for that. Together with Dimitris Jos did a Webex test meeting to look at features. Tested the functionality of Webex for such kind of conferences like the face to face.
- Wayne and Dimitris are putting together a proposal for how the meetings will be run during the virtual face to face. Like : “Somebody is going to have to manage the meeting. Here is how to deal with this problem, etc.”
- Last reminder for committee chairs: If you have a recurring meeting scheduled in the old Webex site cabforum.webex.com you need to move and reschedule that meeting in the new account cabf.webex.com. There are instructions for that on the wiki.
- June the old account will go away and with it all the meetings. Please archive any recordings of meetings you need.

Dean asked if work is ongoing on the mailman so that the emails that are waiting in the questions list can be approved soon.

Jos: Yes, that’s the first part of it. Change is scheduled very soon. Once it is resolved there will be a redirected place that will fix up all of the mailman interface problems.

Dimitris: There is a workaround to make some commit to the mailman but it needs the requirement to manipulate the postmessage in the browser. If we just need to approve some pending messages in the questions list just send me the IDs of those requests and I will try to get them on the list.

Dean: They will be forwarded to the management list as soon as it works. There is nothing urgent.

The draft minutes of that particular Subcommittee meeting are available at the following URL:

-

### 6. Code Signing Working Group update

Bruce: WG will move forward with ballot to merge the two code signing documents. In order to close this issue off and prepare the ballot, WG is looking for an additional endorser. Next step will be to change the format to the RFC 3647 format in order to be in alignment with the same format used for the SSL BRs and the CPS documents. If there are important changes, these can be addressed before the format is changed.

The last item concerned precisely the continuous improvement of doing changes. The WG ran through a list of 10 or 12 items and had people who volunteered to be owners. It was prioritized how they would try to address these changes as they progressed.

The draft minutes of that particular Subcommittee meeting are available at the following URL:

-

### 7. New S/MIME WG Charter

Tim: Work continues. Ryan proposed changing the reference to the IPR agreement to more closely align it with the text presented by the server certificate WG in order to prevent redundancy. A few other errors were found in the Bylaws. Those do not necessarily block the creation of the S/Mime working group. They also affect the server certificate working group and can be worked separately.

Ryan submitted his proposed text. Modifications proposed by Clint were accidentally deleted by Ryan, but have subsequently been restored.

Wayne agreed with the changes.

Tim: Will get the ballot out immediately after the call. Think everybody is finally on board and all the comments are addressed.

Dimitris: OK, with an immutable link please.

Tim: Yes.

### 8. Approval of F2F 50 Agenda

Dimitris: Introduces agenda for the plenary. It includes 1 ½ Hours on Wednesday (updates from different working groups and subcommittees). An additional slot was added to give everyone a reminder of the elections process scheduled for this summer. No proposals for new topics were received.

Tim: Proposes adding half an hour for discussion of the differences in various charters. We are going to have three chartered working groups. There are various differences in the Charters and the way they handle e.g. the Bylaws and the charter templates. A discussion of those issues and some of the issues found recently while reviewing Charters and what people think about fixing those issues could take place.

Dimitris: There is already a slot for that. 20 minutes are allocated for that and time from the “any other business” can be used.

Tim agrees.

Dimitris: Time will be sufficient, because most of the Bylaw issues have been solved with the 2.3 update.

Tim: There are a couple of new ones.

Dimitris: OK.

No objections. Agenda is approved.

### 9. New Bylaws version 2.3 (Voting Representatives)

Dimitris: There is one significant change in the new Bylaws with regards to the assignment of voting representatives. Dimitris send an email to the management list to enable all members to follow these instructions. He already received a couple of emails from members to add or remove people from different working groups and also the plenary level of voting representatives. Dimitris encourages all members to take a look at the list and notify Dean or himself by mail in case any changes for the code signing group are necessary. These updates will be added to the spreadsheet.

Dimitris is waiting for the problems with the mailer to be fixed and is then going to update the Bylaws PDF on the website.

### 10. Any Other Business

Dimitris: Would like to encourage people to register for the face to face. Just 20 people have registered so far. It’s still important to know how many people we are expecting for each day. If you haven’t registered and you plan on attending on the June 9 and 11, please register on the wiki.

Dean: Will send a reminder via the management list.

### 11. Next call

June 25, 2020 at 11:30 am Eastern Time.

### Adjourned