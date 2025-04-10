---
author: Martijn Katerbarg
date: 2025-03-12 00:00:00
tags:
- Minutes
- S/MIME
title: 2025-02-26 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG
 
March 12, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## Attendees
Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems)
 
## 1. Roll Call
Taken from recording.
 
## 2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.
 
## 3. Review Agenda
Minutes were prepared by Stephen Davidson.
 
## 4. Approval of minutes from last teleconference
The minutes of the February 26 teleconference were approved.
 
## 5. Discussion
The WG confirmed the participation of Ryan Hurst as an Interest Party.
 
Stephen Davidson noted that several compliance deadlines would take place on March 15:
 
SHALL adopt CAA for S/MIME
SHOULD implement pre-linting, SHOULD implement linting in post-issuance self audits
SHOULD corroborate the results of domain validation and CAA checks from multiple Network Perspectives (aka MPIC)
 
Stephen walked through the text of SMC011, which will soon be a ballot.  The ballot introduces the use of an EUID as a registration reference under the NTR registration scheme in the organizationIdentifier, reorders text for readability, and makes minor editorial corrections to the References section.  He said the ballot would enter formal discussion when a corresponding ETSI text was published in the coming weeks.
 
Corey Bonnell then raised a question that had arisen regarding the use of the directoryName SAN. A user had questioned if the subjectDN needed to be a direct match of the contents of a directoryName SAN. 
 
See https://groups.google.com/a/groups.cabforum.org/d/msgid/smcwg-public/DS0PR14MB6216CB8C4F68AA935C6B71BA92D12%40DS0PR14MB6216.namprd14.prod.outlook.com
 
Corey noted that the earlier discussion allowed the use of one charterset in the Subject (“Stefanos”) and the equivalent in another characterset in the SAN (” Στέφανος”).
 
It was pointed out that the text in 7.1.4.2.1 refers to 7.1.4.2.2 when in fact the content appears in the tables of sections 7.1.4.2.3-6.  Stephen said there did not need to be a 1-to-1 match with the directoryName SAN, but the directoryName SAN could only include attributes from the appropriate type.  A redline will be proposed.
 
The WG discussed agenda topics for the Tokyo F2F.  It was agreed to use the lion share of the time to discuss the contents of 3.2.4 (individual vetting).  Stephen asked CAs, now with a year of experience with the S/MIME BR, to enquire what was working well and what was not.  He asked if there were improvements that could be made to Enterprise RA.  Several items were of particular interest:

The original S/MIME BR laid out a framework to approve digital signature schemes.  Noone has proposed approving a signature scheme. Should that method remain in place, blank?
The use of mDLs is growing.  How can we accommodate them for automated enrolment of users?
What updates need to be made for the updated eIDAS Digital Identity Wallets?
 
Stephen asked members to speak with colleagues who may have exposure to mDLs and their related standards.  He also invited other topics to be suggested by the group to either Martijn Katerbarg or him.
 
The WG also reviewed the dratft text of a ballot t introduce ACME for S/MIME as a mailbox control validation method.  Guillaume Amringer said the method really could be treated as a subset of 3.2.2.2. Stephen said he wanted to document it as its own method, as was done in the TLS BR so there was clear separation between methods, and also to encourage the development of new ways to automate the enrolment of users.  Stephen asked for endorsers: Guillaume agreed.  See https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...46f48f891743860a8ab30e8c8f0985bfe22c8d57
 
## 6.     Any other business
None.
 
## 7. Next call
Next call: Tokyo F2F and then April 9, 2025 at 1100 Eastern time.
 
## Adjourned