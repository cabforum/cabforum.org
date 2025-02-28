---
title: 2025-01-16 Minutes of the CA/Browser Forum Teleconference
author: Martijn Katerbarg
summary: Final minutes of the CA/B Forum call held on January 16, 2025.
date: 2025-01-16
tags:
  - Forum
  - Minutes
type: post
---

## Attendees
Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Antti Backman (Telia Company), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Jeff Ward (private person)), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Martijn Katerbarg (Sectigo), Miguel Sanchez (Google), Nicol So (CommScope), Nome Huang (TrustAsia), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Ryan Dickson (Google), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Yamian Quintero (Microsoft). 
Read note-well
 
Dean read the note-well
 
## Review of Agenda
Approved agenda as is.
 
## Approval of Minutes
The December 5th and December 19th meeting minutes were approved.
 
## Server Certificate Working Group update
- Validation Subcommittee:
  - Require CAs to allow CAA parameters that limit accounts and validation methods.  Initially discussed last year.  Wayne drafted a ballot.  Discussion around the RFC the ballot was based on requiring DNSSEC validation and whether that would be an issue. Clint already had another ballot drafted for DNSSEC validation of CAA checks – they are going to try to combine them together.
  - DNS-ACCOUNT-01 Ballot in discussion period – reviewed history of ballot and moving it to discussion period.
  - CAA Assisted Domain Validation – Slaughter planning to discuss at next meeting.
  - Discussed Validity Periods and Domain Reuse period (SC-081) – see update from SCWG minutes.
- SCWG: 
  - Worked on GitHub Issue updates.
  - Discussion on cloud-based CAs and whether a CA can be 100% cloud-based and suggested an answer to a question that was received.
  - Reviewed open ballots.
 
## Code Signing Certificate Working Group update
- Ballot on reducing certificate validity will be picked up in February.
- Ballot to align Code Signing BRs with recent SCWG ballots being discussed.
 
## S/MIME Certificate Working Group update
- Associate Member Application – Aprio (Jeff Ward) was discussed at the S/MIME meeting, Steven will refer to the notes from today’s SCWG for their decision and proceed from there for S/MIME membership.
- Proposed Amendments to Mozilla Root Store Policy
  - Impact to dedicated hierarchies for S/MIME
- Several Server Certificate Working Group ballots that potentially have impact on S/MIME (i.e. CAA Ballot) are being monitored.
- Using sub-addressing in email addresses – insufficient standardization among email service providers and email processing software as to which dividers are used and how dividers are treated.  There is no definitive standard yet which has been adopted.  Awaiting more information to proceed further.
 
## NetSec Working Group update
- At the last meeting, the group discussed the ”CA Infrastructure” term and impact on various aspects of the NCSSRs.  Still determining which updates are needed – want to ensure all requirements are as expected and applicable to the correct parts of the CA Infrastructure.  Review continues.   Due to the timeframe for version 2.0 to go into effect is coming up in March 2025, they are processing a ballot to extend the NCSSRs v2.0 effective date to September 2025 in order to address any updates wiht the CA Infrastructure terminology updates.
- Next meeting on January 28, 2025.
 
## Definitions and Glossary Working Group update
- Work beginning on reorganizing and cleaning up definitions.
 
## Forum Infrastructure Subcommittee update
- Moving services to containerized system.
- Mapping the member type and working groups to mailing list subscriptions – Wayne working on this.
- Amending Bylaws to address the allowance for a member voting tool.
  - Possibly could do two ballots – one for all the other bylaw issues and one for the voting issue. Ben created a draft pull request focused on that.
 
## Intellectual Property Rights Subcommittee
- Call planned for tomorrow (January 17, 2025) to pick things back up.
 
## Bylaws Changes
- Ben and Dimitris to coordinate and begin work.
- Ben opened issues on GitHub – need to work on language to address those issues.
- Will plan to present proposed changes at the next F2F.
 
## Any Other Business
- Discuss potential date for October F2F
  - October 15-17 (half day Friday), 2025.
  - Trusted Economy Forum to be held there October 14-15, 2025.  There are other events and holidays around that time, but the proposed dates are accommodating for the host.
 
## Next meeting
- January 30th
 
## Adjourned