---
date: 2025-10-17 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-10-17 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
October 17, 2025
Face-to-Face CABF #66, Warsaw Poland
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## Roll Call 
 
## Note well:  Antitrust / Compliance Statement
 
## Approval of past minutes
 * Deferred
 * Current minutes taken by Stephen Davidson

## Review Agenda 
 
Stephen Davidson thanked Asseco/Certum for hosting the event in Warsaw noting that it brought increased participation from regional participants, particularly as the event was time-adjacent to the Trusted Economy Forum.
 
## Discussion
 
### Topic 1: Lookback
 
Stephen noted that SCM014 had completed IPR and that the S/MIME BR had been updated to version 1.0.12.
 
Stephen gave an overview of SMCWG activity in the last quarter including:
* SMC013       Introduction of PQC Algorithms (v1.0.11, August 22. 2025)
* SMC014       DNSSEC for CAA (v1.0.12, October 13, 2025)
 
He also provided an overview of pending compliance dates, which may also be found in the tables at the start of the S/MIME BR as well as topics under discussion by the SMCWG.
 
### Topic 2: mDL
 
Stephen provided an overview of the adoption of mDL both in the US and internationally, and suggested that the validation methods for individuals be updated to include them.  He walked through the relevant standards. 
 
* ISO/IEC TS 18013-5, Part 5: Mobile driving licence (mDL) application
* ISO/IEC TS 18013-7, Part 7: Mobile Driving Licence (mDL) digital trust service
 
He noted however that there were no reliable “trust store” lists of governmental mDL issuers internationally (and sometimes even within countries like the US).
 
Stephen walked thru a proposed draft of text at https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...77018059383428e67ce55d785d50b9d8703458d1.  Dimitris Zacharopoulos suggested that mDL should be separated from eID as new numbered vetting method similar to what was done in the TLS BR.  It was agreed.
 
Following discussion about VICALs (mDL trust stores), it was agreed that mDLs could be accepted from issuers who are “currently authorized by recognized trust frameworks for the jurisdiction of the issuing authority as a mobile drivers license” and that CAs should be compelled to identify the mDLs they accept.
 
Clint asked for more detail on what the CA needed to validate in the MDL (i.e., what mDoc).  Stephen will produce a new draft.
 
Scott Rea said that if we were considering adding new methods we should also consider NIST 800-63 as there were third-party registering orgs like Direct Trust and Kantara.  Stephen said ballot proposals were welcomed.
 
### Topic 3: eID updates
 
Stephen requested assistance in updating the text for the eID text with the evolution of the EUDI Wallet.  Dimitris suggested that the eID text remained accurate but that a new section should be added for EUDI Wallet credentials.
 
Stephen asked for assistance from European TSPs in updating that text and in identifying the relevant standards that would apply as a Relying Party accepting and validating the credentials. This was further complicated by the possibility of using Electronic Attribute Attestations.
 
### Topic 4: vLEI updates
 
The WG engaged in a lengthy discussion of the vLEI framework and whether it might be useful in registering Individuals.
 
The WG concluded that there was probably little reason to name vLEI as a method for registering Individuals because in many respects it similar to an Enterprise RA for corporate identity. The S/MIME BR already have ample provision for Enterprise RA, so adoption of vLEI is unlikely.
 
Dimitris said that vLEI might be useful in the initial onboarding of organisations (i.e., 3.2.6 Validation of authority).  Tim Hollebeek said vLEI might already be allowed without changes required to the standard. Clint said that any CA that wished to adopt vLEI in that capacity should review the requirements carefully.
 
### Topic 5: Roadmap
 
The WG confirmed that it was still desired to convert the format of Section 7 certificate profiles to match the stye used in the TLS BR.  Stephen asked for volunteers.
 
The WG also agreed to review the adequacy of mail domain validation options in light of changes to TLS BR.
 
## Next meeting:

* Defer October 22, meet November 5, 2025

## Any other business
 
## Adjourn