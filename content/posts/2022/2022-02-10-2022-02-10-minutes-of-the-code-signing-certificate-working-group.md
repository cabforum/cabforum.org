---
aliases:
- /2022-02-10-2022-02-10-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-02-10 14:00:00
tags:
- Code Signing
title: 2022-02-10 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland – SecureTrust, Atsushi Inaba – GlobalSign, Bruce Morton – Entrust, Corey Bonnell – DigiCert, Dean Coclin – DigiCert, Dimitris Zacharopoulos – HARICA, Ian McMillan – Microsoft, Inigo Barreira – Sectigo, Roberto Quinones – Intel, Tim Crawford – WebTrust

## Minutes 

Chris Kemmerer “volunteered” by Dean Coclin as minute taker.

Antitrust statement: read by Corey.

Minutes: discussion regarding minutes from Jan 27 2022 call:

Dimitris observed that the minutes submitted are perhaps too detailed, easier to digest if summarized.

Dean agreed that high level of detail is not necessary.

General discussion of WebEx’s transliteration capability and level of detail expected/required.

Dimitris requested more time to review minutes, Dean concurs, minute approval deferred to next session.

### CSC-6: Subscriber Private Key Protection (Ian) 

Latest feedback from Tim H incorporated into draft, changes reviewed:

Effective date set to Nov 15 2022

“Hardware Crypto Module” definition revised to clarify

Discussion: general consensus on the above two items.

CSP (Cryptographic Service Provider) noted as Microsoft-specific term, found in Sections 5 and 16.3.2.

Discussion: Ian suggested “crypto library” as a broader term, supported by Inigo and others. Adopted.

Existing language (regarding subscriber CSR counter-signing w/manufacturer cert) noted as capable of abuse.

Discussion: Hint suggested by Tim H (“commonly known as ‘key attestation'”) as guidance for CAs/auditors generally favored, added to language effective Nov 15 2022.

and typo correction noted (“The CA relies on a report…”).

Ian: with these changes, Tim H endorsed CSC-6 and another endorser sought. Bruce agreed to endorse.

### Face to Face 55 discussion 

Dean: discussion of presentation of 2021 accomplishments, 2022 goals.

Bruce agreed to review ballots, assemble slides for status/goals.

Dean: goals should include:

Subscriber key protection

Format changes

Signing services

Ian: would like to include:

High risk applicants/high risk sections generally (something “acheivable/prescriptive/not so ambigious”

addressing open source verification projects/community (noting no “direct legal entity to validate” and inviting thoughts on this.

Dimitris raised:

Timestamping, discussion agrees that this would be scoped to \*code signing-related\* timestamping.

General discussion re: agenda for CSCWG session in F2F:

CSC-6 (likely to pass, probably w/extended discussion time) Document format transistion (process presentation) Dean noted that more participants likely in F2F session (70+ signed up) and non-CSCWG members able to observe (but not participate) Bruce raised signing services

Discussion: (Bruce/Dean/Tim C) suggests that defining “signing service”

and purpose/intent/goals/implementation most important. Bruce: “delete everything about signing service and start from zero” (strong second from Tim C) and relates signing service to subscriber key protection (risk to relying parties same whether fully-audited signing service or cloud service. Dean: control of private keys important in signing services. Discussion of ephemeral keys, probably not as an immediate requirement. Roberto: noted hijack of build infrastructure/supply chain as threat. General agreement. Dean/Bruce/Dimitris: discussion of how to present signing service in “goals” slide.

Dean noted scheduling of CSCWG session in F2F (1015am MST Feb 24 2022), possible issues for European/Asian participants.

Dean confirms no other business.

Meeting adjourned.