---
aliases:
- /2020-07-10-2020-05-25-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-07-10 18:26:19
title: 2020-05-25 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Andrea Holland (SecureTrust), Inaba Atsushi (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Dean Coclin (DigiCert), Dimitris Zacharopolous (HARICA) \[Chair\], Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Encrico Entschew (D-TRUST), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass), Mike Reilly (Microsoft), Neil Dunbar (TrustCor), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (Wisekey), Peter Miskovic (Disig), Ryan Sleevi (Google), Shelley Brewer (DigiCert), Taconis Lewis (Protiviti), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon), Wendy Brown (FPKI).

## Minutes 

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust Statement was read.

### 3. Review Agenda 

No changes to the agenda were noted.

### 4. MSC Trustgate’s request to renew Associate Membership (expired 2020-05-31) 

Dimitris noted that MSC Trustgate, whose membership had expired on May 30. He had sent a reminder, and received a reply saying that they would like to renew their membership.

Dean Coclin also had been in touch. He stated that MSC Trustgate had not heard back from Microsoft, with whom they have a pending application for inclusion in Microsoft’s Root Program.

Mike Reilly said that Microsoft has responded back to MSC Trustgate that they had not moved forward with their application yet, and it is still pending. We are undecided at this point if it will be approved or not.

Dean left it open to the group to either deny membership (with an option to return) or continue their existing Associate Membership.

Mike said that Associate Membership was fine, but could give no promise as to when or if they might be admitted to the Microsoft Root Program.

Dean asked if the bylaws mentioned the actions post expiry of Associate Membership.

After consulting the bylaws, Dimitris said that the SCWG was able to decide whether to extend or for how long any extension should be.

After no objection, Dimitris said that he would write to them and advise them of their extension lasting another 12 months.

### 5. Validation Subcommittee Update 

Tim Hollebeek said that they were continuing to discuss certificate profiles, moving on to End-Entity profiles, but no movement had been made after the last meeting, but the goal remains to get some work done on those profiles prior to the next meeting so that the Subcommittee can start reviewing them.

He added that Dimitris had an action item to update the traceability around the Root and ICAA profiles and that Tim would be reviewing once that work is completed.

### 6. NetSec Subcommittee Update 

Neil Dunbar said that there wasn’t a great deal to report since the F2F meeting.

Ballot SC28 has been updated, to be discussed later. Ben Wilson has a draft for a ballot on the Zones concept, due to be discussed at the next NetSec meeting \[following the SCWG and Forum call\].

Two other ballots are in preparation to handle authentication lockout policy and acess removal for unnecessary accounts.

No minutes had been recorded from any of the Subcommittee teams, so it would appear that there was no significant output to report.

### 7. Ballot Status 

#### Ballots in Discussion Period 

_SC28 (Logging and Log Retention)_

Neil has made an update to the ballot (creating version 2) in response to feedback from Ryan Sleevi and others. This update has been posted to the public list. Neil said that the text had been wrangled into the least clunky form.
He added that he had considered whether software updates should be called out as being logged as an explicit category. Having talked to some auditors, he decided to include software installation, update and removal as a clearly defined logging requirement under the “Security Event” categories, requiring two year retention. He added that once any feedback had been considered, he would move the ballot to voting.

_SC30 (Disclosure of Registration/Incorporating Agency)_

Ryan reported that Enrico Entschew has made some suggestions to the ballot – Ryan would merge those changes in, thus it would be another week until voting begins. There is nothing substantive being changed – merely updates to make the text easier to understand for non English speakers.

_SC31 (Browser Alignment)_

Ryan has restarted the discussion period, with changes made to handle the “No Stipulation” clause as well as Pandoc-friendly formatting changes. Review is welcome, and the mailing list has some discussion on what consequences might follow should SC31 fail.

#### Ballots in Voting Period 

None.

#### Ballots in Review Period 

None.

#### Draft Ballots under Consideration 

_Spring 2020 cleanup_
Ryan reported that the status is that we are waiting on the other ballots to proceed, which should be over the span of the next week.

Ryan is still awaiting some feedback from SecureTrust\[\*\] regarding Debian weak keys, whether that should be folded into the main ballot; Ryan thinks it should makes sense to do so, but the topic is still under discussion.

Ryan continued, saying that the change around redirect codes probably belongs in a separate ballot, since it is a normative change of more significance than a cleanup ballot should have. If the participants felt like it should be included, Ryan was open to this.

Ryan added that co-endorsers are needed for the cleanup ballot before the discussion and voting process can begin.

Ryan asked for more feedback on those issues, but until the other ballots have proceeded, he wasn’t gearing up on the cleanup ballot. \[\*\] Ryan was corrected regarding SecureTrust by Chris Kemmerer. It should be SSL.com

_Update to BR section 6.1.1.3_
Chris from SSL.com asked whether the Debian Weak Key issue belongs in a standalone ballot, though he confessed himself agnostic on this issue. However, there has not been much correspondence on the mailing list, and Chris indicated that SSL.com would respond to Ryan’s email.

Zones: Ben Wilson has tagged SC32 for the draft Zones ballot. Dimitris asked if Ben wanted to comment.

Ben said that there were two issues to discuss. The first was whether requirements for physical security belong in the BRs. As a result, the draft ballot has new language for Sections 5.1.1 and 5.1.2 to deal with physical security. This then resulted in consequent text for 5.1.3 and subsequent sections. The other point under discussion was whether to define the term “physically secure environment”. The consensus was that it should not be, so the text retains the lower case term. A similar consideration was applied to the term “CA network”.

At the moment, the ballot creates no new cross linking between the BRs and the NCSSRs. Ben was unsure as to whether such cross links should be established, saying that the following NetSec call would flesh out such considerations.

### 8. Update action items (added items from F2F 50) 

Dimitris has posted a page on the wiki, created some time ago, called “Meeting Action Items”. After reading the minutes from F2F 50, Dimitris has been updated the page; removing completed actions, and adding newer ones.

For SCWG, there is still a followup item for Arno Fiedler regarding the ETSI presentation, but this is the only action other than those taken care of by the subcommittees.

### 9. Any Other Business 

No other business was discussed.

### 10. Next call 

The next call will take place on July 9th, 2020 at 11am Eastern Time.

### Adjourned