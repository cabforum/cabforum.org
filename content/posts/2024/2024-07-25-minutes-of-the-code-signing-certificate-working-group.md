---
author: Corey Bonnell
date: 2024-07-25 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-07-25 Minutes of the Code Signing Certificate Working Group
type: post
---


## Attendees

Brian Winters (Identrust), Brianca Martin (Amazon), Bruce Morton (Entrust), Dean Coclin, (DigiCert), Ian McMillan (Microsoft), Inaba Atsushi (GlobalSign), Mohit Kumar (GlobalSign), Puneet (EncryptionConsulting.com), Rebecca Kelley (SSL.com),  Richard Kisley (IBM), Scott Rea (eMudhra), Thomas Zermeno (SSL.com)

## Minutes

Dean read the note well.
 
* Meeting minutes for June 13, 2024 Meeting (Rebecca Kelley) posted – Approved unanimously.
* Meeting minutes for June 27, 2024 Meeting (Brianca Martin) yet to be posted.
* Meeting minutes for July 11, 2024 Meeting (Ian McMillan) posted – Approved unanimously.

* IPR review Ballot CSC-25 is on-going – conclusion date is August 1, 2024.
* IPR review Ballot CSC-26 is on-going – conclusion date is August 1, 2024.

Simplifying EV : Tim H is at IETF (along with a lot of other folks who are normally on this call), so we will return to this item on a future call, when Tim is available. Related question on Microsoft HLK Certification requiring EV cert – posed to Ian for clarification.

[Ian] There is a requirement today for registration with EV cert, but the program is reviewing that, and we anticipate an outcome in the August time frame.

Elections for chair and vice chair positions will take place in October. Nomination process outlined. Dean is not eligible as Chair again, but Bruce as VC has standing for automatic nomination. Bruce accepts that nomination. Other nominations for Chair will be open in August. VC nominations are open now. Ian nominates Martijn Katerbarg as Vice Chair, seconded by Thomas (SSL.com). Martin was not on call to accept. Bruce nominates Dean as VC.

Dean to add the elections process outlined by Dimitris to the agenda for the next meeting and start the formal nomination process in August. 

Other Business: 

Ian has created draft of Ballot to change max validity (reduction to 15 months), but just wants to settle on effective date to be mentioned in the ballot. April 30, 2025 effective date was agreed, will post to list after 1 Aug.

PCIHSM requirements : Ian said MSFT folks feel using an OR statement (FIPS140-2 level 2 or PCIHSM) doesn’t make much sense since all Commerce HSMs already meet FIPS. 

[Richard] FIPS taking a long time to get certifications approved for HSMs in the transition to FIPS140-3 so FIPS compliance is beginning to become difficult to maintain. 

[Ian] MSFT is holding firm at this point, and still requiring FIPS. No disagreement on required levels: Subscriber is Level 2, Signing Service or CAs are Level 3.

[Puneet] Certification of device is one thing, but it also depends on how it’s been implemented as to whether it meets that Level.

Meeting adjourned. Next meeting August 8th.
