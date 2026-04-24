---
author: Wayne Thayer
date: 2026-02-26 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-02-26 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting Minutes

## February 26, 2026

 
## 1. Begin Recording / Roll Call

 
## 2. Note-Well

 
The Note-Well was read.


## 3. Review of Agenda


The agenda was reviewed. No changes.


## 4. Approval of Minutes


- **January 29th minutes:** No comments. Minutes approved.

- **February 12th minutes:** No comments. Minutes approved.


## 5. Membership Applications


None.


## 6. Agenda for F2F #67


Dimitris shared his screen to present the draft agenda for F2F #67. The Server Certificate Working Group is scheduled to meet on Tuesday, March 10, 2026, with approximately a 3-hour slot after lunch. The day also includes the Validation Subcommittee and the Network Security Working Group sessions.


The following topics were discussed and proposed for the F2F agenda:


### Topic 1 – CP/CPS Content Consistency

Raised by recent discussions on the mozilla.dev.security.policy list, triggered by an incident.


- Trev volunteered to drive this discussion.

- Chris suggested that it would be valuable for CAs to share lessons learned on practices that work well for maintaining CP/CPS consistency, including document review processes and automation.


### Topic 2 – Capturing the Baseline Requirements Version at Domain Control Validation time

There are conflicting opinions on expectations when the requirement was introduced versus current practice in 2026, including the separate numbering for new domain validation methods.


- Gurleen noted this topic is related to a current GTS incident and offered to contribute to the discussion.


### Topic 3 – Alternative Revocation Timeline for CP/CPS Inconsistencies

Continuation of prior discussions on an alternative revocation timeline for errors affecting CP/CPS deviations. Dimitris noted connections between this topic and topics 1 and 2.


### Topic 4 – Availability of CA-Published Resources

Proposed by Dustin. The topic covers the availability and accessibility of CA-published resources including CDPs, CP/CPS documents, and OCSP endpoints. Dustin noted there is no clear definition of expected availability, and that various clients and tools (including Salesforce/CCADB) have encountered access issues.


Discussion points raised:

- Trev noted the complexity CAs face in distinguishing malicious traffic from legitimate high-frequency access.

- Dustin confirmed that a proposed ballot is in progress and will be circulated to the list in advance of the F2F.

- Dustin volunteered to lead this discussion.


### Topic 5 – Open Issues Review

The group will review open GitHub issues.


## 7. Ballot Status


### SC-95

The voting period has ended and SC-95 has passed. Dimitris will initiate the IPR review process.


### Published Baseline Requirements

BR versions **2.2.3**, **2.2.4**, and **2.2.5** were recently published. Wayne confirmed these have been published on the public CA/Browser Forum website.


### Ballots Under Consideration


**Validation Methods and TLS Certificates (Clint)**

Clint indicated he is planning to withdraw this ballot. The rationale is the anticipated reduction of certificate validity periods and the planned removal of several validation methods over the coming years, which reduces the justification for the ballot. No member has expressed interest in continuing it. Clint invited feedback from anyone who wishes him to proceed.


**RFC 8657 CAA Parameters (Wayne)**

Wayne has two endorsers and has completed the language. However, the ballot consolidates CAA requirements from sections 3.2.2.8 and 3.2.2.9 into section 4.2.1, which creates significant overlap with the 2025 cleanup ballot. Wayne is planning to wait until the cleanup ballot clears IPR review before proceeding. Additional feedback from Rob also needs to be addressed.


**Registration Number Improvement / EV Guidelines (Corey)**

Corey confirmed the same approach: deferring this ballot until the cleanup ballot clears IPR review, consistent with prior group discussion, given the extensive changes in the cleanup ballot.


**Cleanup for ADN / Certificate Problem Reports / Revocation Timeline for CP/CPS Deviations**

No updates provided at this time.


## 8. Any Other Business


None.


## 9. Next Call


**March 26, 2026** (following F2F #67)


## 10. Adjourn


## Attendees

Adam Folson (IdenTrust), Adam Jones (Microsoft), Adriano Santoni (Actalis S.p.A.), Antti Backman (Telia Company), Ben Wilson (Mozilla), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Dustin Ward (SSL.com), Gurleen Grewal (Google), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Jeanette Snook (Visa), Johnny Reading (GoDaddy), Jozef Nigut (Disig), Jun Okura (Cybertrust Japan), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Luis Osses (Amazon), Mahua Chaudhuri (Microsoft), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority)
