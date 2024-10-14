---
author: Iñigo Barreira
date: 2024-09-12 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-09-12 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Andrea Holland (VikingCloud), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), David Kluge (Google), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Llew Curran (GoDaddy), Luis Cervantes (GoDaddy), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Miguel Sanchez (Google), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority)

## Roll Call

Inigo started the roll call. 

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

Paul asked if we could talk about SC79 and this was added to the agenda.

Dean asked if we could address the questions that came into the questions list. 

This will also be added.

## Approval of minutes

August 29th meeting minutes were approved.

## Membership

MOIS associate membership: discussion on moving them to full member. They have met the attendance requirements, and it was confirmed that their root was present in Microsoft. Approval to move to full member granted.

## Discussion

Inigo asked for F2F topics or presentations to discuss so they can be put on the agenda. 

### Questions list issue

Clint agreed to provide a draft answer to the question about audit log retention. The answer was sent to the requestor and the questions list.

### GitHub open issues

a.	Github item 459: “Add domain validation method to Certificate Profiles”. Clint believes this is still valuable and useful. Paul asked why this would be useful for subscribers? Clint said it was primarily to confirm to subscribers/domain owners, an awareness of how their certificates were verified. Also helpful to relying parties to understand what methods are being used and to what extent. This information can be kept very small in the subscriber certificate. Dimitris asked if this would allow for multi validation methods. Clint said this had been discussed. Trev asked if it could just be put in the precert but Clint suggested that would not be prudent. Corey said RFC 6962 would not allow it to be removed. It was agreed to add this to the F2F meeting topic list.

b.	Github item 461: “Minor grammatical error in 7.1.2.11.4 Subject Key Identifier”. Appears to have been included in the cleanup. Item closed.

c.	Github item 462: “Inconsistent document formatting (Markdown vs PDF)”. This was also in the cleanup ballot and closed.

d.	Github item 463: “Extra parenthesis in 7.1.2.7.4 Organization Validated”. For next cleanup ballot

e.	Github item 465: “Incorrect reference in TLS BRs section 7.1”. For next cleanup ballot

f.	Github item 466: “Unify sections regarding CAA”. Some changes made but Inigo will Aaron to confirm

g.	Github item 468: “Inconsistency in the use of the defined term “High Risk Certificate Request”. This is referring to the capitalization of this and how sometimes it’s lower case. This is the case with other terms as well. This has not been resolved. Need to clarify that the capitalized terms can be used in plural. Clint said to change the subject of this item to “Clarify that defined terms which are singular apply to usages of the term which are plural”. Nicol said this is not really necessary as it’s commonly understood in standards documents. Hence this item was closed.

## Current status of ballots

a.	Ballot 67: new version on MPIC has been sent to the list

b.	Other ballots: 
- Ballot 76- Clarify and improve OCSP requirements. 
- Ballot 78-Alignment of the DBA and assumed name. 
- Ballot 71 – terms of use. 

c.	Ballot 79: Paul asked to discuss this.  Dimitris commented that if both CAs are trusted, they should be allowed to use the any policy OID so that cross signing a root CA with another root CA should be treated with the same policy. Corey said that a complicating factor could be that if the issuing root CA was enabled for EV (as an example), then the other CA would inherit that status. Dimitris said you could add restrictions that would not include the EV policy OIDS. Corey thought CAs could get easily tripped up by this (if an agreement was not in place). Paul would like to see what Ben and Clint thought and sent something to the list. He would like to move forward with this ballot and hold back the creation of actual cross signing CAs today. Tadahiko warned that it might be so easy if this passes to find out what cross certificates exist for different organizations. It was decided to discuss this further at the F2F meeting, notwithstanding Paul’s current ballot. 

## Any Other Business

No other business.

## Next call

Next call Sept 26th, same as the CA Day in Greece. It was decided to cancel that call.

## Adjourn

Meeting adjourned.
