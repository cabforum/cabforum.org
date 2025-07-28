---
date: 2025-06-12 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2025-06-12 Minutes of the Code Signing Certificate Working Group 
type: post
---

These are the Final Minutes of the CSCWG F2F Meeting as prepared by Brianca Martin.
 
Martijn read the Antitrust statement.
 
Adopted agenda as presented.
 
Discussion topics
 
Discussion Topic: Migration to a single profile
* Microsoft introduced this topic 1 year ago. Are there specific items that we want to bring to a single profile?
* Karina from Microsoft: Need to understand where the line is we want to draw. Goal is to keep them closer to EV, uplevel all code signing certificates to keep as much identify/information as we can.
* Suggestion from Martijn to go through section to indentify each section that needs to be removed.
* Karina suggested we have an offline discussion to review the fields.
* Martijn suggested to use GitHub.
* Send Karina an email if you want to participate in this discussion.
* Brianca asked what the end goal is or if there is a timeline driving this requirement.
* Karina - Goal is that every certificate is EV.
* Bruce from Entrust expressed that EV may not support all subscribers. May have to change the EV rules. Rather than having all EV characteristics they have the Org ID which provides third party information about the subscriber. Consider using another number in the Org ID
* Karina would like data to understand how many subscribers OV doesn't work for and why. The average consumer should be able to see who signed the code.
* Bruce stated that the Non-EV side allows "", EV does not. Consider eliminating OV for individuals. Document signing required face to face verification, code signing does not. Code signing certificates most to sign malware.
* Martijn shared a recent example about a reason to include face to face verification.
* Karina emphasized that she is open to carve outs.
* Corey shared a DV-style for code signing that may be useful for certificates without an organization.
* Martijn 
* Corey shared that publicly trusted certificates use "", we may be able to use that for code signing.
* Martijn will start a branch on GitHub to start the process.
 
Discussion Topic: Reduction of maximum certificate validity 
 *No updates from Microsoft
 
Ballots
 
Ballot update: CSC-30 - Aligning CSCWG BRs with recent SCWG ballots
* Voting is underway, need one vote from Microsoft.
*Trev asked when the voting period ends.
* Corey shared that voting ends next Wednesday.
* Trev clarified that Microsoft would need to look at the ballot.
* Karina is aware, internally discussing.
* Corey verified that he will restart the ballot it if does not pass.
 
Ballot update: PQC draft ballot
* Draft ballot has been avaialable for some time.
* Will assign a ballot number and get the discussion period kicked off.
* Scott from eMudhra will endorse.
* Martijn asked about Apple and when it will be allowed (for SMIME).
* Corey shared that we can build on adding ML-DSA (i.e. hybrid) later.
* Microsoft has a public version that allows ML-DSA. Microsoft is not working on PQC for Code signing, they are focused on TLS. By October they will have progress but it may not be on the code signing side.
* Brianca asked if the discussion period would start now once CSC-30 passes.
* Corey confirmed this is the case. SInce we have a second endorser, there are no more empediments.
 
No other business.
 
Next meeting date: June 26th @ 12 PM EST
 
Adjourn
 