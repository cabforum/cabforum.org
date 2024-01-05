---
aliases:
- /2020-06-11-2020-05-28-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-06-11 13:56:40
tags:
- Minutes
- Server Certificates
title: 2020-05-28 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer ([SSL.com][1]), Curt Spann (Apple), Daniel Rendon ([SSL.com][1]), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jos Purvis (Cisco Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michael Guenther (SwissSign), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Quo Vadis), Taconis Lewis (US Federal PKI Management Authority), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Andrea Holland (SecureTrust).

## Minutes 

### 1. Roll Call 

The Chair took attendance.

### 2. Read Antitrust Statement 

The Antitrust Statement was read.

### 3. Review Agenda 

Accepted without changes.

### 4. Approval of minutes from previous teleconference 

Accepted without objections. Neil volunteered to take minutes next call.

### 5. Validation Subcommittee Update 

Tim reported that the Subcommittee had a discussion about certificate profiles and the current strategy which is documented in a Google spreadsheet. The Google spreadsheet has an organized view of the requirements for a particular entry into a certificate coalesced into one spot. But its incomplete and the subcommittee is still working on that. Strategy is to go through the BRs line by line and comparing it to the spreadsheet and discussing the interesting topics that come up. They made it through section 7.1.2.2 C before they stopped.

Tim said that they found it very useful to have a new column Q in the spreadsheet which is where the requirements are put. They will continue going through the spreadsheet and updating it in two weeks.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

-

### 6. NetSec Subcommittee Update 

Neil reported that ballot SC28 is now open for discussion. He got some feedback from Ryan. Will respond to that very soon. Still crafting a ballot on removal for unnecessary accounts. Neil has got the text agreed, proposers and endorsers, so that the ballot should be ready to go very soon.

Similarly the SC has got the ballot to remove the secure zones terminology. Got a final text, Ben will propose that and a couple of endorsers are ready. Waiting for red line version to move forward.

The pain points team still working on authentication controls. This is with regard to replacing section “2.k.” and amending “2.g.” of the NCSSRs and replacing this brute force lock out with another option.

Last meeting Bruce uncovered an ambiguous text in the NSRs. It will probably need a minor cleanup ballot just to make it clear that it’s actually remote administrative access that was intended to be controlled, not access as a separate requirement.

The subcommittee had a long discussion on the availability requirements of OCSP. This was in reference to an outage that was reported on IdentTrust. The BRs have got a kind of vague reference to 24/7 availability and the group discussed it. It might be an additional requirement for CAs to publish their service level objectives (SLO) in the CPS under 4.10.2. in order to be able to demonstrate and test them and comply with this SLO. Currently no ballot text is ready. Discussion is ongoing.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

-

### 7. Ballot Status 

#### Ballots in Discussion Period 

None.

#### Ballots in Voting Period 

None.

#### Ballots in Review Period 

_SC29: System Configuration Management (Neil)_.** Review period ends 15:00 UTC 7 June 2020**.

#### Draft Ballots under Consideration 

\_Aligning the BRs with existing Browser Requirements \_(Ryan)
Ryan: Still waiting for feedback from the Mozilla communication, which will be expected on Monday, June 01, 2020.

Adriano raised a question about prohibiting subscriber key generation which is a Mozilla requirement. Ryan sent it out to the list.

If Microsoft and Apple are good with the draft and with Mozilla’s feedback it should be stable enough that everyone should be looking at it. Everybody is encouraged to provide feedback soon.

Dimitris asked if Ryan thinks about setting some time aside to discuss for example during the face-to-face meeting in two weeks.

Ryan: There is a very long description in the draft about the proposed changes, that should cover everything. Repeating this topic at the face to face makes no sense.

_Spring 2020 cleanup (Ryan)_
Ryan: There are some discussions about what a known weak key means. There can be something that causes you to revoke a certificate. If it is known to be weak at the time when the certificate was issued it is called a known weak.

Ballot is trying to clarify the existing requirements which are causing ambiguities. Ryan got some feedback to the questions list which were reposted over the management list, so that everybody may have seen it. Some questions were about the CA root key generation, terminology of what a root CA key is and the applicability of these requirements to subordinated CA’s.

There is the consideration that in certain cases no external auditors are required as witnesses for the key generation ceremony for technically constrained SubCAs. However, this should be included in another ballot.

Dimitris asked if Ryan plans on addressing the two categories (technically unconstrained and constrained SubCAs) separately. Ryan replied that section 6.1.1.1 applies to technically constrained SubCAs and it would be the goal to exempt them from that. However, that would require a larger restructuring of this section to prevent a loophole. Section 6.1.1.3 must also be considered. It will be a separate ballot to show that if the key is ever used in an unconstrained SubCA or an unconstrained root CA, the full auditing must go back to the time the key was generated. It’s close to the key lifecycle issue that Wayne presented about in Shanghai face to face 45.

_Disclosures of data sources (Ryan)_
Ryan: The draft is right for discussion. It has been updated, as mentioned in the last call. There was feedback from Tim regarding what the sequencing of things look like and making sure that things like GitHub are permitted. There were some questions raised by Doug, mostly related to the scenario of if a CA does not restrict the type of registration number for that particular registration sources. Some registration sources document proactively what their serial number form is and some don’t. It is just intended to clarify that there is an option for the CAs to disclose them.

Looking for endorsers. Microsoft might be willing to do that. Ryan thinks that the Ballot can be brought to a formal discussion period and to vote.

_Updating BR Section 6.1.1.3_
Chris: Appreciated the discussion Dimitris, Ryan and Tim had a couple weeks ago. After last call there is now a new language for the proposal that is likely to be accepted. Now the question is whether it should become a separate ballot or be part of the spring clarification and cleanup ballot.

Ryan: Depends on what the languages is and how exciting that language changes are.

Chris: Would like this to be decided before we look at the language.

Dimitris: There was a thread proposing very specific language on the public mailing list where Chris, Ryan, Corey and other people participated. Seems to be too complicated to fit in a cleanup or clarification ballot.

Chris: The discussion that Dimitris was referring to was incredibly valuable for our purpose. The language now takes all that into account.

Dimitris: Are you planning to post it to the list?

Chris: Yes, ASAP.

_SC 28_

Neil: The purpose is to modify the retention period of evidence, i.e. the duration of data storage for CAs. Thus, instead of a flat rate of 7 years for everything, data should be retained during the lifetime of the object (certificate) and for two years after the certificate has expired. The same applies to CA certificates. Logs should only be backed up for 2 years instead of 7 years, since their value is forensically limited.

Ryan has provided some valuable feedback. Most of it has to do with cleaning up the actual text but there was a couple of substantive and semantic issues. Next step: talk through with the NetSecTeam and getting back.

### 8. Approval of F2F 50 Agenda 

Dimitris: Removed empty slots. Now the wiki states that the server certificate working group should start on Wednesday at 11:30 am and end at 1:20 pm. On Thursday plenary starts at 10:00 am and ends at 11:40.

If there are new topics to discuss they can be introduced at the beginning of each day.

No objections to the agenda. Agenda is approved.

### 9. Any Other Business 

No other business.

### 10. Next call 

June 25, 2020 at 11:00 am Eastern Time.

### Adjourned 

[1]: http://ssl.com/