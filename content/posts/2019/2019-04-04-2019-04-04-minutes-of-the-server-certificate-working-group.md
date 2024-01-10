---
aliases:
- /2019/04/04/2019-04-04-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2019-04-04 17:16:57
tags:
- Minutes
- Server Certificates
title: 2019-04-04 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order)

Arno Fiedler (D-TRUST), Ben Wilson (Digicert), Chris Kemmerer (SSL.com), Daymion Reynolds (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Fotis Loukos (SSL.com), Frank Corday (SecureTrust), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Joanna Fox (GoDaddy), Jos Purvis (Cisco Systems), Kirk Hall (Entrust Datacard), Marcelo Silva (Visa), Michael Guenther (SwissSign), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Rich Smith (Sectigo), Scott Rea (Dark Matter), Shelley Brewer (Digicert), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tim Shirley (SecureTrust), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

{.wp-block-heading}

### 1. Roll Call

{.wp-block-heading}

The Chair took attendance

### 2. Read Antitrust Statement

{.wp-block-heading}

The Antitrust Statement was read

### 3. Review Agenda

{.wp-block-heading}

The Agenda was approved.

### 4. Pending minutes from F2F 46

The minutes from F2F 46 are almost complete. Dimitris sent a reminder to a few minute-takers that haven’t added the minutes of some sessions and will send another reminder on Friday April 5th.

### 5. Validation Subcommittee Update

{.wp-block-heading}

The Validation Subcommittee had a quick call and discussed the results of the F2F and priorities. The next two things the SC will work on is Ballot SC5 which is a phone validation method (Doug is working on that), and ballot SC6 (still looking for someone to work on it). Also the TLS ALPN ballot is on hold until the RFC is finalized.

### 6. NetSec Subcommittee Update

Ben reported that the subcommittee had a call and will have another one after this one. The SC looked at the F2F minutes and focused on the discussions on the pain points and what the process should be to address the 9 items on that list. This sub-group meets every Monday. 2 items will be addressed by the Authentication and Access Control sub-group. There was also another sub-group meeting for the document restructure that went through the PCI-DSS framework. The threat modelling group is planning a call today.

Dimitris proposed that if these sub-groups meet regularly, we should probably add these meeting slots on the wiki section where all meetings are listed. Ben agreed and will follow-up to add this information on the wiki.

### 7. Ballot Status

#### Ballots in Discussion Period

{.wp-block-heading}

\_Ballot \__SC17: Alternative registration numbers for EU certificates_ (Tim H.)Dimitris mentioned that there were some comments posted related to ballot SC17 and he and Tim are trying to address those comments. He is working with Tim to create a version 3 addressing as many comments/concerns as possible. Tim has been traveling the past weeks so the ballot update is moving slower than usual.

Some of the changes include:
– formatting improvements
– moving the alternative encoding of the subject:organizationIdentifier value to an extension instead of a separate subject Distinguished Name field
– making the alternative encoding a recommendation (SHOULD) in the beginning and a requirement (SHALL) after 12 months so that CAs have time to properly adjust their CA software to accommodate this extension along with the organizationIdentifier subjectDN attribute.

As soon as Tim is able to review the latest updates, a new version will be distributed to the public list. Finally, the name of the ballot will probably need to be changed because it doesn’t only support “EU” Certificates but identifiers outside EU as well.

#### Ballots in Voting Period

None

#### Ballots in Review Period

_Ballot SC16: Other Subject Attributes_ (Wayne)

#### Draft Ballots under Consideration

{.wp-block-heading}

_Improvements for Method 5, Phone Contact with DNS CAA Phone Contact (Doug)
\_ No additional comments were made._

Improvements for Method 6, website control\_ (Tim H.)No additional comments were made.

### 8. Harmonization of WebTrust and ETSI with SCWG Guidelines

Dimitris asked if there is an official process to inform WebTrust or ETSI when a new version of the Guidelines is published, so they can be added in the update process of the corresponding standards of these two organizations. Especially the latest BRs version 1.6.4 incorporates 3 ballots and introduces significant changes. It appeared that there is no such process and these organizations monitor the updates of the Forum guidelines and try to incorporate these changes in their next update cycle.

Dimitris recalled having heard about a maximum duration (not expressed as a requirement but as a best effort expectation) for how long it takes for a version of the Guidelines to be incorporated in the relevant standard by WebTrust and ETSI.

Arno responded that there is no official process because it depends on the requirement. ETSI has an update process which may take between days, weeks, months. He believes that defining a timeframe is quite difficult. Dimitris asked if it would be reasonable to set a timeframe based on past experience (e.g 6, 9, 12 months). Arno mentioned that ETSI has been collaborating with the forum for the past 10 years and doesn’t understand why we should put additional burden on WebTrust and ETSI. There is also a chance that a requirement from the Forum is not accepted by WebTrust or ETSI, it is a possibility. He prefers to leave things as they are today.

Wayne recalled some previous conversations on this topic and at one point it was suggested that the BRs are updated in certain times of the year and there were pros and cons on the decision of doing that or not. He recommended that if we want to go down that road, we should look back to previous minutes.

Dimitris clarified that he added this slot to make sure he is following some expected notification process and it seems there is no official notification process which means that WebTrust and ETSI will pick up the latest versions on their own. He still thinks it is a good idea to notify the liaisons whenever a Guideline document is updated.

Mike Reilly recommended that we review the minutes from the Taipei meeting (F2F 42) where this particular topic was discussed.

### 9. Any Other Business

None.

### 10. Next call

April 18, 2019 at 11:00 am Eastern Time.

### Adjourned