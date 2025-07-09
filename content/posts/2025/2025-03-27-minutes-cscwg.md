---
date: 2025-03-27 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2025-03-27 Minutes of the Code Signing Certificate Working Group F2F
type: post
---

## Minutes of CSCWG F2F
 
March 27, 2025

These are the approved minutes of the CSCWG F2F meeting of March 27th, 2025 as prepared by Martijn Katerbarg
 
## Attendees
Adrian Mueller (SwissSign), Alison Wang (TrustAsia), Alvin Wang (SHECA), Antti Backman (Telia Company), Ashish Dhiman (GlobalSign), Brianca Martin (Amazon), Bruce Morton (Entrust), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Eva Vansteenberge (GlobalSign), Hao-Chun Li (TWCA), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hisashi Kamo (SECOM Trust Systems), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), JP Hamilton (Cisco Systems), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kenji Urushima (GlobalSign), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Naveen Kumar (eMudhra), Nick France (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pekka Lahtiharju (Telia Company), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Sooyoung Eo (NAVER Cloud Trust Services), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Trevoli Ponds-White (Amazon), Vinay Kumar (OATI), Yamian Quintero (Microsoft)
 
## Anti Trust Statement
Martijn Katerbarg read the Anti Trust Statement.
 
## Membership Applications
Sergey Pavlovskiy (Interested Party) - Approved
 
## Ballot Status
•	Reduction of Maximum Certificate Validity
o	Pending ipdates to language
o	Expecting new effective date in Q3
•	CSC-29: Aligning CSCWG BRs with recent SCWG ballots
o	Currently in discussion period as a restart of CSC-28
 
## Pre-emptive Revocation
Tom initiated a discussion on preemptive revocation of code signing certificates, prompted by reports from security researchers identifying certificates being sold on the dark web before any confirmed misuse.
There was a debate on the feasibility and risks of revoking certificates preemptively based solely on third-party reports. Concerns were raised regarding the potential for abuse, such as using false claims to trigger revocations and thereby disrupt legitimate software.
It was suggested that CAs should evaluate the quality and credibility of reports submitted by researchers, potentially developing trust relationships on a case-by-case basis. There was general agreement that taking action without concrete evidence could be problematic.
Participants confirmed that existing Baseline Requirements (BRs) permit CAs to revoke certificates at their discretion if deemed a risk to the PKI ecosystem. However, there was interest in clarifying or expanding BR and CP/CPS language to explicitly allow such discretionary revocation.
 
## Further restricting Hardware Key usage options
The continued validity of weaker methods like self-attestation or screen sharing in section 6.2.7.4.2 was discussed, for verifying subscriber private keys are hardware-backed. It was proposed to remove methods 3, 4, and 5 due to insufficient verifiability.
Methods involving subscriber click-through confirmations or unprovable claims were criticized for lacking security and enforceability. There was agreement that such methods fall short of the intention behind hardware-backed key requirements.
Growing industry support for key attestation from vendors was noted. It was suggested that stricter requirements could motivate cloud providers to offer more verifiable attestation solutions.
General consensus supported drafting a proposal to remove or revise weaker verification methods, with a long-term effective date to allow current subscribers and vendors time to adapt. The group agreed to improve method 3 and potentially refine method 6 while eliminating unverifiable practices. 
 
## PQC - Updates and potential draft ballot
Corey presented a possible path forward for a draft ballot. A preferred list of PQC algorithms was reviewed, with a focus on MLDSA 87, 65, and 44, due to support in Windows and upcoming OpenJDK support. LMS was discussed but discouraged by Microsoft due to its complexity and state management challenges. SLH-DSA and hash-MLDSA were mentioned as less desirable or redundant.
Microsoft confirmed support for MLDSA 87 and plans for additional parameter sets, but expressed reservations about LMS.
The group reviewed proposed updates to sections 6.1.5, 6.1.6, and 7.1.3 of the BRs to formally add support for MLDSA
 
## Meeting Adjourned

