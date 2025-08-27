---
date: 2025-06-10 00:00:00
tags:
  - Minutes
  - Forum
title: 2025-06-10 Minutes of the Forum Toronto F2F
type: post
---

# CA/B Forum Teleconference - 2025-06-10

**Meeting Title:** CA/Browser Forum Toronto F2F  
**Date:** 10 June 2025    
**Chair:** Dean Coclin  

---

# Guest speaker: Chrome’s views on PQC  
**Presenter:** David Adrian  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/Chrome_PQC_CABF_F2F_Toronto_2025_EXTERNAL.pdf  
 
# Guest speaker: The Future of ZLint  
**Presenter:** Zakir Durumeric  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/The_Future_of_ZLint_CABF_F2F_Toronto_2025.pdf  
 
# Remedies for CPS Errors
**Presenter:** Tim Callan  
**Minute taker:** Ben Wilson

See SCWG minutes

# Panel Q&A
**Presenter:** Ben Wilson  
**Minute taker:** Dimitris
 
No additional discussion.
 
# Mozilla Root Program Update
**Presenter:** Ben Wilson  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/June-2025-Mozilla-News.pdf  
**Minute taker:** Scott Rea  
**Ben's curated notes (presented in the meeting) can be found at: https://drive.google.com/file/d/1zv6XlzitsQdaBp6gf_u3ND7Fzum1pPLY/view**
 
Mozilla held a roundtable a few weeks prior to the F2F to discuss CPSes, revocation, incident expectations, and automation. The event was considered successful and culminated in a number of lively follow up discussions. A summary of that meeting (including minutes) is available at : https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/TqTpdOtOxfs/m/1RgDbNfKAQAJ
 
 Mozilla is seeking to improve/expedite the Root Inclusion Process. Specifically the "CA Providing Date" stage to the "Public Discussion" stage. Primarily seeking to achieve this by clarifying and improving internal processes, and encouraging CAs to provide any missing info in a more expedited manner.
 
 For CA Inclusion requests, there is one in public discussion, one pending approval, and there are still a total of 29 in-process which was same at last F2F.
 
 CA Compliance: updated guidance on incident reporting has been published, including addressing the delayed revocation aspect. Still in target is improvement to the Root Cause Analysis process. A list of target future improvements has been curated.
 
 Current open bugs can be found on the Incident Dashboard: https://wiki.mozilla.org/CA/Incident_Dashboard 
 there are currently 52 open bugs. Mozilla has summarized and categorized the roughly 160 CA compliance incidents over the past 12 months. The content of these are covered briefly by Ben:
- Revocation Failures and Delays
- Audit Gaps and Failures
- Certificate Profile Noncompliance
- SMIME Certificate Misissuance
- Disclosure and Reporting Failures
- DV/OV/EV Misissuance and Validation Errors
- CRL and OCSP Availability Failures
 
General recommendations from Mozilla to CAs coming out of this analysis include:
 Automate Critical Path Operations
Align Policy with Practice in Real Time
 Create Centralized Linting and Disclosure Dashboards
 Institutionalize Audit Scoping and Planning
 
No specific questions were fielded to Ben in the live session.
 
# Cisco Root Program Update
**Presenter:** Chad Dandar  
**P**resentation Link:** https://cabforum.org/2025/06/10/forum-f2f/Cisco_CABF_F2F_Toronto.pptx  
**Minute taker:** Chris Clements
 
Previously, root bundles were fetched and loaded during the initial software build and release, with updates only occurring in new software versions. This meant users were locked into a static trust store until a new software update was released and deployed. Cisco is now developing a more dynamic solution for our products and services to address this limitation.
 
There will be a new certificate signing chain for TRS bundles in hopes of getting away from old manual processes. The new process will monitor the CCADB daily for certificate or CA changes, automatically triggering the creation of new bundles. Each bundle comes with a versioned JSON manifest file, allowing for easy rollbacks to previous versions. Currently testing in beta. 
 
A preview of the new system was provided, and everyone was able to see the JSON endpoint which lists the current latest version of the bundle. You can also see the previous version and every addition or deletion in the latest release. One of the biggest requests received was to have this in a jks format.
When reviewing the deletion list - if you want to see why a certain certificate was removed, you can look up the certificate thumbprint in the rejected.log file. 
 
On the roadmap, Cisco will be building a TRS client as a managed package that will be available for all of Cisco’s products and services. This is a very dynamic space, and the client will be responsible for several key functions:
Revocation checking to ensure that compromised certificates are not trusted.
Verification of bundle signatures to maintain integrity and authenticity.
Rollback support, so TRS consumers can revert to a previous version if needed.
Caching of bundles, which is especially useful if the consumer can't reach cisco.com.
 
Some metrics for the traffic hitting the repository for certificates and bundles was presented - which is almost 620 million GET requests per month. 
 
# Apple Root Program Update
**Presenter:** Clint Wilson  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/2025-June-Apple.pdf  
**Minute taker:** Stephen Davidson

 
Clint Wilson highlighted several program priorities of the Apple root program:
 
Automation - seeking improved adoption in both policy and non-policy areas, such as:
Documentation processing - Apple would like to see more use of automation in formatting, versioning, monitoring of CA documentation.  Also sees the significant benefit of automation in authenticating/validating the performance of the documentation such as using linting.
CA Lifecycle management - Given the anticipated pace of change, Apple wishes to focus more on validating the processes at organizations, and less on a per certificate basis.
Incident management - Apple seeks to improve the quality of analysis and consistency of incident data, reduce manual handling/increase automation of communication during incidents.
 
Quantum-secure cryptography
Announcement of PQC availability in new versions of iOS.  
See https://developer.apple.com/videos/play/wwdc2025/314 and https://support.apple.com/en-bw/122756
Apple will start accepting PQC roots in late 2025 or in 2026.  This will probably be of more utility to other use cases than TLS initially.
 
Certificate Transparency
Static-ct-api logs are now being accepted.
Apple has a call out for 2027 sharded logs.
 
# Microsoft Root Program Update
**Presenter:** Karina Sirota  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/Microsoft_F2F_65_Presentation.pdf  
**Minute taker:** Martijn

## 1. Current Initiatives  
- **End-to-End Policy Refresh**  
  - Focus on both Code Signing and TLS requirements from the program perspective.  
  - Two additional phases expected at upcoming face-to-face meetings.  
  - Goal: Modernize and clarify all program requirements.  
- **Post-Quantum Cryptography (PQC) Requirements**  
  - Updates to Windows and Linux builds to allow PQC integration.  
  - Potential for upcoming web PKI updates and testing availability.  
- **eIDAS Compliance**  
  - Work in progress for Edge browser compliance implementation.  
- **Policy Hosting and Transparency**  
  - Transitioning policy documentation to GitHub for better change logs and community feedback.  
  - Plan to maintain existing website while mirroring GitHub updates.  

## 2. Policy Updates (Effective Dates)  
- **CPS/CP Update Requirement**  
  - CAs must update Certificate Policy and Practice Statements within 7 days of relevant changes.  
  - Effective: July 1.  
- **Revocation Requests**  
  - Must respond to and process requests within 24 hours.  
- Pre-Issuance Domain Validation  
  - Mandatory; aligns with existing BR and program requirements.  
- These updates are clarifications rather than new obligations. 

## 3. Future Outlook  
- Expect heavier policy changes in future phases (details at upcoming meetings).  

## 4. Contact & Resources  
- **Contact:** MSRoot@Microsoft.com (reaches the entire team).  
- **Team Members Present:** Laura, Tamina, Tim.  
- **Root Program Info:** [aka.ms/rootcert](https://aka.ms/rootcert)  
- **Audit Requirements:** [aka.ms/rootcert/auditrecs](https://aka.ms/rootcert/auditrecs)  

## 5. Operational Reminders  
- **Testing:**  
  - Must complete within 5 business days.  
  - Confirm testing with accurate results (not just "tested" without actual verification).  
- **Incident Response:**  
  - Contact Microsoft immediately in case of incidents.  
  - If a Bugzilla case exists, send the link instead of duplicating details.  
  - Monitor for private key compromise and act promptly.  
 
# CCADB Update
**Presenter:** Karina Sirota  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/CAB_F2F_65_CCADB_Update.pdf    
**Minute taker:** Tim Callan
 
Karina Sirota:
Are updating list of CAA identifiers and CCADB policy.
Goals are clarifying, streamlining, and enhancing.
 
System side:
Have enhanced DTB and EV logic
Goal is alignment.
CA owners can be better informed.
 
ICA trust information
Goal = increased accuracy
Anyone can view the intermediate
 
Other ERs
Enhanced usability.
Deprecated code signing from the Mozilla Trust Bits.
 
Coming soon
CCADB update dashboard
Mark erroneous certificates as obsolete
Add a MSFT root inclusion request
 
CCADB prioritization process
 
Reminders of where to send support (the ccadb.org addresses)
 
 
# Q&A Root Program Discussions
**Minute taker:** Tim Callan
 
Martijn Katerbarg (Sectigo):
Microsoft root store, there is a new requirement for keeping logs up to 7 years.  BRs and SBRs have that at two years.  Is there a reason.
Karina:  Let me review that.
 
Trevoli Ponds-White (ATS):
Microsoft, are you going to have a survey for us to ask clarifying questions about your policy updates before they go into effect.
 
Karina Sirota (Microsoft):  We will send one out.
 
Trev:
One question, after the official version of the BRs are published but before they go into effect, sometimes they don't go up right away.  Seven days is kind of short.
Clarity on what you mean by notifying Microsoft.  Since we have to put it into CCADB within seven days, is that the notification?  
 
Karina:
Email me directly and we can work through them.  I'll have something out in the next few weeks.
 
Trev:
For clint, which documentation were you talking about, yours or ours?
 
Clint Wilson (Apple):
Both.  For CAs I'm looking at audit reports, CP/CPS, TSPS, etc.  Also things like Subscriber Agreements, TOU, may come into scope.
Also the root program policy itself.
I don't know if we'll get to GitHub, but I would like to see something change about how we're storing these documents.
 
Trev:
Last F2F you said you might not be here any more.  What's the deal?
    
Xin Qui (CommScore):
Clint,  You will have PQC in the root store. You will rely on software to update the root store, right?
How to you bootstrap?
 
Clint:
I can't get into too much detail, but there will be PQC support prior to the updates.
 
Xin:
It's going to be a chicken-egg problem if you're depending on RSA for these updates.
 
Clint:
RSA and ECC aren't broken yet, and we will continue to rely on them for the time being.
 
Dimitris:
I want to echo Trev's point about the seven days to update the CPS when there is an operational change.  Be mindful that some CAs have multiple languages, which takes ore time.  Sometimes we have to contact supervisory bodies.
 
Leo Grove (SSL.com):
Edge started recognizing digital signatures.  Is that the same trust store?
 
Karina:
I don't know but I can ask around.
 
Aaron Poulson (ATS):
Clint, I see phrases like documentation automation and documentation linting in more frequent use.  What are we talking about here?
 
Clint:
Nothing prescriptive. It's just a concept.
The idea is we could format documents such that there are ways that components of those documents are highlighted as specific practices that can be tied to specific outcomes in another systems.  Linking those into certificate systems might allow a linter to be contextually aware of things the policy document has committed the CA to doing.  This could be BRs or a CPS.
Certificates are the easiest the example and probably the first target. It could be integrated into other CA systems like issuance, validation, and auditing systems.  There are a lot of components that could be covered.
 
Aaron:
I'm curious to see how this evolves as we try to implement solutions.  WE are crossing the boundary of testing discrete definitions into free form language.
 
Clint:
I don't know exactly how feasible or impactful this will be.  It's a promising direction.
 
Xin:
Microsoft, I understand you are accepting new roots for existing CAs but not new CAs.
 
Karina:
Correct.  WE are trying to get to the point where we're accepting new CAs.
 
Xin:
Do you have a timeline?
 
Karina:
No.  Maybe at the next F2F.  It's a top priority of mine.
 
Dean Coclin (DigiCert):
Ben and Chad, what is your plan for PQC?
 
Ben:
We might already have ML-KEM in place.  I'll answer that later in this F2F.  What's important now is to prevent capture and decrypt attacks and work on the other things in the priority shown here.  Key exchange first and authentication second.
 
Chad:
In the next year we plan on transitioning to ML-DSA, next six months or so.
 
Corey Bonnel (DigiCert):
CCADB, with the enhancements to use new validation methods, is there a cadence for when CAs should do this.
 
Chris:
The data in the CCADB should be up to date.  Since we submitted them last week, we already saw six CAs with root updates.  There is no published timeline, but we expect CAs to stay up to date on this.
    
Corey:
To pick up what Trev was saying, does it fall under the 14 day update timeline for policy documents?
        
Chris:  We didn't discuss a specific timeline.  We would encourage updates.
 
Rob Stradling (Sectigo):
Let me check on this.  These are still optional, right?
 
Chris:  The validation options are technically required for new roots.
 
Rob:
What about existing roots?
 
Chris:
You will get a warning if you submit certain things.
 
Rob: I haven't seen that warning.
 
Ryan:
You may not have been notified because you might already have disclosed data.
There is no check that says have you observed the new checkboxes?
 
 
# ETSI Update
**Presenter:** Iñigo Barreira   
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/ETSI-ESI_Standardisation_Update_for_CAB-Forum-Toronto.pptx 
**Minute taker:** Clemens Wanko

Iñigo Barreira (ETSI ESI Vice Chair) provided a comprehensive overview outlining the latest developments in ETSI ESI’s standardization work, focusing on electronic signatures and trust services in light of evolving EU regulations. With the introduction of eIDAS 2, NIS2, the Cyber Resilience Act (CRA), and DORA, the regulatory landscape has become increasingly complex. ETSI plays a key role in aligning technical standards with these legislative frameworks to support compliance, interoperability, and security.

A major focus is the update of core ETSI standards. EN 319 401 has been revised to align with NIS2, supporting a unified audit strategy for trust service providers (TSPs). TS 119 461 introduces enhanced identity proofing aligned with eIDAS 2, including new levels of identity assurance and biometric protections. EN 319 411 and 412 series have been updated to support short-term certificates, QWACs, SMIME, and new certificate profiles for the European Digital Identity Wallet (EUDI Wallet).

ETSI highlights cryptographic updates, including alignment with EUCC guidance and preparations for post-quantum cryptography. New formats like CB-AdES and updates to JAdES and XAdES reflect evolving digital signature needs.

ETSI is also working on a Certificate Transparency (CT) ecosystem to enhance certificate issuance transparency, as referenced in EU Regulation 2025/848. The EUDI Wallet and the upcoming EU Business Wallet are compared, showing their complementary roles in digital identity for individuals and legal entities.

Looking ahead, ETSI plans over 40 updates and new standards, including profiles for trusted data objects and interfaces for authentic sources. The organization continues to collaborate closely with the European Commission to ensure that implementing acts are practical and do not overburden TSPs.

Note:

For Batch 3 of the drafted Implementing Acts released from the European Commission it is foreseen to update and include relevant ETSI standards like EN319 401 (general requirements) and EN319 421 (requirements for time stamping services) into the upcoming legislation.  
 
# ACAB'c Program Update
**Presenter:** Clemens Wanko  
**Presentation Link:** https://cabforum.org/2025/06/10/forum-f2f/20250610_CAB-Forum_65_ACAB'c_presentation_V1.0.pptx    
**Minute taker:** Iñigo Barreira

Clemens Wanko (ACABc) thanks ETSI for the development activities
Clemens invite Webtrust for the WEBTSI meeting in December in berlin
Presentation: Updates from ACABc
* Audit Attestation letters update
* Key ceremony report à Stable version. Download from https:\\acab-c.com\downloads
* Standard reports TLS-BR, TLS-EV, Code signing, SMIME-BR à Stable version with updates pending. Download from https:\\acab-c.com\downloads
* EU-legislation
* Batch 3 drafts
  * Concern EU based CA/TSP
  * Link-in ETSI standards
  * Adapt/change/amend ETSI standards
Note: Current drafts require CC certified devices, HSMs, for CA/TSP keys
ACABc commented on the batch 3 drafts of IAs because they think there were some potential issues for TSP if there are no transition periods. 140-2 is not allowed and only 140-3.
The period to comment on batch 3 is finished.

**Questions**  
* Iñigo (Sectigo): provided clarification on HMS
  * CW: thanks for the clarification
* Ryan (google): asking about transition across validation and TSP providing new hierarchies and keys, or they will continue issuing those
  * CW: we´ve seen several solutions from different vendors. They´ve seen 140-3 with CC certification. They are asking whether the device work with any of the options and how and if not, there will be a problem.
 
# WebTrust Update
**Presenter:** Tim Crawford, Lilia Dubko  
**Minute taker:** Chad Dandar
   
Tim and Lilia
 
Operational updates - WebTrust team members remain the same.  Task force team expanding, announcement of those details in next taskforce meeting.
 
Engagement Applicability Matrix has had its terminology updated including sunsetting dates that were requested by browsers.
 
New WebTrust updates were published in April 2025 for TLS, Code Signing, S/MIME, EV TLS, and Mark Certificates. 
 
WebTrust updates for NSR are coming in Fall of 2025
 
Reporting Templates are being revised and published in Summer 2025.  NSRs and BR report templates will be separated
 
Updates for short form reports for Registration Authorities coming in July 2025
 
Browser specific requirement for things such as Mass Revocations are raising discussions on how such things can be blended in with existing processes, or whether new reporting needs to be introduced.
 
Discussed benefits of the WebTrust program beyond WebPKI, including value for private PKI.  They are interested in hearing of other elements or spaces where WebTrust may help add value, such as IoT, etc. "Flexible criteria for any PKI"
    
# Q&A Audits and Standards
**Minute taker:** Chad Dandar

Mozilla: If we could choose between webtrust or standalone report, a standalone report may introduce non-compliance with a bulk revocation.   I think it should all be in the WebTrust report.  Looking for others input.  Should I include it into the Mozilla policy that CAs must put it into CPS documents?  
   
Amazon: I'm in favor of including them into BRs, for now would it be ok to have CAs offer self-assessment for handling mass-revocation plan until then.
 
Mozilla : Auditors would like clarification of what constitutes a mass-revocation event.  Numbers or percentages, to have concrete wording for auditors to reference. 

AWS: Long form reports- Are browsers going to accept long-form reports?
 
Google Chrome(Ryan): Long form reports aren't as useful as self-assessment. We do not have plans to require long-form reports.  
    
# Bonus Topic: Proposal for a more productive way to handle meeting minutes: Chatham House Rules
**Presenter:** Enrico Entschew   
**Minute Taker:** Michael Slaughter
    
Background: 
Chatham House Rules are a system for holding discussions on potentially sensitive 
topics. They originated from Chatham House (the Royal Institute of International 
Affairs) in London.
 
Concept: Participants may reveal information shared in the room but not reveal who said it or who the participants were. Free to share information shared but not who shared it. This rule has been used in countless meetings in business and technology. 
 
Proposed Benefits: 
    * Allows people to speak honestly and share ideas that aren't fully developed yet without fear from retaliation. 
    * Increases productivity because when people feel safe, solutions move faster.
    * Builds trust within the community.
 
Questions/Comments: 
  * Where would this apply?
  * Workshops and group discussions.
  * What do we mean by workshops?
    * It would be great if we were to have workshops here. Sometimes if groups were smaller people would speak up.  A lot of times the source of the comment is irrelevant 
* How do we distinguish between random comments and official statements from programs. 
* There was concern expressed about separating the voice of the individual vs. the organization the individual represents. For example, how do you distinguish the thoughts of the root program from those of the representative of the root program?
* Are there other standards bodies that utilize this methodology? 
* Yes. Historically the CABF was originally established under Chatum House Rules but at some point that was dropped. 
* Additional comments on this topic by Enrico made on June 11th: 
* These rules should be announced ahead of time so individuals are aware that they are in place
* These rules are intended for in-person discussions since you cannot guarantee that virtual meetings are not being recorded. 
 
 
# Meeting 65 Day 2 Draft Minutes
 
## Forum Plenary
 
# Infrastructure Subcommittee
**Presenter:** Jos Purvis  
**Minute taker:** Rebecca Kelley
 
-  Wayne Thayer mentioned that individuals are able to sign up for the lists, who are not apart of the WG, and asked the chairs to please assist him in finding a way to fix this issue. 
- Jos spoke on the new website set up and is curious how that has been going to members and is open to suggestions/comments.
- Dimitris mentioned suggested automating the tools to be more user friendly.
- Stephen found the new updates are helpful that he can publish without the issues that were previously present. 
- Wayne mentioned editing the publishing of minutes process and improving the Mark Down formatting that is currently being used.   
 - Wiki seems to be losing its usefulness and probably needs updating. 
 - Martijn suggested a good cleanup will solve a lot of the issues. 
- Aaron Gable mentioned there are issues with missing links. No issues with the Wiki Software, just the content needs help. 
- Trev
 
# IPR Subcommittee
**Presenter:** Ben Wilson  
**Presentation:** https://cabforum.org/2025/06/10/forum-f2f/Bylaws-F2F-65.pdf    
**Minute taker:** Jeremy

## Invited Participants and Experts
Ben outlined proposed changes for invited participants, modeled after W3C's invited expert policy.   
 
The commitment: information shared must be unencumbered and usable without IPR concern.  
 
Looking for final endorsement — Clint agreed to sponsor the ballot.  
Term Limit: Recommended duration for invited experts is 2 years. 
Dimitris: Experts must be re-invited for subsequent meetings; group has 7 days to object.

## GitHub Contributions
Ben: Different process needed for GitHub comments; separate from invited     participants. 
Goal:  Member contributions need to be formalized under a distinct IP framework.

## IPR Policy and Tools
Tim & Clint: Growing importance of IPR agreements, especially with PQC on     the horizon. Support for the lightweight approach. 
Voting via member tools discussed:   
 
Ben: Desire to modernize voting (portal-based), reduce email noise.  
 
Dimitris: Ensure transparency via auto-email to public list per vote.  
 
Consensus: Transparency is critical; tools should maintain public accountability. 

## Bylaw Clarifications
Ballot Process (Bylaw 2.3):   
 
Split Forum and WG ballots.  
 
Define when quorum is determined — conclusion: at the end of the vote.  
 
Clarify announcement and voting transparency requirements.  
Officer Voting (4.1.3):   
 
Use dedicated tools.  
 
Consider making officer voting separate from general ballots.  
Chair Duties (2.4):   
 
Align text with actual practice: WG chairs handle IPR announcements and ballot      tabulations.  
IPR Disclosure (Section 4 / 2.4 Item 9A):   
 
Remove redundant dual-publishing (public + management list) but there were mixed views on whether management list is necessary. No final change agreed yet. 

## Exclusion Notices and Alternative Ballots
Clarify process for how exclusion notices impact ballots.   
 
Ben: Once PAAG is convened, withdrawing the ballot may waste effort.  
 
Martijn: Ballots can be re-filed with changes.  
 
Discussion on how to formalize an “alternative ballot” process. 

## Interested Parties Process (Item 63)
Current:  Just sign the IP agreement. 
Proposal: Require qualifications for interested party status.   
 
Pushback from Trev, Martijn, Wayne: No current problem, process works, maintains openness.  
 
Consensus: No change necessary. 

## Exhibit A Split Proposal
Proposal to split Exhibit A (IP Agreements) into separate documents for:   
 
Organizations (members)  
 
Individuals (interested parties)  
Goal: Clarify obligations, particularly for individuals disclosing affiliations.

## Guideline Release Cadence
Tim: Proposes twice-a-year ballot release (March 15 / Sept 15). 
Clint, Wayne: Skeptical. Still requires same number of ballots. 
Trev:  Encourages modern dev practices; helps auditor planning. 
Ben:  Needs more thought — solution to admin burden not fully fleshed out.

## Subcommittee Transparency
Ben: Subcommittees could use the wiki for minutes. 
Pushback  (Dimitris, Martijn, Dean): Minutes must be public, whether via list or website. 
Action: Infrastructure subcommittee to ensure every group has both public and     management mailing lists.

## Mailing List Structure
Discussion on mailing list addresses and complications from single-list setups. 
Proposal to allow topic-specific addresses (e.g., questions-servercert@).
 
## Next Steps / Action Items
 
- Finalize invited participants ballot – with Clint as sponsor. 
- Clarify voting quorum timing in bylaws. 
- Evaluate voting tool options – ensure public transparency via email tagging or     similar. 
- Document exclusion notice handling and alternative ballot option. 
- Consider revising Exhibit A – split agreements by role. 
- Define policy around public release cadence – identify real problem to be solved. 
- Confirm subcommittee transparency compliance – infra team to ensure public list infrastructure.
 
 
# Certificate Revocation Status Information
**Presenter: Enrico Entschew**  
**Minute taker: Stephen Davidson**
 
With the decrease of certificate validity periods, the issue of revocation is still not resolved.  Not all authorities are convinced that short-lived certificates are enough to avoid the need to provide revocation information. A 10 day certificate could still have a damaging compromise window if no revocation information is provided by a CA.
 
A discussion on the topic is suggested, possibly under Chatham House rules.  This may include the use of existing CRL and OCSP, or could be something new that provides information about the revocation status of the certificate to relying parties without compromising automation or individual privacy.
 
Dimitris Zacharopolous was raised that typically new technology/protocol development was deferred to groups like IETF.  It was questioned if 10 days was too long to drop the provision of revocation information, (noting that ETSI specifies a shorter window for Qualified certificates).  Tobias Josefowitz noted that Subscribers could choose their CA based on the revocation support that is provided for short-lived certificates.
 
Enrico requested time for a workshop on the subject at the next F2F.  Aaron Gable said that talking about alternate revocation mechanisms is a worthy task but the "whole Forum" of the CABF is not well-suited to protocol design.  It is more likely a suitable task for a sub-committee, and that prep work should be done in advance of a F2F. 
 
Trevoli Ponds-White said that more customer feedback would be valuable in designing such a proposal.  Matthew McPherrin said there was interest in technological improvement but there may be useful improvements that can be made at CABF policy-level without necessarily pushing into new protocols.
 
 
# Definitions & Glossary Subcommittee
## Presenter: Tim Hollebeek, Tim Callan
## Minute taker: Aaron Poulsen
## Minutes: 
Tim Callan (Sectigo): Here is the process as a reminder. We took definitions from any of the BRs as they exist today and performed a compare on them in a single document. Most are the same or have only trivial differences (e.g., capitalization or punctuation). We took what was left and removed some that was felt should be defined individually since they were most likely relevant to one certificate type. What remained was a candidate list for what could go into a single definitions document. This exercise is done.
 
We're discussing how these definitions will be implemented by other Working Groups. Terms are going to change and we'll need to update these definitions. If the Definitions and Glossary Working Group (DGWG) changes a definition, it affects relying Working Groups. We need to version the definitions document. When a Working Group uses a defined term from the DGWG they will need to cite the version. Later the relying Working Group can adopt the newer definition in a clean-up ballot on their own cadence.
 
Tim Hollebeek (DigiCert): It may actually be in our charter. Do we still think that's the right approach?
 
Tim Callan (Sectigo): Any feedback?
 
Ben Wilson (Mozilla): Will the individual Working Groups still have their own table of definitions since there could be terms specific to the group? So, would the table cite the specific version of the Glossary?
 
Tim Callan (Sectigo): Yes, that's exactly what I was imagining; so that's probably the go-forward.
 
As Tim [Hollebeek] pointed out, there are terms that are not in the glossary that probably should be. There is a DGWG mailing list. For any terms within your Working Group that should be defined, send to the mailing list. We tried to keep the [definitions] as close to how Working Groups are referring to them as we could. We didn't want to make up new stuff, so we're asking for each Working Group to submit terms.
 
Tim Hollebeek (DigiCert): We can use something like the NIST CSRC glossary for definitions. The less work we do inventing definitions and instead use industry standard work, the better. Spending 30 minutes to word-smith definitions is not a good use of time. Rich Smith (DigiCert) pointed out we punted defining "publicly-trusted TLS certificate" when originally writing the BRs. Hoping we can all be big boys (and girls) to put in a definition for that one and fix this problem.
 
Tadahiko Ito (SECOM): Question about the scope. Are we going to add explanatory text that may be misleading in some conversations -
 
Tim Callan (Sectigo): I think it's incumbant on the definitions to be accurate and explanatory. There were about a dozen people who volunteered to participate. If we don't like the definitions, let's workshop them until we do. Number two is that if your Working Group doesn't like the definition there's no enforcement to use the term as defined. The Working Group can then go back to the DGWG and suggest an update.
 
Tadahiko Ito (SECOM): So let me make clear that this list may contain words that are not in any of the BRs?
 
Tim Callan (Sectigo): The process should not have accomplished that. Everything we took came from existing BRs. Plus Tim [Hollebeek] is adding one. That doesn't mean it [definitions] will be the truth. You could write your guidelines in the future to remove a particular term.
 
Tim Hollebeek (DigiCert): Every couple of years we might have an effort to double-check all the words are currently being used and have a cleanup ballot that removes unused ones.
 
Nicol So (CommScope): Question for Tim Hollebeek - you made a comment earlier about the definition of "publicly-trusted TLS certificate". We already have a definition for "publicly-trusted certificate" so not sure what is the missing part.
 
Tim Hollebeek (DigiCert): Rich mentioned it to me and my memory was: his memory was correct. It's possible we're both misremembering so we'll just go back and look at it. If it's already there and wonderful, we're done.
 
Dean Coclin (DigiCert): There's a note from Marco [Schambach (IdenTrust)] to post the mailing list for the DGWG.
 
Tim Hollebeek (DigiCert): Yes, let's do that.
 
Tim Callan (Sectigo): Agreed.
 
Dean Coclin (DigiCert): Any other questions online? Okay. Great. All done with that.
 
Note: mailing list for DGWG is definitions@groups.cabforum.org
    
# Renaming SCWG
## Presenter: Jeremy Rowley
## Minute taker: Tim Callan
## Minutes:
    
Jeremy Rowley (DigiCert):
I've been working with customers trying to get them to use better automation, and it often comes up that SCWG is intended for server certs, why is it getting rid of client auth?  You have to explain that this is about WebPKI, even though there are servers outside WebPKI.
 
I think we should rename it to WebPKI TLS Working Group for clarity.
 
Aaron Gable (Let's Encrypt):
Are we proposing changing the names of S/MIME and Code signing working groups?
 
Jeremy:
I'm not proposing that, but if they're not currently accurate, we should.
 
Dean Coclin (DigiCert):
At the time it was named server cert was the purpose of this but now it's maybe not.
 
Aaron:
The fact that we care about WebPKI specifically is baked into the name of the entire forum.  If your PKI doesn't care about browsers, you don't care about WebPKI.
 
Tim Hollebeek (DigiCert):
That's another problem.  Only one working group has browsers in it, so CABF should be changed also.
 
Ryan Dickson (Chrome):
Is it the name of the working group or the name of the BRs?
 
Jeremy:
Yes, the name of the BR is where people hit the problem.
 
Ryan:
We danced around the idea of standing up other groups that are valid TLS use cases but not server certificates at the last F2F.
We could imagine multiple sets based on things like IoT, etc.  I'm not saying we should go in that direction.
 
Jeremy:
That solves the consumer problem, which is the document names convey a bigger scope than they attempt to do.  Let's modify it to rename the BRs instead.
This is to see if there is an interest .
 
Ryan:
Our interest is covered.  We support what the forum thinks is best for the forum and the public, but if we move forward with this approach, we would be alienating what we know to be a valid use case without a clear plan for transitioning, I can't imagine how we'd operationalize that transition.
I'm sure it's possible.
 
Dimitris Zacharopoulis (Harica):
I brought this up at the last F2F.  We are receiving feedback from subscribers that the BRs seem to be very focused on browser use cases.  We had years of debate about ETSI and if the TLS BRs could accommodate non-browser use cases.  At the last F2F, MSFT stated that they're basically using TLS certs not just for the browser use case but also internally for operating functions and other server TLS non-browser use cases.
I think we are at a crossroads. I don't believe we can have the agility browsers are pushing for and also have other use cases.
Separating the WebPKI use case as a section of the TLS BRs and allowing other use cases to be supported in the same document is worth the effort, IMO.
 
Karina Sirota (Microsoft):
Microsoft is interested.  We don't need to have it in the same BRs.   Does it need a different working group for client auth or a section of the BRs?  We're flexible, but we want to continue having this. We are not getting rid of client auth.  The root program does not just function for the browser with MRSF.  I think it's the same for Apple.
 
Clint Wilson (Apple):
I can confirm Apple uses our included roots for more than just a browser.  They're used for OS APIs, which are used by the software running on that OS.  IT s an OS-level integration.  But it's still focused on services running on the web.
We haven't encountered any issues with making that function not solely in a browser.
 
Jeremy:
It sounds like there's enough interest for me to come back with a concrete proposal and look at it.
 
Trevoli Ponds-White (ATS):
 
We have a problem with intent versus reality.  In reality a lot of us have our roots that are server auth are in the various root programs.  It would be nice to have a home for this.  Most of us agree that private PKI is the right home for many use cases that are running into problems. but not all the use cases.
We get feedback that the reasons people use public certs, they have a lot of trust in the community and the audits.  They don't want to run their own PKI.
 
Jeremy:
I will try to come back with a concrete proposal.
 
Chad Dundar (Cisco):
Is there going to be a breakout group?
 
Jeremy:
I have to come back with a proposal first.


## Attendees

Dean Coclin (Digicert), Tim Callan (Sectigo), Enrico Entschew (D-Trust), Andreas Henschel (D-Trust), David Lachmansingh (Richter), JinHwan Shin (Deloitte KOREA), Masatoshi Shigaki (KPMG Japan), Eric Lin (EY), Amanda Tedjawinata (EY), Jeff Ward (Aprio), Don SHeehy (WebTrust), Yannick Thomassier (Certinomis), Tadahiko Ito (Secoom), Fumiaki Ono (Secom), Adam Frock (BDO), John Sarapeta (Google Trust Services), Josselin Allemandou (Certigna), Romain Delval (Certigna), Xin Qiu (Commscope), Chad Dandar (Cisco), Taryn Abate (CPA Canada), Jacquelyn Fortuna (CPA Canada), Lilia Dubko (CPA Canada), Tim Crawford (WebTrust/BDO), Ben Wilson (Mozilla), Lora Randolph (Microsoft), Karina Sirota (Microsoft), YamianQuintero (Microsoft), Chris Czajczyc (Deloitte), Scott Rea (eMudhra), Rebecca Kelley (SSL.com), Luis Cervantes (SSL.com), Quan Nham (Fastly), Wayne Thayer (Fastly), Rob Stradling (Sectigo), Jason Soroko (Sectigo), Jay Wilson (Sectigo), Nick France (Sectigo), Henry Lam (Sectigo), Martijn Katerbarg (Sectigo), Eric Cramer (Sectigo), Brian Hsiung (Sunrise CPA), Tsung-Min Kuo (Chunghwa Telecom), David Hsiu (KPMG Taiwan), Tim Hollebeek (DigiCert), Jeremy Rowley (DigiCert), Trevoli Ponds-White (Amazon Trust Services), Michael Slaughter (Amazon Trust Services), Aaron Poulsen (Amazon Trust Serivices), Gregory Tomko (Globalsign), Eva Van Steenberge (Globalsign), Christophe Bonjean (Globalsign), Xiao Qiang (GDCA), Xiu Lei (GDCA), Arnold Essing (Telekom Security), David Adrian (Google), Zakir Drumeric (Invited Guest), Chris Clements (Google Chrome), Ryan Dickson (Google Chrome), Matthew McPherrin (ISRG/Let’s Encrypt), Stephen Davidson (DigiCert), Iñigo Barreira (Sectigo), Mike Agrenius Kushner (Keyfactor), Mats Rosberg (Keyfactor), Corey Bonnell (DigiCert), Leo Grove (SSL.com), Brianca Martin (Amazon), Aaron Gable (ISRG), Adrian Mueller (SwissSign), Adriano Santoni (Actalis), Alexander Truskovsky (AWS), Alison Wang (TrustAsia), Amirul Tifla (Baker Tilly), Antti Backman (Telia Company), Atsushi INABA (GlobalSign), Bilal Ashraf (SSLcom), Bineesh (Microsoft), Bruce Morton (Entrust), Cameron Anderson (OATI), ChyaHung Tsai (TWCA), Clemens Wanko (ACAB'c / TUV AUSTRIA), Clint Wilson (Apple), Corey Rasmussen (OATI), David Kluge (Amazon), Dimitris Zacharopoulos (HARICA), Eamon Zhang (TrustAsia),Eric Hampshire (Cisco), Gajendran Kandasamy (VIDA), Georgy Sebastian (Amazon Trust), Guillaume Amringer (Carillon Information Security), Hazhar Ismail (MSC Trustgate), Hisashi Kamo (Secom), Hogeun Yoo (NAVER Cloud Trust Services), HuckHai LIM (Baker Tilly), J.P. Hamilton (Cisco), Jaime Hablutzel (WISeKey), Janet Hines (VikingCloud), Jason Dempsey (OATI), Joe DeBlasio (Chrome), John Mason (Microsoft Corp), Jose Cardozo (CISA AUDIT TRUST), Jozef Nigut (Disig), Kate Xu (TrustAsia), Kateryna Aleksieieva (Certum by Asseco), Kenji Nakada (JPRS), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy), Lorey Spade (Amazon Trust Services), Luis Osses (Amazon Trust Services), Lynn Jeun (VISA), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Masaru Sakamoto (Cybertrust Japan), Matthias Wiedenhorst (ACABc), Matt Hyder (Amazon), Michelle Coon (OATI), Nargis Mannan (Viking Cloud), Nate Smith (GoDaddy), Naveen (eMudhra), Nicol So (CommScope), Nikos Soumelidis (ACAB'c), nome.huang (TrustAsia), Panos K., Paul van Brouwershaven (SSL.com), Pekka Lahtiharju (Telia), Peter Miskovic (Disig), Priyanka Kohli, Puja Sehgal (Microsoft), Renne Rodriguez (Identrust), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Sandy Balzer (SwissSign), Sooyoung Eo (NAVER Cloud Trust Services), Steven Deitte (GoDaddy), Sven Rajala (Keyfactor), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera), ChyaHung Tsai (TWCA), Vinay Kumar (OATI), Vinay (OATI), Wendy Brown (FPKIMA), Zurina (MSC Trustgate)
