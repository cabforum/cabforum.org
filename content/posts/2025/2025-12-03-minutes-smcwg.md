---
date: 2025-12-03 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-12-03 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
December 3, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## 1. Roll Call 
 
## 2. Note well:  Antitrust / Compliance Statement
 
## 3. Approval of past minutes
The following minutes were approved:
- November 19
 
Minutes provided by Stephen Davidson.
 
## 4. Review Agenda 
 
## 5. Membership
 
NA
 
## 6. Discussion
 
- An invited guest presentation was provided on “S/MINE: Collecting and Analyzing S/MIME Certificates at Scale.” by Gurur Öndarö and Jonas Kaspereit, Münster University of Applied Sciences; Samson Umezulike, Fraunhofer SIT and National Research Center for Applied Cybersecurity ATHENE; Christoph Saatjohann, Münster University of Applied Sciences; Fabian Ising, Fraunhofer SIT and National Research Center for Applied Cybersecurity ATHENE; Sebastian Schinzel, Münster University of Applied Sciences, Fraunhofer SIT and National Research Center for Applied Cybersecurity ATHENE.
 
- See more at https://www.usenix.org/conference/usenixsecurity25/presentation/oendaroe
 
- The study collected more than 41 million unique X.509 certificates from public address books (LDAP servers) of which 38 million fulfill the requirements for use as S/MIME certificates. Approximately 20% of the certificates are public trust. The study used tools such as PKILINT to analyze compliance aspects of the certificates.  The study identified improvements in the ecosystem driven by the CABF’s S/MIME Baseline Requirements (and noted some noncompliant issuance amongst a handful of public issuers.
 
- The group is now conducting analysis into patterns of key reuse among the certificates identified in the study.  Among certs reusing keys there is a particular hump at 6 years validity of keys (which makes sense given that S/MIME are often issued at 1. 2,3 year validity spans).
 
- Stephen asked if that data could be broken down for public vs private trust, currently valid. He also said it would be of interest to know if keys are shared across Subjects.
 
- Sebastian Schinzel said it was known that a provider issued signing certs that were indistinguishable from S/MIME had previously been found to mistakenly reusing keys at scale. Stephen said it was hoped that these other use cases would stop using the emailProtection EKU and move towards the freestanding documentSigning EKU.  Stefan Selbitschka said that historically some email gateway solutions reused keys across Subjects. 
 
- Stephen noted that the LDAP pool was large but not necessarily fully representative.  However he said the research identified useful trends, and thanked the researchers for their work.  Ben Wilson said it was equally interesting to understand more about the health of the private trust S/MIME sector.  Stephen expressed interest in following up when the research into key reuse is complete.
  
## 7. Next meeting:
-  December 17, 2025 at 11 am Eastern.  December 31 meeting is cancelled.

## 8. Any other business
 
NA

## 9. Adjourn
 
## Attendees:
 
Adriano Santoni (Actalis S.p.A.), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Corey Bonnell (DigiCert), Dustin Hollenback (Apple), Enrico Entschew (D-TRUST), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)