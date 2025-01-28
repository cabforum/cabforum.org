---
author: Martijn Katerbarg
date: 2024-12-14 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-12-14 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees
Alexander Truskovsky (Amazon), Brianca Martin (Amazon), Brian Winters (IdenTrust), Bruce Morton (Entrust), Dimitris Zacharopoulos (HARICA), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Roberto Quionones (Intel), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Yateesh Bhardwaj (GlobalSign)
 
## Note Well
Martijn read the Note Well,
 
## Approval of prior meeting minutes
The November 14th minutes were approved.
 
## Interested Party Applications
- Jeff Ward - Private Person
    - Approved
- WOJCIECH JAKUBOWSKI - Private Person
    - Approved
 
## PQC digital signature schemes
Brianca held a presentation on PQC digital signature schemes. The presentation is attached to these minutes. Key points:

- Amazon is looking on adding ML-DSA as an allowed signature to the CSBRs. Is there interest from the group to also allow SLH-DSA?
    - The working group appears in favor of adding both signature schemes into the CSBRs while IETF is still working on its drafts.  
    - There are concerns about composite schemes and dual signatures.
    - DigiCert is willing to support Amazon in getting these schemes added to the CSBRs.
- Dimitris asks for a clarification if the proposal is to add in these algorithms as a drop-in replacement for the existing ones today, until CAs, HSMs, Tokens, etc actually support this.
    - Alexander states that yes, we want to have these in to have support ready by the time we need or can switch, even though we can’t use these in practice yet.
    - Tim adds that indeed we won’t drop the other algorithms yet. However, adding the new ones already will also send a message to manufacturers that CABF is interested in these.
    - Martijn asks if we should temporarily drop the hardware requirement for PQC-based keypairs
        - The WG does not believe we should go this way
    - It’s pointed out that Microsoft has already stated they’re interested in moving towards PQC
- Amazon will be working on a future ballot for this.
 
## Max validity of CS certs
Bruce pointed out a correction needed on the current proposed draft since the CSBRs talk about a Signing Service Certificate, which sounds like it’s different from a Subscriber Certificate.

Different language was discussed during the CSWG call. Martijn will send this proposal to Ian.
 
## Aligning CSCWG BRs with recent SCWG ballots
Bruce presented an overview of ballots passed within the SCWG which we should potentially align with.
- Ballot SC-73 - has some value with CSCWG.
- Ballot SC-75 - Pre-Sign linting - there is no linting created for CS at this time. The group decided on having a SHOULD in order to incentivize someone to start writing lints.
- Ballot SC-76v2 -OCSP requirements – Was discussed in the last meeting – 15 minute rule has value.
- Ballot SC-77 - Update Web Trust Audit name in Section 8.4 and references - already addressed
- Ballot SC-78 - Subject organizationName - Martijn is checking to see if there are CS issues.
- Ballot SC 79v2 - allow more than one certificate policy - not relevant in CS environment.
- Ballot SC-80v3 – WHOIS deprecation - Not relevant.
- Ballot SC-69 – Logging alignment - Yes we should align on these.
- Ballot NS-003 – Update requirement to adhere to NSR v2.0?
    - Martijn raises if we should wait until NS-004 and NS-006 are cleared.
    - Bruce wonders if we should just align to “the latest” version within the CSBRs.
    - There seems to be some agreement within the CSWG to align with this, however it’s pointed out that there’s some instability with the NSRs over the last few versions, which is being addressed. Being on a specific version has proved helpful during this time to not cause any issues.
    - For now the WG agrees to not yet update to the latest NSR version
 
## Other business
We will be cancelling the December 26th meeting
 
## Next Meeting
January 9th, 2024