---
author: Martijn Katerbarg
date: 2025-03-27 00:00:00
tags:
- Minutes
- S/MIME
title: 2025-03-27 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG
 
March 27, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## Attendees (for the overall F2F Day 3)
Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Alison Wang (TrustAsia), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Arnold Essing (Telekom Security), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Chya-Hung Tsai (TWCA), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco Systems), Eric Kramer (Sectigo), Hans Metsoja (Opera), Hao-Chun Li (TWCA), Hazhar Ismail (MSC Trustgate Sdn Bhd), Henry Birge-Lee (Henry Birge-Lee (Private person)), Hideki Kobayashi (KPMG Japan), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Aprio), Jeremy Rowley (DigiCert), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Jinhwan Shin (Deloitte Korea), JP Hamilton (Cisco), Jun Okura (Cybertrust Japan), Karina Sirota Goodley (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kenji Urushima (GlobalSign), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Masatoshi Shigaki (KPMG Japan), Masayuki Suzuki (KPMG Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Michael Slaughter (Amazon), Nate Smith (GoDaddy), Naveen Kumar (eMudhra), Nick France (Sectigo), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Puja Sehgal (Microsoft), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Russ Housley (Vigil Security), Ryan Dickson (Google), Sawada Takashi (SECOM), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sooyoung Eo (NAVER Cloud Trust Services), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vinay Kumar (OATI), Wayne Thayer (Fastly), Xiu Lei (GDCA), Yamian Quintero (Microsoft), Yannick Thomassier (Certinomis), Zurina Zolkaffly (MSC Trustgate)
 
## 1. Roll Call
Taken from recording.
 
## 2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.
 
## 3. Review Agenda
Minutes were prepared by Stephen Davidson.
 
## 4. Approval of minutes from last teleconference
The minutes of the March 12 teleconference were approved.
 
## 5. Discussion
The WG confirmed the participation of Sergey Pavlovskiy as Interested Party.
 
The WG provided an update of it’s activities over the previous calendar quarter.  That includes:
Review of SBR-related Bugzillas and feedback arising from users of pkilint’s S/MIME BR (SBR) lints
Algorithm discussion and PQC talk from D-Trust
Impact review of SC-080, SC-081 and others on SBR
Discussion of browser policy change impacts on S/MIME
Approval of ballot SMC09 - linting
Approval of ballot SMC010 - MPIC
Preparation of ballot SMC011 - EUID
Preparation of ballot SMC012 - ACME for S/MIME
 
Stephen Davidson noted an issue had been filed in GitHib proposing a new form of wildcard certificate for S/MIME.  He suggested that the topic would be better covered by the IETF.  Russ Housley agreed to correspond with the submitter.

Stephen said that the SMCWG should look to revisit its charter and get involved in larger discussions for ways to improve the S/MIME ecosystem – which involved many of the WG’s same participants but went beyond the current discussions of CA operations and certificate profiles.

Stephen said that the WG would welcome the opportunity to speak with the certificate consumer (email clients) directly for ways we can help make the use xperience of S/MIME better and easier.  Tim Callan said that we should also reach out to MAWG; Clint Wilson said he could help facilitate that.

The SMCW discussed section 3.2.4 of the SBR for individual vetting methods with particular emphasis on (3) eID and (4) digital signature,

Stephen requested help from European CAs to review the language relating to the European eIDs and whether it needs updated for eIDAS and the EUDI Wallet.  He requested assistance from a European TSP/CA in proposing updates to those requirements, particularly the validation aspect.

Stephen noted that the current text for digital signature set up a framework for approving national digital signature schemes.  No such scheme has ever been approved using the framework.  He requested assistance from a European TSP/CA in proposing the eIDAS scheme for QES, or suggested that the section should be considered for removal. The WG noted a wish to retain the section. Dimitris Zacharopoulos said the European CAs would work on a proposal, but it will take a while due to current priorities.

The WG went on to discuss the possibility of including Mobile Driving License (mDL).  He noted that the technical standards were established that describe how they work (ISO/IEC 18013-5: mDL Application) and how to use them for online verification (ISO/IEC 18013-7: mDL Privacy and Security).  The standard even includes the specification of a VICAL, a form of trust list for mDL issuers.

The issue is that, there is no international trust list of approved issuers and that even in the US, there are uneven approaches by AAMVA and the US Dept of Homeland Security.  See more at:

* AAMVA trust service: https://www.aamva.org/identity/mobile-driver-license-digital-trust-service

* DHS has separately stated that they would handle mDLs using bilateral agreements. "Beginning May 7, 2025, TSA and other Federal agencies may accept for 'official purposes' only mDLs issued by States to whom TSA has granted a waiver" and said they would release a list. More at https://www.dhs.gov/real-id/real-id-mobile-drivers-licenses-mdls and https://www.tsa.gov/digital-id/participating-states

The WG reviewed https://github.com/cabforum/smime/issues/270 and initial draft text at https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...bd37e2d5650d02092426a97ca1eaa88f0c29ae1a.  The topic will be continued.

Clint said that long term mDLs were of great interest.  Short term he advised caution while the ISO/IEC 18013 standard and EKUs stabilized as well as the AAMVA program. Scott Rea said that in the absence of trust lists, the WG might need to approve mDLs on a case by case basis.

Tim said that we might want to add a new category for third-party vetting setups like Kantara, which might be private mDL. Stephen noted that we already allow one such system in GLEIF’s LEI.

In this case Ben Wilson noted we should decide our framework for approving them, as we did with digital signatures.  Scott said this should perhaps be set up as an Appendix.

It was noted that mDL should probably be divided as a separate category from eID (even though in Europe the mDL is proposed as part of the EUDI Wallet).  Stephen asked members with mDL expertise to contact him or Martijn.

Russ Housley provided an update of PQC activity at the IETF. 

These documents are in RFC Editors queue:

* LMS and XMSS:  draft-ietf-lamps-x509-shbs

These documents are in WG Last Call:

* ML-DSA:  draft-ietf-lamps-dilithium-certificates

* ML-KEM:  draft-ietf-lamps-kyber-certificates

* SLH-DSA:  draft-ietf-lamps-x509-slhdsa

Assuming ~120 days to finalization, this means that the WG will be able to look at PQC-friendly profiles soon in the SBR.  Dimitris and Corey Bonnell noted that the Code Signing WG also was moving forward.  Russ noted that there are even example certificates in the documents.  Stephen noted that we’d welcome hearing from platforms and client software about PQC plans.

Stephen closed by welcoming proposals for topics from members of the group. 

## 6.     Any other business
None.
 
## 7. Next call
Next call: Wednesday, April 9 2025 at 11:00 am Eastern Time
 
## Adjourned