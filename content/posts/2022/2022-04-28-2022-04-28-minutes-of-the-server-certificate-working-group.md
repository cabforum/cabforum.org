---
aliases:
- /2022-04-28-2022-04-28-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-04-28 15:58:00
tags:
- Server Certificates
title: 2022-04-28 Minutes of the Server Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Adam Jones (Microsoft), Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Corey Rasmussen (OATI), Daryn Wright (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Fumi Yoneda (Japan Registry Services), Heather Warncke (Amazon), Hogeun Yoo (NAVER Cloud), Hubert Chao (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Martijn Katerbarg (Sectigo), Nargis Mannan (SecureTrust), Niko Carpenter (SecureTrust), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Stephen Davidson (Digicert), Thomas Zermeno (SSL.com), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Yoshiro Yoneya (Japan Registry Services)

## Minutes {.wp-block-heading}

### 1. Read Antitrust Statement {.wp-block-heading}

Jos Purvis read the antitrust statement.

### 2. Roll Call {.wp-block-heading}

Dean Coclin read the roll.

### 3. Review Agenda {.wp-block-heading}

Jos noted that a ballot item from Google was added. No other changes were made to the agenda.

### 4. Approval of Minutes from Last Teleconference {.wp-block-heading}

The minutes from the 14-April call were approved without changes.

### 5. Validation Subcommittee Update {.wp-block-heading}

Corey Bonnell said that the subcommittee met last Thursday and discussed the transition to a version of the BRs updated with new certificate profiles. One alternative that had been considered was creating a version of the BRs that permits use of both old and new profiles during a transition period. However, it was agreed to instead completely replace the old profiles with new and to specify effective dates for each specific requirement that is changed. Second, the subcommittee reviewed Ryan Sleevi’s supplemental documentation that is intended to explain the reasoning behind decisions that might not be obvious to CAs who are implementing the certificate profiles.

### 6. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

_None_

#### Ballots in Voting Period {.wp-block-heading}

_None_

#### Ballots in Review Period {.wp-block-heading}

_None_

#### Draft Ballots Under Consideration {.wp-block-heading}

Chris Kemmerer said that he is still looking for feedback on Martijn Katerbarg’s suggestion to add a requirement to check for the Close Primes vulnerability.

David Kluge said that he would like to encourage members to review the [document][1] that was posted to the NetSec list and provide feedback. Simply updating the OCSP availability requirement from 24×7 was considered, but the approach that is currently being proposed is for CAs to disclose their service level targets in their CP/CPS.

Jos said that we would like to encourage discussion on the mailing list. David said that he would resend the proposal to the list.

Trevoli Ponds-White encouraged CAs to review the proposal with their engineering teams and to specifically consider if time duration is the best way to measure this, and if the responses have to be correct. Trev said that Amazon Principal Engineers are reviewing and will provide feedback.

### 7. Any Other Business {.wp-block-heading}

None

### 8. Next call: 12-May 2022 at 11AM Eastern {.wp-block-heading}

Adjourn; Immediately convene meeting of CA Browser Forum (same call)

[1]: https://docs.google.com/document/d/1hKSbbCXQbAxIX2MesHEoAS6q2PRQsbdCXXcwMx7fDQU