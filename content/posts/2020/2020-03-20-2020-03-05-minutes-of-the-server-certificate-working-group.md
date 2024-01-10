---
aliases:
- /2020/03/20/2020-03-05-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-03-20 14:20:47
tags:
- Minutes
- Server Certificates
title: 2020-03-05 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Adam Clark (Visa), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Kirk Hall (Entrust Datacard), Li-Chun Chen (Chunghwa Telecom), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Sissel Hoel (Buypass AS), Timo Schmitt (SwissSign), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

{.wp-block-heading}

### 1. Roll Call

{.wp-block-heading}

The Chair took attendance.

### 2. Read Antitrust Statement

{.wp-block-heading}

The Antitrust Statement was read.

### 3. Review Agenda

{.wp-block-heading}

Accepted without changes.

### 4. Validation Subcommittee Update

The subcommittee’s call had follow-ups from the F2F including 7 work items.

- Default-deny interpretation of the BRs and discussion about a ballot to clarify subjectDN in CA Certificates. Ryan has offered to draft a ballot for that.

- List of Registration/Incorporation Agencies for the Jurisdiction of Incorporation information and how to maintain this list. Proposal to require CAs to disclose a list without trying to restrict usage, and see in practice which agencies are being used. Ryan has already proposed a draft ballot to the validation subcommittee mailing list.

- CA semantics to limit issuance to DV/OV/IV/EV Certificates

- OU field requirements. We need to agree on the purpose of adding information into this field. Robin agreed to offer a proposal for this topic.

- LEI in subjectDN fields. Tim is working on a ballot.

- Standardising stateOrProvince names. Some CAs reported that there are standards with good information for several cases. Some areas are more difficult than others. The collection of Registration/Incorporation Agencies for Jurisdiction of Incorporation might help with this task as well.

- Default-deny: Doug created a copy of the BRs in a GoogleDoc with a goal to mark areas where “default-deny” causes problems. This document will allow anyone to add comments. The Subcommittee encourages everyone to add comments to this document and highlight areas of concern.

- The SC will review specific places for “default-deny”, starting with section 7.1 (Certificate Profiles) as a first target. This particular topic will be discussed on the next SC call.

The draft minutes of that particular Validation SubCommittee meeting are available in

### 5. NetSec Subcommittee Update

There was no meeting after the F2F. Neil mentioned that they will need to change ballot number (SC20 has failed automatically) and include OS patches in the new ballot.

There are 3 ballots on their way to the main Working Group.

### 6. Ballot Status

#### Ballots in Discussion Period

{.wp-block-heading}

_SC20: Configuration Management_ (Neil)
No further discussion

#### Ballots in Voting Period

{.wp-block-heading}

None

#### Ballots in Review Period

{.wp-block-heading}

\_SC27: Version 3 Onion Certificates \_(Wayne) (review ends 2020-03-26)

#### Draft Ballots under Consideration

{.wp-block-heading}

_SC26 – Pandoc-Friendly Markdown Formatting Changes_ (Jos)
Ryan and Jos to work on a ballot for SC26. Ryan explained that Jos’ ballot “touches” a lot of sections of the BRs and it is very likely that new ballots might “touch” the same sections as SC26. In such cases, the ballot proposer must include language to describe how these specific sections will look like should SC26 pass or fail. If anyone wants to propose a ballot while SC26 is in the official discussion period, Ryan may assist any proposer with drafting the appropriate language to make progress in parallel. There is no need for a “quiet” period until SC26 completes its processing cycle.

_LEI Ballot_ (Tim H.)\_
\_ No updates.\_

Aligning the BRs with existing Browser Requirements \_(Ryan)
Browser members have already reviewed a newer version. Ryan is waiting for a last review from Microsoft due to some new Root Program requirements related to the revocation reasons for CA Certificates being revoked. He is also adding OCSP/CRL profiles and Mozilla Requirements for Key Usage.
This ballot will need review by several Members. He expects discussions to take place for the selection of effective dates because some Root Programs have been selectively enforcing requirements. There will be concerns for effective dates or where some new requirements came from.

The latest copy will be circulated soon. Ryan mentioned that he doesn’t want to rush this ballot through and will be flexible on effective dates.

### 7. Minutes for F2F 49

{.wp-block-heading}

Dimitris mentioned that the majority of the draft minutes have been uploaded on the wiki. He emailed the minute-takers of the last 3 slots.

### 8. Any Other Business

No other Business raised.

### 9. Next call

March 19, 2020 at 11:00 am Eastern Time.

### Adjourned