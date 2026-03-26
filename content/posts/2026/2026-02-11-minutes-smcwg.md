---
date: 2026-02-11 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-02-11 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
February 11, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1. Roll Call 
 
________________________________________
 
2. Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3. Approval of past minutes
 
  The following minutes were deferred:
    * January 28
 
________________________________________
 
4. Review Agenda 
 
________________________________________
 
5. Membership
 
NA
 
________________________________________
 
6. Discussion
 
    * The WG discussed Ballotr SMC015 on mDL that had entered discussion period. The WG discussed that the ETSI EN 319 403 reference should be deleted as it was superseded by ETSI EN 319 403-1 since 2020.  Roman Fisher noted that an additional mention of ETSI EN 319 403 remained in the text.  Stephen Davidson agreed to update the ballot and restart discussion.  He also would open an issue at the servercert WG as the TLS BR also mention the older ETSI EN 319 403.  https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...3dc65521fde33e125cd855e652e0f51243102fec
    * The WG discussed the use of clientAuth/ServerAuth based on data provided by Andy Warner derived from a limited survey conducted by Gmail.  That data found that more than 76% of SMTP-IN used a combined cert and less than 6% used a cert with only serverAuth.  Dedicated clientAuth-only certificates are virtually non-existent. It is unclear if this is driven by technical necessity versus convenience.  For SMTP-OUT the survey was curtailed as it quickly identified a large provider who rejected connections that included only ServerAuth.  The WG enquired if a breakdown was available for webPKI vs private trust certificates.  Stephen noted that this topic seems to fall across the boundaries of the TLS and S/MIME WG and asked if Gmail or other Cert Consumers would have a representative able to speak to the CABF at the upcoming F2F (even remote) on the clientAuth/ServerAuth TLS situation in SMTP.
    * The WG discussed a proposal from Stephen and Martijn Katerbarg of a ballot that will create equivalency in the S/MIME BR for TLS ballots SC096 and SC097.  It was agreed that SHA1 was not desired in the public ecosystem and the proposal will move to ballot as SMC016. https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...55b19f73f207eddab515dfb3d9b1cac3c88b2331
 
________________________________________
 
7. Ballot Status Updates
    *  In Development:  SHA1/DNSSEC, Pseudonym
    *  In Discussion Period: SMC015v2: Allow mDL for authentication of individual identity
    *  In Voting Period: NA
    *  Under IPR Review: NA
    *  Approved and Effective: SMC014: DNSSEC for CAA (October 13)
 
________________________________________
 
7. Next meeting:
 
    * February 25, 2026 at 11 am Eastern. 
 
________________________________________
 
8. Any other business
 
The teleconference of March 11, 2026 will be cancelled due to the F2F.
 
________________________________________
 
9. Adjourn
 
## Attendees:
 
Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Dustin Hollenback (Apple), Hisashi Kamo (SECOM Trust Systems), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lilia Dubko (CPA Canada/WebTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert)
 