---
aliases:
- /2021-06-17-2021-05-13-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-06-17 19:31:00
title: 2021-05-13 Minutes of the Server Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Aaron Gable (Let’s Encrypt), Ali Gholami (Telia), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kati Davids (GoDaddy), Michelle Coon (OATI), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Natalia Kotliarsky (SecureTrust), Brittany Randall (GoDaddy)

## Minutes {.wp-block-heading}

### 1. Read Antitrust Statement {.wp-block-heading}

Jos Purvis read the antitrust statement.

Dimitris Zacharopoulos suggested that we add an item to the agenda reminding the meeting host to start recording. Dean Coclin started recording.

### 2. Roll Call {.wp-block-heading}

Dean read the roll.

### 3. Review Agenda {.wp-block-heading}

No changes were made to the agenda.

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes from the April 29th teleconference were approved without changes.

### 5. Validation Subcommittee Update {.wp-block-heading}

Wayne Thayer said that the subcommittee discussed a few topics on last week’s call. First was the wildcard and ADN ballot – SC45. Corey Bonnell asked about the use of methods 18 and 19 for .onion names – even those with exactly two labels – and Dimitris explained the logic for forbidding wildcard validation using these methods.

Next up was a bit more discussion on validity periods in relation to cert profiles. Further discussion is needed on a reasonable limit for backdating. Consensus was that forward dating (setting the ‘valid from’ date in the future) does not have a clear use case – at least for EE certs – and should be forbidden.

Finally, the subcommittee spent some time exploring a potential security issue that had been raised on the management list.

### 6. NetSec Subcommittee Update {.wp-block-heading}

Neil Dunbar reported that the subcommittee met on Tuesday. First they summarized the work of the cloud security subcommittee. They discussed how individual services fit into three defined categories (least to most risk). They began reviewing discussion docs for SC38 replacement ballots being drafted by Clint Wilson. These docs capture the risk/benefit analysis that has been performed. The BR 4.1.1 ballot is almost complete. The BR 5.4 and 5.5 (retention period) ballot is still being discussed and needs a bit more work. Dimitris submitted some comments that will be considered. Finally, Neil said that some updates on patch and vulnerability management are still in progress, but they were not discussed.

### 7. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

##### Ballot SC46: Sunset the CAA Exception for DNS operator {.wp-block-heading}

Ryan Sleevi said that the effective date of July 1, 2021 is aligned with other ballots but it may need to be pushed out if the discussion period is extended past the required 7 days and then the resulting IP review period extends past the current effective date.

#### Ballots in Voting Period {.wp-block-heading}

None

#### Ballots in Review Period {.wp-block-heading}

- SC42 – 398-day Re-use Period
- SC44: Clarify Acceptable Status Codes

#### Draft Ballots Under Consideration {.wp-block-heading}

##### Ballot SCXX: Debian Weak Keys (Chris) {.wp-block-heading}

Chris Kemmerer said that the language was re-posted to the list () and there has been some discussion. Please review and contribute to the discussion.

##### Ballot SC34 Account Management (Tobi) {.wp-block-heading}

Tobi Josefowitz said he is in the process of editing the ballot to incorporate changes that have been made to the NCSSRs since it was originally drafted.

##### Ballot SC45: Validation methods for Wildcards/ADNs {.wp-block-heading}

Ryan said he is awaiting endorsers to approve some final changes. One change makes it clear that you have to use the Tor protocol for web-based .onion validation. This ballot has a longer phase-in period. The effective date is December 1, 2021. There will be two versions of this ballot to account for conflicts with SC42 which is currently in the IPR review period. The other change that was made, as mentioned during the Validation SC report, is that there is no longer a special exception for .onion names.

### 8. Any Other Business {.wp-block-heading}

Dimitris asked about the question received on the questions list regarding a conflict between BRs and Austrian law related to certificate suspension. Dean read the proposed response, which states that separate hierarchies must be used in order to comply with both the BRs and Austrian law for the respective use cases.

Clint said that Apple agrees with the description of the current state and is aligned on the goals but that we need to work on the scope of the BRs. He said that he approves of the proposed response.

Dean said that he will send out the response after the call.

### 9. Next call: May 27, 2021 at 11AM Eastern {.wp-block-heading}

Adjourn; Immediately convene meeting of CA Browser Forum call (same call)