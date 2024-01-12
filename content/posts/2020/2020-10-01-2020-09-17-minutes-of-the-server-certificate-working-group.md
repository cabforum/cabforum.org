---
aliases:
- /2020/10/01/2020-09-17-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-10-01 17:18:00
tags:
- Minutes
- Server Certificates
title: 2020-09-17 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Chris McMillan (Visa), Clint Wilson (Apple), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dre Aremeda (GoDaddy), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Karina Sirota (Microsoft), Kirk Hall (Entrust Datacard), Mayur Manchanda (Visa), Michelle Coon (OATI), Michol Murray (GoDaddy), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Sissel Hoel (Buypass AS), Stephen Davidson (Digicert), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda

No changes to the agenda were noted. Dimitris took minutes for this meeting. Jos will take the minutes for the next call.

### 4. Approval of minutes from last teleconference

Accepted without objections.

### 5. Validation Subcommittee Update

Doug provided a summary of the last subcommittee’s meeting.

They focused on TLS distinguished names tab of the Certificate Profile spreadsheet. The following attributes were reviewed:

- countryName
- statOrProvinceName
- localityName
- streetAddress

The goal was to simplify the current wording because the current language is quite complicated. It is also important to have a clear view of what’s optional/conditional, and by separating those out it will be easier to read and consume the specs.

They briefly talked about profiling the subjectDN based on certificate types DV/OV/IV/EV to simplify things, but there was no decision on that. They will discuss further and review the validation rules about attributes, when it’s optional/required.

The Subcommittee also discussed about the conditional cases where the countryName is XX, there are conditional values based on localityName, to put the countryName in the stateOrProvince field and it gets quite complicated and convoluted. They will try to clarify in more straightforward English so it’s easier to review.

Wayne added that they also touched upon issues discussed in the past, like allowing the countryName field in DV Certificates and whether that’s a necessary thing, as well as cases where there are Countries with no localityName or StateOrProvince and how to handle those.

Subcommittee minutes: https://lists.cabforum.org/pipermail/validation/2020-September/001548.html

### 6. NetSec Subcommittee Update

Neil provided the update. The subcommittee tried to address some feedback they received from GitHub regarding SC34. They agreed that the scope of the ballot must be clear and this could be done by reordering some of the section 2 provisions.

They proposed some changes to the account lockout provisions.

Long discussion about modeling the threats related to zones and the issues related to the physical and logical zones. They will also replace SC32 which was abandoned.

There was some discussion on the offline CAs ballot and whether to proceed with it as-is or move some of the Trusted Roles language in the BRs on a separate ballot first. No decision has been made.

They also discussed about some of the challenges operating a cloud CA. They are building a discussion document that will be CA-specific requirements coming from the BRs vs other requirements like PCI-DSS, FedRamp.

Touched on how to better use NSRs outside the SCWG for other Working Groups to use, because technically only SCWG members can contribute to that. There was some discussion on the call and some members raised concerns about IPR issues with Interested Parties and some scoping problems.

Jos mentioned that NCSSRs contributes mainly on things related to server certificates.

Ryan prefers the current NetSec Subcommittee to focus on Server Certificates and other Working Groups should probably create their own NetSec Subcommittees.

Subcommittee minutes: https://lists.cabforum.org/pipermail/netsec/2020-September/000398.html

### 7. Ballot Status

#### Ballots in Discussion Period

_None._

#### Ballots in Voting Period

_None._

#### Ballots in IPR Review Period

\_SC28: Logging and Log Retention \_(Review ends October 14, 2020)

_SC35: Cleanups and Clarifications_\_ \_(Review ends October 14, 2020)

There was a short discussion about whether we should cancel the existing IPR Review Period for SC28 and SC35 since it included multiple ballots or not. It was decided to leave this IPR Review Period as is, and make sure we have a distinct IPR Review period per ballot going forward.

#### Draft Ballots under Consideration

\_Minimum expectations regarding weak keys \_(Chris)

Chris mentioned that there was some discussion on the public list regarding language beyond Subscriber Keys. There was also input from Corey Bonnel (SecureTrust), Aaron Gable (LetsEncrypt), Jacob Hoffman-Andrews (LetsEncrypt). Chris tried to craft some language to cover all use cases but the intent was not to include something that was not required. Chris will prepare a reply based on the latest feedback.

\_Offline CA Security Requirements \_(Ben)
The official discussion period has not started for this ballot so it has not been assigned a ballot number yet.

\_Remove “zone” from NCSSRs and add provisions to BR 5.1 \_(Ben)
This ballot needs a new numbers because SC32 failed.

\_SC34 Account Management \_(Tobi)
No additional updates.

### 8. Topics for the next virtual F2F

Dimitris asked for Members to propose new topics for the upcoming F2F.

### 9. Any Other Business

No other business was discussed.

### 10. Next call

The next call will take place on October 1, 2020 at 11:00am Eastern Time.

### Adjourned