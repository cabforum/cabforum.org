---
aliases:
- /2021-06-17-2021-05-27-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-06-17 19:32:00
tags:
- Minutes
- Server Certificates
title: 2021-05-27 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Aaron Gable (Let’s Encrypt), Adrian Mueller (SwissSign), Ali Gholami (Telia), Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (Digicert), Curt Spann (Apple), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Huo Haitao (Halton) (360 Browser), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kati Davids (GoDaddy), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Redha Hamzah (PoS Digicert), Rebecca Kelley (Apple), Sebastian Schulz (GlobalSign), Stephen Davidson (Digicert), Thomas Zermeno (SSL.com), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Maileen Del Rosario (GoDaddy)

## Minutes 

### 1. Read Antitrust Statement 

Jos Purvis read the antitrust statement.

### 2. Roll Call 

Wayne Thayer read the roll.

### 3. Review Agenda 

No changes were made to the agenda.

### 4. Approval of minutes from last teleconference 

This item on the agenda was overlooked and no minutes were approved.

### 5. Validation Subcommittee Update 

Tim Hollebeek said the call was very short and there were no topics to discuss. Preparation for the F2F will be the topic of the next meeting.

### 6. NetSec Subcommittee Update 

Ben WIlson reported that the subcommittee met briefly on Tuesday. They discussed Clint WIlson’s audit log retention changes and decided that retention periods should be measured from certificate expiration instead of certificate issuance.

Dimitris asked if there was any discussion on the definition of audit logging, and Clint said that it was not discussed on the call, but that he has since reviewed Dimitris’ email and worked on the changes he thinks are needed to resolve the concerns.

### 7. Ballot Status 

#### Ballots in Discussion Period 

- Ballot SC45: Validation methods for Wildcards/ADNs –

#### Ballots in Voting Period 

##### Ballot SC46: Sunset the CAA Exception for DNS operator 

Jos said that the ballot becomes effective prior to the completion of the IPR period. There is no provision to withdraw a ballot, so everyone either needs to vote against the ballot, or we can fix the error in a subsequent cleanup ballot.

Tim said that he would prefer members to vote “no” and that we restart the ballot and we’ll only lose a week in the process. This is not urgent and Tim would prefer not to set the precedent of voting “yes” on a flawed ballot.

Dimitris Zacharopoulos said there is a lot of administrative overhead for each ballot and it’s not worth it to cancel this ballot since it doesn’t violate the bylaws. The ballot becomes effective when the IPR review period ends

Mike Reilly agreed with Dimitris.

Jos said that we’d have to turn around a cleanup ballot very quickly to fix the issue prior to the effective date.

Wayne said we need to follow the rules and do things the right way, but this ballot doesn’t break any of our rules and the potential for confusion is limited to a short period of time.

Trevoli Ponds-White said that people may refer to this ballot for precedent and get the impression that it’s okay to set an effective date prior to the end of the IPR period. Proceeding with it sets a bad example.

Dimitris said that we don’t need to wait for a cleanup ballot. The next ballot we vote on could update the confusing effective date.

Bruce said if you do specify a date it should be after the IPR review period is over.

Jos said that the amount of work being created for leaders shouldn’t be a concern. His concern is that anything issued after 7/1 can’t rely on the DNS operator exception per the ballot but if it isn’t effective until later due to the IPR review period, would CAs that used the exception after the 1st but before the end of the review period then be required to go back and revoke those certificates?

Dimitris said no, the certs would be issued under the prior version of the BRs, and changes to the BRs are not retroactive.

Tim said that the BRs should be amended to clarify this point. The BRs are unclear on the implications of an effective date in the past. Tim said that he is more concerned here about the precedent. If we are going to move ahead with this, we should at least state that this is not a precedent.

Trev said the justification for accepting this inconsistency does not outweigh the bad precedent that it sets.

Aaron Gable said that from an engineering mindset we should stop, roll back, and fix the problem and then agree on a systematic solution to the problem.

Tim said that he has proposed encoding a standard effective date because it is difficult for ballot authors to get effective dates correct.

Jos said that we also need to clarify ballot retroactivity.

Jos encouraged members to continue the discussion on the list and reminded everyone that the ballot is in the voting period. He suggested that we may also need to define a mechanism for withdrawing a ballot in the bylaws.

A bit later in the call, Aaron said that he is filing two issues in GitHub related to this discussion. One for clarifying the behavior of effective dates and another for establishing a procedure for having flexible effective dates.

#### Ballots in Review Period 

- SC42 – 398-day Reuse Period
- SC44: Clarify Acceptable Status Codes

#### Draft Ballots Under Consideration 

##### Ballot SCXX: Debian Weak Keys (Chris) 

Chris Kemmerer said he is still looking for more input on this ballot.

##### Ballot SC34 Account Management (Tobi) 

Tobi Josefowitz said he has rebased the old pull request. He will verify that the original endorsers still support the ballot and then open discussion.

### 8. Any Other Business 

Jos asked members to raise any agenda items for the upcoming face-to-face meeting with one of the WG or subcommittee chairs or vice-chairs.

### 9. Next call: June 10, 2021 at 11AM Eastern 

Adjourn; Immediately convene meeting of CA Browser Forum call (same call)