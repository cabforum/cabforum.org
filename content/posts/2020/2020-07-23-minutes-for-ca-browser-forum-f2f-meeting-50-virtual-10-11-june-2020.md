---
aliases:
- /2020/07/23/minutes-for-ca-browser-forum-f2f-meeting-50-virtual-10-11-june-2020/
author: Jos Purvis
date: 2020-07-23 15:43:00
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 50 Meeting, Virtual, 10-11 June 2020
type: post
---

# Wednesday, 10 June 2020

## CA/B Forum Plenary

**Attendees:** Dimitris Zacharopoulos, Ben Wilson, Ryan Sleevi, Corey Bonnell, Andrea Holland, Bruce Morton, Atsushi Inaba, Daniela Hood, Trevoli Ponds-White, Tobias Josefowitz, Devon O’Brien, Kathleen Wilson, Xiu Lei, Frederick Tonsing, Arnold Essing, Janet Hines, Tadahiko Ito, Don Sheehy, Enrico Entschew, Andreas Henschel, Arno Fiedler, Robin Alden, Neil Dunbar, Wayne Thayer, Dre Armeda, Luis Cervantes, Peter Miskovic, Curt Spann, Wendy Brown, Dustin Hollenback, Wang Chunlan, Vijay Kumar, Jos Purvis, Somer Shively, Karl Blicharz, Dean Coclin, Keshava N, Li-Chun Chen, Mads Henriksveen, Mariusz Kondratowicz, Jeff Ward, Clint Wilson, Niko Carpenter, Doug Beattie, Aneta Wojtczak-Iwanicka, Nikolaos Soumelidis, Thanos Vrachnos, Eva Van Steenberge, Leo Grove, Chris Kemmerer, Mike Reilly, Karina Sirota, Hongquan Yin, Michelle Coon, Andrew Whalley, Tim Hollebeek, Rich Smit, Tim Callan  

### Approval of Minutes from previous teleconference

The minutes were approved.

### Report from Code Signing WG

_Presenter:_ Bruce Morton (Entrust Datacard)
_Note Taker:_ Dustin Hollenback (Microsoft)

Dean Coclin co-presented.

Combining Baseline Requirements and EV Requirements into one document. A final document is ready. A draft ballot is ready to go out for voting.

There is a parking lot list of items. Dean presented the full list of open items in a table format. They set priorities and are working on priorities 1 and 2 during next week’s meeting.

The first step was to get the major document updated, then they’ll move this into the correct format.

After looking at the Bylaws and Charter, they do not set a limit on how long the Chair and Co-Chair of the WG can serve (whereas, the Bylaws set a term limit on the Chair of the Forum). There is more research to determine if the rules should be inherited from the Forum bylaws.

**CSC Ballot 2**
The group will also be working to convert the format of the Code Signing requirements to RFC 3647 (based on a similar conversion that we did when moving the SSL Baseline Requirements into RFC 3647 format).

### Report from Forum Infrastructure Subcommittee

_Presenter:_ Jos Purvis (Cisco)
_Note Taker:_ Ryan Sleevi (Google)

Brief meeting on Day 1.

## Migration Status

If you posted anything to the mailers between June 5 – June 8, you may want to double check that it was actually processed. There was an outage on the mailers between then, so double-check the mailer archives

Website migration is complete. Next step is mailer migration. As of this morning, it can now begin, thanks to Trev at Amazon.

The migrated website uses different URLs right now for documents; for example, the Bylaws documents redirect to a different domain. These documents are still available at the cabforum.org domain if you have old links. GoDaddy is working on an update to see about fixing up the URLs.

dxhood: The cause of this is due to the CDN, so one option is to turn off the CDN. GoDaddy is also looking into rewriting the URLs.

Dimitris: Does this mean the “reset password” link on the wiki will work now?

Jos: Yes, that should be fixable sooner than the mailer migration

## GitHub discussion

Discussed branching strategy and the process for merging PRs.

There was also discussion later in the day about the use of GitHub as an issue tracker and how to have those reflected to the public list, and to the correct CWGs/subcommittees.

Discussed release tagging to tag document versions, as well as tags for issues in the issue tracker, since right now the Forum keeps everything in a single repository for all CWGs.

### Creation of Additional Groups – Secure Mail

_Presenters:_ Tim Hollebeek (Digicert)
_Note Taker:_ Clint Wilson (Apple)

Voting is on its way. Tim:

- Beneficial to have an S/MIME CWG to address long-standing issues.
- Voting is ongoing (Forum-14); be sure to update your designated voting members.
- The first two priorities of the CWG will be Certificate Profiles (and validation rules for the fields present in the profiles) and most especially the validation of emails and domains in S/MIME certificates.
- It may be useful to participants to refresh themselves on the discussion that occurred on the Mozilla Dev Security Policy list. It’s been quiet for a bit, but still relevant.
- If the vote passes, looking forward to getting the WG started.

Dean:

- Looks like there are 9 CA votes and 2 Browser votes so far.

### Addressing previously discussed Bylaws issues

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Ben Wilson (Mozilla)

Most of these issues were tackled during a recent Bylaws update.

Issue 1 – Who must sign the IPR Agreement? (Partially fixed by requiring the appointment of a voting representative.) However, there is a scenario where two entities exist. We need to draft language to address this situation in a future bylaws change.
Ryan: The recent bylaws change (voting representative) doesn’t address this. One approach is that it is a legal issue to be resolved through legal due diligence to get correct signatures. (It’s between members and not the Forum at large)One thing we could do in the bylaws is state that all members participating must sign – CA Foo and CA Bar – one CA management and the other CA owner, then they both must sign.
Dimitris: When do we want to fix this? Probably keep this for the next update.

Issue 2: Do we have to read the antitrust language multiple times during a single call/meeting? This is a long-standing question. Dean: In other groups, they don’t restate the language, but they remind members in subsequent instances.
Dimitris: We could do this in the next update of the Bylaws.
Tim H.: It says that the Antitrust Statement must be read at the start of all Forum meetings. But it appears to not apply to teleconferences. So we should fix that.
Dimitris: We ought to collect this issue on Github. So I will take the list of issues and add it to Github.
Ryan: Two issues – 1-meetings are not teleconferences and 2-are chartered working group meetings also Forum meetings? Have these been intentional or unintentional?
Tim: The bylaws are also ambiguous as to where minutes of WGs should be sent.
Dimitris: I’ll discuss this some more offline with Dean and Wayne.

Issue 3: We had a topic clarifying what to do if minutes are not circulated within a certain timeframe. Is there any obection to dropping this?
Ryan: We shouldn’t drop it. If the draft minutes are not circulated within 3 weeks of having the meeting, then they shall be published.
Jos: We can resolve this with language.
Dimitris: Seven calendar days?
Jos/Ryan: Yes
Ryan: If someone edits the minutes, then we would restart the calendar.
Dimitris: Should we use the same 7-day calendar for F2F, etc. – one category for everything?
Ryan: Yes. And minute takers should be aware of this 7.
Jos: You shouldn’t send out the minutes and ask for immediate approval.
Dimitris: So, we’ll ask the minute takers to post minutes within 7 days, and then ask for approval after 7 days.
Ryan in Chat: “Final minutes shall be circulated 7 calendar days prior to a vote for approval”

Issue 4: Partial approval of minutes from F2F meetings.
Dimitris: Has changed his mind about this. He now favors accurate minutes over getting the minutes out faster. Any comments/objections? (None) So, let’s put this issue to rest.
Ryan: Some other SDOs will upload draft minutes to GitHub and the approval consists of a pull request. There are pros and cons (public transparency issues).
Dimitris: We could eventually move that way, with a private repo.
Jos: Part of the problem is that if we put them out for 14 days, and someone edits them, then the clock would restart and we’d have to monitor that.

Issue 5: Issue from Tim is that we need to align the WG charters.
Tim: This came up during the drafting of the SMIME charter, making it harder to remember what the rules are for each group. Also, the charter template in the bylaws, which has become stale. However, this would be a very large project because of all of the variations, e.g., elections of officers, etc.
Dimitris: We adopted good language in the SMIME charter that we could migrate to other WGs.
Tim: Other issues arose in working on the SMIME charter, but if the issue was a problem with all other charters, then we postponed working on it until we had a chance to fix it in all charters.
Jos: In the past we had a governance group, and while it might not be the same, but something new, a subcommittee, might be worth considering in order to track issues like these and put them on a track for resolution.
Dimitris: In practice, people involved in charters/bylaws are chairs/vice chairs, so the people are there, but we could create a group like that.
Tim: The biweekly Forum calls have ended early. We can discuss those issues in real time during those meetings, and then revisit this if it isn’t working.

We have a [doc listing open Bylaws issues][1].

### Preparation for CA/B Forum and WG Elections

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Dean Coclin (Digicert)

A wiki page was created with [rules on elections][2]. This page summarizes the rules. There are 6 positions to elect (see the webpage for details). The new officers terms start December 1st. Dimitris asked members to review the page and consider running for offices. Vice chairs get automatic nominations for Chairs however Wayne has declined to run for Chair.

Dean brought up the issue with the Code Signing Charter which is silent about officers needing to vacate their slots for 2 years (as required by the CA/B Forum bylaws). Ryan Sleevi stated that the absence of any rules in the working group doesn’t mean that the forum rules apply. Dean wasn’t sure if it was intentionally left out because of the smaller size of the group or it was just forgotten.

Bruce asked if the terms of each working group should be aligned (i.e.so that each group has a 2 year election cycle). Dean stated that code signing decided to expire the terms the same as the Forum, so they would be lined up. Dimitris agreed that they should be aligned. Ryan said this stated in section 5.3.1.3 of the bylaws. There was some discussion as to whether this is a MAY or a SHOULD requirement. Jos thought this applied to the creation of the initial chair and then the working group could decide if they want to replace the initial chair.

Wayne said there is nothing in the charter about using the Forum’s election policies. There is nothing forbidding a chair/vice chair from holding consecutive terms. Ryan agreed.

Dimitris thought that the point of governance reform was to allow working groups but under the same structure as the Forum and that this seems against that directive. Dean said that flexibility was always part of the plan of governance reform. Tim said the Server Cert Working Group was intended to be similar to the Forum but for the other groups, flexibility was intended.

Dimitris asked if we needed a ballot for a bylaw change. Ryan highlighted 5.3.1.2 in the bylaws and said that flexibility was intended but we also intended consistency with the IP policy and minuting. Wayne said the problem is in the charters, not the bylaws and that we should update those where necessary.

Jos suggested a ballot for the SCWG that says “for the purposes of elections, the charter will follow the appropriate section in the bylaws”. Or you can establish a default, unless the charter says otherwise.

Dimitris asked what was the rationale for having the term limits. Dean said that we had an original forum chair for 8 years and at the time of governance reform, we decided to have elections and term limits, to give everyone an opportunity to run for office.

### Any Other Business

#### Associate Membership status of MSC Trustgate (Expired 2020-05-31)

_Presenter:_ Dimitris Zacharopoulos (HARICA)
_Minute Taker:_ Jos Purvis (Cisco)

MSC Trustgate is an associate member accepted on 31 May 2019, for a period of 12 months. DZ sent them a reminder on 7 May, copying Wayne and Dean to this email, asking for a status update from them. No response was received from them. Another email was sent 9 June, with no response as yet. DZ is asking the Forum to decide whether to extend this membership for another term, or for another few months, or to remove them and ask them to re-apply.
Dean: I have another contact to reach out to there that hasn’t been pinged before. If they haven’t responded in 7 days, we could take whatever action the Forum decides.
DZ: I emailed three contacts at this email (names and emails omitted here), but you’re welcome to contact anyone else as needed. Applying for membership is low-weight. What do people think?
Robin Alden: Suggest using Dean’s approach: contact them, give them 7 days, then let them go. The process of associate membership is easy enough.
Dean: What was the date on that email?
DZ: 7 May, with another 9 June.
Wayne: Can we decide here that they’re terminated if we don’t hear from them in 7 calendar days?
Robin: Sounds fair enough.
DZ: Approved, then; we’ll add that to the minutes.

## Adjourned

## Server Certificate WG Plenary

**Attendees:** Aleksandra Kapinos (Asseco Data Systems SA (Certum)), Andrew Whalley (Google), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Mariusz Kondratowicz (Opera Software AS), Michael Guenther (SwissSign), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Tadahiko Ito (SECOM Trust Systems), Thanos Vrachnos (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Andrea Holland (SecureTrust), Andreas Hensschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arnold Essing (T-Systems), Stephen Davidson (Digicert), Dre Armeda (GoDaddy), Keshava N (eMudhra), Luis Cervantes (GoDaddy), Nikolaos Soumelidis (ACAB-c/QMSCert), Somer Shively (Cisco Systems), Wang Chunlan (GDCA), Hongquan Yin (Microsoft), Karl Blicharz (Cisco Systems)  

### Approval of SCWG Minutes from last teleconference

The minutes were approved.

### Apple Root Program Update

_Presenter:_ Clint Wilson (Apple)
_Note Taker:_ Andreas Henschel (D-Trust)
_Presentation:_ [Apple Root Program Update][3]

## Notes other than presentation

- Reduced Certificate Lifetimes: Effective date Sept. 1st, 2020, enforcement will be later in 2020
-
- New member of Apple Root Programm: Rebecca Kelley
- Reduction of validation data reuse related to reduced certificate lifetime as ongoing discussion

Dean Coclin: What is the difference between effective and enforcement date?
Clint Wilson: The technical enforcment will be introduced later this year and not on Sept. 1st.
Douglas Beattie: Only certificates from a publicly trusted root CA or even from private root CAs affected?
Clint Wilson: Only certificates from a publicly trusted root CA will be affected.

### Cisco Root Program Update

_Presenter:_ Jos Purvis (Cisco)
_Note Taker:_ Vijay Kumar (eMudhra)

Cisco Root Program Update

- Have completed the transition for our Intersect (“Original Recipe”) and Union (“Extra Crispy”) bundles over to using CCADB as the source of truth for root CA certificates and inclusion data
- Building up our presence in CCADB preparatory to a transition to CCADB membership management
- Started distribution of Cisco Trusted Root Stores with our internal SSL libraries for greater consistency of trust management across products and services

Doug: Are there different bundles for Code Signing, TLS, etc?
Jos: At the moment there is only one bundle set for TLS: Cisco products are not doing Code Signing verification against these bundles, as Code Signing verification either relies on Cisco’s own certs or standard Java Bundle (for example). So if you provided me a code-signing root CA, we wouldn’t have anything we could do with it right now.
Ryan: Could you clarify which Java bundle you mean (Sun Oracle vs OpenJDK)
Jos: I’d hate to go on record as specifying which bundle is in use, as it can vary from item to item.
Ryan: So the answer is to get into both bundles and you’re covered.
Jos: Yup, you got it.

### Google Root Program Update

_Presenter:_ Ryan Sleevi (Google)
_Note Taker:_ Mads Henriksveen (Buypass)

Presentation: [Chrome Root Program Update][4]

## Notes other than presentation

_Links from Presentation:_

-
-

Dean: Devon, when you mentioned that a communication was sent out, where was it sent out?
Devon: To the Primary POC and I believe the secondary POC entered within CCADB. It would have appeared as a CCADB communication.

Dean: Regarding lifetimes, it’s stated a CA communication will be sent out. Is this information considered public?
Ryan: Yes, we’re presenting it here and will be following up with CAs with a CA communication, for those who are not here.

Dean: And regarding reuse of validation data, is that something that would happen in the validation WG?
Ryan: This has been discussed in the past during concrete ballot discussions, about the importance of reducing lifetimes. We wanted to make sure CAs were aware that this was an important issue for us, so that they were not caught unaware as we start to make proposals and solicit feedback from other browsers around this. You can see from the browser alignment ballot our approach of trying to propose concrete language to the BRs, via pull requests, as a way of making sure our analysis is correct, based on feedback from other browsers and the concerns CAs may have.

### Microsoft Root Program Update

_Presenter:_ Karina Sirota (Microsoft)
_Note Taker:_ Daniela Hood (GoDaddy)
_Presentation:_ [Microsoft Root Program Update][5]

**Notes other than presentation:**
Mads: What’s the best way to follow updates to the Microsoft Root Program requirements? Are we expected to monitor that?
Karina: We definitely want to communicate large changes to CAs
Mike: We’re an endorser on the browser alignment ballot. Don’t want to surprise folks with requirements, and if things might impact folks, we’ll look at effective dates. If CAs have concerns we want to hear
Mads: I sent a note to msroot@ with concerns but didn’t hear back
Mike: Karina and I do watch this, and want to make sure you get a response. If you’re not hearing, you can add us to the mail, but please make sure to keep msroot@ CC’d.

### Mozilla Root Program Update

_Presenter:_ Ben Wilson (Mozilla)
_Note Taker:_ Neil Dunbar (Trustcor)
_Presentation:_ [Mozilla Root Program Update][6]

**Notes other than presentation:** No questions were asked from the floor.

### CCADB Update

_Presenter:_ Kathleen Wilson (Mozilla)
_Note Taker:_ Devon O’Brien (Google)
_Presentation:_ [CCADB Update][7]
_Presentation2:_ [CCADB Policy Document Object Samples][8]

Kathleen Wilson (Mozilla): Thanks for CAs improving their audit statements to assist with ALV success. Some CAs are experiencing difficulties getting hashes in the right format (e.g. whitespaces, newlines, etc.) Making the documents text-searchable will help detecting the SHA-256 hashes.

Kathleen Wilson (Mozilla): Auditor qualifications need to be periodically re-verified. We created a wiki page for auditor information and qualifications, to include the most recent auditor qualification date.

Kathleen Wilson (Mozilla): Significant upcoming change to CCADB to support multiple CP/CPS documents. (showed screenshots of the new policy section on the Root Cert page, Policy Document page). Covered the workflow to add, update, edit, comment on, and delete/undelete policy documents. Will do a one-time migration of existing fields to new policy document objects; an announcement will be sent in advance of these changes. CA volunteers able and willing to try out these features before launch.

Ryan Sleevi (Google): Every CA can view the auditor details, correct? E.g. a Root CA managing a subordinate CA. Are CAs who have these third-party relationships able to check the details for the affiliated organizations?

Kathleen Wilson (Mozilla): I believe we need to add this to the root and intermediate CA records.

Ryan Sleevi (Google): Can the CA look at the auditors in advance, or do they need to wait for the results from ALV?

Kathleen Wilson (Mozilla): There is a page that’s accessible that makes this information available. I will update the documentation with this additional information.

Kathleen Wilson (Mozilla): Mozilla’s requirement is that the CA updates their policy documents at least once per year. As far as updating CCADB, we only require this as a part of the audit case review. I receive requests from CAs to update this separately. We want to add a new case type to allow CAs to update their CP/CPS/Contact info.

Ryan Sleevi (Google) / Dimitris Zacharopoulos (HARICA): Whenever there is a material change to the CA’s operations, we expect them to provide these updates.

Kathleen Wilson (Mozilla): A material change is defined in Section 8 of Mozilla Policy, is that what you were referring to, Ryan?

Ryan Sleevi (Google): That’s what I was referring to. If CA’s aren’t sure whether a change is material or not, they should err on the side of providing an update to Mozilla.

### Report from SCWG Network Security Subcommittee

_Presenter:_ Neil Dunbar (Trustcor)
_Minute Taker:_ Mariusz Kondratowicz (Opera)
_Presentation:_ [Network Subcommittee Update][9]

## Notes other than presentation

No questions for Neil.

# Thursday, 11 June 2020

## Server Certificate Working Group

**Attendees:** Aaron Poulsen (Digicert), Aleksandra Kapinos (Asseco Data Systems SA (Certum)), Andrew Whalley (Google), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Andrea Holland (SecureTrust), Andreas Hensschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arnold Essing (T-Systems), Keshava N (eMuhdra), Luis Cervantes (GoDaddy), Nikolaos Soumelidis (ACAB-c/QMSCert), Somer Shively (Cisco Systems), Wang Chunlan (GDCA), Karl Bluchar (Cisco Systems), Hongquan Yin (Microsoft), Friedrich Tonsing (T-Systems), An Yin (iTrusChina), Shelley Brewer (Digicert)  

### Report from SCWG Validation Subcommittee

_Presenter:_ Tim Hollebeek (Digicert)
_Minute Taker:_ Doug Beattie (Globalsign)
_Presentation:_ [Validation Subcommittee Update][10]
_Presentation2:_ [Part 2 Validation Subcommittee Update][11]

Wayne gave a quick overview of the Validation Subcommittee presented by Tim on Tuesday

- Discussions take place both on the Validation Subcommittee mail list and in GitHub, which leads to some individuals not getting involved in discussions.
- Can GitHub generate alerts? Yes, but it’s not easy to tag certain changes for certain mail lists, and since GitHub is being used for multiple groups, one email for all alerts does not work.
- The Infrastructure WG is going to investigate how “Tagging” can be used to tag issues in GitHub to applicable groups, so the notifications are all sent to the VSC mail list
- Ryan’s ballot on Disclosure of Registration Agencies / Incorporating Agencies is ready to proceed, pending getting endorsers. This is to disclose the sources used when issuing EV certificates to determine he Jurisdiction of Incorporation and Incorporating Agencies
- Wayne’s ballot on DV Onion domains was adopted. There’s a question about the use of the extension for Onion v3 addresses, but the clarification will likely be pushed to a follow-up ballot to the clarifications ballot.
- The group spent the last couple of meetings reviewing the spreadsheet defining the Root and Subordinate CA certificate profiles to cleanup section 7.1 of the BRs and to address the topic of Default Deny/Default Allow. The group is ready to proceed to TLS certificate profiles. If anyone wants to set the framework and start on that, then they should feel free to proceed.
- Ballot SC25 defined some new validation methods and there are some recommended changes surrounding the proper definition of redirect codes. This will be addressed in an upcoming ballot.
- Dean gave a recap of EV improvements and the status of things since this teh meeting a year ago (see his Slide deck). There was a recommendation that the group take a small step back and outline the problem they are trying to solve. and come back with a problem statement. We also discussed how LEIs might help sove the problem.
- The next set of priorities is:
- Continue work on the Certificate Profiles
- Continue work on Incorporating Agencies and Registration Agencies and how we record the Jurisdiction of Incorporation
- Fix requirements for validation of OUs

### Report from Quantum Cryptography liaisons

_Presenter:_ Tim Hollebeek (Digicert)
_Note Taker:_ Tobias Josefowitz (Opera)

This meeting’s update is a small one, more is to be expected for the next meeting, because many efforts now are starting in various groups.

The ASC continues to do a lot of good work with their quantum stage cryptography, they have a draft for post quantum key exchange, which is the part where you actually try to agree what they key is, which is different to agreeing what each other’s identity is. There is a bunch of work being done on quantum key exchange lead by Amazon, which for browsers at least should be the most important, TLS being an online protocol the authentication part can be fixed later after quantum computers show up, but while probably a bit out of scope for the CA/B Forum, the Key Exchange can be compromised in the future, so if you care for data sent over TLS to be protected for 10 years or more that’s an important part of the problem.

The other work that is going on is X9 High Level Guidance for hybrid cryptography in general including post-quantum signatures. The code signing usecase is going to be impacted first; there is a new work item that is going to be voted on there to start work for the US financial system to get them ready to upgrade their systems. X9 now has a PKI group, the same PKI group that originally wrote the requirements that eventually became the Baseline Requirements, that group X9 F5 has been restarted and Wells Fargo has proposed a work item on post-quantum TLS there and then there are various drafts being discussed in IETF that will be discussed in a month at the IETF virtual meeting in Madrid. The biggest news this time is there are a lot of standards groups that are starting to work on post quantum crypto projects related to crypto aility and getting ready for the transition; they seem to be a little more ahead of the problem than we tend to be.

Another thing that Tadahiko wanted to mention is that getting messages through HSMs is a bottle neck; in classical cryptography you typically only sign a hash of a message, in post-quantum cryptography we are looking at actually signing the whole messages, HSM hardware and software is not currently designed for that.

### ETSI Update

_Presenter:_ Arno Fiedler (ETSI ESI)
_Note Taker:_ Nikolaos Soumelidis (ACAB’c / QMSCert)
_Presentation:_ [ETSI-ESI_Standardisation_Update][12]

ETSI’s focus is not only on SSL/TLS, but also signing certificates, seals, validation, etc (as per eIDAS EU Regulation).

Updates in the eIDAS ecosystem:

- eIDAS Regulation is in the process of being updated in the following 6 months.
- A mandate may be given to ETSI to support eIDAS with technical requirements.
- Minor updates, for example component audit to audit a delegated RA. TSP always retains the overall responsibility.
- A family of standards for Electronic Registered Delivery Services; Spain, Italy broad use.
- New Trust List implemented. It has been tested. Some obstacles, worked out with Adobe.

PTC -related updates:

- For PTC, some updates on Certificates Profiles have been published as DRAFTs.
- Discussions for organization name > 64 chars, but TSP must put it in the CP/CPS.
- Non TLS QWACs (ntQWACs) dicsussed with Google, Mozilla. There are open issues (not only technical, but legal as well).
- TS 119 403-2 published on 2019-03 for auditing PTC. Trying to combine ideas of the CABF to the ETSI audits.

Discussion:
R. Sleevi (Google): It seems there is a systemic failure in the collaboration between CABF and ETSI, with missing or delayed response from ETSI as per CABF’s feedback. Examples given: subject name length and incompatibilities with RFC5280, CABF expectations for subcontracting not collected, eID subject attributes, especially cryptographic linking in the case of ntQWACs. Why accept ETSI audits in the light of the above? How to make this discussion more productive so that feedback provided by CABF does not go unaddressed and areas of potential incompatibilities are highlighted before they become an issue for CAs which participate in both worlds (PTC, eIDAS)? Atm, ETSI introduces things which create conflicts and then the CABF is asked to address these, without prior engagement.
A. Fidler (ETSI): There is indeed room for improvement, hard work is being made to combine the two “worlds”, several quite difficult issues were brought up to be addressed, like PSD2, length of fields. For example, several emails were exchanged with ETSI properly providing answers to difficult questions.
R. Sleevi (Google): Disagrees that the CABF is provided with the opportunity to consult or discuss changes and provide feedback. We continue to see conflicts and increased divergence. Shifting of the cost of this divergence on the Browsers. 119 403-2 is appreciated, but that does not make up for all issues we see. For example, CABF was not consulted in the case of change in lengths. Maybe we should separate.
A. Fiedler (ETSI): Are there any actual security issues? Communication can be optimized, some things are internally discussed, we are open to discuss, many emails exchanged already. Ok, sometimes the results are not as expected from your side, but I don’t think there were security issues, maybe interoperability problems only. We remain very motivated to keep the cooperation ongoing.
R. Sleevi (Google): Disagrees that issues were not security related. For example, there is a long discussion within the browser community on how to handle subcontracting, i.e. the delegation of responsibility, keeping transparency and supervision. Also the cryptographic link is a security issue. We would like to see more things, better response from ETSI on our feedback. Also ETSI consulting with the browsers before introducing new things which might be incompatible with the CABF.
A. Fiedler (ETSI): Disagrees and is concerned with this hard aspect. Let’s look for this room for improvement and try to optimize it. Other browsers feel the same, that ETSI is not reactive?
M. Reilly (Microsoft): I feel I hear some of these for the first time in this forum, so we need time to examine. We would like to see improvement in this area. C. Wilson (Apple): I agree, some things are new to me, we need time to examine these changes, but some of them seem quite concerning.
A. Fiedler (ETSI): Most of these issues relate not to PTC, but to qualified electronic signatures (eIDAS) or so.
R. Sleevi (Google): They still apply with respect to the Roots the we are trusting in our programs. We consume a lot of certificates and the question of auditing is the core of these.
M. Reilly (Microsoft): If these are publicly trusted certificates and not a private PKI..
A. Fiedler (ETSI): A lot of slides are about qualified certificates which concern the TSL and are not publicly trusted. My presentation was about the full range of our activities, not focused on PTC.
M. Reilly (Microsoft): There are other opportunities in the CABF other than the F2F for this to be discussed.
A. Fiedler (ETSI): Proposes to arrange a follow-up meeting in the next 2 weeks.
D. Zacharopoulos (HARICA): I have been participating in the last few ETSI meetings, since HARICA became full member of ETSI. Change in the 64-length of the O field were specifically designed to have no effect to PTCs. PTC related profiles remain exactly the same as before, most of these restrictions were lifted to support persons’ multiple names or longer names in qualified certificates. I understand the concern about the collaboration, but the technical issues are not so severe for TLS PTC.
R. Sleevi (Google): I appreciate there is an insider’s perspective. I want to highlight that this fits with an overall trust framework. We are seeing the challenges when a CA has to comply with multiple trust frameworks. There are times when ETSI said ignore the CA/B Forum trust framework, for example with EV certificates until the CA/B Forum took initiative. In practice we see that the CAs end up complying only with ETSI and eIDAS, for example saying there are no length requirements, and that is incompatible with the expectations of the browsers who trust the hierarchy under which certificates are issued. You can come up with technical solutions for that, you can only trust the publicly trust roots and require that all types of certificates under these comply with the length requirements, but that’s not what we see in practice from ETSI. We need to collaborate together, so that when such issues come up, they are brought to the CA/B Forum for finding solutions. The current approach is not working and this questions the value of ETSI audits versus Webtrust audits for the particular CA. At least that is unambiguous for CAs.
M. Reilly (Microsoft): The trust framework part is key point to where, running a global Root program, I am not looking to audit against multiple trust frameworks. We are looking for a single trust framework, because it gets pretty complex and confusing for the CAs, trying to participate in the Microsoft Root program and balance with two different requirements. This makes things much harder for CAs and for the ecosystem.
D. Zacharopoulos (HARICA): Under the root there are cases that are supported by the Baseline Requirements where a CA can be technically constrained, for example via an EKU which does not include the serverAuth. I believe these SubCAs and the end-entity certificates issued by them are out of scope of the Baseline Requirements.
R. Sleevi (Google): We would not include that Root. The current approach leads to this, rather than including that root, we would only include as a root the thing that is trusted for TLS and make sure that the audit requirement consistently apply the expectation. Audit requirements which are designed for multiple frameworks lead to confusion in CAs, confusion among auditors and expectation failure. When we see permissive audits, this raises a concern. In a perfect world we could separate these out, but this is not what we are seeing. Moreover, we are not even seeing these brought to the CA/B Forum to resolve.
D. Zacharopoulos (HARICA): You are saying something new Ryan, at least to me. At least with the Mozilla and Microsoft Root programs, we have roots that are trusted both for email and TLS, and for Microsoft also for code signing. And we handle that within the same hierarchy. A code signing issuing CA would be incompatible with the BRs. So, I don’t understand why we need to have completely separate hierarchies. This is something we have discussed before.
R. Sleevi (Google): This is beyond the BRs, this is RFC5280. This is an area that has been raised. It is a technical detail.
B. Wilson (Mozilla): From Mozilla’s perspective, we want to make sure that we make trust decisions based on what’s the best for our users. We want to coordinate and cooperate, we need to have that dialogue and we will continue to do that.
A. Fiedler (ETSI): I am really concerned, I thought the dialogue was much better. For example, with the RFC 5280 change, we discussed it, IETF is working on that, but there will be no change in 5280 for at least the next three years. That’s a problem of IETF, it was not about CA/B Forum. I understand there are different points of view and there are difficult topics. I will discuss all concerns with colleagues to bring back a qualified answer.

### ACAB’c Update

_Cancelled_

### WebTrust Update

_Presenters:_ Jeff Ward (BDO)
_Minute Taker:_ Corey Bonnell (SecureTrust)
_Presentation:_ [WebTrust Update][13]

WETSI

- primary discussion on COVID: how does COVID affect audits?
- will continue cooperation

Detailed Controls Reporting

- Will be available in CCADB

New Projects

- Framework for third party auditors is based on document created 16 years ago

Current Standing of Licensing Practitioners:

- Motivation was due to discrepancy with Dutch list of Auditing Practitioners

(Discussion)

Ryan: We have a good working relationship with WebTrust Task Force. In the spirit of collaboration, the browser alignment ballot was updated to audit report section to be in line with CCADB requirements. Do you anticipate October criteria update to include this requirement?

Jeff: That is a high priority item; Task Force will address.
Don: Agree that it is a significant issue.

### Any Other Business

#### Announcement from DigiCert

_Presenter:_ Tim Hollebeek, DigiCert
There has been considerable discussion of compromised keys, and preventing issuance of certs with compromised keys by CAs. DigiCert is in the last stages of finishing up a database of compromised keys, and would be happy to let other CAs submit their keys to the DigiCert database and look up the status of any key in the database prior to issuance. Any CAs who are interesting in access to that database should contact Tim for details to work out access.

**Q&A**
Ryan Sleevi (Google): Google has some reservations in terms of that CA collaboration on revoked keys. If you are considering using another CA’s source of compromised keys during issuance, you need to be careful to ensure there is sufficient evidence of compromise. Google is concerned that without sufficient evidence, keys could be marked compromised when they are not, thus denying service to sites. There is lots of room for discussion around this, but Google wants to be sure CAs are mitigating any potential harm.
Mike Reilly (Microsoft): You said this has been discussed on MDSP.
Tim: Yes, it started off there, with a discussion of the compromised-key requirements in the BRs and whether there was an obligation to proactively monitor that.
Mike: I’ll look for details there. Thanks.
Robin Alden (Sectigo): This sounds excellent and Sectigo would like to interact on it. We recognize Ryan’s concern about proof of compromise; given the requirements on CAs to operate with any service provided by a third party (which can be onerous), there is a degree of sense in having CAs cooperate on this since they’re all under the same industry requirements.

#### Ballot Status

_Presenter:_ Dimitris Zacharopoulos (HARICA)
_Minute Taker:_ Trevoli Ponds-White (Amazon Trust Services)

Ryan S – These two ballots have different effective dates Sept 1st for cert lifetimes and Sept 30 for audit requirements, and disclosure of data sources is Oct 1st. Which date works better? The ballots now have co-endorsers so the discussion period will begin soon on both. They will be started together. More CAs should give feedback. Only two CAs gave feedback and it was for different dates.
Aligning the BRs with existing Browser Requirements (Ryan)
Disclosure of data sources (Ryan)

Spring 2020 cleanup and clarifications (Ryan) – This ballot still needs co-endorsers.
This ballot is not yet ready to go. Do we want to do the ballot as is or try to fold in the new items? The two items are:

1. How a CA can include cert policy oids in a certificate. The browser alignment ballot will require the CA/B forum oids so we should solve this sooner than the browser alignment goes into effect. The issue is that it’s incompatible to include certain oids. This impacts cross certificates because there is conflicting language about how policy oids should be included.
   There isn’t an issue when it’s certificates you operate because you can include the anyPolicy OID. It only comes up if you have a cross because need to introduce specific ones.
   Ben W – On the CA Policy OIDs – I think we should allow the anyPolicy OID for cross certificates.
   Doug it could also impact CAs that have preferences about how they prefer to include policies in their certs. For example Let’s Encrypt’s inclusion of DV policy.
   The fix would be to make it clear that this only applies to subscriber certificates. There is proposed language that has been sent out. If people give feedback now we could fold it in.
   Dimitris and Ben proposed that since there is existing language maybe it could go in the browser alignment.
   Ryan S wants more feedback on it before it gets put in a ballot and doesn’t want to hold the alignment ballot up.
   Shelley B can you tell us a little more about why some of these changes are being included in the cleanup ballot?
   Ryan S we traditionally file issues when trying to clarify what is/isn’t allowed. Yes it could be done in separate or other ballots. The idea of this ballot is to improve general understanding of the expectations. For example there are implied requirements that already exists, but sometimes those are a few levels deep these are the sorts of things that get added into the requirements via ballots.
   Shelley B if we keep adding stuff do people have enough time to review and how to do make sure the discussion isn’t prolonged unnecessarily.
   Ryan S some people do wait until the last minute but for this type of ballot there isn’t a danger if some of the issues create controversy.

1. Secure Trust brought up that there needs to be further clarification on weak keys, but it seems like we might not get this resolve sooner rather than later.

Other ballots in progress that we didn’t discuss:

- Reserved Policy OIDs (Ryan)
- Updating BR 6.1.1.3 (Chris)
- SC28: Logging and Log Retention (Neil)

Spring 2020 cleanup and clarifications (Ryan)

- Reserved Policy OIDs (Ryan)
- Updating BR 6.1.1.3 (Chris)

SC28: Logging and Log Retention (Neil)

### Arrangements for Next Meeting

Next F2F meeting is taking place October 20-22 in Tokyo, Japan, hosted by GlobalSign.

[1]: https://docs.google.com/document/d/1EtrIy3F5cPge0_M-C8J6fe72KcVI8H5Q_2S6S31ynU0/
[2]: https://wiki.cabforum.org/officer_elections
[3]: /uploads/9-Apple-Root-store-Update-CABF-50.pdf
[4]: /uploads/cabf_f2f_50_chrome_browser_update.pdf
[5]: /uploads/12-Microsoft-Root-Program-Update-CABF-50.pdf
[6]: /uploads/13-Mozilla-Browser-News-CABF-50.pdf
[7]: /uploads/14-CCADB-News-CABF-50.pdf
[8]: /uploads/14-CCADB-News-Policy-Document-Object-samples-CABF-50.pdf
[9]: /uploads/15-NetSec-Update-CABF-50.pdf
[10]: /uploads/16-Validation-SC-Part-1-CABF-50.pdf
[11]: /uploads/16-Validation-SC-EV-Improvements-Part-2-CABF-50.pdf
[12]: /uploads/18-ETSI-ESI_Standardisation_Update-CABF-50.pdf
[13]: /uploads/20-Webtrust-update-CABF-50.pdf