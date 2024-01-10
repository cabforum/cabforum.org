---
aliases:
- /2020/10/15/2020-10-15-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-10-15 13:37:07
tags:
- Minutes
- Server Certificates
title: 2020-10-15 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Abdul Hakeem Putra (MSC Trustgate), Adrian Mueller (SwissSign), Ahmad Syafiq MD Zaini (MSC Trustgate), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Han Yong, Park (NAVER Business Platform), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Karina Sirota (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Neil Dunbar (TrustCor Systems), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

Anti-trust statement was read.

### 3. Review Agenda, assign minute taker for next call

Dimitris reviewed the agenda; no changes were identified. Tobi (Opera) volunteered to take minutes for the next call.

### 4. Approval of minutes from last teleconference

Accepted without objections.

### 5. Validation Subcommittee Update

Tim reported. The subcommittee met last week and continues to discuss about difficulties in various subjectDN fields

The subcommittee will update the WG on validation subcommittee work and results for the last 4 months, especially regarding certificate profiles.

Wayne added that they had an interesting discussion on the OU field. There are detailed minutes published. They talked about the purpose of this field. A common use case for which the OU field adds significant value, is to identify which part of the org is operating the certificate. It’s difficult to get validation rules. Probably want to ban the OU field going forward. Rich was in the process of updating his ballot and propose the removal of the OU field.

Rich: Chris Bailey has some ideas for section 3 verification requirements regarding the OU field. Entrust will send this information to the validation subcommittee. He said he would give them a chance before submitting a ballot to remove OU entirely.

Paul from Entrust: They will propose an alternative solution soon to the list.

Ryan proposed to proceed with the existing ballot and see where the discussion goes. From a process standpoint, nothing prevents using that ballot as a discussion point.

Rich said it’s a different approach and preferred to read Entrust’s proposal before rescinding and proposing a new ballot. Drafting a ballot to remove OU seems like a simple ballot.

Ryan: There is no such thing as a simple ballot in the CA/B Forum, considering the cases of cross-certificates and other possible side-effects. We can propose the ballot before and not closing discussion on validation of this field. We should also discuss about the transition. He is willing to contribute in drafting language around those issues.

Paul prefers to first send the validation proposal they have in mind, open discussion from there and then see about the ballots. We can later see how this information can be validated in CA Certificates and so on, if needed.

Ryan thinks we should start this discussion sooner than later and can work in parallel while waiting for Entrust’s proposal.

Rich doesn’t disagree and suggested that Ryan or anyone else can draft a ballot, propose language and start a discussion. He repeated that he believes it will be hard to come up with meaningful language for validation of the OU field, as did others at the validation subcommittee call last week.

Paul proposes not to have two ballots at the same time because it would be difficult to participate in two discussions that describe two opposite directions. He asked for members to wait and see Entrust’s proposal and then decide how to proceed.

Ryan says we can have two ballots at the same time. In both cases there are important issues to go through and we shouldn’t wait to start that discussion. We should discuss both validation of the field and removal. He said it is complimentary and not contradictory.

Dimitris proposes to have a discussion next week from Entrust so we don’t have two ballots conflicting on the same section of the Guidelines.

Ryan said it doesn’t have to be official ballots yet, but draft concrete language, like “pre-ballots”. We have two principles and two approaches to discuss, work on the language and see which one proceeds to a ballot. It’s possible that we may end up with two ballots going forward but we should try to discuss before.

Tim added that if Entrust wants to propose something it should be soon before the F2F so people can review it and make intelligent comments next week.

Subcommittee minutes:

### 6. NetSec Subcommittee Update

Neil presented. The subcommittee is mainly preparing a presentation for the F2F. It will address issues raised for the overall direction of NetSec. There was good feedback from Apple network engineers.

There will be a list of problem statements and approaches to next ballots.

Pain points group concluded most of the immediate pain points that were highlighted into ballot form. They will present more at the F2F meeting.

Subcommittee minutes:

### 7. Ballot Status

#### Ballots in Discussion Period

_None._

#### Ballots in Voting Period

_None._

#### Ballots in IPR Review Period

\_None.
\_

#### Draft Ballots under Consideration

\_Minimum expectations regarding weak keys \_(Chris)

Chris reported that their engineers decided to hold off for SC35 to become effective. A proposal has been formally submitted. No major changes to the existing proposal.

Dimitris asked if they planned to have a discussion at the F2F and Chris responded that the goal was to establish minimum expectations. It would be useful to have some discussion to iron out those minimum expectations.

\_Offline CA Security Requirements \_(Ben)
No updates

\_Remove “zone” from NCSSRs and add provisions to BR 5.1 \_(Ben)
No updates

\_SC34 Account Management \_(Tobi)
No updates

### 8. Approval of Agenda for F2F 51

The Validation Subcommittee asked for additional 15 minutes on Tuesday to discuss about the OU field. With this modification, the agenda was approved without objections.

### 9. Any Other Business

No other business was discussed.

### 10. Next call

The next call is scheduled for October 29, 2020 at 11:00am Eastern Time.

### Adjourned