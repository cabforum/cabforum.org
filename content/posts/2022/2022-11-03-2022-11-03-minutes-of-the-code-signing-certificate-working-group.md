---
aliases:
- /2022-11-03-2022-11-03-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-11-03 17:00:00
tags:
- Code Signing
title: 2022-11-03 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland, Atsushi Inaba, Bruce Morton, Corey Bonnell, Dean Coclin, Dimitris Zacharopoulos, Ian McMillan, Inigo Barreira, Mohit Kumar, Tim Crawford, Tim Hollebeek, Tomas Gustavsson

## Minutes 

Dean read the antitrust statement.

### Signing Service Ballot 

Bruce said that he received no further feedback and would like to push this to ballot. Tim and Ian offered to review and endorse, barring any issues found.

Dimitris mentioned that one of the takeaways from the F2F was that there is ETSI guidance for remote QSCDs for activation and we should consider incorporating. Tim H. said that we should look at these requirements and incorporate compatible criteria in the CSBRs instead of requiring any associated audit regime. Dimitris said that approach may have IP issues.

Bruce proposed that we look at that guidance after the initial ballot is pushed out. There was agreement that the remote QSCD standards should be looked at further by the group.

Bruce said he will circulate the current PR () for this ballot for review and call for endorsers.

Bruce said that the NetSec requirements document describes requirements for CAs but is silent on Signing Services, and so we may want to consider removing the NetSec requirement for Signing Services. Tim said that while some things are CA-specific, there are many requirements which cover good security practices that would be applicable to Signing Services. Tim also agreed with Bruce that the NetSec requirements solely address CA keys, which is not useful for Signing Services.

Bruce raised a concern that if we require adherence to the NetSec document as a whole, then there is much room for interpretation as to which sections are applicable to Signing Services. Dimitris agreed with Bruce and added that similar challenges have occurred with RA audits.

Ian asked if there are any ISO standards for cloud services. Tim said that there are not, and cloud services generally get the 2000-level security audit. Ian said that ISO 27001-7 audits for cloud services are common.

### Importing TLS BR text into CSBRs 

Dimitris created a branch on GitHub() to copy the TLS BR text to the CSBRs. He mentioned that there have been no significant issues thus far besides the references to the EV Guidelines, which will be handled in a second pass. He asked for volunteers for this effort.

Next meeting is November 17th.

Meeting adjourned.