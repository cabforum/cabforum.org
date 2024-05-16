---
aliases:
- /2024/05/02/2024-05-02-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2024-05-02 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-05-02 Minutes of the Code Signing Certificate Working Group
type: post
---


## Attendees

Andrea Holland (VikingCloud), Atsushi INABA (GlobalSign), Brian Winters (IdenTrust), Brianca Martin (Amazon), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris (HARICA), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Janet Hines (VikingCloud), Janet Hines (VikingCloud), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mohit Kumar (GlobalSign), Rebecca Kelley (SSL.com), Richard Kisley (IBM), Scott Rea (eMudhra), Thomas Zermeno (SSL.com), Tim Hollebeek (DigiCert), Wangmo Tenzing (Wangmo Tenzing)

Minute-taker: Brian Winters

## Minutes

AntiTrust Reminder read by Dean Coclin.

Face-to-face meeting minutes approved.

April 18th Minutes approved.

### EVCS Guidelines ballot CSC-23:

Bruce Morton indicated possible new requirement raised by Martijn.  Martijn requested input by Dimitris, not on the call yet.
Cory stated that the language sometimes indicates EV Code Signing certificate and in other places uses the term certificates.
Bruce asked what is the new requirement?  Cory indicated the Subject Org ID requirement.  We are introducing new language about what the Org ID may contain.
Bruce suggested a new ballot regarding the Org ID changes.  Agreed upon by Ian, and Andrea Holland.
Dean mentioned having seen an open pull request to remove the Org ID changes.  Pull request has comments by Dimitris and Corey Bonnell.
Corey stated that Dimitris is the main driver on this ballot.

Dimitris joined late and commented on new requirement as done on purpose, to be effective sometime after September to be consistent with new EV guidelines.
Bruce commented Org Id might be better to add later after adapting to new MS EV Guidelines.  Dimitris stated he is ok with removing it now and adding it later.  But thinks it could also be added now as optional.  Cory expressed some customers might be already using Org Id and may have incompatibilities with new Org Id standards.  Dimitris stated the September effective date allows time for those customers to adapt.  Andrea asked Dimitris if it's acceptable to create a separate ballot for the Org Id field.  Tim commented achieving parity with TLS working group might be just updating requirements for sake of updating requirements.  We should really solve the problem.  We should find the best way to identify the globally unique publisher signing code.  Most relying party software doesn't utilize Org Id field.  Tim urged separating this into a new ballot.  Dimitris eventually agreed.

Bruce asked Dimitris about the Due Diligence requirement.  Martijn commented about portions of it being in scope.  Expressed concern about the term Nullified in the language.

### Timestamping Ballot CSC-24

Martijn raised topic about language to prevent CAs from issuing Timestamp certificates from already issued SubCAs in an online state.  Language was introduced on April 22nd, yet no comments produced.  Planned to effect certificates issued on or after April 15, 2025.

### Face-to-Face meeting planning

Dean Coclin asked for suggestions for items to discuss.

- Ian suggested the topic "maximum certificate validity periods for CS certificates".  Impact of reducing max validity from 39 to 15 or 24 months duration.  What is the sweat spot for max validity periods.
- Bruce wants to discuss Microsoft's planned changes to EV CS certificates.
Ian agreed this is an important topic.  Tentative plan is one certificate type, albeit Individual validated and Organization validated.  Dean pointed out another notable example of Microsoft EV CS use hardware related scenario.
- Corey raised issue regarding Microsoft's Trusted Signing Service introduces custom EKU into CS certificates to uniquely identify the publisher (face-to-face or future meeting).  Potential breakage for publisher.  Per publisher EKU is potential solution to prevent breakage.
Ian discussed Windows Security Center involvement on this issue.  Only 1st party CAs for integrity checks.
- Martijn,  CT for code signing time allowing.

### Other business

Next Meeting May 16th.

Following will be the Face-to-face meeting in Italy.

### Topic for next meeting

- PCI-HSM Acceptance for CA HSM evaluations (Richard Kisley).
