---
aliases:
- /2021-01-21-2020-01-07-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-01-21 17:41:23
title: 2020-01-07 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Ben Wilson (Digicert), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Christy Berghoff (Federal PKI), Clint Wilson (Apple), Corey Bonnell (DigiCert), Christy Berghoff (Federal PKI), Corey Rasmussen (OATI), Curt Spann (Apple), Daniela Hood (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Mads Henriksveen (Buypass AS), Mike Reilly (Microsoft), Nazril Bin Mohd Gahni (PoS Digicert), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Noorul Halimin Mansol (PoS Digicert), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Redha Hamzah (PoS Digicert), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla)

## Minutes 

### 1. Roll Call 

Dean read the roll.

### 2. Read Antitrust Statement 

Jos read the anti-trust statement.

### 3. Review Agenda, assign minute taker for next call 

Ben noted that there is a duplicate entry in the list of ballots — there is only the Ballot SCXX: Security Requirements for Air-Gapped CA Systems.

Wayne will take minutes for the next meeting.

### 4. Approval of minutes from last teleconference 

Approved.

### 5. Validation Subcommittee Update 

Tim noted that they didn’t meet due to the holiday.

### 6. NetSec Subcommittee Update 

Neil: We met two days ago. The Cloud Services Group have done the beginnings of a gap analysis between cloud sec stds and the NSRs, which we reviewed. We’ll take some time to go through this. The rest of meeting was brief: we discussed changes to SC38 and SC39 (to be covered later in this meeting).

### 7. Ballot Status 

#### Ballots in Discussion Period 

##### SC38v2 – Alignment of Record Archival 

Neil: NetSec has updated some of the text in this from the feedback on NetSec and the main SCWG list, to try and nail down issues. BR section 5.5.2 lays down a particular set of retention requirements and there are references to them, which aren’t terribly clear. Neil has taken the text in 5.5.2 and split it up in to RA requirements with explicit text (because RAs can serve for multiple CAs) and then also set requirements for maintaining a database. Rather than having that refer to 5.5.2, it now refers to 5.5.1 and 5.5.3 and has a separate section to specify around suspicious requests (canceled due to suspicious activity) go into separate section under 5.5.1 and with new 4.1.1 section. This update hasn’t come back to SCWG yet because the update wasn’t properly formed, so will need to be redone with Netsec and then pushed back out as an update to this one.

##### SC39v2 – Definition of Critical Vulnerability 

Neil: This ballot is much simpler. We’re trying very hard to keep this as a language change, not a policy change. Ryan suggested to keep threshold at 7.0 CVE (where it is right now), and Neil has now specified that this refers specifically to CVSS 2.0, updating the ballot to the current CVSS version but keeping the threshold the same. After this, we can properly address in a separate ballot the larger question of what to do about Critical/High vulns from CVSS with regards to patching.

#### Ballots in Voting Period 

None

#### Ballots in Review Period 

None

#### Draft Ballots Under Consideration 

##### Ballot SCXX: Security Requirements for Air-Gapped CA Systems (Ben) 

Ben: Comments from Wayne came back on 10 Dec; Ben is working on integrating these and creating a new draft of the ballot soon.

##### Ballot proposal: Debian Weak Keys (Chris) 

Chris: Some great discussion this past week around the ballot, with appreciation to Rob Stradling for tools to review. We’re looking at that and expect an update early next week.

##### SC34 Account Management (Tobi) 

Tobi: Same status here as last time, just needs an update to push to discussion.

##### Remove “zone” from NCSSRs and add provisions to BR 5.1 (Ben)  

Ben: Still in draft and tabled based on comments. Referred back to subcommittee and removed from agenda for now.

### 8. Any Other Business 

Ryan: Right before holidays, I put together a draft to align the BRs/EVGs/NCSSR documents to a common format with cover sheets. This is in Github as PR#235, and there’s been some discussions there. There’s been some reformatting, but there are some things that stand out as odd (e.g. NCSSRs do not use consistent numbering between requirements). EVGs are even more complex in that manner, so there’s a lot of discussion about what to do before taking this to ballot around harmonizing numbering as part of this ballot. There will be discussion on the list about this, but if people have strong feelings about it, it’s worth checking the PR in Github sooner. One proposal from Tim is to switch to all Arabic numerals (1.2.3.4.5, e.g.), but Ryan isn’t sure about doing that because of cross-references. Ryan would like to fix everything at the right layer, though, so that things at each layer of the document follow the same format. This is important because it’s the last step before implementing the full automated build of these documents from Github. Ryan wants to encourage other WGs to think about this thoroughly. Once the build is in place, we’ll have full PDF auto-builds, plus kind-of-hacky redline builds automated which should improve over time, helping people with creating new ballots. As the year progresses, we’ll be looking at more Github integration to make things easier to start ballots, such as templating the emails for submitting new ballots to the list. Should be a draft ballot within the month.

Jos added a note about MD not handling anything-other-than-Roman-numeral-numbered lists, and Ryan noted that the current build fixed that using Pandoc-flavored markdown. The problem in the document is inconsistent numbering at different layers: there’s “4.i” and then “5.a” and so forth.

### 9. Next call: 21 January at 11AM Eastern 

Adjourn; Immediately convene meeting of CA/B Forum call (same call)