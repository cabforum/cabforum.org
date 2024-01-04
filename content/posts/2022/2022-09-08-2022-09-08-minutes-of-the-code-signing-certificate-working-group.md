---
aliases:
- /2022-09-08-2022-09-08-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-09-08 16:00:00
tags:
- Code Signing
title: 2022-09-08 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Andrea Holland, Atsushi Inaba, Bruce Morton, Dean Coclin, Dimitris Zacharopoulos, Ian McMillan, Iñigo Barreira, Janet Hines, Joanna Fox, Martjin Katerbarg, Michael Sykes, Mohit Kumar, Roberto Quiñones, Tim Hollebeek, Tomas Gustavsson, Vijay eMudhra

## Minutes {.wp-block-heading}

Dean read the anti-trust statement.

No objection to minutes from Aug-25th, minutes approved. Will be sent to public list.

Reminder on CSC 15 , IPR review ends on Sept 18th

### Malware Proposal from Martijn {.wp-block-heading}

Nothing new to discuss at this time.

### Key Protection requirements deadline {.wp-block-heading}

- Ian shared that there has been feedback/concerns on deadline approaching fast and not everyone ready to adopt new requirements.
- Time between publication of requirement to deadline may have been too aggressive. Tim suggests standardizing on general 1 year notice before enforcement
- In addition to short deadline, market conditions and supply chain issues may be preventing some from adoption new requirements.
- This group has been aware of topic for a long time, but even after CSBRs are published, most developers do not read them
- Several points about the communication problem
- Some CAs have been actively reaching out to subscribers about new requirements
- Moving date does not resolve awareness
- Batching updates may help to communicate changes
- Moving date implies not as critical as initially suggested
- It was suggested that we could keep original date and use an exception process
- Exception processes have not worked well in the past.
- They may be inconsistent and public review creates more risk
- Goal should be to avoid an exception process
- Creating conditional rules for issuance under exceptions adds additional complexity requirement for CAs in short time. Better to just move out the date
- Ian will write ballot draft and send out sept-9th to get discussion period moving and collect endorsers. Tim and Bruce offered to endorse

### Signing Service discussion {.wp-block-heading}

- Bruce: Corey has published info in GitHub for anybody to review. Discussing separating audit criteria for CA vs signing service vs timestamp authority. Looking for help to review it.

### Timestamping {.wp-block-heading}

- Ian: will work on draft to require TSA CA issuing timestamp and entity certs,  be protected offline, and reduce validity period of those timestamp and entity cert, to no more than 6 years.
- It should cover period for Java using yearly new key. We can send message to Oracle on intent, to get their feedback.

### Other business {.wp-block-heading}

Anyone that will attend Berlin should sign up now to allow for planning for limited spots. Some guests or companies with multiple spots may be asked to limit attendance since only 60 spots available.

Next meeting will be September 22nd

Meeting adjourned