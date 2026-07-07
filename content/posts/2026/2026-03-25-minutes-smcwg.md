---
date: 2026-03-25 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-03-25 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
March 25, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
 
*  Minutes of February 25

Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
________________________________________
 
6.            Discussion
 
Stephen Davidson noted that SMC016 was moving to ballot.
 
The WG continued discussion of impacts of a proposed Root Program policy update on S/MIME.  See notes from CABF #67 Day 3 in the wiki https://wiki.cabforum.org/books/meetings/page/meeting-67-agenda.  Dustin Hollinback noted that Apple’s policy intended that CAs enabled for S/MIME under the Apple program would issue only certs that comply with the S/MIME BR.  Tim Hollebeek said that at the outset of the SMCWG it was understood that a transition would occur (thus creating the intro that defines an S/MIME cert as emailProtection +rfc822name in SAN) and that he was glad to have the clarification of Apple policy, and that a future clarified compliance date would be helpful.  Dustin said an updated draft of the policy was expected and would include a transition time to allow CAs to come into compliance. He was happy to have had the chance to discuss the topic at the F2F and with the WG. Stephen said CAs were grateful for the interaction on the evolving topic.
 
The WG also discussed the proposed Apple restriction of EKU combinations to define set of Trust Purposes, which would allow only emailProtection (i.e., the SBR Strict) or emailProtection+clientAuth (i.e., a modified version of the SBR Multipurpose).  Dustin clarified that at this time both types could be provided from the same sub CA, and the same CPS.  clientAuth alone should not come from an S/MIME hierarchy; they should come from a specific clientAuth hierarchy.
 
Tim suggested that the SBR should be updated to reflect the tighter Apple policy.  Dustin said that it was acceptable for the SBR to adopt a more flexible approach than a specific root store policy (which was the case with the TLS BR).  Stephen said that the group would return to the topic.
 
The WG reviewed various standards dealing with RSA key sizes (e.g, NIST, Germany BSI, SOG-IS, ETSI, ECCG, ANSSI) and discussed a draft ballot requiring step up of new subCAs using RSA keys to 3072 bit or higher and eventually to cease issuance on subCAs using RSA keys smaller than 3072.  Stephen shared a chart of the expiration of existing S/MIME CA keys <3072 which showed many expiring before 2030, but with a long tail across the next decade.  Dustin questioned why the draft was not more aggressive.  CAs noted that there were issues with larger key sizes in some (unidentified) mail clients and/or tokens.  Stephen asked for feedback on concrete examples.
 
There was WG support for the ballot.  Stephen agreed to make changes to the draft based on feedback.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development:  RSA stepup to 3072
    *  In Discussion Period: Ballot SMC016: Equivalence with Ballots SC096 and SC097
    *  In Voting Period: NA
    *  Under IPR Review: until March 27, SMC015v2: Allow mDL for authentication of individual identity
    *  Approved and Effective: SMC014: DNSSEC for CAA (October 13)
 
________________________________________
 
7.           Next meeting:
 
    * Wednesday, April 8, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adriano Santoni (Actalis S.p.A.), Andy Warner (Google), Arman Asemani (Apple), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dustin Hollenback (Apple), Florian Oprea (360 Browser), George Postelnicu (TeleTrust), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))