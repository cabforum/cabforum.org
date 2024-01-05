---
aliases:
- /2022-07-20-2022-07-20-minutes-of-smime-certificate-working-group/
author: Stephen Davidson
date: 2022-07-20 19:21:00
tags:
- Minutes
- S/MIME
title: 2022-07-20 Minutes of SMIME Certificate Working Group 
type: post
---

## Minutes of SMCWG 

July 20, 2022

These are the Draft Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (Digicert), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Judith Spencer (CertiPath), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

Changes were requested to the June 22 minutes by Dimitris Zacharopoulos relating to the discussion of the membership category for Bridge CAs (currently being adopted as Associate Member). The minutes will be updated and redistributed.

### 5. Discussion 

The WG discussed the expression of interest of Visa to join the SMCWG. It was agreed to welcome Visa as a Certificate Issuer. It was agreed to distribute information about new membership requests to the Management listserv.

The WG returned to the discussion of the draft S/MIME Baseline Requirements available at .

The WG discussed a concern raised by Eva Van Steenberge that the content described in section 3.2.41 subsection 4 relating to vetting based on a “certificate supporting a digital signature applied by the Applicant”.  Eva noted that there were many national signature schemes similar to eIDAS that should be allowed, either by name or that a set of eligibility criteria should be described. Clint Wilson noted a preference to describe a set of criteria. Dimitris noted that having both the criteria and a list would be best. Stephen Davidson noted that this list could become quite long as many countries have regulatory regimes for certificate issuers enabling legally valid signatures, which include identity validation requirements.

Eva also noted that some signature schemes were technology neutral (ie not certificate-based). Stephen noted that he would prefer to defer that expanded use case to a later version of the SBR. It was agreed that Stephen would work with Ashish and Eva to propose suitable text.

The WG also discussed concerns raised by Ashish Dhiman relating to the universal application of the organisationIdentifers. Eva noted that in the course of development of EV it was found that it could be difficult to identify registration/identifier numbers for some organisation types, such as government entities or international organisations. Stephen noted that in his experience many of these organisations held LEI, although not necessarily a FULLY_CORROBORATED category. A discussion occurred questioning why CABF precedent restricted LEI use to FULLY_CORROBORATED, when other standards such as ETSI adopted a more expansive use of LEI. Dimitris pointed out that the United Nations had an LEI that was based on self-reported information (possibly for the reason that external verification was difficult). Clint asked if the goal of the identifier is to get to a government record, or to just provide a unique identifier. He said it was difficult to tell if the other-than-FULLY_CORROBORATED LEI pointed to accurate information. It was agreed that further investigation of the use of LEI might be considered in a future version.

Eva suggested that for those organisation types, where a registration number is not available, that a replacement tag be used as is the case in EV: “In circumstances where this information is not available, the CA MUST enter appropriate language to indicate that the Subject is a Government Entity/ International Organization Entity”. It was agreed that Stephen would work with Ashish and Eva to propose suitable text.

Stephen Davidson again noted that edits are being checked in with noncontroversial updates and corrections based upon feedback.

The call remains open for comments that members may have on the draft. Stephen noted that the goal remains to move to ballot at end of summer.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, August 3, 2022 at 11:00 am Eastern Time

### Adjourned