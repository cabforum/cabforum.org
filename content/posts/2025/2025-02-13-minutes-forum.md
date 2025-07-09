---
title: 2025-02-13 Minutes of the CA/Browser Forum Teleconference
author: Corey Bonnell
summary: Final minutes of the CA/B Forum call held on February 13, 2025.
date: 2025-02-13
tags:
  - Forum
  - Minutes
type: post
---

# Attendance
 
Aaron Gable (ISRG), Aaron Poulsen (Amazon Trust Services), Adam Jones (Microsoft), Andrea Holland (VikingCloud), Antti Backman (Telia Company), Atsushi INABA (GlobalSign), Ben Wilson (Mozilla), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Chris Clements (Google Chrome), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynetheia Brown (PKIMA), Dean Coclin (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Greg Tomko (GlobalSign), Hogeun Yoo (NAVER), Inigo Barreira (Sectigo), Jaime Hablutzel (WISeKey), Janet Hines (VikingCloud), Jeff Ward (Aprio), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kiran tummala(Microsoft), Lucy Buecking (IdenTrust), Lynn Jeun (VISA), Mads Henriksveen (Buypass), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nate Smith (GoDaddy), Nicol So (CommScope), nome-huang (TrustAsia), Pedro FUENTES (WISeKey), Peter Miskovic (Disig), Peter Miskovic (Disig), Rebecca Kelley (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google Chrome), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sissel (Buypass), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo (Chunghwa telecom), Wayne Thayer (Fastly), wendy brown (FPKIMA), Yamian Quintero (Microsoft)


# Minutes

Read Note-well: Dimitris read the note-well

Review Agenda: No changes to agenda

Approval of Minutes: The minutes for the teleconference of 30 January 2025 were approved.

Discussion:

## Server Certificate Working Group Update – Dimitris Z.
-	Discussed Ballot SC-81. 
-	Went over arguments of reuse of validation evidence, and why it’s important to have a different timeline than the validity of certificates as subscribers are currently used to. 
-	Short discussion about the CA assisted domain validation where Michael Slaughter from Amazon described some options to proceed. 

## Validation Subcommittee – Wayne Thayer
-	Discussion around ballot that Wayne is drafting, relating to adding CAA parameters and clarifying the requirements for DNSSEC when doing CAA Validation. 
-	There is an ongoing discussion on the mailing list. 
-	More discussion expected in next week’s call. 

## Code Signing Working Group Update – Martijn Katerbarg
-	Currently in a holding pattern until Microsoft returns to the calls. 
-	One ballot (CSC-28) currently in the discussion period until 20 Feb 2025. 

## S/MIME Working Group Update – Stephen Davidson
-	Began a new discussion reviewing the content of SC-081, because it does have potential bleed over impact on the S/MIME BR. Would like to get people thinking about the timeframes and consolidating on the server side, and if there is a cause to match them. 
-	Discussion around the EU digital identity wallets, and like the US mobile driver’s license, there is a similar technology stack, but a different governance. Discussion is around how CAs might be able to rely on US MDLs for individuals for vetting individuals. There is drafted text but requires more thought to get it right. Might be of interest for other CAB Forum standards. 
-	Scott Rea shared that Australia and New Zealand has also rolled out the same MDL, plus other certifications as well. 
-	Dimitris raised a point the last call, that the group previously had described a rubric that would be applied to accepting new frameworks into the S/MIME BRs. This is for the use of e-signatures. The group will go through this exercise for the American MDLs, to set a precedence for the addition of any similar frameworks in the future. 
-	Group Discussed the Organization Identifier for the EUID, which is a different type of identifier that can go in the National Trade Register registration scheme. The WG has some text but plans on parking this topic for a while to allow the corresponding ETSI change request to be published. 

## NetSec Working Group Update – Clint Wilson
-	Met Feb 11th 
-	Discussed a ballot in progress that is being written, which will update some parts of the requirements related to the CA Infrastructure. The discussion was around the ways that different systems definitions in the NCSSR version 1.7 differ from the requirements on those systems in version 2.0 Plus.
-	Cade Karins provided a fantastic visualization document spreadsheet of the differences that exist that occur between the two NCSSRs. Discussion was around the comparison and areas where the system was partially newly in scope, and if it was accurate and acceptable. 
-	Clint put a link to the PR the group is working on. 

## Definitions and Glossary Update – Tim Callan
-	No update this week

## Forum Infrastructure Update – Ben Wilson
-	Had a brief meeting. 
-	Went over the questions list, which is now populated from previous membership. 
-	There is some SES configuration for sending out bound notifications being worked on.
-	Wayne raised a couple of issues regarding the member tools configuration and house cleaning of administrative rights on that tool.
-	Ben brought up the issue of the website and getting volunteers to contribute to help maintain. 
-	Jos will get some people access to the container management tool, and Martijn will work on migrating member dev and member tools.

## Intellectual Property Rights (IPR) update – Ben Wilson
-	Group went through the Invited Expert’s Policy and Agreement, along with the Contributors License Agreement and released them for a seven-day last call among the group. Anna from Apple was not present at the last meeting, and she wants to take another look at them again, so group is waiting on her review. 
-	Group also reviewed changes to section 4.3 of the IPR Policy to align with the Exclusion Notice Template. 
-	Next call, group plans to review the Interested Party Review Process.
-	Ben is still looking for an endorser of a ballot when the Invited Experts Policy is finalized. 
-	

## Bylaws Revisions – Ben Wilson
-	Ben flagged every item that he felt could be part of an upcoming Bylaws Ballot.
-	Clean up items are in progress but marked the items that are most urgent. 


## Any other Business: 
-	F2F - Tokyo
- Dean sent out a note about topics and the open slots that are available.
- Tadahiko Ito talked about the guest speakers that will be presenting. 

Next Call: 27 February 2025 at 11:00 am Eastern Time

Meeting adjourned

