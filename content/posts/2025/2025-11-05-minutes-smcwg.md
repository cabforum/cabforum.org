---
date: 2025-11-05 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-11-05 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
November 05, 2025
   
## 1. Roll Call 
 
## 2. Note well:  Antitrust / Compliance Statement
 
## 3. Approval of past minutes
 The following minutes were approved:

  * October 8
  * October 17
 
Minutes provided by Stephen Davidson.
 
## 4. Review Agenda 
 
## 5. Discussion

- Topic 1: Impact of changes to DCV in TLS BR
Stephen Davidson noted that email domain control validation came into play in two areas in the S/MIME BR (not mutually exclusive):
  - For verifying the email domains that serve as guardrails on an Enterprise RA
  - For S/MIME issuance
 
  - The TLS BR are called in when CAs invoke Method 3.2.2.1 “Validating authority over mailbox via domain”.  Stephen noted that the ballot to shrink the reuse period of DCV in the TLS BR is overridden by Section 4.2.1 of the S/MIME BR for the S/MIME use case.  However, the pending pending SC-90 to prune phone and email methods might have an impact with the removal of eight methods over the next three years, leaving the following options:

  * 3.2.2.4.7 DNS Change
  * 3.2.2.4.12 Validating Applicant as a Domain Contact (limited use)
  * 3.2.2.4.18 Agreed-Upon Change to Website v2
  * 3.2.2.4.19 Agreed-Upon Change to Website - ACME
  * 3.2.2.4.20 TLS Using ALPN
  * 3.2.2.4.21 DNS Labeled with Account ID - ACME
  * 3.2.2.4.22 DNS TXT Record with Persistent Value
 
  - The WG had an extended discussion about whether this presented an issue to S/MIME issuers.  It was noted that the DNS Change method was now widely adopted in preference to the other manual methods, and that the staged deprecation of the methods should allow adequate time for CAs to prepare.  No current action was proposed.
 
  - Stephen noted that the group was always interested in proposals that enabled automation or better security of email validation and cert lifecycle.
 
-  Topic 2: draft to allow Mobile driving licence (mDL) for personal vetting
 
  - Stephen noted that he had updated the draft ballot based on feedback at the F2F meeting.  The WG discussed the draft at https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...f3852310bc61f1d1784482e7ae602052707e56c2
 
  - Ben Wilson made suggestions to improve wording on retaining evidence of identity vetting.
 
  - Stephen invited potential endorsers to contact him.
 
  - Stephen requested that EU Qualified TSPs assist in updating the methods to accommodate the EUDI Wallet. 
 
  - Scott Rea indicated interested in creating a method allowing use of identity providers under NIST 800-63 (such as via at DirectTrust and Kantara). Stephen invited proposals.
 
## 6. Next meeting:
- November 19, 2025 at 11 am Eastern 
 
## 7. Any other business
 
## 8. Adjourn
 
## Attendees:
 
Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Dustin Hollenback (Apple), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Judith Spencer (CertiPath), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Renne Rodriguez (Apple), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
 