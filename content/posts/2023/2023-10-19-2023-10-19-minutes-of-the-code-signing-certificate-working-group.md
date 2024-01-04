---
aliases:
- /2023-10-19-2023-10-19-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-10-19 17:00:51
tags:
- Code Signing
title: 2023-10-19 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

- Aaron Poulsen – Amazon Trust Services
- Andrea Holland – VikingCloud
- Atsushi INABA – GlobalSign
- Bruce Morton – Entrust
- Corey Bonnell
- Dean Coclin-DigiCert
- Dimitris Zacharopoulos (HARICA)
- Ian McMillan – Microsoft
- Janet Hines – VikingCloud
- Richard Kisley – IBM
- Mohit Kumar – GlobalSign
- Rollin Yu – TrustAsia
- Scott Rea – eMudhra
- Tim Crawford – BDO/WebTrust

# Minutes

- Assign Minute taker (start recording)

- Ian McMillan

- Roll call

- Completed by Dean

- Antitrust Compliance Statement

- Completed by Dean

- Review Agenda

- No comments on the agenda

- Approval of prior meeting minutes – F2F 5 Oct, Need minutes!

- Minutes received from Mohit

- Need to get other half of the minutes from Tim Callan (Dean to follow up)

- Ballot CSC-20 Restore Version Reference to EV Guidelines

- Voting completed and it has passed with quorum

- Ballot CSC-21 Signing Service

- In discussion period

- Comments on the definition of Signing Service

- This definition must not apply to a subscriber and that includes when the CA is a subscriber itself.

- Current definition seems to not be clear for CAs that leverage a Signing Service they provide and how the Subscriber Agreement would apply or not in this case.

- Microsoft has a case where the Signing Service does a Subscriber Agreement with the CA service team with a separation of duties between the teams, so there is precedence for this behavior.

- Signing Service does not include a subscriber’s managed signing service.

- New proposed definition: An organization that generates the key pair and securely manages the private key associated with the code signing certificate on behalf of the subscriber.

- Audit Requirements and Audit Dates

- We should consider an effective date to allow for Signing Services to comply with the requirements

- There should a ramp up period or include it in the next audit period so not to include it current audit periods.

- We need to give CAs runway to get this into their audit plans

- We should provide an effective date of 6 months from the projected ballot completion timeframe (e.g. June 1, 2024) for the audits starting after that effective date.

- Section 8.4 currently requires a Signing Service to comply with the audit requirements for a CA or a Delegated 3rd Party

- Is it possible that CSBRs say Signing Services must comply with the requirements including audits for the NetSec BRs, but they are not?

- How does a CA know there is a Signing Service or not?

- Resellers come into the picture here

- Previously we questioned if Signing Services should have these audit requirements and we talked ourselves into it.

- We can lean on the Subscriber Agreement and Subscriber Warranties to push the audit requirements onto 3rd party Signing Services and Resellers

- How are these enforced?

- 3 scenarios here…

- CA that provides a Signing Service to Subscribers

- Assumption is these are already being audited

- CA that partners with a 3rd Party Signing Service to the CA subscribers

- Subscriber uses a unaffiliated 3rd Party Signing Service to use a CA issued code signing certificate (CA may or may not be aware there is a signing service in the loop unless the Subscriber notifies the CA)

- More or less a private key protection service

- This is not easy here to tell when 3rd party Signing Service is involved

- First focus on Signing Services that CAs know about, but this will not be equivalent

- CAs with a Signing Service has the hardest compliance challenge, but a unaffiliated 3rd party Signing Service (Reseller) would not have the same requirements

- We should consider dropping these audit requirements on the Signing Services and focus on the subscriber private key protection requirements

- The one point we are considering is the Signing Service risk with a multi-tenant service, this is the same as Resellers.

- Can we look at prohibiting Resellers from having an unaudited Signing Service?

- We made a lot of progress here so we should consider moving forward as-is

- Consider using the S/MIME BR language for effective date, Bruce/Corey to review that language

- Proposed Ballot High Risk

- No updates until CSC-21 is completed

- Proposed ballot Remove EV Guideline References

- Will pick this up once we have all the notes from the F2F discussion

- Proposed ballot CSCWG Charter Update

- Need Martijn to update here

- Other business

- None

- Next meeting – 2 November