---
aliases:
- /2022/06/23/2022-06-23-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-06-23 14:35:00
tags:
- Minutes
- Server Certificates
title: 2022-06-23 Minutes of the Server Certificate Working Group
type: post
---

## Attendees

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Chris Clements (Google), Chris Kemmerer (SSL.com), Corey Bonnell (Digicert), Daryn Wright (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Emily Stark (Google), Fumi Yoneda (Japan Registry Services), Hubert Chao (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Joanna Fox (TrustCor Systems), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Trevoli Ponds-White (Amazon), Vijay Kumar (India PKI Forum), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Minutes

### 1. Read Antitrust Statement

Jos Purvis read the antitrust statement.

### 2. Roll Call

Dean Coclin read the roll.

### 3. Review Agenda

No changes were made to the agenda.

### 4. Approval of Minutes from Last Teleconference

No minutes to approve (F2F). Please finish up your F2F minutes and ask for recordings if needed.

### 5. Validation Subcommittee Update

Cory: We went thought the slides that were slated for F2F. Finished review of SHOULD and SHOULD NOT normative changes and also some V2 items. This will continue at the next meeting

### 6. Ballot Status

#### Ballots in Discussion Period

_None_

#### Ballots in Voting Period

_None_

#### Ballots in Review Period

_None_

#### Draft Ballots Under Consideration

## Ballot: Debian Weak Keys

Chris: There was a suggestion to add Hanno Boeck’s tool to the list of tools that can be used to identity weak keys. Overall happy with the text and we think everything raised that has been addressed. Please take a review and will add Hano’s tool for another options and push it out today.

Dimitris: Chris, about the tool, is this self-controlled so it is not considered a “delegated 3rd party” checking keys for the CA as some sort of remote API? Can anyone check it?

Chris: It’s a tool he developed and the link is in the thread and will accept input as sent in. It’s in GitHub.

Ben: We could do a cross reference to a BR web page instead of keeping the list within the BRs itself with a list of suggested tools that can be used, and that would be easier to maintain.

Cory: Since this is a list of suggestions, maybe this guidance is OK to be hosted on the web site.

Dimitris: Might want to verify that this has been tested/verified to be accurate, like HARICA verifying Sectigo and vice versa. Even if we suggest this and it’s problematic, we should avoid that.

Jos: Since this is a MAY and contains some suggested links on that page, that would avoid doing changes to that list via ballots each time the repo changes or we need to add new ones. Could still have guidance that CAs need to vet these tools before use.

Chris: Will take the approach for updating the ballot and pointing to a place holder page for now.

Dimitris: Since we don’t have a good process for website updates, and someone could add tools that are not secure, it’s not a good to point to a page in the BRs that can be easily changes which could result in audit problems. We don’t have a process for changing the website, so recommend we do not have the BRs point to the website.

Trev: BRs linking to a page that is not as controlled as the BRs seems like a bad idea. Given we tell customers to use these tools but we don’t have a good security story about that content.

Jos: Yea, good point. So, since this is not managed as strictly as the BRs since there is a list of people that can change the web site without the strict change control as we have for the BRs, suggest not taking this approach. It’s better if we link to the tools directly in the ballot, and then they can be vetted as part of the balloting process.

Chris: Will proceed with including the direct links of the suggested tools and they will be vetted as part of the ballot process. Dimitris and Ben agree.

## Ballot: SLO/Response for CRL & OCSP Responses

David Kluge: No recent updates. Still interested in the ballot. Intermediate conclusion: Key challenge is to define how to properly define the SLOs. Will get some more detail and then will be able to properly process the ballot.

Please continue discussion on the list.

No other ballot updates

### 7. Any Other Business

#### Future of validation committee meetings

Jos: We had a discussion on the list about the VSC and if we still need it. Welcome discussion like we had and looks forward to having more technical topics on the calls like we had earlier in this meeting vs. just a status as well as the mailing list.

As far as the future, no reason to change anything immediately, but welcome more discussions.

As we expand the discussion of this call we may want to potentially moving the forum call to a monthly call and that would provide more time to this WG/SC.

Dimitris: Should move this to the public list. VSC is still improving validation methods and practices and have not completed that work yet. Share the concerns with the time issues just raised.

Jos: Let’s continue these technical discussions during these calls vs .just status updates.

### 8. Next call: July 7th

Adjourn; Immediately convene meeting of CA Browser Forum (same call)