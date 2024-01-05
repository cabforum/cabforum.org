---
aliases:
- /2023-06-07-2023-06-7-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-06-07 11:58:34
tags:
- Minutes
- S/MIME
title: 2023-06-7 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

June 7, 2023

These are the Approved Minutes of the F2F meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Overall attendance: Aaron Poulsen – (Amazon), Abhishek Bhat – (eMudhra), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), An Yin – (iTrusChina), Andreas Henschel – (D-TRUST), Aaron Poulsen – (Amazon), Aneta Wojtczak-Iwanicka – (Microsoft), Antti Backman – (Telia Company), Arno Fiedler – (ETSI), Ben Dewberry – (Keyfactor), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Bruce Morton – (Entrust), Chris Clements – (Google), Christophe Bonjean – (GlobalSign), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), Daryn Wright – (GoDaddy), Dave Chin – (CPA Canada/WebTrust), David Kluge – (Google), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Eva van Steenberge – (GlobalSign), Fumi Yoneda – (Japan Registry Services), Georgy Sebastian – (Amazon Trust Services), Glaucia Young – (Microsoft), Hannah Sokol – (Microsoft), Hogeun Yoo – (NAVER Cloud), Hubert Chao – (Google), Ian McMillan – (Microsoft), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), J.P. Hamilton – (Cisco), Jamie Mackey – (US Federal PKI Management Authority), Janet Hines – (VikingCloud), Jeremy Rowley – (DigiCert), Joanna Fox – (TrustCor Systems), John Sarapata – (Google), Jonathan Kozolchyk – (Amazon Trust Services), Jos Purvis – (Fastly), Joseph Ramm – (OATI), JP Hamilton – (Cisco Systems), Karina Sirota – (Microsoft), Keshava Nagaraju – (eMudhra), Kiran Tummala – (Microsoft), Lakshmi Ramalingam – (Microsoft), Leo Grove – (SSL.com), Li-Chun Chen – (Chunghwa Telecom), Mads Henriksveen – (Buypass AS), Mahua Chaudrhi – (Microsoft), Marco Schambach – (IdenTrust), Mark Nelson – (IdenTrust), Martijn Katerbarg – (Sectigo), Matthias Wiedenhorst – (ACAB Council), Michael Guenther – (SwissSign), Michael Slaughter – (Amazon), Michelle Coon – (OATI), Mohit Kumar – (GlobalSign), Nargis Mannan – (VikingCloud), Nate Smith – (GoDaddy), Naveen Kumar – (eMudhra), Nick France – (Sectigo), Nicol So – (CommScope), Nitesh Bakliwal – (Microsoft), Pankaj Chawla – (eMudhra), Paul van Brouwershaven – (Entrust), Pekka Lahtiharju – (Telia Company), Peter Miskovic – (Disig), Raffaela Achermann – (SwissSign), Rebecca Kelley – (Apple), Roberto Quinones – (Intel), Rollin Yu – (TrustAsia Technologies, Inc.), Romain DELVAL – (Certigna), Ryan Dickson – (Google), Scott Rea – (eMudhra), Sissel Hoel – (Buypass AS), Stefan Kirch – (Telekom Security), Stephen Davidson – (DigiCert), Sven Rajala – (Keyfactor), Tadahiko Ito – (SECOM Trust Systems), Tahmina Ahmad – (Microsoft), Thomas Zermeno – (SSL.com), Tim Callan – (Sectigo), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Tsung-Min Kuo – (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha – (eMudhra), Vikas Khanna – (Microsoft), Wayne Thayer – (Fastly), Wendy Brown – (US Federal PKI Management Authority), Xiao Qiang – (GDCA), Xiu Lei – (GDCA), Yashwanth TM – (eMudhra), Yoshihiko Matsuo – (Japan Registry Services), Yoshiro Yoneya – (Japan Registry Services).

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Ben Wilson.

### 4. Discussion

- New Certificate Issuer member: Logius PKIoverheid
- Primary focus has been on answering questions arising from CAs implementing the S/MIME BRs.
- Clarification-and-correction ballot SMC03 is pending. The group discussed the major changes covered in the ballot.
- Clarification of Enterprise RA capabilities
- Clarification of Mailbox Address definition
- Clarification of Pseudonym references
- Correction of some numbering and typo issues
- Correction of missing keyUsages for EdDSA Certificates
- Correction of LEI roles
- Correction of ISO code in organizationIdentifier
- Clarification of ETSI audit requirements to include 411-2
- Extant CA transition
- Release by DigiCert of PKILINT as OSS. Includes lints for the S/MIME BRs. [https://github.com/digicert/pkilint][1]
- Externally: working with ETSI on TS 119 411-6 on implementation standard-mapping ETSI’s CPs with the S/MIME BRs. Draft will be available within 2 weeks. There is a formal liaison between ETSI and the CABF inviting input from SMCWG members.
- Discussion of ICA transition — existing or new ICA creation before effective date in “Extant SMIME CA” draft at [https://github.com/srdavidson/smime/tree/Ballot-SMC03][2]. This responds to a comment from a Certificate Consumer that it is often preferable, when a new standard sets a new requirement, that the standard includes transition arrangements. As long as developed with consultation, such “baked in” transition arrangements may simplify adoption by root stores.
- After September 1: Topics relating Enterprise RAs; CAA; How to create bluesky between S/MIME and Signing?

### 5. Next call

Next call: tentative Wednesday, June 21, 2023 at 11:00 am Eastern Time

### Adjourned

\_\_PRESENT
\_\_PRESENT

[1]: https://github.com/digicert/pkilint
[2]: https://github.com/srdavidson/smime/tree/Ballot-SMC03