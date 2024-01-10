---
aliases:
- /2022/08/18/2022-08-18-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-08-18 21:27:00
tags:
- Minutes
- Server Certificates
title: 2022-08-18 Minutes of the Server Certificate Working Group
type: post
---

## Attendees

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), David Kluge (Google), Dustin Hollenback (Microsoft), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Michael Guenther (SwissSign), Michelle Coon (OATI), Rebecca Kelley (Apple), Roman Fischer (SwissSign), Ryan Dickson (Google), Tadahiko Ito (SECOM Trust Systems), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Minutes

### 1. Read Antitrust Statement

Jos Purvis read the antitrust statement.

### 2. Review Agenda

No changes were made to the agenda.

### 3. Approval of Minutes from Last Teleconference

The minutes from the 4-August call were approved without changes.

### 4. Validation Subcommittee Update

Corey Bonnell said that the subcommittee met last Thursday. They spent most of the time reviewing the “on deck” section of the subcommittee’s [backlog][1]. A number of items were reprioritized. The discussion then moved to a [proposed][2] relaxation of the key usage requirements for end-entity certificates in the new profiles ballot, and how to represent something that is likely to be forbidden in the future. Finally, the group discussed two EV cleanup items proposed by Bruce Morton and agreed to move forward with them. Next week the subcommittee is planning to continue work on profiles and move on to some of the new work at the next meeting.

### 5. Ballot Status

#### Ballots in Discussion Period

- None

#### Ballots in Voting Period

- None

#### Ballots in Review Period

- None

#### Draft Ballots Under Consideration

- **Revival of Debian Weak Keys**

Chris Kemmerer said that consensus has been reached on the language and he is seeking endorsers to move the ballot forward.

- **SLO/Response for CRL & OCSP Responses**

David Kluge said that not as much progress has been made as hoped. There was some discussion in the past week that now needs to be incorporated into the ballot. Would also like to extend the ballot beyond SLOs for revocation into other areas of the BRs.

### 6. Any Other Business

- **Interested Party Review**

Jos said that NENA – the 911 association – has requested participation as an Interested Party. They are a standards organization for 911 (the North American emergency services telephone number). Jos said that he had confirmed the requestor’s authority to sign the IPR agreement.

Tobias Josefowitz asked if we can get confirmation from someone other than the requestor themself?

Jos said that it is reasonable to ask the requestor to forward a confirmation email from an officer to provide proof of their binding authority.

- **CRL Reason Codes**

Ben Wilson said that he had [sent an email to the list about revocation reason codes][3]. Ben requested feedback on the proposal. It is not in the form of a ballot yet, but Ben is seeking endorsers.

### 7. Roll Call

Clint Wilson read the roll.

### 8. Next call: 1-September 2022 at 11AM Eastern

Adjourn; Immediately convene meeting of CA Browser Forum (same call)

[1]: https://github.com/orgs/cabforum/projects/1
[2]: https://github.com/cabforum/servercert/pull/376
[3]: https://lists.cabforum.org/pipermail/servercert-wg/2022-July/003273.html