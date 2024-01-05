---
aliases:
- /2020-05-15-2020-04-30-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-05-15 19:48:00
tags:
- Minutes
- Server Certificates
title: 2020-04-30 Minutes of the Server Certificate Working Group
type: post
---

Minute taker: Tobias S. Josefowitz

## Attendees (in alphabetical order) 

Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michael Guenther (SwissSign), Michelle Coon (OATI), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Taconis Lewis (FPKI).

## Minutes 

### 1. Roll Call 

The Chair took attendance.

### 2. Read Antitrust Statement 

The Antitrust Statement was read.

### 3. Review Agenda 

Accepted without changes.

### 4. Approval of minutes from previous teleconference 

Accepted without objections.

### 5. Validation Subcommittee Update 

Tim reports that the Subcommittee is continuing to tackle the same two topics it has been discussing for a while now.

The first topic was the voluntary or mandatory disclosure of information sources. The subcommittee had a discussion about purpose and roadmap of the effort, it seemed some CAs would be more comfortable if they had a better understanding of the motivation and goal(s). Ryan and Doug are joining up to formulate a paragraph on the purpose and direction of the effort.

The second topic was how to express the certificate profiles in the BRs and what a skeleton would look like for that. Some work will be done for traceability on where the skeleton semantics came from.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

-

### 6. NetSec Subcommittee Update 

Neil reports that the Painpoints subteam has been focusing on the details to a ballot concerning log retention, trying to tighten up the text.

The Threat modelling subteam is continuing to finesse a checklist for online and offline CAs and has identified risks potentially not covered by current NSRs.

The Document Restructuring subteam has been focussing on disentangling the “Secure Zones” terminology into instead specifying “physical and logical security requirements” for isolation within a CA system as well as clarifying which of the NSRs’s requirements apply to offline systems – something not always very clearly defined in the current NSRs.

On its last teleconference, the NetSec Subcommittee had a long discussion about the drafted ballot regarding system account deactivation; the Subcommittee was not quite happy with the text but rather it might be the right thing to focus more on the “removal of access and credentials” rather than working with the vague term of “account deactivation”. At the same time the Subcommittee wants to keep it simple as the goal here is to transition from periodic review to Continuous Monitoring and Alerting.

Question from Dimitris: Logical/physical separation of which parts?

Neil: Where we have secure zones as a sort of isolation terminology in the NSRs today; we are trying to break that apart into what are physical security requirements and what are logical security requirements.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

-

### 7. Ballot Status 

#### Ballots in Discussion Period 

None.

#### Ballots in Voting Period 

\_SC29: System Configuration Management \_(Neil)
Neil asked members to vote.

#### Ballots in Review Period 

\_SC27: Version 3 Onion Certificates \_(Wayne) (review ends 2020-03-26)

#### Draft Ballots under Consideration 

\_Aligning the BRs with existing Browser Requirements _(Ryan)
No updates
\_
Spring 2020 cleanup (Ryan)_
Ryan reports this is based on github issues, and that he has received no feedback and has not heard from endorsers or non-endorsers.

_Disclosures of data sources (Ryan)_
Ryan reports there has been some discussion in the validation subcommittee, but that in his opinion this just needs to be tweaked a little in terms of explanation. There has been no feedback from CAs as to why September would be unreasonable. He is currently looking for endorsers. Also looking at mandating this through the Root Program, but at least having a Ballot to show what it would look like if incorporated into the BRs would be useful.

_Updating BR Section 6.1.1.3_
Chris: We are considering incorporating some of the changes Ryan has been suggesting, we’ll need to review internally, we will comment shortly.

### 8. Agenda topics for the upcoming F2F 

Dimitris sent out a Draft Agenda for the Virtual Meeting (June 9th), tried to squeeze everything into three days. First day is subcommittee day, code signing working group is not scheduled as they will have a meeting anyway one week before and one week after. The same question applies to Subcommittee Chairs for Form Infrastructure, NetSec and Validation Subcommittee. He recommend having those meetings because hopefully more people are going to join than the regular meetings, but it is up to the Chairs. The Subcommittee chairs should contact Dimitris if they want to change the slots.

For days two and three we have regular sessions, Browser updates \[Browsers: please contact Dimitris if there are no updates\].

We have Browser updates, CCADB, Webtrust, ETSI, ACABc, reports from every Subcommittee and CSCWG and also discussion about S/MIME WG

If anybody wants to propose a topic feel free to send to the public list or to Dimitris directly.

### 9. Any Other Business 

No other business.

### 10. Next call 

May 14, 2020 at 11:00 am Eastern Time.

### Adjourned