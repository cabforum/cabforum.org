---
aliases:
- /2021-12-16-2021-12-16-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-12-16 18:00:00
tags:
- Code Signing
title: 2021-12-16 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Andrea Holland, Atsushi Inaba, Bruce Morton, Corey Bonnell, Dean Coclin, Ian McMillan, Inigo Barreira, Janet Hines, Joanna Fox, Michael Sykes, Roberto Quinones, Tim Hollebeek

## Minutes {.wp-block-heading}

Antitrust Statement was read by Bruce Morton.

Approved minutes from previous Dec 2, 2021 meeting.

### Ballot CSC-6 (Subscriber Private Key Protection) {.wp-block-heading}

Ian shared the final discussion feedback and changes.

- Added the definition of
- **Hardware Crypto Module**: A tamper-resistant device with a cryptography processor used for the specific purpose of protecting the lifecycle of cryptographic keys (generating, managing, processing, and storing).
- Originally cryptography processor had the word dedicated in its description, but it was pointed out that there are modules out there that meet the FIPS requirements without the dedicated cryptography processor.
- In Section 5 – Abbreviations and Acronyms, the acronym “CSP” and meaning “Cryptographic Service Provider” was added in a table and the line above in that section was modified to “As specified in the Baseline Requirements and EV Guidelines or listed below”.
- Throughout the document and as seen in section 16 and 17, the terms “Private Key” and “Key Pair” are defined terms and they should be treated as such with a starting capital letter for both words.
- In Section 16.3 number 6, this was previously just a qualified auditor and what is seen in Section 11.7 for high risk applicants did not align with this. For now, this is aligned with what is seen in Section 11.7. It now reads, “The CA or relying on a report provided by the Applicant that is signed by an auditor who is approved by the CA and who has IT and security training or is a CISA witnesses the Key Pair creation in a suitable Hardware Crypto Module solution including a cloud-based key generation and protection solution.” We should go back later and fix up what is in section 11.7.
- Ian says that the modifications are complete and he just needs 2 endorsers for the ballot. CAs will be circulating it internally to see if they would be able to endorse this ballot. We want to wait until the new year to push this ballot out for discussion.

### CSBR Format Change {.wp-block-heading}

- Corey circulated the updated mapping document via email last week and wanted everyone to take a look at it and provide feedback on it.
- The document at this point is just awaiting feedback from the group.
- Corey and Dimitris to lead a walkthrough and discussion of this mapping document during the meeting on January 13, 2022.
- In talking about next steps, we want to get CSC-6 done and then get CSBR format change through before we start with further ballots to minimize further changes to the CSBR format change. Bruce to review the cleanup list as we look towards next steps after the CSBR format change ballot.

### Other Business {.wp-block-heading}

- Ian brought up the topic of brainstorming around verification for open source projects
- Two people in the open source area will come to talk with us and give us their perspective on code signing certificates and how they obtain them and some ideas around that. One is from the GitHub world (Kevin Jones) and the other is from the .net foundation (Claire Novotny). This will occur at the February 10, 2022 meeting.
- Bruce brought up the topics about the TSA validity period and the TSA Rekey every 15 months
- TSA Certificate Validity Period
- Question: Do we feel that 135 months of validity is too long?
- Bruce got some initial feedback from Oracle that they don’t provide any trust on code previously signed after the Code Signing Certificate has been revoked or is expired. The timestamp does not provide you anything after that. Because of this, Java is not a reason to keep the duration long.
- Follow-up: Ian to take this discussion back to Microsoft to get their perspective.
- TSA Rekey every 15 months
- Question: Why do we need to rekey the timestamp certificate every 15 months? Typically, the TSA Keys are protected to the same level as the Subordinate CA Keys as mentioned by some CAs on the call. It was mentioned that we handle a timestamp certificate like a leaf certificate which Tim felt was a mistake because their risk is roughly the same as roots with regards to protection. Bruce mentioned that in our requirements, we have the same network and other requirements on TSA keys as well as root keys that are not on leaf certificate keys, so it was felt that they are really CA keys.
- Follow-up: Bruce will start an email thread on both items for discussion.

Dean mentioned that this is the last meeting of the year. We have made good improvement on items this year and thanks for all the work!

Next meeting is January 13, 2022,  Meeting was adjourned.