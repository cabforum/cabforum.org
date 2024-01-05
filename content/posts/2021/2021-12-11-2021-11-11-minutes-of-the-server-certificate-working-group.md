---
aliases:
- /2021-12-11-2021-11-11-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-12-11 16:18:00
tags:
- Minutes
- Server Certificates
title: 2021-11-11 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Fumihiko Yoneda (Japan Registry Services), Hubert Chao (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Jos Purvis (Cisco Systems), Julie Olson (GlobalSign), Kiran Tummala (Microsoft), Karina Sirota (Microsoft), Kati Davids (GoDaddy), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Miguel Sanchez (Google Trust Services), Natalia Kotliarsky (SecureTrust), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelley (Apple), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority)

## Minutes 

### 1. Read Antitrust Statement 

Jos Purvis read the antitrust statement.

### 2. Roll Call 

Dean Coclin read the roll.

### 3. Review Agenda 

No changes were made to the agenda.

### 4. Approval of Minutes from Last Teleconference 

The minutes from the last call were approved without changes.

Jos said that the minutes from the recent F2F are up on the wiki and asked if we are ready to approve them?

Dean asked if we need to first publish them to the list? Jos said that we should post a link to the wiki page to the management list for members to review. Minutes are missing from the ‘requirements for legacy CA certificates’ session on Thursday, and a few slots on Wednesday. Dean said that he and Jos will get a reminder out to folks responsible for those minutes.

### 5. Validation Subcommittee Update 

Tim Hollebeek said that the subcommittee met last Thursday and had a good discussion of the profiles ballot based on his summary slides from the F2F session. In all open areas, we have a good idea of what we want to write and just need to start drafting language. There are over 20 items in that list. Tim encouraged everyone to read the [meeting minutes][1] that were sent to the Validation list this morning.

Dimitris said that there was also discussion about separating normative changes into a standalone ballot. Tim said that doing this would make it easier to give CAs time to implement the normative changes. Tim said that he will also post a proposal for handling effective dates out to the list.

Wayne Thayer asked about SC52, CRL Validity Intervals. Sounds like there is agreement on the language. Tim agreed and said that he plans to begin discussion on the ballot today or tomorrow.

### 6. NetSec Subcommittee Update 

Clint Wilson said they had a brief meeting and continued discussion of the NetSec Working Group (WG) charter and how that new WG would interact with the other WGs. There is active discussion on the [public list][2]. Work is also progressing on the risk assessment. Finally, we are looking at minor issues that are documented in the [GitHub project][3]. Please take a look and feel free to add issues of your own.

Ben Wilson said that he does really want feedback on the proposed charter regarding how other WGs adopt NetSec changes. He feels that other WGs can choose to adopt specific versions, but auditors may always want to audit against the latest version.

Dimitris said that it is totally fine for each WG to decide independently to adopt specific version of the NCSSRs, but changes made by the NetSec WG can’t be binding on other WGs.

Jos agreed, citing IPR issues if this were the case.

Tim said that all other WG could just remove all references to the NCSSRs and allow auditors and root programs to require compliance. Or other WGs could explicitly delegate to the latest version of the NCSSRs.

Bruce said that other WGs could always write requirements that override the NCSSRs.

Jos encouraged everyone to take a look at the proposed charter and subsequent discussion relating to how changes to the NCSSRs apply to other WGs.

### 7. Ballot Status 

#### Ballots in Discussion Period 

- **Ballot SC50 Removal of 4.1.1 Requirements (Clint)**

Jos said that the minimum required time for the discussion period has been met. Clint said that he is planning to begin voting within the hour.

#### Ballots in Voting Period 

_None_

#### Ballots in Review Period 

_None_

#### Draft Ballots Under Consideration 

- **Ballot SCXX: Debian Weak Keys (Chris)**

Chris Kemmerer said he believes that all the issues raised in the thread have been resolved and a final internal review is underway.

### 8. Any Other Business 

None

### 9. Next call (after US Thanksgiving holiday): December 9th, 2021 at 11AM Eastern 

Adjourn; Immediately convene meeting of CA Browser Forum(same call)

[1]: https://lists.cabforum.org/pipermail/validation/2021-November/001728.html
[2]: https://lists.cabforum.org/pipermail/public/2021-November/date.html
[3]: https://github.com/cabforum/servercert/projects/3