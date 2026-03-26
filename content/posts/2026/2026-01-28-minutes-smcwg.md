---
date: 2026-01-28 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-01-28 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
January 28, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1. Roll Call 
 
________________________________________
 
2. Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3. Approval of past minutes
 
  The following minutes were approved:
    * January 14
 
Minutes provided by Stephen Davidson.
 
________________________________________
 
4. Review Agenda 
 
________________________________________
 
5. Membership
 
NA
 
________________________________________
 
6. Discussion
 
    * The WG discussed a draft mDL ballot prepared by Stephen Davidson, incorporating feedback from previous discussions.  https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...3dc65521fde33e125cd855e652e0f51243102fec.  New feedback was the proposed text was overly granular and should be made more high level, to be consistent with the requirements of the other vetting methods.  Stephen agreed to update the text.  Ben Wilson and Scott Rea agreed to endorse a ballot.
    * Andy Warner said that Google/Gmail continue to gather data on the SMTP serverAuth/ClientAuth question, and hoped to bring more detail in a coming meeting.
    * Stephen presented a proposed ballot that would implement the DNSSEC logging carveout that was recently passed in TLS SC096. https://github.com/srdavidson/smime/commit/1fcc4958cb00485fd9218d3ae838c0bb20f50c5a.  Ben Wilson and Martijn Katerbarg agreed to endorse a ballot.
    * The WG discussed the impact of the TLS SHA1 ballot (SC097).  As most roots today are multipurpose, that ballot has the impact of squeezing out most SHA1 use in S/MIME.  It was agreed, in the interests of thoroughness, to add similar language to the S/MIME BR to avoid confusion in the “Extant CA” case.  Martijn agreed to provide draft text.  The WG agreed to combined the SHA1 and DNSSEC text in a single ballot.
 
________________________________________
 
7. Ballot Status Updates
    *  In Development:  mDL, SHA1/DNSSEC
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: NA
    *  Approved and Effective: SMC014: DNSSEC for CAA (October 13)
 
________________________________________
 
7. Next meeting:
 
    * February 11, 2026 at 11 am Eastern. 
 
________________________________________
 
8. Any other business
 
Stephen reminded the WG that CABF elections would occur later this year and invited members to consider if they wished to assume a leadership role in the WG.
 
________________________________________
 
9. Adjourn
 
## Attendees:
 
Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Arman Asemani (Apple), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jeff Ward (CPA Canada/WebTrust), Lilia Dubko (CPA Canada/WebTrust), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Sandy Balzer (SwissSign), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
 