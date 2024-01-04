---
aliases:
- /2021-09-03-2021-08-19-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-09-03 15:22:17
title: 2021-08-19 Minutes of the Server Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Adrian Mueller (SwissSign), Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Christy Berghoff (US Federal PKI Management Authority), Clint Wilson (Apple), Christy Berghoff (US Federal PKI Management Authority), David Kluge (Google), Dean Coclin (Digicert), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Jose Guzman (GoDaddy), Karina Sirota (Microsoft), Kati Davids (GoDaddy), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Min (GoDaddy), Mike Reilly (Microsoft), Niko Carpenter (SecureTrust), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Trevoli Ponds-White (Amazon), Tyler Myers (GoDaddy), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services), Anuj Saxena (Web.com), Steven Deitte (GoDaddy)

## Minutes {.wp-block-heading}

### 1. Roll Call {.wp-block-heading}

Wayne Thayer read the roll.

### 2. Read Antitrust Statement {.wp-block-heading}

Jos Purvis read the antitrust statement.

### 3. Review Agenda {.wp-block-heading}

No changes were made to the agenda.

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes from the last call were approved.

### 5. Validation Subcommittee Update {.wp-block-heading}

Tim Hollebeek said that there was a brief call this week. The minutes from the July 29 call were posted to the list yesterday and contain a more substantive discussion than last week’s call.

### 6. NetSec Subcommittee Update {.wp-block-heading}

Ben Wilson said the subcommittee met on Tuesday. New leadership was discussed and there will be a vote for chair in 2 weeks. They briefly discussed the cloud services [audit models email][1] that went out to the SCWG list and Ryan’s subsequent feedback. If you have comments, please respond to the thread.

### 7. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

None

#### Ballots in Voting Period {.wp-block-heading}

None

#### Ballots in Review Period {.wp-block-heading}

##### Ballot SC48 – Domain Name and IP Address Encoding (Completes 2021-08-21) {.wp-block-heading}

Ryan Sleevi mentioned that the ballot requires the CN to be encoded the same as the SAN, and [as discussed on list][2], this requirement is case sensitive. Specifically, the case of each encoded character in the SAN and CN must match.

#### Draft Ballots Under Consideration {.wp-block-heading}

##### Ballot SCXX: Debian Weak Keys (Chris) {.wp-block-heading}

Chris Kemmerer said that he sent out a [new message][3] to the thread but has not received any responses. SSL.com is happy with the language of the ballot. This is ready to move to a cleanup or full ballot.

Jos said that as long as this is required, it makes sense to solidify the requirements via updated language.

Wayne said that it should be a standalone ballot because it imposes new normative requirements on CAs.

Bruce Morton asked if Debian weak keys are still a threat?

Chris said that a publicly-trusted CA misissued a cert containing a Debian weak key as recently as March 2020. Chris also said that the work performed by Sectigo and HARICA to generate weak keys represent a resource that wasn’t available when the original ballot was put into place.

Jos said that this work could become a framework for checking for other weak kays, and mentioned weak key generation in IOT as a hypothetical example.

Chris encouraged additional feedback on the list.

##### Ballot SC34 Account Management (Tobi) {.wp-block-heading}

Tobi Josefowitz was not on the call, so there were no updates.

### 8. Any Other Business {.wp-block-heading}

#### Vice Chair Change of Affiliation {.wp-block-heading}

Jos said that Wayne is changing affiliation from Mozilla to Fastly, an Interested Party, effective September 1st. This makes him ineligible to continue as vice chair.

Jos said that there is no provision for this in the bylaws, so replacing the vice chair is an ad-hoc process. A new election now would, by the bylaws, result in the terms of the chair and vice chair being offset by approximately one year because terms are locked at 2 years. Jos asked if the ballot should be for the remainder of the current term, or following a strict reading of the bylaws, for a 2-year term.

Dean said that there is an early termination of the vice chair, so we need to open up a ballot and the new term should coincide with the term of the current officers.

Ryan said that the bylaws section 4.1.1 requires a 2 year term, so we should either ask the new vice chair to step down early, or change the bylaws. Trev said in the chat that we should amend the bylaws, and Ryan agreed.

Jos agreed that the bylaws need to be changed to address this, along with a few other updates that are needed. Meanwhile, he proposed opening a ballot for a 2 year term with the expectation that the person will probably step down next year. Jos asked for nominations and no one was nominated or stepped forward. Jos noted that being the vice chair does not imply that you will become the chair.

Ryan mentioned that anyone nominating someone must first obtain consent from that person.

Jos said that he would open a 2-week nomination period immediately after this meeting.

There was no other new business.

### 9. Next call: September 2nd, 2021 at 11AM Eastern {.wp-block-heading}

Adjourn; Immediately convene meeting of CA Browser Forum (same call)

[1]: https://lists.cabforum.org/pipermail/servercert-wg/2021-August/002913.html
[2]: https://lists.cabforum.org/pipermail/servercert-wg/2021-August/002905.html
[3]: https://lists.cabforum.org/pipermail/servercert-wg/2021-August/002917.html