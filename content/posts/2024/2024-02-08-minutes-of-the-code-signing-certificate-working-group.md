---
aliases:
- /2024/02/08/2024-02-08-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2024-02-08 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-02-08 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Abhishek Bhat (eMudhra), Ben Dewberry (Keyfactor), Brianca Martin (Amazon), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Ian McMillan (Microsoft), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Keshava Nagaraju (eMudhra), Mohit Kumar (GlobalSign), Richard Kisley (IBM), Scott Rea (eMudhra), Thomas Zermeno (SSL.com)

## Minutes

Dean read the note well.

Meeting minutes for January 25th meeting were approved.

### Import EVG references into CSBRs

Dimitris gave status update for removing references to EVGs. A mapping spreadsheet was provided on the list to facilitate comparison. Dimitris gave the group a walkthrough of the document. Dimitris added the organizationIdentifier field, as it's in the EVGs but not the CSBRs.
Bruce said that introducing the orgId attribute is a change to the profile and should be a separate document. Dimitris proposed that he will circulate a diff of EVG 1.7.2 and 1.8.0 so the group can compare the differences in normative requirements between the versions.

### Timestamping

Bruce said that Martijn has a ballot proposal on Github. Ian would like to halve the maximum validity of the end-entity timestamp certificate. Bruce said the motivation of requiring key destruction is that long-lived timestamp certificates are not a risk if the private key material is destroyed.
Also, a long-lived certificate provides interoperability with other ecosystems, such as Java. Ian said that long-lived certificates might be a burden for CAs in providing OCSP responses for potentially several decades. Bruce said that we can raise this point as feedback to the ballot.

### F2F discussion

Dean said that the February 22nd meeting is cancelled. Dean asked the group for topics to discuss.

Ian provided these topics:
1. Certificate transparency requirements for code signing certificates. Which activities that are logged (issuance, revocation) would be good to discuss. Also, which monitors are needed in the ecosystem?
2. Reduction of code signing certificate validity to 15 months

Bruce called for additional topics for the F2F. Dimitris said he will prepare the import of the EVGs for presentation at the F2F.

Meeting adjourned. Next meeting is at the F2F; the February 22nd meeting is cancelled.
