---
aliases:
- /2020-02-07-2020-01-23-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-02-07 19:38:26
tags:
- Minutes
- Server Certificates
title: 2020-01-23 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Arno Fiedler (D-TRUST), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), David Moeller (Sectigo), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Kirk Hall (Entrust Datacard), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rashmi Jha (Microsoft), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Thanos Vrachnos (SSL.com), Tim Callan (Sectigo), Timo Schmitt (SwissSign), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vincent Lynch (Digicert), Wayne Thayer (Mozilla).

## Minutes



### 1. Roll Call



The Chair took attendance.

### 2. Read Antitrust Statement



The Antitrust Statement was read.

### 3. Review Agenda



Accepted without changes.

### 4. Approval of minutes from previous teleconference 

Accepted without objections.

### 5. Validation Subcommittee Update 

- The subcommittee first discussed about the updated validation method for method 6 which is described in ballot SC25. Since that meeting Doug has started the official discussion period for ballot SC25. It includes two new methods; one is an update to method 6 and the other is the ACME domain control validation via agreed-upon change to website.

- Then the subcommittee discussed about allowing DV/OV certificate issuance for .onion addresses. Wayne needs one more endorser. Other than that, the ballot is ready to move forward.

- The allowed fields in CA Certificates subject was also discussed. Ryan posted a list of subject attributes currently used in CA Certificates, by searching the CT logs. This is useful information to help drafting a ballot for defining the allowed subject fields in CA Certificates.

- There was some discussion about Validation of Domain Names ending in .arpa, a specially reserved TLD that is used for mapping IP addresses to Domain Names.

- Finally, the subcommittee discussed about possible topics for the F2F. One possible topic for discussion was the “default deny” interpretations of the BRs but that would require some pre-work that the subcommittee was not able to commit to. Another topic for discussion was the spreadsheet of Organization validation sources shared by CAs that is published on the wiki. This could be a potential “allow list” for validation sources. CAs may contribute with their lists of sources for Organizational information in the link provided by Wayne. There is a link on the wiki which was sent via the validation subcommittee mailing list. So far Digicert has contributed but other CAs are preparing to share their own lists.

- Detailed minutes were circulated in the validation subcommittee mailing list ()

### 6. NetSec Subcommittee Update 

- The document structure subgroup discussed about how the netsec document would look like if they applied the changes they have in mind. There was consensus to fix sections that are overly repetitive and overlapping. Some requirements don’t even fit as best practices.

- Ben tried a mapping between RFC 3647 and ETSI/WebTrust with the requirements of the NSRs. This task is under way.

- SC20 has delayed with the redline, now it’s ready for general group discussion.

- Pain points subgroup: retention of audit data (7 years is the blanket retain period for all information). The subgroup considered the current BRs for logging and there was consensus that some logs (not related to the certificate issuance), should be retained for 2 years as a more reasonable retention period and more aligned with other security frameworks. It was clarified that the change of the retention years is not for certificate information evidence but other logs, for example entry-exit from a datacenter facility, or who is logged in/out from a particular host, audit telemetry. They will try to establish if these logs make sense to keep for 7 years. Other requirements frameworks don’t have this retention period for such logs.

- Detailed minutes were circulated in the netsec subcommittee mailing list ()

### 7. Ballot Status 

#### Ballots in Discussion Period 

\_SC25: Define New HTTP Domain Validation Methods \_(Doug)
The discussion period of the ballot will soon be completed and Doug will start the voting period.

#### Ballots in Voting Period



None

#### Ballots in Review Period 

None

#### Draft Ballots under Consideration



_SC20 Ballot (NSR 2): System Configuration Management_ (Neil)
The draft ballot has been circulated in the netsec list. Neil is making final adjustments (creating a redline) and will soon send it to the main WG public list.

_SC26 – Pandoc-Friendly Markdown Formatting Changes_ (Jos)
The ballot is almost done. It is very close of being ready for the discussion period to start. Now that ballot SC25 is in the discussion and then voting period, if it overlaps with sections modified by SC25, Jos needs to add language to describe how these sections would look like if SC25 succeeded or failed.

_LEI Ballot_ (Tim H.)
No further discussion
\_
Aligning the BRs with existing Browser Requirements \_(Ryan)
Ryan is incorporating changes introduced in Mozilla Policy 2.7. Microsoft is ok with the changes so far.

_Onion Proposal_ (Wayne)
Wayne is looking for one more endorser. Other than that the ballot is ready.

### 8. Topics for F2F 49 

Robin proposed adding a slot for a discussion around Jurisdiction of Incorporation for Private Organizations in Germany. The issue probably doesn’t only apply for Germany but also other countries. We may need to review our definitions in the EV Guidelines to see if they match real life cases and clarify how they apply to different scenarios like the one in Germany.

Mike reminded the group of a proposal by OS and Browser vendors regarding the use of QWACs. He thinks it would be useful to have some discussion about that at the F2F.

### 9. Any Other Business 

No other Business raised.

### 10. Next call 

February 6, 2020 at 11:00 am Eastern Time.

### Adjourned