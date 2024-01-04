---
aliases:
- /2020-09-18-2020-09-03-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-09-18 16:19:12
title: 2020-09-03 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) {.wp-block-heading}

Amanda Mendieta (Apple), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Huo Haitao (Halton) (360 Browser), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Johny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kirk Hall (Entrust Datacard), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Mayur Manchanda (Visa), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Peter Miskovic (Disig), Rae Ann Gonzales (Godaddy), Rebecca Kelley (Apple), Robin Alden (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes {.wp-block-heading}

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust Statement was read.

### 3. Review Agenda {.wp-block-heading}

No changes to the agenda were noted. It was noted that Wayne Thayer volunteered to take minutes for this meeting. Dimitris will take the minutes for the next call.

### 4. Approval of minutes from last teleconference {.wp-block-heading}

Accepted without objections.

### 5. Validation Subcommittee Update {.wp-block-heading}

Wayne said that the subcommittee continued discussions of the end-entity certificate profile on the past call. EKU was discussed, as was the remainder of the profile. Then discussion shifted to remaining work and Subject distinguishedNames. Issues with validating the stateOrProvinceName were discussed, as were concerns over the organizationalUnitName field.

Tim said that he will not be able to attend next week’s call.

### 6. NetSec Subcommittee Update {.wp-block-heading}

Neil said that two ballots are in process. We have feedback from Ryan and Wayne on SC34 (Account Management) on GitHub and are planning to address it. SC28 has just begun voting. We have created a discussion document for using cloud services for hosting CA services. This will not result in any immediate ballots, but will feed into future changes. Meeting today to model threats. This relates to the dropped zones ballot, shifting from physical to logical zones.

Ben said that we’re still trying to finalize the offline CAs ballot. Have replaced ‘offline’ with ‘air gapped’. Bruce commented that we should populate the Trusted Roles section in the BRs with some of the info in the NCSSRs. We’re still trying to determine how to best structure the document. If parts of the NCSSRs are incorporated into the BRs it makes it more difficult for other WGs such as code signing to rely on them. This will also be discussed on the call today.

Dimitris said that the original consensus was for individual WGs to decide to adopt parts of the NCSSRs as they wish, then if we determine that there is seen to be a need for a shared common set of NCSSRs in the future we can discuss it.

Ben: There is a threat modeling group meeting today at 1 PM EST. If anyone with expertise has time to participate, please let us know and they will be invited.

### 7. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

_SC28 (Logging and Log Retention)_

Neil said that he began voting today.

#### Ballots in Voting Period {.wp-block-heading}

_SC35 (Spring 2020 cleanup and clarifications (Ryan)_

Voting began yesterday.

Ryan: Ben pointed out that there are more cleanups needed. Went ahead with voting on this knowing that there will be more cleanup ballots. This ballot includes important clarifications to the use of policy OIDs that are needed and that CAs should be aware of

#### Ballots in Review Period {.wp-block-heading}

_SC33 (TLS ALPN Method)_
Review period ends Sept 17.

#### Draft Ballots under Consideration {.wp-block-heading}

Minimum expectations regarding weak keys
Chris: Posted proposed ballot language to the list this morning
_SC32 (Offline CA Security Requirements)_

Ben: no updates

_SC34 (Account Management)_

Toby said that he has no updates beyond what Neil said earlier about the feedback received on GitHub.

### 8. Any Other Business {.wp-block-heading}

No other business was discussed.

### 9. Next call {.wp-block-heading}

The next call will take place on September 17, 2020 at 11:00am Eastern Time.

### Adjourned {.wp-block-heading}