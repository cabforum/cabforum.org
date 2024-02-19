---
aliases:
- /2018/03/08/final-minutes-for-ca-browser-forum-f2f-meeting-herndon-va-7-8-march-2018/
author: Jos Purvis
date: 2018-03-08 19:43:30
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 43 Meeting in Herndon, Virginia, 7-8 March 2018
type: post
---

# Meeting 43 Minutes

## Plenary Meeting – Wednesday-Thursday, 7-8 March 2018

### Attendance

Arno Fiedler, D-TRUST; Atsushi Inaba, [GlobalSign][1]; Ben Wilson, [DigiCert][2]; Bruce Morton, Entrust Datacard; Cap Hayes, Cisco; Cecilia Kam, [GlobalSign][1]; Chris Bailey, Entrust Datacard; Chris Kemmerer, SSL.com; Christoph Sutter, ACABc /TUVIT; Christopher Czajczyc, Deloitte; Corey Rasmussen, OATI, Curt Spann, Apple; Dave Blunt, Amazon; David Pederson, Amazon; Daymion Reynolds, [GoDaddy][3]; Dean Coclin, [DigiCert][2]; Devon O’Brien, Google; Dimitris Zacharopoulos, HARICA; Don Sheehy, [WebTrust][4]; Doug Beattie, [GlobalSign][1]; Enrico Entschew, D-TRUST; Eric Docktor, Amazon; Fotis Loukos, SSL.com; Franck Leroy, Certinomis – Docapost; Frank Corday, Trustwave; Frazier Evans, US General Services Administration; Geoff Keating, Apple; Gordon Bock, Microsoft; Iñigo Barreira, 360; J.P. Hamilton, Cisco; Jeff Ward, [WebTrust][4]; Joanna Fox, [GoDaddy][3]; Jonathan Kozolchyk, Amazon; Karina Sirota, Microsoft; Ken Myers, Protiviti; Kirk Hall, Entrust Datacard; Leo Grove, SSL.com; Mads Henriksveen, Buypass; Masakazu Asano, [GlobalSign][1]; Matthias Wiedenhorst, ACABc /TUVIT; Michael Slaughter, Amazon; Mike Reilly, Microsoft; Moudrick Dadashov (SSC); Neil Dunbar, [TrustCor][5]; Jingan Ou, GDCA; Patrick Tronnier, OATI; Peter Bowen, Amazon; Phillip Hallam-Baker, Comodo Security Services; Philipp Bouchet, ACABc/ LSTI; Rachel [McPherson][6], [TrustCor][5]; Rich Smith, Comodo CA; Richard Barnes, Cisco; Robin Alden, Comodo CA; Ryan Sleevi, Google; Scott Rea, [DarkMatter][7]; Taryn Abate, CPA Canada; Tim Hollebeek, [DigiCert][2]; Tim Shirley, Trustwave; Travis Graham, [GoDaddy][3]; Wayne Thayer, Mozilla; Wei-Hao Tung, [ChungHwa][8] Telecom; Wylie Swanson, [TrustCor][5]; Lei Xiu, GDCA

### Start of Plenary Meeting

Recap of Prelim Matters, Review Agenda and Logistics, Antitrust Statement & Assign Note Takers, Misc. Items of Business: opening statement, welcome new members

### Official Welcome from Kurt Kufeld, VP AWS Platform, Amazon

### Browser root program updates

#### Mozilla

_**Note Taker: Doug**_

**1 Personnel Changes**

Gerv has stepped down from his role at Mozilla due to health issues described on his blog [1]. We wish Gerv the best and thank him profusely for his service to the CA/Browser Forum. Aaron Wu has also left Mozilla. Kathleen and Wayne are splitting program responsibilities, with Wayne leading policy and enforcement activities, while Kathleen manages CCADB and owns the root inclusion process.

**2 CCADB News**

Current Root Store Members of CCADB [2]: Mozilla, Microsoft, Google, Cisco

**2.1 CA Problem Reporting Mechanisms and Recognized CAA Domains**

Info directly published by CCADB to:

- https://wiki.mozilla.org/CA/Included_CAs
- http://ccadb.org/resources

Can be updated as part of Audit Case in CCADB. If needs to be updated out of the annual cycle, then send email to support@ccadb.org.

**2.2 Audit Cases [3] and audit archiving:**

New button “Add/Update Root Cases” added to Audit Case page to make it easier for CAs to associate the new audit statements with their root certs.

- CAs create a single Audit Case for a particular set of audits. Then the CA clicks on this button to create a set of corresponding Root Cases, one per root, to tell the CCADB which Root Certificate records the audit statements in that Audit Case apply to.

New button “Edit Test Websites” added to Audit Case page to make it easier for CAs to provide/update the test websites for those root certs. It lists all of the Root Cases that were generated via the “Add/Update Root Cases” button, and lists the test websites (if pre-existing) for those root certs, so the CA can update them in one place.

Audit statements for root cert records are archived within CCADB. By the end of March audit statements for intermediate certificate records will also be archived within the CCADB (when the intermediate cert record has separate audit statements). And we will add a section to the root and intermediate cert records listing the audit archives associated with it.

On our to-do list: add ability to add audit archives for older audit statements, so we could generate the full history of audit statements for a root cert. This will likely be a simplified Audit Case type of object, so CAs could upload their old audit statements, and then a root store operator could verify before CCADB processes the data.

**2.3 Root Inclusion Cases**

CAs and root store members should ignore the current “CA Owner/Root Inclusion Request” Cases.

Kathleen is redesigning Root Inclusion Case objects, and will announce when it is ready for people to begin using (hopefully by June). The redesign will be based on how Audit Cases are implemented, and will enable CAs to directly input/update their own root inclusion request data, and the Root Store Members will be able to independently make decisions on that data.

**2.4 CP/CPS updates**

- Part of the Audit Case.
- If a CA needs to update separately, then send email to .
- On our to-do list: Make it so CAs can directly update certain information in their Owner and Root records, such as CP/CPS links, CA Problem Reporting Mechanism, CAA Identifiers.

**2.5 Updates to Account Hierarchy section in CA Owner, root, and intermediate cert pages**

If over 100 records in the hierarchy, then the Account Hierarchy section will only show the directly related items (parents up to Owner, children, siblings), and there will be a link at the top of that section called: “\[ATTENTION: Your hierarchy has over 100 records, click here to see full hierarchy\]”. This link displays the full Account Hierarchy in a separate tab.

Some user interface tweaks: icons showing which record you are currently looking at (star), which records have children records (two locks), which records are revoked (x). Show part of SHA2 Fingerprint (instead of SHA1), minor text changes.

**3 Intermediate Preloading**

This summer, Firefox will begin pre-loading its certificate database with all intermediates disclosed in the CCADB. This is an alternative to “AIA chasing” designed to reduce the incidence of “unknown issuer” errors caused by server operators neglecting to include intermediate certificates. Updates to the CCADB will be provided for Firefox users on a regular basis.

**4 Inclusion Request Processing**

Note to CAs from Kathleen: I am 3 months behind on reviewing CA comments/additions to their root inclusion/update request bugs. If you updated your CA’s bug prior to December 5, and no one has responded to your update, then please send email to Kathleen. Otherwise, please be patient.

We’ve changed the inclusion process [4] by adding a separate step for detailed CPS reviews prior to the public discussion period. Since the request won’t have to wait indefinitely for someone to provide feedback on the CPS during the public discussion phase, we plan to limit the discussion period to 3 weeks with extensions if needed.

Devon and I are performing the CPS reviews. It really helps move things along when the CA has made an effort to comply with the BRs and Mozilla policy in their CPS rather than waiting for us to point out obvious problems.

We are also giving audit history more attention. If you submit a root for inclusion that issued certificates prior to obtaining a BR audit, it is likely to be rejected.

**5 November Communication**

I summarized the responses Mozilla received [5]. The general theme was slow response by some CAs to implement new requirements. Some CAs had not complied with version 2.5 of the policy that went into effect last June [6], while others claimed compliance but hadn’t updated their CPS. I expect the next version of Mozilla policy to make these requirements more explicit.

We also had a few CAs who required repeated nagging before responding to this survey. With the January survey, we began treating non-response as an incident. Currently, one CA has still not responded to the January survey, which has us extremely concerned.

**6 January Communication and Ballot 218**

We decided to send out a special survey in January to raise awareness of the vulnerabilities found in domain validation methods 1, 5, 9, and 10. The detailed responses on the use of method 1 provided by some CAs were very helpful [7]. Mozilla expects CAs to comply with ballot 218 and discontinue use of methods 1 and 5 by August 1st, but we currently have no plans to impose additional root program requirements.

**7 BR Self Assessments**

Thank you to all CAs who completed assessments by the original deadline of January 31st. Extensions until April 15th have been granted to some CAs. We would like to make a review and update of this an annual requirement that each CA submits along with -or perhaps prior to – their annual audit statements.

Google Doc of BR Self Assessment Status: https://docs.google.com/spreadsheets/d/1Lmdkl3gTpKyBgZwL_6j5ivClBXiGMUnZyAVJDTHtjO4/edit?usp=sharing
If your CA’s BR Self Assessment status in this document is incorrect, please send email to Kathleen.

**8 Audit Reporting Requirements**

Section 3.1.4 of the Mozilla Root Store Policy [8] requires audit reports to contain certain information. We have begun to reject reports that don’t contain this information. Mozilla strongly encourages CAs to ask their auditors to supply the required information.

Kathleen is using the Audit Letter Validation (ALV) tool [9] provided by Microsoft in the CCADB to help verify that all of the required information is in the audit statement.

We are also aware that ETSI is working to improve their audit statement templates and look forward to their update later in the meeting.

**9 Deadline for S/MIME Name Constraints**

Section 5.3.1 and 5.3.2 of the latest Mozilla policy requires CAs to publicly disclose (via CCADB) or technically constrain (via both EKU and Name Constraints) all subordinate CA certificates including those used to issue email S/MIME certificates. At the Taipei F2F meeting we pushed the compliance deadline to April 15th, which is now the date all subordinate CA certificates must be disclosed, constrained via EKU and name constraints, or revoked.

**10 Symantec Certificates and Firefox**

We are planning to release the second phase of the Symantec distrust plan - remove trust in all Symantec certs issued prior to June 1, 2016 - \[10\] \[11\] in Firefox 60, due to be released in May [12]. With the exception of certain whitelisted subordinates, certificates that chain to Symantec roots and that were issued prior to June 1, 2016 will generate an error. Our implementation has been updated to whitelist certain subordinate CAs based on their public key. We have also added the preference “security.pki.distrust_ca_policy” to FIrefox. A large number of sites are currently impacted by this change, but we are optimistic that the situation will improve prior to the release of Firefox 60.

In Firefox 63 due in October, we plan to remove the exception for certificates issued after June 1, 2016. but exceptions for the whitelisted intermediates will remain in place. We have not yet set a date for removing the whitelist or the Symantec roots.

**11 Certificate Transparency**

Mozilla has no new information or plans to share at this time, but we are still considering implementing our own CT policy.

**12 Root Store Policy Version 2.6**

I am working on a number of updates to our root store program [13]. CAs are encouraged to participate in the discussion on mozilla.dev.security.policy. One area that I would especially like CAs input is requirements for transfers of subordinate CAs.

## URLs related to the above

1. http://blog.gerv.net/
1. http://ccadb.org/rootstores/
1. http://ccadb.org/cas/updates
1. https://wiki.mozilla.org/CA/Application_Process
1. https://groups.google.com/d/msg/mozilla.dev.security.policy/Bs3yRryKWFQ/zJkUtz0GBAAJ
1. https://wiki.mozilla.org/CA/Root_Store_Policy_Archive

#### Microsoft

_**Note Taker: Tim**_

## Talking points from Mike

- msroot@microsoft.com should be used for communications to ensure timely response. Communications to CAs will come from this address as well rather than from individual team members. (old trustcert@microsoft.com will relay mails to msroot but eventually will be decommissioned)
- We now have the capability to deploy root store changes on a monthly cadence. Root change request review may not move as quickly though depending on complexity, conformance to CABF baseline requirements and/or Microsoft root program requirements/contract
- January release came out on 30 Jan. For more information, see: http://aka.ms/rootupdates. Next release targeted for the end of March. Monthly change capability begins in April
- Continuing to conduct end-to-end examination of each root in the root store for EKUs, use, contract compliance and other issues which may represent risk to Microsoft our users. Moving last remaining CAs on 2007 version contracts to updated 2015 version
- Continued efforts toward automation of program processes to minimize errors and enable increased verification of program compliance
- Update on our Common CA Data Base CA Audit Letter Validation project (Jixi)
- In production and visible to everyone in the CCADB
- Actively being used and finding CA audit letter problems
- Demo/Q&A Thursday after lunch (slot 13 on f2f 43 agenda)

Gordon and Karina from Microsoft are here so people can meet them.

Doing an end-to-end scrub of all roots including EKUs, risk ranking, contract requirements, and so on. Will be reaching out with questions and concerns.

_Chris:_ How are risk rankings determined? Audit status, on latest contract, ability to meet requirements, discussions in public forums, unresponsiveness.    

_Mike:_ Still have ~24 people on the 2007 contract, everyone needs to move to 2015 contract.    

Continuing to try to increased use of automation, driven by Gordon.

_Doug:_ Mozilla has a pretty open process for policy development, does Microsoft have any such plans? Also, some terms in the Microsoft policy are confusing, how to get updates?    

_Mike:_ No plans to have a collaborative feedback on policy planning, but will share through CABF what changes might be coming. Send a note to MSROOT about things you find confusing, and if there are common misunderstandings or things that are unclear, they will be fixed.    

#### Google

_**Note Taker: Robin**_

_Ryan:_ Contact information. There is a CCADB blast in your mailbox. The email address to contact us for the root program is chrome-root-authority-program@google.com. Please do not email individuals for root program issues as an email could be missed or the individual may be away from work.    

**Certificate validation:**
**SYMANTEC** – Chrome 65 is no longer trusting certificates from legacy roots issued after December 2017. Chrome 65 is out today. Chrome 66 will be out Mar 16, removing trust for SYMC certificates issued before June 1, 2016. Common-name matching that was enabling for Enterprise use – this feature is being removed in Chrome 66. 825 days lifetime will be ENFORCED at 825 days (measured in seconds). Chrome 66 also blocks certificates issued with valid_from in the future.

If you are trusted, or were ever trusted on a Chrome platform, you will be subject to requirements as they emerge over time, in perpetuity. CT – enforced on public CAs. Blogs going out (today) talking about transitions.

**UI/UX**
Chrome 65 has been actively doing trials of HTTP marked as non-secure, as well as HTTP being marked as non-secure with a red danger triangle.
This is all part of our move to deprecate HTTP. Chrome 68 will mark HTTP as non-secure. Any site that uses HTTP will be marked as not secure.

We have a tool called lighthouse. It is Webdev-oriented and examines your site and gives performance tips. We have introduced a new lighthouse audit that looks for mixed content (http & https). We will look at other things in lighthouse audits, too.

**CT (Devon)**
Chrome 65 added 2 new sets of time-sharded logs. time-sharded logs Argon & Nimbus (Cloudflare) now in Chrome 65.
In early February we updated CAs (thru CCADB) and reposted to CT-policy asking about CT readiness.
If you haven’t already answered the survey – please do!!! Also, we have migrated the authority source of truth for CT policy to [GitHub][10]. The old page now redirects to [GitHub][10]. This creates a more controlled approach to policy.

Since we added sharded logs for CT, operators have asked for shard groups. We are trying to balance the benefit of having enough logs without having too many. There will be public discussions. Since we are closing in on 100% enforcement. If you plan on supporting CT without embedding SCTs, please reach out to us, we want to make sure you are fully aware of what that means. Also if you ARE planning to embed 100% – let us know.

Finally, the last CT policy day was in November 2017. Followup will be summer/fall 2018, after the 2018 CT enforcement date so we can tweak policy from lessons learned. Attend if you have things to say!

_Q:_ Roots removed from chrome store – what does that mean?    
_A:_ If a root is removed from public trust, but added back as an enterprise root, (e.g. Equifax root) if we encounter a chain that has been buit in that way, we will treat it as if it were publicly trusted.    
Chrome used to have an issue where an enterprise root signed a publicly trusted root, (J&J do this), we used to treat it as an enterprise root.

1024 bit is a special case, because some users in (e.g.) India struggle to get authroot updates.SHA-1 – we have an enterprise policy which enables it. – but if it transits a public trust anchor (identified by SPKI) then we apply rules as if public.

_Q:_ Where is there a list of public trust SPKIs.    
_A:_ I have a lovely json doc in the Chrome source tree.    
_Q:_ There is a single unified set across all platforms?    
_A:_ Correct, in Chrome 65 and earlier it was based on local config & platform.    
from Chrome 66 it is based on a single list. (with meta-data relating to platforms)

#### Apple

_**Note Taker: Mike**_

Upcoming distrust of Symantec plan details to be published soon. Apple plans to align distrust with the timeline published by Google and Mozilla. However, what will be distrusted may be different than those root stores which focus only on TLS

**Certificate Transparency (CT) update:** Looking into CT log policy development but most likely the Apple CT policy will align with that of Google. Apple will also use the same list of trusted logs as Google. This list can be found at https://chromium.googlesource.com/chromium/src.git/ +/master/net/data/ssl/certificate_transparency/log_list.json

Should a log operator desire to include their log in Apple’s program requests should be sent to transparency-program@group.apple.com and include the following:

- Two points of contact (email and phone number)
- CT logging policy for accepting certificates
- Subject DN and SHA256 fingerprint of accepted root certificates
- Publicly accessible CT log server URL
- CT Log public key (DER encoding of the [SubjectPublicKeyInfo][11] ASN.1 structure)
- The Maximum Merge Delay (MMD) of the Log

Apple Evaluating standing up a Root CA that will issue certificates to be used to verify CT Log for MMD compliance.

Cert revocation capability is still going well. CT log updates now flow almost immediately into next revocation information update.

#### 360

_**Note Taker: Mads**_

Qihoo 360 Browser presented by Inigo

**1. Browser characteristics**

Two browsers based on Chromium. 360 Safe Browser used in China, the 360 Extreme Browser used outside. Both sharing the same root program. Flash Icon to change to the IE look and feel or Chromium look and feel.

**2. Security enforced certificate strategies**

Intercepts any certificate error by default. White lists based on websites with high traffic.

Approx 90k sites are blocked pr day – more than 40% due to invalid certificate date invalid, mostly caused by incorrect system time.

**3. White list**

White lists includes top gov websites and top banks.

**4. UI presentations**

Different UI for EV, OV, IV and DV.

**5. 360 Browser Root Inclusion Process**

360 Browsers trust the root certificates in the underlying operating system. CAs are to encouraged to apply for inclusion in their Root Certificate Program – see [caprogram.360.cn][12].

Robin asked if CAs already included in Microsoft, Apple, Mozilla etc should apply for inclusion in the 360 Root Certificate Program and the answer was yes.

All CAs must start applying now or else they will be removed. The application process is described on the website [caprogram.360.cn][12]. Just fill in the form to apply.

360 has contacted Mozilla to also use CCADB.

**6. Others**

HTTPS by default, Symantec issue to be implemented this year.

In China most of the systems are old and websites support IE.

Wayne asked about how to contact the Root Certificate Program system operators. The application form contains some information.

Dimitris said that we need this information from all the browsers in the Forum.

### Working Group Reports

#### Governance Change Working Group

_**Note Taker: Cecilia**_

**History:** Governance Change Working Group was formed after Ballot 165 passed. The goal of this group was to:  

1. Revise the scope of what the forum should work on.
1. Change IPR policy
1. Reviewing the voting schemes

The proposed amendments were shared. The working group suggests that you review the documents on your own, and with your counsel. They are hoping to move forward with the ballot 206 shortly after this meeting.

Each member will have 90 days to sign the updated IPR agreement once Ballot 206 passes

[CABF_F2Fpreso_030518_vmf.pptx][13]

Ballot is effective 90 days after it passes and can use the old rules till then.

The Working group has also been compiling a list of issues. They have it on a spreadsheet and have categorized by 3 categories:

1. Won’t fix
1. Important
1. Critical.

They are trying to address the critical ones first. If categorized as important they are not critical for ballot 206. If categorized as won’t fix – they will not fix. Dean/Ben will add this list on the wiki.

#### Policy Review Working Group

_**Note Taker: Chris K.**_

**Presenters:** Ben Wilson, Dimitris Zacharopoulos  

The group’s primary focus to date has been to review and disambiguate use of the phrase “Certificate Authority” and where required replace this with “Trust Service Provider” (where “CA” refers to a certificate authority’s people and/or processes and “TSP” to the legal entity that operates the CA (“a distinction that is needed”).

Upcoming needs and functions of the PWG are TBD and might include evaluating standards of other similar groups to see if the BRs are “up to speed” and reexamining the WG charter.

The latest email from the WG (of Feb 23d) includes a RFC and a link to the [GitHub][10] [pull request][14] incorporating all proposed CA/TSP language changes. This review is now complete and likely to move to a ballot soon after this F2F meeting

#### Network Security Working Group

_**Note Taker: Tim Shirley**_

**Presenters:** Ben Wilson, Dimitris Zacharopoulos  

Good progress from the morning discussion; discussed where we are and how we got here. A sub-group is doing thread analysis of root CA systems and identifying compensating controls. Seeking feedback from forum if thread analysis process is a good one to use in the future.

Generally positive response to methodology from auditors & CAs; worth continuing. Discussed upcoming changes to password requirements. Discussed waves of ballots to make changes gradually. First ballot will make 2FA mandator and NIST doc as guideline for password properties. Discussed 2 definitions of air-gapped zone and high security physical zone. Work is ongoing.

Kirk asked what the plan is to do next, after completing these “bites”. Ben responded they have a lengthy list; looking to extend charter (expires in June.) Want to add how we handle cloud-based systems.

#### Validation Working Group

_**Note Taker: Neil Dunbar**_

**Speaker:** Tim Hollenbeek  

Validation WG Summit yesterday. Surprised, and pleased, to see many of the methods coming under scrutiny, hence a desire to critically appraise the validation methods, towards improvement, or removal.

Some good discussions on each method, identifying weaknesses and concerns, as well as potential improvements. With Wayne compiling the list of improvements, we wish to turn those action items into workable ballots. Participation in this process would be appreciated, given the time commitment.

Still some controversy over whether method 1 can be rescued; this is the priority in the work because of its current use and incipient removal in a short timeframe.

Some doubt remains, given the scope of work and availability of resources to complete the balloting process.

Some other work products involve EV improvement and IP validation, but at a lower priority.

### [WebTrust][4] Update

_**Note Taker: Kirk**_

[WebTrust][4] for CA Update

Presented by Jeff Ward, Don Sheehy, and Taryn Abate

## Current Status of [WebTrust][4] audit criteria

[WebTrust][4] Baseline + NS vs 2.3 Released effective February 1, 2018 Updated to conform with Baseline 1.5.4 and NS 1.1

[WebTrust][4] for CA 2.1 Released effective September 1, 2017 Sections added on key migration, destruction and transport Publicly Trusted Code Signing Vs 1.0.1 Modified version released to fix error in material and to remove unauditable criterion Current Status – updated

[WebTrust][4] EV SSL Released v 1.6.2 effective October 1, 2017 Updated EV SSL Audit Criteria to conform to EV SSL Guidelines v1.6.2 and other clarifications

[WebTrust][4] EV Code Signing Released vs 1.4.1 effective October 1, 2017 Removed Principle 2, Criterion 5.12 as it was not auditable Current Status – updated

Practitioner Audit Report templates Approved by AICPA/CPA Canada Released Sept 1, 2017 Covers almost all potential types of reports (about 18 examples in each) and assertions Assertion based examples, as well as direct subject matter Need to be followed to get the seal

Applicability Matrix updated

Current Status – updating/preparing

[WebTrust][4] for RA Third Draft version being prepared Will have main principles similar to [WebTrust][4] and additional principles (appendices) for Baseline+NS, EV Strength of controls will be issue Reporting alternatives being discussed including SOC2 like, public report and impact on CA report

Practitioner guidance for auditors Under development covering public and private CAs. Will provide examples of tools and approaches as best practices – please share if you have any in mind Draft expected Summer/Fall 2018

Some new and old issues – Terminology CABF public post from Don and Jeff March 15, 2017 provided definition of

“Point In Time” – as of a given date Focused on the design and implementation of controls Effectiveness of controls not tested Audit report, example in our reporting guidance

“Period Of Time” – Minimum 2 months, max of 12 (not when auditors were there) Includes testing effectiveness of controls Audit report. Examples in our reporting guidance

“Readiness Assessment” = Consulting report – not an audit Report is for management and internal users only

Some new and old issues: [WebTrust][4] for CA reports – should a more detailed version be created similar to SOC 2 (limited distribution/no seal) or report with detailed system description and controls Cloud computing Additional formalization of CPA Canada processes More detailed license and process for auditors, including international www.webtrust.org project to upgrade site is underway

CPA Canada (now)

Reporting Structure/Roles

- Gord Beal – [WebTrust][4] falls into Guidance and Support activities of CPA Canada
- Janet Treasure – Seal system responsibility
- Bryan Walker –Licensing advisor
- Don Sheehy – Task Force and CABF liaison
- Jeff Ward – Chair of the [WebTrust][4] Task Force and primary contact
- All Task Force members provide [WebTrust][4] services to clients
- Volunteers are supported by additional technical associates and CPA Canada liaison but report to CPA Canada

### ETSI Update

_**Note Taker: Ben**_

attachment: Presentation_to_CABForum_on_standards2018-03-V5.ppt

### Review of pending ballots

_**Note Taker: Robin**_

**206** – Governance reform

**213** revocation timeline extension

**219** clarify CAA

**220** clarify purpose …

**219** now in discussion period
tried to make change with IETF but heard nothing back

_Ryan Sleevi:_ IETF 6844 issues will be addressed at the IETF meet in the next months. We got to 5 different errata last time around to get it right.    

_Tim Holbeek:_ 6844bis specifically excludes this errata.    

_Ryan:_ Is the process of understanding of 6844 ..    

_Tim:_ I would like them to understand their process is a bit broken.    
_Ryan:_ worth poking the chair.    
_Tim:_ I want to get to know them and let them know there is an entire industry waiting on this.    

_Kirk:_ Is that ballot in the 7 day discussion period?    

_Tim:_ Ballot 216 exists. Maybe we leave the discussion period open until after IETF.    

_Ryan:_ Yes, lets talk to the chairs. If we extend a week, let’s Tim and I follow-up.    

### CT implementation issues

_**Note Taker: Mads**_

Mike asked about the feedback from the CA CT-survey.

Ryan said they were using CCADB to collect responses to the survey and they had feedback from a lot of CAs. He said that the vast majority of CAs are ready to support CT and a few say no. Google will reach out to these.

CAs are recommended to embed SCTs in the certificates, it’s not yet easy to use the TLS extension in all situations. Very few CAs plan to use OCSP extension, OCPS stapling allows to use this, bit OCSP stapling is slow to roll out.

Some CAs are using CA software supporting CT. Most commercial CA software vendors have support for CT. If there are any issues with your SW vendors regarding CT, please let us know.

### NIST Cryptographic Module Validation Program (aka FIPS 140)

_**Note Taker: Ken**_

- FIPS 140-1 issued on January 11, 1994 through a public/private working group. NIST established the Cryptographic Module Validation Program (CMVP) to maintain the working group and publication. Industry drives cryptographic development which can be seen in the latest NIST project to identify post-quantum algorithms. It is also a joint program with the Canadian equivalent program. FIPS 140-2 was issued on May 25, 2001 with very modest changes. The mission of the CMVP is to improve security and technical quality of cryptographic modules used by the Federal government.
- Help with identifying and developing standards and support national laboratories. The CVMP Program teams with other national programs around the world. The CMVP program tests and validates commercial cryptographic products against government standards. An approved national lab tests the product and issue a report.
- Industry perspective on CMVP.
- Long review cycles out of sync with product cycles and industry/customer needs. It is costly and rigid. Algorithm testing is not focused on security, but interoperability. Software is not covered and hardware testing is out-of-date.
- CMVP and CST Labs are concerned with their labor-intensive structure and approval model which requires an essay style application process and challenges in testing state-of-the-art products against aged testing rigs and requirements.
- Agencies echo same challenges as industry.
- Long review cycles and difficult-to-understand validation reports make acquisition difficult.
- Agencies can’t find or use latest security products because they do not pass FIPS 140-2 testing which is a federal security requirement.
- Another agency challenge is enabling FIPS mode that meets federal security implementation guidance.
- NIST may adopt ISO 19790 as the next FIPS 140. NIST standards may change, but the mission remains the same. US Government will continue to identify standards, but may get out of creating standards. An industry working group was re-started December 2015 and is open for participation by emailing .
- Developing a plan to re-organize the CVMP program in a phased approach to meet the industry and agency feedback. Primary update will be to tackle depth and scope of testing and leverage mature industry security development processes including automating and integrating testing into product development. Overall goal is to reduce cost, enable agile testing verification during product development, and reduce validation cycle. Powerful economic incentives for industry participation. NIST wants to move away from a point-in-time validation testing and evolve to a continuous testing approach aligned with product development. Is it possible for industry to cheat automated testing methods (VW problem). NIST has algorithm testing status on [GitHub][10] (https://github.com/usnistgov/ACVP). Collaborating with industry partners already including Google Wycheproof. Intend to rollout automated testing platform in 2018 Q3 (April – June). Hope to also integrate with other validation programs such as common criteria which also may include a way to leverage existing validation certifications. NVLAP intend to implement third party or out-of-band audits of the automated testing results. Also collaborating with universities to independently verify validation modules in the field. Module testing status will be updated in a bottom-up approach. FIPS 140 is too big to change at once. Two active pilots with 3+ planned with status update at the October 2018 at the working group. The CVMP will introduce new testing for cloud providers. A draft proposal was released for public comment in February 2018. NIST is working through comments and the approach is to look at toolchain vs individual modules in tandem.
- Q & A:
- _When you do automated testing but the module is still testing, does the module still need to go to the lab?_ When using automated testing it should not have to be redone by the lab. If algorithms change then the report goes back to NIST to confirm update.
- _Do you expect all FIPS 140-3 modules to be ISO 19790 compliant?_ NIST reserves the right for federal government approval so it’s not a 1-for-1 right now. Testing requirements will be aligned eventually and other countries have adopted the ISO.
- _Should CAB Forum update guidance from FISP 140 or international standard to FIPS 140 or ISO 19790?_ Yes, it can be more specific.
- _Can you give us an overview of FIPS 140 and ISO 19790 differences?_ A lot of overlap, but minor differences. FIPS 140-2 and 3 have slight differences.
- _Are you working with military testing labs?_ Yes, we are and at least in the US the DOD references NIST standards. We plan to publish the code for the testing server and if another government wants to implement a similar automated approach they can use our code.
- _Talk about algorithm agility. Industry may have a requirement to use FIPS 140, but want to use other algorithms not included in FIPS 140?_ FIPS 140 is meant for federal government so that is our audience. We look at algorithms from that perspective and do not include commercial applications.
- _There used to be allowed vs approved algorithms and it seems the program has moved away from that. Government has to use approved but allowed mode was flexible for commercial. Any feedback on expanding allowed vs approved mode?_ This may come down to requirement interpretation. The approved comes down to approved in government and not mandating algorithms for use outside the government. That is outside the scope of our program.
- _Auditor interpret CAB Forum requirements to mean modules must be run in FIPS mode rather than you must use a FIPS approved module. NIST should look at providing clarity between the difference. Concerning to people if you aren’t running in FIPS mode then your operation mode is not FIPS validated?_ Yes I see how that can be a difficult situation. This is one of things we may integrated into our automated testing and we plan to expand the number of algorithms and standards to make the process less rigid.
- _NIST –_ If there are algorithms that should be included, please let the NIST working group know about those algorithms so they can be considered.
- _AWS –_ It’s kind of on the fly because its random customer requests. They have their risk in using it but as industry I need the flexibility to allow them to use it using my FIPS approved module.
- _FIPS validation levels are a concern of the CAB Forum. Which level is acceptable is which scenario? Online issuer doing high volume activity, offline CA doing very limited activity, etc? Federal PKI requires level 2 with level 3 hardware for physical protection. What is NIST intent or schema as it applies to assigning levels?_ Levels are assigned based on a threat model. As we go through this update effort we can do a better job in explaining the criteria for the levels. We hope to address this over time. This is something we struggled with and it can’t be automated. We can solve this problem with specific inspection profiles and if you have ideas tell us! We don’t have all the answers and only know what we know through either industry participation or requests and agency feedback. NIST may not have the bandwidth and expertise to solve all technical problems we just look at what’s available sometimes and say “yes, that is fit for government”.

### Forum web site, current form/problems, what information we want to convey to the public

_**Note Taker: Wayne Thayer**_

**Presenter:** Dimitris  

_(Presentation)_

**Current situation:** Lots of manual updates for guidelines, ballots, and minutes. Some information is obsolete Some sections are not maintained Some information is duplicated

Who is interested in the site / Who is the targeted audience?

- CAs
- Auditors
- Relying parties
- Interested parties
- Media
- Members (versus the wiki)

_(Discussion)_

_Kirk:_ trying to be topical will result in news that’s always out of date    

_Ryan:_ Given current structure of the CAB Forum, CA information will always be out of date. CCADB provides better incentives for keeping this type of information up to date.    

_Tim:_ the website is for participants – CAs, Auditors, and Interested Parties    

_Frazier:_ Provide link to CCADB    

_Ryan:_ Disagree    

_Robin:_ Providing links to authoritative sources is fine    

_Ryan:_ The link to CCADB isn’t authoritative for all root stores. If you give some information, people expect you to give all information. “Useful links” will grow to be unmanageable.    

_Dimitris:_ Website should contain static information except for primary activities of guidelines, ballots, and minutes.    

_Ryan:_ Suggest allowing members to share whatever information they choose, maintained by the member.    

_Dimitris:_ Don’t want to give update access to every member    

_Ryan:_ Okay, just give every member a link    

_Dimitris:_ Who is the audience? Not auditors.    

_Tim:_ “Participants” are the audience    

_Ryan H:_ Recommend moving from WordPress to [GitHub][10]    

_Ryan:_ There is an upfront investment that will pay dividends over time    

## Next steps

- Remove duplicate information
- Update useful pages
- Automate maintenance tasks
- etc.

**Conclusion:** work toward moving website to [GitHub][10]. Ryan H., Tim, and Wayne offered to help.  

### CCADB Update

_**Note Taker: Mike**_

- Demo of automated audit letter validation (ALV) capability was provided by Microsoft.
- CAs can now run this validation tool themselves to self-check that their audit letters meet requirements. It provides a report of the issues found which can be shared with the CA’s auditor to fix the errors. This is not required at this time, but will be in the near future
- Text readable PDF files will work the best in the tool. Please verify that the thumbprints for the roots in scope are in the audit letter.
- If you have questions when using the tool please email CCADB () or your root store operator directly for clarification
- _Q: Webtrust has 70-80 formats and can this tool read all those formats?_ Yes, it can as long as the audit letter follows the published format and is in a text readable PDF format.
- _Q: Can we provide good templates to share which run through the system well?_ A: Yes, the templates on the [WebTrust][4]site work well. We are working to get better ETSI templates for those that use this audit standard

### CA Incident Reporting

_**Note Taker: Bruce Morton**_

Where should users report certificate incidents? Currently a user will find bad certificate, then must find the CPS and then find the place to report incident.

Why not report incident address in the end entity certificate? The was some push back as this will increase size of certificates for a very low use case.

The BRs do not state the place to report is in the CPS. Should BRs specify where? Wayne proposes that a a specific statement must be put in the CPS 1.5.2 and also put place in repository.

Note the CCADB has list for all CA’s but this is best for CA’s, browsers and researchers, but not good for common users. See https://ccadb-public.secure.force.com/mozilla/AllProblemReportingMechanismsReport.

Phil states that he is reviewing another standard and would like consistency, see https://tools.ietf.org/html/draft-ietf-uta-smtp-tlsrpt-17. Phil also stated that we could create an email address similar to mailto from CAA. Phil followed up with a proposal, see https://lists.cabforum.org/pipermail/public/2018-March/013073.html.

### News from the Council of Accredited Conformity Assessment Bodies (ACAB-c) on Harmonized audit attestation

## Presented by Philipp Bouchet from ACABc Member LSTI France and Mattias Wiedenhorst ACABc Member TÜVIT

_**Note Taker: Arno**_

ACAB-c is a non-profit organisation founded in 2016 for Conformity assessment bodies (CABs) accredited by a EA (http://www.european-accreditation.org/) according to ISO/IEC 17065 AND eIDAS Art. 3 No. 18 with scope of accreditation in the area of electronic identification and trust services for electronic transactions. Strategic goal is the cooperation with eIDAS relevant Organisations, CA/B-Forum and Browsers. Members are obliged to fulfil an ACAB-c “Code of Conduct”. In Europe 20 accredited Conformity Bodies are active, now seven are in negotiations with ACAB-c

At the last Meeting in Paris they agreed about a template for an Audit Attestation Letter containing “Clean audit”, Contact Information identifying TSP ; Root, Audit Type and period. Separate Attestation is needed for each Root CA. Wayne says it seems to be complete, Matthias thanks Kathleen for advice. Arno reports that ETSI plans to updates 319 403 accordingly

Discussion about Public availability of the AAL-Form:

Arno says that ETSI ESI doesn’t define the design of a form, that’s done by ACAB-c, the Form can be provided by the Browser,but the usage of the Form with the ACAB-c Logo is restricted to ACAB-c Members.

Mike says that Microsoft will think about making the ACAB-c Form mandatory

Matthias says that the Audit Attestation Letter SHALL be provided in English language and reminds that CA’s remain responsible for their audits and have to cooperate with and provide the necessary information to the auditors.

https://www.slideshare.net/ArnoFiedler/20180308-cabf-acabcpresentationv2

### Guest Speaker – Rep. Jim Langevin (D-RI), House Armed Services Committee and Homeland Security Committee (no Minutes)

Note Taker: No notes for this segment

### Review accomplishments/list of tasks/thank you to hosts

### Adjourn

[1]: https://frozen.cabforum.org/wiki/GlobalSign
[2]: https://frozen.cabforum.org/wiki/DigiCert
[3]: https://frozen.cabforum.org/wiki/GoDaddy
[4]: https://frozen.cabforum.org/wiki/WebTrust
[5]: https://frozen.cabforum.org/wiki/TrustCor
[6]: https://frozen.cabforum.org/wiki/McPherson
[7]: https://frozen.cabforum.org/wiki/DarkMatter
[8]: https://frozen.cabforum.org/wiki/ChungHwa
[9]: https://wiki.mozilla.org/CA/Root_Store_Policy_Archive
[10]: https://frozen.cabforum.org/wiki/GitHub
[11]: https://frozen.cabforum.org/wiki/SubjectPublicKeyInfo
[12]: http://caprogram.360.cn
[13]: https://frozen.cabforum.org/wiki/Meeting%2043%20Minutes?action=AttachFile&do=view%E2%8C%96=CABF_F2Fpreso_030518_vmf.pptx
[14]: https://github.com/cabforum/documents/pull/84