---
aliases:
- /2020/06/01/2020-05-15-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-06-01 19:52:09
tags:
- Minutes
- Server Certificates
title: 2020-05-15 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Adam Clark (Visa), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jos Purvis (Cisco Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michael Guenther (SwissSign), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Quo Vadis), Taconis Lewis (US Federal PKI Management Authority), Thanos Vrachnos (SSL.com), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

### 1. Roll Call

The Chair took attendance.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda, assign minute taker for next meeting

Accepted without changes. Enrico volunteered to take minutes on the next call.

### 4. Approval of minutes from previous teleconference

Accepted without objections.

### 5. Validation Subcommittee Update

Tim reports that the Subcommittee had a discussion about http responses and which ones should be acceptable or not. Currently some of the 3xx responses allow parsing the content of the body and it might be useful to tighten up these rules with a specific list.

More discussion on how to present the Certificate Profiles. The best approach they agreed to is the order of appearance in the BRs.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

- [https://lists.cabforum.org/pipermail/validation/2020-May/001477.html](https://lists.cabforum.org/pipermail/validation/2020-May/001477.html) (please note that this is a side-effect of the transition to the new portal).

### 6. NetSec Subcommittee Update

Neil reported that ballot SC28 related to logging and retention policy is in a final draft state. There was also discussion about action “j” related to deactivation of user accounts. The SC is trying to move away from the term “accounts” and introduce the term “access”.

The pain points subgroup discussed about item “2k” which is related to lockout because they identified too many exceptions around that requirement.

The threat modeling subgroup is drafting a checklist for online CAs. They are working on some text for shared credentials because existing controls are not so precise.

The subcommittee is also making progress on the remote secure zone terminology and security controls for offline Roots that will be separated.

The draft minutes of that particular Subcommittee meeting are available at the following thread:

- [https://lists.cabforum.org/pipermail/netsec/2020-May/000337.html](https://lists.cabforum.org/pipermail/netsec/2020-May/000337.html) (please note that this is a side-effect of the transition to the new portal).

### 7. Ballot Status

#### Ballots in Discussion Period

None.

#### Ballots in Voting Period

None.

#### Ballots in Review Period

_SC29: System Configuration Management (Neil)_.\*\* Review period ends 15:00 UTC 7 June 2020\*\*.

#### Draft Ballots under Consideration

\_Aligning the BRs with existing Browser Requirements \_(Ryan)

Microsoft will proceed with a number of changes and update requirements to be more permissive. Some of the changes were rolled back because they are no longer part of MS program.

Mozilla is gathering feedback from CA members.

Ryan is looking for endorsers. Some requirements are gated on Root programs. Example P521, what is the result if this is not allowed in the BRs? Some Root Programs may have concerns about adding new requirements to their programs.

CAs need to take a close look at the ballot. Corey commented on name forms.
\_
Spring 2020 cleanup (Ryan)\_
One more change was added, the use of CABF OIDs in subCA certificates. May need to clarify this language. Updated the descriptions on GitHub and issues.

Ryan noted that the ballot adds what seems to be two normative changes which claims they are a natural consequence of existing requirements.

The first is about CA’s that should revoke a Certificate if CP/CPS are violated, but may have some issues with Subscriber Agreements, for example if it’s not explicitly stated in the Subscriber Agreement.

The second is related to 4.9.1.1 which clarifies that if you can derive a private key from a public key, it is a compromized key and this can to be added in 6.1.1.3 for more clarity.

Tim H. Not the spirit of a cleanup. Ryan responded that this should be a cleanup and clarifications for obviously incorrect language and issues that are already identified.

_Disclosures of data sources (Ryan)_
Updated the preamble with feedback from Doug explaining motivation, goals and roadmap. The ballot text was updated and will be discussed on the next validation call. The requirement moved to October instead of September. Also, the requirement of keeping the disclosure accessible 24×7 raised concerns about 24×7 and that perhaps the use of a document sharing platform would be prohibited. It’s been removed and replaced with “readily accessible and online”.

Originally the disclosure requirement was added in section 8.2.2 of the EV Guidelines but that section was more about disclosing specific CP/CPS OIDs. So, the proposal is to add a new section, 11.1.3 because 11.1 is about verification and this can be coupled nicely.

Another significant change is that CAs don’t need to disclose a given data source if it has not been used to validate a certificate.

If a CA evaluates and decides not to use, should this be disclosed?

That is not the intent. It should be disclosed prior to its use and issuance of a Certificate. Compliance teams can evaluate who they want but don’t need to disclose if they do not intend to use that source to issue a Certificate. Most feedback has been incorporated. Looking for endorsers and seeing latest changes.

_Updating BR Section 6.1.1.3_
Chris: This is related mostly on Debian weak keys and there are some possible overlaps with the cleanup/clarifications ballot. His team will review the best path forward and possible work through the GitHub comments.

### 8. Any Other Business

Ben mentioned about OCSP service availability uptime. He asked Members to take a look, respond on the list or contact him, exploring if we should have more specific language around that. Dimitris and Trev recommend this being discussed in the NetSec subcommittee.

Agenda topics for the upcoming F2F
Mostly updates from Browser Members, ETSI, ACAB-c and subcommittees. If anyone wants to discuss a new topic, please come forward.

### 9. Next call

May 28, 2020 at 11:00 am Eastern Time.

### Adjourned