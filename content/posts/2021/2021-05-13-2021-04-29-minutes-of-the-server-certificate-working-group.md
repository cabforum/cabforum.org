---
aliases:
- /2021-05-13-2021-04-29-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2021-05-13 19:23:01
tags:
- Minutes
- Server Certificates
title: 2021-04-29 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Aaron Gable (Let’s Encrypt), Abdul Hakeem Putra (MSC Trustgate), Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Natalia Kotliarsky (SecureTrust), Maileen Del Rosario (GoDaddy), Brittany Randall (GoDaddy)

## 1. Read Antitrust Statement 

Jos read the antitrust statement.

## 2. Roll Call 

Dean read the roll.

## 3. Review Agenda 

No changes were made to the agenda.

## 4. Approval of minutes from last teleconference 

The minutes from the April 15th teleconference were approved without changes.

## 5. Validation Subcommittee Update 

Tim Hollebeek said that the subcommittee discussed a number of issues on last week’s call. First was the wildcard and ADN ballot. The implementation date has been pushed back to Dec 2021, and some concerns with .onion names were discussed. Ballot SC46 to sunset the CAA DNS operator exception was discussed. The ongoing work on certificate profiles was discussed, including requirements for names constraints (MUST they be marked as critical?) and the path to supporting SRV names. Clarifying cross cert requirements and validity periods were also discussed. Finally, There was some discussion of limiting certificate backdating to a short period of time. Tim pointed to the meeting minutes for details.

Jos noted that Ryan Sleevi posted the following links to issues that were discussed in the chat:

https://github.com/cabforum/servercert/issues/267

https://github.com/cabforum/servercert/issues/268

Validity periods –

Minutes:

## 6. NetSec Subcommittee Update 

Neil Dunbar reported that the subcommittee met on Tuesday. They first went through progress on the cloud services document. Work began on identifying CA-specific risks posed by using these services. They also began discussing the format of the document. The call then moved on to Clint Wilson’s ballots – remove BR section 4.1.1 and include a permanent duty to maintain a list of compromised keys, and updates to BR sections 5.4 and 5.5. This is almost ready to ballot. Clint will prepare a document explaining the rationale for the changes. Finally, there was discussion of the patching ballot, requiring CAs to regularly scan for patches, and a ballot to require filesystem change scanning.

## 7. Ballot Status 

### Ballots in Discussion Period 

- None

### Ballots in Voting Period 

- SC44: Clarify Acceptable Status Codes

Voting ends 30-April 2021 at 19:30 UTC

### Ballots in Review Period 

- SC42 – 398-day Re-use Period

### Draft Ballots Under Consideration 

- **Ballot SC45: Validation methods for Wildcards/ADNs** –

Ryan said that he will update the draft to account for Tor onion services. He has two endorsers, and will confirm that they support the changes. Then he will start the discussion period next week.

- **Ballot SC46: Sunset the CAA Exception** –

Ryan said that he has endorsers and will start the discussion period shortly.

- **Ballot SCXX: Debian Weak Keys** (Chris)

Chris Kemmerer said they are happy with feedback received, and were seeking additional input from stakeholders who maintain external resources. Chris said that he will go ahead and move the ballot into the discussion period.

- **Ballot SC34 Account Management** (Tobi)

Tobi Josefowitz said that he would talk to Jos about updating the pull request.

## 8. Any Other Business 

Ryan raised an issue that was posted to the Management list on April 28th. Members should review the message and discuss on the Management list.

## 9. Next call: May 13, 2021 at 11AM Eastern 

Adjourn; Immediately convene meeting of CA Browser Forum call (same call)