---
aliases:
- /2022-02-22-2022-02-22-minutes-of-face-to-face-meeting-in-salt-lake-city/
author: Ben Wilson
date: 2022-02-22 22:05:00
tags:
- Minutes
- Forum
- Face-to-Face
title: Minutes of the F2F 55 Meeting in Salt Lake City, Utah, 22-24 February 2022
type: post
---

## Tuesday, 22 February 2022 – CA/B Forum Meeting (Day 1) 

The antitrust statement was read.

#### Attendees 

Adam Jones (Microsoft), An Yin (iTrusChina), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Antti Backman (Telia Company), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Brenda Bernal (Digicert), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (Digicert), Curt Spann (Apple), Daniel Jeffery (Fastly), Daryn Wright (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hubert Chao (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jeremy Rowley (Digicert), Joanna Fox (TrustCor Systems), Joe DeBlasio (Google), Jos Purvis (Cisco Systems), Jozef Nigut (Disig), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Kati Davids (GoDaddy), Katsuyoshi Osaki (Japan Registry Services), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Michael Guenther (SwissSign), Michael Sykes (SSL.com), Michelle Coon (OATI), Mike Kushner (PrimeKey), Mike Lettona (Digicert), Nick France (Sectigo), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Prachi Jain (Fastly), Rachel McPherson (TrustCor Systems), Rae Ann Gonzales (GoDaddy), Raffaela Achermann (SwissSign), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Rich Smith (Digicert), Rob Stradling (Sectigo), Roman Fischer (SwissSign), Ryan Dickson (Google), Sissel Hoel (Buypass AS), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Yoshihiko Matsuo (Japan Registry Services), Yoshiro Yoneya (Japan Registry Services), Arnold Essing (Deutsche Telekom Security), Robin Alden, Dr Peter Thomassen (SSE Secure Systems)

### Minutes – Approval of Minutes 

Minutes of the 17 February meeting were reviewed and approved.

### Future face to face meeting schedule 

Poland meeting is on for June, Berlin meeting is on for October. More details to follow. Looking for 2023 meeting hosts. Checking on potential for hosts that had to cancel in 2020-2021 to host in 2023. OATI, Globalsign, Cisco are candidates.

### Mozilla Root Program Update 

**Leader:** Ben Wilson (Mozilla)
**Minutes:** Ryan Dickson (Google Chrome)
**Presentation:**

- Today’s update will focus on a review of planned changes that will take effect in Mozilla Root Store Policy (MRSP) v. 2.8 (May 1, 2022)
- Reminders:
- For reference, the briefing from the October 2021 F2F is available [here](/uploads/cab_forum_october_2021_-_mozilla_update.pdf)
- Current draft policy with comparison to v. 2.7 available on [GitHub](https://github.com/mozilla/pkipolicy/compare/master...BenWilson-Mozilla:2.8)
- Reminder, policy update and other discussions take place in the [dev-security-policy group](https://groups.google.com/a/mozilla.org/g/dev-security-policy)
- For any questions, email [certificates@mozilla.org](mailto:certificates@mozilla.org)
- High-level change summary:
- 20-30 items Mozilla wanted to address in this update
- Changes are organized by effective dates. If there are any specific concerns with a date listed, let us know.
- Ben walked participants through the proposed set of changes (note, updates are summarized below, but please reference [authoritative source](https://docs.google.com/document/d/1G-5sLSJSNWZIJRzsr6Q963_twvHD_7AsdXcmeQQ_AdM/edit))
- July 1, 2022
- Name constrained intermediate CA certificates must be disclosed, whereas previously, this was not required. Ben indicated that if a CA operator complies with Apple’s program requirements, they’ll comply with Mozilla’s.
- October 1, 2022
- Revocations performed after 10/1/2022 must follow the updated policy (planned for further discussion by Kathleen during the Server Certificate Working Group meeting tomorrow).
- TLS Intermediate CAs must populate the address of the full (complete) CRL for the certificates it issues in CCADB.
- July 1, 2023
- Prohibition of signing certificates, CRLs, and OCSP responses using SHA1.
- General Document Improvements
- Goals: improve readability and consistency
- Improved specificity regarding key terms (e.g., use of “CA operator” over “CA” when referring to an organization, replace “SSL” with “TLS, capitalize requirement terms having special meaning per RFC 2119, etc.)
- Intermediate CA Clarifications
- encourage CAs to include only a single KeyPurposeID in the EKU extension of intermediate certificates
- more clearly indicate specific EKU usage depending on the type of intermediate CA. However, once the S/MIME BRs are finalized, Mozilla’s policy on EKUs will be revisited.
- require disclosures for intermediate CA certificates technically capable of issuing working server or email in CCADB
- CA operators SHALL NOT assume trust is transferable
- Clarified public discussion requirements when an external third party will receive an unconstrained subordinate CA or cross-certificate
- CT Precertificates
- new policy section added to indicate precertificates are in scope for enforcing compliance
- Forbidden Practices Cleanup
- cleaned up format to improve readability
- Other Updates
- Added language regarding possible outcomes and actions related to incident response and unsatisfactory audits
- Working on adding language that will require older versions of CP/CPS to be maintained in CA repositories
- Working on establishing requirements to remove older Root CA certificates in favor of newer ones [follow discussion here](https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/PuI1ZILqZ7o/m/E-cKaw_jBAAJ) and [here](https://github.com/mozilla/pkipolicy/issues/232)
- Additionally, Ben reviewed CA inclusion Requests, open compliance bugs, and shared an update on CRLite (enabling “monitoring mode” in Firefox 99)
- Discussion:
- One question from GDCA regarding recent changes made by CPA Canada regarding WebTrust audits in mainland China. Ben indicated that Mozilla, along with other browser and operating system vendors, recognizes the severity and importance of the issue, and are working with CPA Canada to determine next steps.

### Google Root Program Update 

**Leader:** Ryan Dickson (Google Chrome)
**Minutes:** Ben Wilson (Mozilla)
**Presentation:**

Google is working on the Chrome Root Program with another launch planned for later this summer. The Program is going through iterations and growth, before then and after, too. With regard to Governance Aspects, Google is updating the root program policy and currently clarifying the policy details. With regard to Technical Aspects, Google is working in the CCADB to streamline processes. Incident management processes are being developed. Also working on optimization, which is a long term goal.

Component update feature is being added. This feature works without user download of any updates. The component feature update will be used to add and remove CA certificates. Implementation is starting with Chrome OS, Linux, macOS, and Windows.

The transitional store was updated last week. (It’s the basis of the Chrome root store). Meanwhile, CAs need to please follow policies, BRs, and report incidents to the Chrome email address. Post updates to your CA policies and practices promptly. To request that Google add new CA certificates to the Chrome root store, please send an email to the designated email address.

Long-term priorities are listed on the slide. Some of these priorities are included in the updated policy to be published in a few months. Many of these items are not new, and CAs should be aware of them. Included in these priorities are: reducing misissuance, increasing accountability, and preparing for a post-quantum world.

**Long term priorities**

- Encourage modern infrastructure and agility
- Replace legacy roots and pki
- Focus on simplicity
- Purpose driven CAs by type
- Promote automation
- ACME!!!!
- Reduce misissuance
- Pre and post issue linting
- Increased accountability and ecosystem integrity
- Automated monitoring and reporting
- Prepare for post quantum
- Encourage experimentation

Google is moving the Chrome Certificate Verifier toward all other platforms (except iOS). Chrome will not be using platform verifiers, but will use Chrome Certificate Verifiers on Linux, MacOS, Windows, and eventually Android. Feedback and data has been favorable to moving forward with the Chrome Certificate Verifier. It’s open source and can be run manually.

See slide on Combined Feature Set – launch roadmap.

Certificate Transparency – Chrome 100 – new policy on number of logs and SCT requirements and aligning with Apple’s policies. General Updates – In Chrome 98, TLS 1.0 and 1.1 are blocked with non-bypassable errors

### Apple Root Program Update 

**Leader:** Clint Wilson (Apple)
**Minutes:** Jos Purvis

#### Updated Root Program Policy 

- Some CAs did not receive updates due to Spam filtering
- Minor clarifications and text alignments about expectations
- Incorporated CA feedback into changes, especially S/MIME validity periods which were increased 825 → 1125. They are still working with S/MIME WG to shorten that up, but due to feedback are keeping it here right now.
- Changes to take effect April 1 2022
- S/MIME profile requirements
- CA Disclosure in CCADB
- Take effect 1 Oct 2022
- Full CRL disclosure

#### Add’l Cert Configuration Data 

- Documentation
- Would like feedback about documentation improvement – how can they make this easier and clearer?
- Article linked about new hyperlink service

#### Questions 

_No questions_

### Microsoft Root Program Update 

**Leader:** Karina Sirota (Microsoft)
**Minutes:** Tim Hollebeek (DigiCert)

Microsoft is doing an end-to-end process review of every way CAs interact with their system and program.

For changes to roots, please let Microsoft know 3 months in advance.

See also the presentation slides for more details.

No questions.

### Guest Speaker 

**Presenter:** Dr. Peter Thomassen, SSE / deSEC
**Presentation:** [PSL Access as a Service](/uploads/2022-02-22_ca_b_forum_psl_access_as_a_service.pdf)

### CCADB Update 

**Leader:** Kathleen Wilson (Mozilla)
**Minutes:** Corey Bonnell
**Presentation:**

CCADB Policy Updates

– Section 5 contains the required format for audit reports that are consumed by ALV. Guidance for date formats has been updated. The motivation for adding this guidance is that a tabular format doesn’t work with ALV.

– Added information for the CCADB Steering Committee. Each participating Root Program has a representative. Regular meetings with reps to discuss updating and improving CCADB.

– Added a page called “Audit Letter Validation”.

– Added a page called “Formula Fields” to better describe calculation of trust bits and EV enablement.

– “Updating Audit Statements” with guidance for non-audit updates to entries that occur during an audit year. This is particularly useful for adding metadata such as URLs for full CRLs, etc.

Modified Task List on CCADB homepage by providing rich information on each task. Also added a filter for tasks by root program.

– Dimitris asked if full CRLs are required for technically constrained ICAs. Kathleen responded that the Root Program requirements are currently different; the new filter can be used in this case.

– Clint clarified that for the Apple Root Program, all ICAs will be required to make available full CRL information regardless of technical capability.

Reminder emails will be combined to a single email across all Root Programs.

CPA Canada has changed the convention used for URLs pointing to WebTrust audit statement PDFs. Old links will not work.

Intermediate certificate pages now include a field for the root cert and CA owner that the ICA chains to.

Kathleen reminded the group of the CCADB API that can be used to automate intermediate certificate uploads.

There were no additional questions.

### ETSI Update 

**Leader:** Arno Fiedler (Vice Chair ETSI ESI)
**Minutes:** Clemens Wanko

ETSI standards adopt other standards that have been internationally supported wherever possible, this includes alignment of ETSI standards for website authentication certificates (QWACs) with CAB Forum guidelines

– Establish collaboration with Safe Identity, Asia PKI, Japan Network Security Association, Arab ICT Organisation, PKI Consortium, OpenIDConnect (under preparation),

– Contributed to ISO DIS 27099 on PKI Practices and policy framework,

– Monitoring UNCITRAL “Draft Provisions on the Use and Cross-border Recognition of Identity Management and Trust Services” finalized in Mid 2022 (?)

Update on TS 119 403-2 V1.2.4 (2020-11): Part 2: Additional requirements for Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates” (as in CA/Browser Forum) New work item on AAL updates () will start soon.

### ACAB’c Update 

**Leader:** Clemens Wanko (TÜV AUSTRIA)
**Minutes:** Arno Fiedler

**Council Membership**

Clemens reported a rising number of membership requests since Mozilla announced their Policy Update making the membership in the ACAB council mandatory for ETSI auditors. ACABc currently has two more EU CAB in membership application process.

**Quality Management at the ACAB council**

The process and decision taking for peer reviews of ETSI Audit Attestations is under discussion within the council. Decision taking to be expected at next ACABc members meeting in March ‘22.

**Common certification program for ACAB’c member CAB**

In order to further harmonize ETSI auditing amongst ACAB council members, key elements for a common audit scheme and certification program were discussed. Implementation suggestions are expected at next ACABc members meeting.

**“ETSI auditors session with the Browsers”**

As in the past, ETSI/ACAB’c suggested a common meeting with the browsers to be scheduled for next f2f in Poland (56.) & Germany (57.)

**New eIDAS Features (reminder):**

European Digital Identity Wallets will have to be provided by every EU member state. New the following Qualified Trust Services are expected to be defined within eIDAS 2: services for remote signing/sealing, attestation of attributes (to support the wallet), archiving and ledgers.

**Refreshed (unofficial) schedule for eIDAS 2 release:**

The next update of the drafted eIDAS 2 is expected by end of March 2022. The so called toolbox (practical implementation guidance and samples) is expected to be ready by end of the year 2022. The eIDAS 2.0 release is currently foreseen for mid 2023 with getting into force with different grace periods depending on the specific eID and trust service.

**Important and to be kept in mind for CA and TSP under eIDAS:**

Additional new rules are expected to become mandatory for CA/TSP under eIDAS 2.0:

– Regulation (EU) 2019/881 (Cyber Security)

– Regulation (EU) 2016/679 (GDPR)

– NIS 2 Directive (EU) 2022/xxx

– technical/process trustworthy systems and products (eIDAS Article 24 No. 5)

**Note:** there are no news so far with regard to further treatment of QWACS (acceptance mandatory for operators/Browsers in the EU?)

For further information or in order to register, please contact us at: [www.acab-c.com](http://www.acab-c.com)

### WebTrust Update 

**Speakers**: Jeff Ward and Don Sheehy
**Minute Taker**: Tim Callan

#### “WETSI” – WebTrust/ETSI in cooperation 

- No specific discussions since December virtual meeting
- Continuing issues to be discussed on reporting and auditing
- Will include audits with outsourcing, subservice arrangements
- Trying to stay ahead of technology advances to keep requirements current

#### Impact of COVID-19 

2020 – Issued – Practitioner guidance for auditors on COVID-19

- Discussed areas that might impact auditors and CAs
- Potential for scope limitations in certain areas caused by inability to physically be onsite
- Provides examples of tools and approaches as best practices
- On CPA Canada’s web site () [www.webtrust.org](http://www.webtrust.org) will redirect you

2021 Early 2022 – Still relevant no change to practitioner guidance

- Will be reassessed at next WebTrust for CA meeting

2020 – Issued – Practitioner guidance for reports on COVID-19

- Provides examples of potential audit reports
- Provided electronically to registered WebTrust practitioners
- Not many COVID-19 seals have been issued
- There is not only the desire not to be onsite but also government restriction to deal with

2021 & Early 2022 – Still relevant –proposed wording changes to be consistent with 2021 report modifications

2020 COVID- 19 Temporary WebTrust Seal

- Can be awarded in a limited circumstance
- All controls tested are ok, but scope limitation exists due to government mandated restrictions
- Good for 6 months – expectation that scope limitation will be eliminated at that point
- Seal is removed once the “clean” opinion is issued, when it is determined a report will be qualified/modified, OR six months, whatever happens first

2021 process for deleting 2020 COVID- 19 Temporary WebTrust Seal

- If after 6 months no ability to remove issue, seal is removed and report stands – advise report users
- Or CA can remove seal if they know they will mis the 6 months deadline
- If ability to solve issue and “clean” opinion is issued, remove seal and issue regular WebTrust seal.

2021- Early 2022 same process as 2020 for awarding COVID- 19 Temporary WebTrust Seal

#### Updates to Criteria 

WebTrust Principles and Criteria for Certification Authorities – Verified Mark Certificates

- Version 1.0 – release date December 2021
- Based on the Minimum Security Requirements for the Issuance of Verified Mark Certificates – Version 1.1 August 2021
- Assurance reports have been developed based on latest reporting template project

WebTrust for CA vs 2.2.2

- In the introduction preceding the principles, it states that “The Certification Authority must disclose its key and certificate life cycle management business and information privacy practices. Information regarding the CA’s business practices should be made available to all subscribers and all potential relying parties, typically by posting on its Web site. Such disclosure may be contained in a Certificate Policy (CP) and/or Certification Practice Statement (CPS), or other informative materials that are available to users (subscribers and relying parties).”
- There was no specific requirement stating such however.
- The following has been added as a footnote to Principle 1.0. and is effective for ending on or after 15 July, 2021. “For a public CA, such disclosure should be conducted through publication of either the Certificate Policy (CP) and/or Certification Practice Statement (CPS) on its Web site. For a private CA, disclosure can be performed through alternative means, such as a corporate intranet or private web site access available to users (subscribers and relying parties).”
- Will be available on CPA Canada website once compliant with AODA

Code Signing Baseline Requirements Version 2.7

- Updated to address changes up to and including Version 2.7 of the Baseline Requirements for the Issuance and Management of Publicly-trusted Code Signing Certificates
- Effective date engagement periods commencing on or after 1 February 2022
- Please note that Version 2.2 merged EV and Non-EV. As a result, column references to EV CS have been eliminated.
- Will be available on CPA Canada website once compliant with AODA

WebTrust Baseline with Network Security 2.6

- Updated to address changes up to and including SSL Baseline Requirements v1.8.0 and Network Security Requirements v1.7.
- Effective date engagement periods commencing on or after 1 February 2022
- Will be available on CPA Canada website once compliant with AODA

WebTrust Extended Validation SSL 1.7.8

- Updated to address changes up to and including EV SSL Guidelines v1.7.8 and other clarifications
- Effective date engagement periods commencing on or after 1 February 2022
- Principle 2, Criteria 4.7 – Deleted as no longer contained in EV. Still required in Baseline Requirements (4.1.1)
- Will be available on CPA Canada website once compliant with AODA

#### Current Status of Updated WebTrust Documents 

- WebTrust for CA 2.2.2
- WebTrust Baseline + NS vs 2.6
- WebTrust for Extended Validation vs 1.7.8
- WebTrust for Publicly Trusted Code Signing vs 2.7
- WebTrust for Extended Validation Code Signing vs 1.4.1 – deleted effective November 1 2020
- WebTrust for RA 1.01

#### Updates to Reporting Guidance 

Updated Reporting Templates vs 2.0

- Updated for changes to standards etc. since 2017
- Reporting examples for US, Canadian. and International short-form reports
- Reflecting new changes in AICPA guidance
- Updated to
- reflect wording changes in reporting 2018-2021,
- new code-signing reporting (have eliminated EVCS, transitional reporting etc.)
- new verified mark certificate reporting
- additional reports not included in 2017 package
- All versions have same reports for consistency
- Effective February 1, 2022
- Will be available on CPA Canada website once compliant with AODA
- If you need any of these in advance, reach out to Don or Jeff and they will get you a current draft
- We don’t expect significant changes to any of them

#### New Projects and Changes 

Provision of additional information requested by Mozilla

- Working with Mozilla, illustrative template has been developed
- Versions for Canada, US and International reporting
- Some of items have been dealt with in assurance report
- Final changes suggested by Mozilla have been circulated to W4CA Task Force for agreement

Outsourcing Issues – Carveout

- Dealing with issue as to whether carve-out reports will be permitted and ramifications thereof
- In the early days of WebTrust, it was standard that CAs did everything themselves. This approach has persisted. Carveout is now a prevalent practice in SOC-2 reporting.
- What happens when significant portions of operations are outsourced? If we carve out too much, is it really a useful report? For example, what if it’s less than half of the activities? Is it really a WebTrust report?
- Seal Issues
- Usefulness?
- Ability of alternative reports on carved-out processes?
- Beginning discussions with browser community
- We have an issues paper.
- Will also reach out to other audit schemes
- Includes ETSI

#### Practitioner guidance for auditors 

- Version combines US, Canada and International
- Provides examples of tools and approaches as best practices
- Due to delays and increased use of remote testing techniques guidance is being updated
- New electronic techniques have been developed due to COVID
- CCADB may be a useful database for this
- New US reporting material on direct engagements being addressed
- Additional potential discussion on outsourcing, specific browser requirements being considered

#### Detailed Controls Reporting 

- No real changes since last update
- Field tested with some minor changes to system description
- Audit reports developed, US Canada and IFAC
- Will NOT be primary report for public seal
- Short form (current report) will be public facing report with seal
- Detailed report estimated to be about 200 pages long
- There is a SOC group looking at new SOC reporting, which we will follow as we work on this

Component report template has been developed – A period of time report has been developed – point in time report does not have a section 4

- Section 1- Overall audit results (opinion)
- Section 2- Management assertion
- Section 3- Description criteria (includes system description)
- Section 4- Detailed testing performed and results thereof
- Section 5 – Unaudited Information, such as Management comments

#### WebTrust Reports Available – Full Lifecycle 

- Rootkey Generation Ceremony Report (Birth Certificate)
- Key Protection (Provides assurance that once a key is created and up to the point it is moved into production, it was properly safeguarded)
- Point In Time (As of date for testing the design and implementation of controls)
- Period of Time (Same as Point in Time, but also tests transactions over a period between 2-12 months to ensure controls are operating effectively)
- Key Transportation, Migration & Destruction
- Engagement applicability matrix updated January 2022 – will be published on CPA Canada website
- This is a roadmap to all the engagements
- Jeff or Don can provide a draft early if needed

#### CPA Canada – changes 

CPA Canada

- Anna–Marie Christian (replaced Janet Treasure with her retirement) – dual role of standards and seal
- Bryan Walker – lightly involved at this stage
- Kaylynn Pippo – staying involved in standards until someone else is hired
- Lilia Dubko – helps Anna-Marie. Probably the main contact for seals.
- Others will be hired.

Consultant to CPA Canada

- Don Sheehy (Vice –chair)

Task Force Members and Technical Support Volunteers

- Jeff Ward (chair) – BDO
- Tim Crawford – BDO
- Chris Czajczyc – Deloitte
- Dan Adam – Deloitte
- Donoghue Clarke – EY
- Zain Shabbir – KPMG
- David Roque – EY
- Adam Fiock – BDO
- Eric Lin – EY

Reporting Structure/Roles

- Anna-Marie Christian replaced Janet Treasure who has retired – Overall WebTrust responsibility all facets (prev Seal system and licensing) responsibility
- Don Sheehy – Task Force and CABF liaison
- Jeff Ward – Chair of the WebTrust Task Force and primary contact
- All Task Force members provide WebTrust services to clients
- Volunteers are supported by additional technical associates and CPA Canada liaison but report to CPA Canada
- Others will be hired

Question: \[MISSED QUESTION: SOMETHING ABOUT CHINA. WILL GET FROM RECORDING\]

Don: CPA Canada will actively work on it right away. It’s a high priority. Everyone who has the background on that decision isn’t at CPA Canada right now.

Jeff: There is a sense of urgency to accommodate all CAs. Those that are affected are aware of it.

People are thinking about COVID going away, but CPA Canada has built the new audit requirements for “the next bad thing.” Could be an act of war, another pandemic, etc.

### SCWG Review and Plans 

**Leader:** Jos Purvis (Cisco)
**Minutes:** Kati Davids (GoDaddy)

#### 2021 work 

- Completed migration to Github for documents
- Currently transferring NetSec responsibilities to the working group. Almost complete, but not quite.
- Working on simplifying and clarifying BR language. Trying to make things easier to interpret.

#### Looking to 2022 

2 categories of work:

1. BR and EVG content updates

- Need to clarify and close loopholes, without making new ones or being too strict.
- Updating EVG to RFC3647 formatting. wanting to make sure content aligns in BR and in EVG. Example: -EVG has links in due date section in top, BR does not. We want to backport that into BRs
- Enormous work on generating the certificate profiles (years in the making, we are starting to see the light, not an oncoming train 🙂

2. Process and Organizational

- Finished up transferring NetSec to WG
- How do we incorporate the output of the Netsec WG? Working on this. Do we automatically import, do we import by version number?
- Continuing work on integrating github processes into single source of truth & publication, example using it to publish ballots on the website. We want as much info in github as Single source of truth as possible. It can be hard to track changes if you aren’t following the git repository. We want to make it easier to share and consume the updates as easily as possible.

### CSCWG Review and Plans 

**Leader:** Bruce Morton (Entrust)
**Minutes:** Bruce Morton (Entrust)

2021 Progress

- Rationalize EV requirements to minimize speacial EV callouts
- Address move to 4096-bit RSA
- Cleanup and clarify requirements
- Implement WebTrust for CSBR
- Address log data retention, based on ballot from SCWG
- Update CRL revocation date for invalidity, which supports revocation due to key compromise

2022 Goals

- Complete Subscriber Private Key Protection ballot which has just started voting today (22 Feb 2022)
- CSBR to Pandoc/RFC 3647 format, which will be completed after the Private Key ballot is approved
- Signing Service requirements to support protection of keys for Subscriber
- How to mitigate risks with High Risk Applicants
- Validation for Open Source Project Applicants
- Time-stamping Updates (as applicable to code signing signatures)

### SMCWG Review and Plans 

**Leader:** Stephen Davidson (DigiCert)
**Minutes:** Renee Rodriguez (Apple)

Stephen presented the group accomplishments for 2021 and the goals for 2022. The group did not ask questions or discuss any topics.

As an introduction, Stephen highlighted some aspects that make the S/MIME working group different from other CABF working groups to reach a common understanding as not all participants (CAs and certificate consumers) are familiarized with TLS discussions.

While the group charter is similar to other working groups, there are three net new topics: 1. Certificate Profiles 2. Verification of control over email addresses 3. Identity validation for people

#### 2021 Accomplishments 

1. **There is a draft of the standard** available at [github.com/cabforum/smime/blob/preSBR/SBR.md](https://github.com/cabforum/smime/blob/preSBR/SBR.md).

1. **An evaluation of existing standards helped defined the future Types/Tiers.** The evaluation included guidelines/requirements from Microsoft, Mozilla, Gmail and US Federal Government. Additionally, a better understanding of uses cases and users was gained. All this was summed up as a list of profiles and Tiers.

- Types: Mailbox-validated(biggest case), Organization-validated, Sponsored-validated(enterprise case), Individual-validated
- Tiers: Legacy, Multipurpose, Strict (The Legacy Tier will help to get the existing market into an auditable framework as soon as possible)

3. **Some trends and needs were revealed.**

- Clean separation of EKU where possible applies here too.
- Shorter targeted validity periods were included. Target validity periods is based on Tiers: Legacy is 1,095 days; Strict and Multipurpose is 825 days.

4. **There was discussion about less-common requirements** related to CA settings and algorithms.

1. **Learned that an important goal is to prevent negatively affecting other uses cases.** For example, document signing certificates may be affected since the majority of document signing certificates also include the email protection EKU. This is being considered when creating stricter profiles. As a result, the S/MIME group supports creating a draft-ito-documentsigning-eku-00 for eventual separation of S/MIME from document signing (medium to long-term goal)

**NOTE:** Tim H. noted the a draft proposal for the document signing EKU is being discussed in IETF and CAs should participate. As IETF is a consensus body, at a minimum, CAs expressing base support would be helpful.

6. **Time was invested on validation methods.** Significant time went to discussion of suitable methods for:

- Organization Identity vetting – Focus on reusing existing work previously done
- Mailbox control – New method proposed including use of MX records (Google proposal).

#### 2022 Targets 

These are topics for discussion:

1. **OrganizationIdentifier**. At this point, alternatives include: a) EV’s JOI and b) ETSI types of identifiers

1. **Enterprise RA**. Majority of SMIME certificates are issued by corporations, which makes this an important topic to cover, as well as the audit and supervision requirements

1. **Individual vetting**. (based upon methods in Code Signing BR and in ETSI TS 119 461). The intent is to include some other methods addressed in ETSI TS 119 461 (standard for identity proofing), used in KYC for financial services. This standard may continue evolving as new technologies are being created to facilitate remote validation

1. **Archive and escrow**. To be discussed as it involves complex aspects.

1. **Organization Vetting**. Legal Existence must be incorporated, however there is uncertainty on how deep into Operational and Physical existence the standard should go.

There are also some administrative aspects to consider:

6. **Review adequacy of “pickup” sections from TLS BR**

1. **Survey remaining gaps in draft S/MIME BR**

1. **Ongoing collation of issues for later versions**. GitHub has/will have the collection of topics for future enhancements.

1. **Completion and publication of S/MIME BR Standard**.

- Completion target date: by end of 2022.
- There is a need to define roadmap to a ballot
- Define approach to review draft
- Address comments
- Align standard availability with audit community and consumers (clients)

#### Recommendations Based on Experience 

1. Having a guide (perhaps, style guide) would be helpful for new writers. The draft used text from other documents and there is an inconsistent use of terminology based on the author (e.g., SHALL/MUST)

1. Since there is a lot of common text between the CABF documents, having a documented common basic structure across working group documents (BR of BRs) would also be helpful. Example for inclusion in such document:

- Definitions
- Norms about quoting accross documents (cross referencing a section versus copying text)
- Audit language

3. Moving EV Guidelines (EVG) to RFC3647 would help the drafting of this document for correct allocation of text taken from EVG

### NetSec WG Review and Plans 

**Leader:** Clint Wilson (Apple)
**Minutes:** Daniel Jeffery (Fastly)

- Clint Wilson presented
- No longer a subcommittee
- Clint became chair mid-year, from Neil
- Current items in flight
- Recharter and forum adoption of NetSec WG
- Passed our first ballot to re-adopt the NSRs
- Following through on SC38, made SC50 and SC51
- Restarting Risk Assessment work
- Major effort within the group right now

#### 2022 plans 

- Focus and simplify the NSRs
- Explore incorporating external standards where CABF is not best suited to be maintaining the standards
- Improve GitHub issue tracking to make it our SSOT
- Work to improve formatting and content of the NSRs
- Address ambiguities and clarify the goals and expectations
- Explore supplemental documentation such as illustrative controls
- Restart the work around formalizing the conceptualization of variance in discrete CA infrastructure
- Discuss criteria of what constitutes success
- Clear problem statements
- Document some consensus around the solutions
- Strong drivers for the changes (owners)
- Participation in feedback loops as early as possible
- Sharing to the list to keep communication available and transparent
- Mostly these are Clint’s notes on how he wants to improve things as chair
- Open for questions
- No questions

### Infrastructure Subcommittee Review and Plans 

**Leader:** Jos Purvis (Cisco)
**Minutes:** Dustin Hollenback (Microsoft)

#### 2021 Review 

Membership spreadsheet updated and re-tooled

- Previous spreadsheet was legacy before we had working groups
- Wayne Thayer (Fastly) did tremendous work on updating and rebuilding our spreadsheets for this in Google

GitHub Actions added for publication and notifications

- Corey Bonnell (DigiCert) aligned GitHub with the mailers

Ballot tables updated on the website

- Ben Wilson (Mozilla) has done work to provide historical details of ballots

#### 2022 Priorities 

Automation is a big part of the work

Membership management

- Member management is still an enormously human process
- We now have a candidate for replacement of Sheets that introduces PHP and a backend database
- New member packet to provide resources for new members unfamiliar with how processes work

Ballot process

- Balloting process documentation
- Looking for ballot shepherds who are familiar with the process and can help others through the process
- Publishing ballots via GitHub

Lower level priorities that hope to be accomplished

Forum-level docs to GitHub

Explore wiki alternatives or additions

- Media management
- Markup differences. Not everyone is familiar with Markdown and there may be a better way.

## Wednesday, 23 February 2022 – CA/B Forum Meeting (Day 2) 

The antitrust statement was read.

Attendees: Dimitris Zacharopoulos, Martijn Katerbarg, Arnold Essing (guest), Yoshiro Yoneya, Don Sheehy, Dean Coclin, Tyler Myers, Joanna Fox, Fumihiko Yoneda, Roman Fischer, Kathleen Wilson, Joseph Nigut, Eva Van Steenberge, Matthias Wiedenhorst, Atushi Inaba, Prachi Jain, Rich Smith, Raffaela Achermann, Mads Henriksveen, Pedro Fuentes, Inigo Barreira, Michael Sykes, Aaron Gable, Adam Jones, Adrian Mueller, Andrea Holland, Andreas Henschel, Aneta Wojtcsak, Arno Fiedler, Ben Wilson, Brittany Randall, Bruce Morton, Paul van Brouwershaven, Michelle Coon, Jeff Ward, Curt Spann, Peter Miskovic, Hubert Chao, Corey Bonnell, Pekka Lahtiharju, Tsung-Min Kuo, Tobias Josefowitz, Clint Wilson, Kati Davids, Trevoli Ponds-White, Nikos Soumelidis (guest), Doug Beattie, Clemens Wanko, Georgy Sebastian, Rob Stradling, Jos Purvis, Nick France, Tim Crawford, Jeremy Rowley, Chris Kemmerer, Tadahiko Ito, Niko Carpenter, Thomas Zermeno, Daniel Jeffery, Janet Hines, Daryn Wright, Li-Chun Chen, Dustin Hollenback, Ian McMillan, Wendy Brown, Yoshihiko Matsuo, Rae Ann Gonzales, Enrico Entschew, Karina Sirota, Marcelo Silva, Heather Warncke, Rebecca Kelley, Rachel McPherson, Yamian Quintero, Jamie Mackey, Leo Grove, Ryan Dickson, Sissel Hoel, Stephen Davidson, Tim Callan, Tim Hollebeek, Wayne Thayer, Peter Thomassen (guest)

### Code of Conduct 

**Speaker**: Jos Purvis
**Minute Taker**: Tim Callan

Jos: Over the past couple weeks I have been made aware of behavior from organizations that are over the line or pushing the line. If you see anything that does not meet the code of conduct, please let me know. The code of conduct says we should have the ability for reasonable people to disagree. It’s easy when we’re using electronic communication to miss that someone didn’t mean something the way they wrote it. I remind you to assume the best intentions, and also that you should reread what you wrote and see if it can be interpreted in a worse way than you intended. Be friendly. Be gentle. Not everyone has the same background as you do. It’s hard if they’re not privy to all the history you have. We tend to assume that a lot of this is more black and white than it is, and it isn’t. Please think about what you’re writing and reading and assume the best intentions.

### CommScope membership application 

**Speaker**: Jos Purvis
**Minute Taker**: Tim Callan

CommScope is a CA with offices in North Carolina and other places in the US. Joss: CommScope has applied for membership and doesn’t have an application with any of the root programs that we know of. I believe they should be admitted as an interested party and have done so.

Ben Wilson: Somebody could apply and their application could be too void of detail and proof to be considered.

Joss: Admission as an associate member is not automatic. Still needs to be approved. We should probably stress that. They will stay as an interested party until root program applications come in.

### Revocation Reason Codes and Revocation for Key Compromise 

**Speakers**: Kathleen Wilson and Ben Wilson
**Minute Taker**: Wayne Thayer

**Draft Policy**:

Kathleen shared the Draft Policy about CRLRevocation Reason Codes for TLS End-Entity Certificates

This is Mozilla-specific policy at this time.

Mozilla considers revocation a priority and is implementing CRLite. Policy version 2.8 will require CRLs for TLS certificates

Mozilla has not decided on which reason codes will cause the browser to hard fail (block the connection)

Proposed effective date of this requirement is for revocations after 1-October 2022

CAs should use their best judgement to determine if a reason code for a previously revoked certificate should be updated based on this policy.

Kathleen began to review the draft policy, going section-by-section

Jeremy Rowley asked why this is limited to TLS. Kathleen said that TLS is the priority, but this may be extended to S/MIME in the future.

Aaron Gable said that the first paragraph had been misinterpreted as banning the default reason code 0. Kathleen pointed out the statement in the policy that makes this clear: “When the CRLReason code is not one of the following, then the reasonCode extension MUST NOT be provided.”

Kathleen said that the BRs already forbid reason code 0. This policy shouldn’t conflict with the BRs.

Trevoli Ponds-White said that the policy does ban the other reason codes. It’s these codes or no reason code. Kathleen confirmed.

Curt Spann asked why other reason codes are not permitted? Kathleen said that the other codes are simply not applicable. For example, CA compromise doesn’t apply to end-entity certificates.

Curt asked why not just ignore them. Kathleen said they are striving for consistency in how reason codes are used.

Jeremy asked if allowing no reason code supports the goal of consistency?

Aaron said that lower in the document there are requirements for when a reason code must be used.

Doug Beattie asked if these requirements also apply to OCSP responses? Kathleen said that Mozilla’s goal is to rely on CRLs for CRLite and to stop checking OCSP.

Doug asked if the URL of the CRL will come from CCADB. Kathleen said yes.

Doug clarified that CRLDP will not be required to be included in the certificate.

Dimitris Zacharopoulos noted that the BRs require consistency between OCSP and CRL revocation reason codes for a certificate.

Corey Bonnell asked if there should be an exception for ‘certificate hold’ in OCSP responses per RFC 6960 ‘extended revoke’. Kathleen said she would follow up on this.

The next paragraph adds a requirement to inform Subscribers about reason codes in the CA’s Subscriber Agreement.

Trev expressed concern that Subscribers will not understand these reason codes and the language will be scary. She said that more approachable language would be helpful The most common reason that Amazon Subscribers revoke certificates is because they were told by their Security team that it’s their internal policy to revoke unused certs. None of the reaosn codes make sense for a Subscriber in this situation. Kathleen said that additional requirements are not being placed on the Subscriber, and Mozilla can add a wiki page containing recommendations.

Trev said that CAs are going to be better at picking reason codes.

Yoshiro Yoneya asked about the last sentence in the paragraph stating the “default value meaning that no revocation reason is provided” is ambiguous. Kathleen said that this is meant to mean reason code 0 “unspecified”. This will be clarified.

Aaron Gable said that the phrasing of bullet 5 under keyCompromise is odd “…with the scope of revocation being described below:”

Tim Hollebeek said that the language about determining if a key has been compromised points out that there is no standardized way of demonstrating posession of the private key. It would be nice if there was a standard for doing so.

Jos Purvis asked if it would be reasonable to document a few non-exclusive ways to confirm possession.

Inigo Barreira commented that CRLs and OCSP can be out of synch. Ben suggested that Mozilla could add language to require consistency.

Kathleen said that there should be separate discussions about what it means to prove possession of a private key.

Doug said that the language here says that the Subscriber can request revocation for key compromise without proving possession. Anyone else would need to prove possession.

Roman Fisher said that you should not use an existing CSR to prove possession, but a new one could be used. Kathleen said that the reuse of CSRs is a discussion for the CAB Forum.

Tim said that the existing language could be interpreted as forbidding the use of any CSR to prove key possession, but it could be secure in some circumstances.

Corey Bonnell said that there was a discussion about backdating the revocation date in the Code Signing WG. This is a SHOULD NOT in RFC 5280, but the code signing WG clarified that this is permitted. Corey suggested adding similar language here. Kathleen agreed.

Dimitris asked why backdating makes sense for TLS certificates and said that updating the revocation date in the CRL doesn’t make sense for TLS.

Doug said that he is not a fan of using keyCompromise for the example of the subscriber notifying the CA that the request was not authorized. Kathleen said that the reason is that someone other than the domain owner has the private key for that domain. Ben said that it doesn’t squarely fit in one or the other.

Tim said that he agrees with Doug and privilege withdrawn is better in this circumstance. The key is not compromised in this case.

Kathleen said that the two examples under keyCompromise were originally under provilegeWithdrawn and will be moved back. Aaron asked if the CA works with the Subscriber to replace the certificate because domain validation was not performed properly, should the reason code be superseded instead of privilegeWithdrawn?

Trev asked if cessationOfOperation makes sense when a Subscriber has switched to a new certificate rather than superceded. Kathleen said that she recalls ETSI requiring cessationOfOperation, and CAs asked for both options.

Trev said that Subscribers will ask for certificates to be revoked when replacing them. Providing a revocation reason is a potential privacy concern because it forces Subscribers to disclose information about their operations in a case when revocation is a policy decision. Kathleen said that she expects most revocations will not have a reason code. We need to make that clear to Subscribers.

Trev said that revocation tools/UI must allow Subscribers to choosse a reason, so this policy means that CAs must educate Subscribers about revocation reasons.

Aaron said that a lot of the descriptions for why to use a reason say ‘use this unless…’ He suggested ordering them in order of priority with keyCompromise at the top (most critical), followed by privilegeWithdrawn, affiliationChanged, cessationOfOperation, and Superceded.

Curt asked why Subscribers would choose anything other than keyCompromise if Mozilla won’t do anything with them? Kathleen said that Mozilla hasn’t decided when to hard fail.

Curt said that Subscribers may not understand the impact of choosing one reason code versus another.

Dimitris said that keyCompromise is the low hanging fruit, so perhaps the initial version of this policy should only cover keyCompromise while language for other revocation reasons is improved. Kathleen said that they are tackling everything all at once due to timing. It will be a whole year after the implementation date before Mozilla can depend on these reason codes, and Mozilla doesn’t want to delay further.

Dimitris said that a phase in approach for Subscribers would help them to digest the change.

Trev said that there will be downstream impact to other browsers. Subscribers will want to know how other browsers will treat their certificates based on the revocation reason given.

Kathleen asked what the proper forum is for this discussion.

Jos said that the Server Certificate WG is the proper forum. He suggested that if this is to be a broader polict, browsers propose a ballot to drive discussion, with an eventual goal of placing these requirements into the BRs. Kathleen said that once the current issues are addressed, Ben will make a proposal to the CAB Forum.

Wayne Thayer asked about Kathleen’s earlier statement on changing reason codes after revocation. Kathleen clarified that her statement was related to certificates issued prior to the effective date. Wayne said that his concern is different. How has the discussion on the list about updating revocation reason after the initial revocation been addressed? Kathleen pointed to the SHOULD requirement in the policy to change the reason to keyCompromise if compromise is confirmed. Wayne said that he is concerned about what the policy doesn’t say – that the CA MAY change the revocation reason for other reasons after initial revocation. Kathleen said that she would consider adding this statement to the policy.

Rob Stradling asked when Mozilla will decide what other reason codes will be hard fail? Kathleen said that from her recollection, affiliationChanged and cessationOfOperation were possibly the others under consideration. CRLite will be released before Mozilla can depend on these reason codes. There will be data from the implementation of this policy to inform the decision before it is made.

Wendy asked what reason code to use for insufficient entropy? Ben suggested superceded.

Curt said that Apple is also looking at this. Is the goal to hard fail on all of the permitted reason codes? If so, why do the reason codes matter? Kathleen said that her end goal is to hard fail on all of these. Curt said that they see many revocations that would not require hard fail, so it would be nice to see different outcomes. Ben said that superceded should be used for significant events such as 63-bit serial numbers, not just because a certificate was replaced. This needs to be discussed.

Aaron said that he likes the fact that this proposal makes it clear that cessationOfOperation is clearly the code to use when someone other than the Subscriber proves domain control.

### Validation Subcommittee Progress Report 

The antitrust statement was read.

**Speaker**: Corey Bonnell
**Minute Taker**: Dimitris Zacharopoulos

Slides are published here: /uploads/2022_spring_validation_sc.pdf

Corey read the Antitrust Statement and the meeting agenda.

No additional discussion based on the presentation.

Dimitris asked the validation SC for a second endorser for the Onion-cleanup ballot.

Discussion on the non-TLS ICA profile

Corey did an introduction to the topic.

What is a non-TLS ICA profile? An ICA issued by a CA which is in-scope of the BRs but the child ICA contains an extKeyUsage extension with KeyPurposeId that is not id-kp-serverAuth. For example, an ICA that contains the codeSigning EKU but is issued by a Root that is trusted in Microsoft Root Store for server TLS, would be a non-TLS ICA.

Tim H.: Conflict of scope. It is inappropriate for the serverCert WG to describe what non-TLS ICA is. However, it could include basic requirements like parsing ASN.1 correctly, properly formatted, etc. This came up during governance reform. The is a need for a baseline baseline that need to be coordinated accross all certificate types. Similarly with the NetSec WG for logging requirements. Some requirements might span accross multiple WGs. Instead of writing full non-TLS ICA profile, perhaps write requirements for acceptable criteria for these non-TLS ICA. Clint W.: Would these requirements work retroactively for malformed ICAs? Tim H.: Probably going forward but he doesn’t believe this is currently an issue because if an ICA couldn’t be parsed to determine EKU, it is already in violation. Clint W: That seems reasonable.

Doug: Agree with Tim. Root Programs already have requirements for disclosure for CA Certificates so they should all be able to be parsed.

Jeremy: To Tim’s point, baseline-baseline is important so we don’t define all EKUs in the Baseline Requirements. Issue a Certificate that does not meet RFC 5280. Is that allowed? Adobe DocSigning EKU, not in 5280. If used, it might be considered a violation.

Dimitris: Need to ensure that if an Intermediate Certificate contains an EKU that is not the serverAuth or anyEKU, it is a non-TLS technically constrained (in terms of server TLS) and therefore whatever it issues is out of BRs scope (even violations to RFC 5280).

Corey: Would it be a violation to issue an S/MIME (non-TLS) technically constrained subCA with a non-critical Name Constraints extension?

Ben: It should be tackled by the S/MIME WG

Tim H: It’s more complicated. Some operations are clearly in-scope and some are clearly out-of-scope.

Ben: Is there an issue of scope of the BRs document that should be addressed? Tim agreed.

Jeremy: For Subordinate CA Certificates that are not used to issue TLS certificates, then the value id-kp-serverAuth \[RFC5280\] MUST NOT be present. Other values MAY be present, but SHOULD NOT combine multiple independent key purposes (e.g. including id-kp-timeStamping \[RFC5280\] with id-kp-codeSigning \[RFC5280\]). For example, this language has a should not that applies to clearly non-tls. Seems like the servercert-wg is trying to govern non-TLS area

Bruce: Should each WG BR include a clear scope in the beginning of the document?

Scoping is an issue for a Root that is in scope of multiple types.

Tim H.: Each WG can define an ICA profile but nothing prevents a future WG that makes things in scope of two existing WGs. ICA that allows docSigning and clientAuth EKU. It’s ok for a shared hierarchy.

Bruce: Would probably be solved by the charter of the WG to avoid the conflict.

Dimitris: A most clear example is the id-kp-timestamping EKU (used for codeSigning and documentSigning) and the id-kp-emailProtection that is used by S/MIME and documentSigning.

Bruce pointed out that this would make it very difficult to follow both charters and requirements in the same CA chain, but that this might be the idea.

Corey: Two approaches. The creation of a BR-BR (increase the timeline). The most expedient approach would be to remove it from v1. What do members think?

Tim H: The intent was to fix and clarify existing requirements. Would be open that this is not a v1 type.

Dimitris disagreed for the same reason. There was a CA that posted questions in the questions list with concerns about what a non-TLS ICA looks like and was uncertain/unclear with the existing BRs language. He believes it should be clarified and the draft language is already in good shape. There were some final questions regarding the criticality of the NC extension for non-TLS ICAs and once we tackle that, we’re probably done.

Trev, Wayne propose to make progress without making challenging changes. Perhaps create a separate ballot to define a non-TLS ICA and have a separate discussion. Clint agreed.

Tim: OCSP/CRL for these non-TLS ICAs is another can of worms.

Dimitris: A Root that is in-scope of multiple hierarchies may have conflicting requirements for OCSP/CRL but not the ICAs.

Jeremy: For example revocationReasons might be seen differently by Relying Parties

Clint: These seem theoretical and seem extreme. He doesn’t anticipate direct conflicts and doesn’t think they are likely to cause problems.

Curt: A Root key must be able to sign “approved objects”.

Ben: This is already happening today

Wendy: As long as Root programs allow multiple purposes under their program, this is allowed today.

## Thursday, 24 February 2022 – CA/B Forum Meeting (Day 3) 

### S/MIME Certificate Working Group Meeting 

**Speaker**: Stephen Davidson (Digicert) **Minute Taker**: Eva

Member attendees: Adrian Mueller, Andreas Henschel, Andrea Holland, Aneta Wojtczak, Ben Wilson, Bruce Morton, Chris Kemmerer, Clemens Wanko, Clint Wilson, Corey Bonnell, Curt Spann, Dean Coclin, Dimitris Zacharopoulos, Don Sheehy, Doug Beattie, Enrico Entschew, Eva Van Steenberge, Inaba Atsushi, Inigo Barreira, Jamie Mackey, Joanna Fox, Jos Purvis, Li-Chun Chen, Mads Henriskveen, Martijn Katerbarg, Matthias Wiedenhorst, Michael Sykes, Nick France, Niko Carpenter, Paul van Brouhershaven, Pedro Fuentes, Pekka, Rachel McPherson, Raffaela Acckerman, Renne Rodriguez, Rich Smith, Ryan Dickson, Stephen Davidson, Tadahiko Ito, Tim Callan, Tim Crawford, Tsung-Min Kuo, Wendy Brown, Darren Wright, Heather Warnicke, Josef Nigut, Peter Miskovic, Trevoli Ponds-White, Yoshiro Yoneya, Rebecca Kelley, Leo Grove, Arnold Essing, Yamian Quintero

Dean read the antitrust statement.

Additional materials are at

Draft S/MIME BR are at

3 main topics:

1. Enterprise RA
1. Individual identity validation
1. Road to Ballot

ENTERPRISE RA

Why important? Majority of certificates.

Difference between Enterprise RA and Delegated Third Party not always well defined. Important to deliniate the difference between both. What are they allowed to do, and what are the audit obligations.

Enterprise RA can only issue to internal users, org validated profile, or sponsor validated profile. Locked to organization information and pre-approved email domains. Some companies will want to use the mailbox control method – how do we deal with that? This came up in earlier calls. Can still issue to external users, with the mailbox validated profile where the mailbox control vetting is being performed by the ca itself.

Enterprise RAs, their employee records would be considered authoritative sources when it comes to individual vetting (specifically the sponsored validated profile).

Unconstraint delegated RA carries full audit obligations. This slide talks about all Delegated RAs, and Enterprise RA is considered a subset of delegated RA. – Ben Wilson: is there a definition of an Enterprise RA as a subset of Delegated RA? – Stephen: There is, but it needs to be revisited. Will tweak once everyone’s in agreement. The current text is from the TLS BRs. – Bruce Morton: Delegated RA should be independently audited, right, and the Enterprise RA is an extension of the CA, but with limited privileges but are not under audit. It doesn’t feel like a subset, but just a different thing. – Ben Wilson: yes, this is cleaner, not one being a subset of the other, just two different concepts that can evolve independently. When a new situation comes up, that itself can be either a subset of an Enterprise RA or a Delegated RA, or maybe come up with a separate third concept.

Need to further clarify the buckets.

(Reading of the slide, 1.3.2 Registration authority) This is taken directly from the TLS BRs.

A new section was added, and modified quite heavily.

(Reading of the slide, section on the Enterprise RA.)

One change that will need to be made is acknowledging the new section that was added, 3223, which is also relevant here.

Mads Henriksveen – Buypass: Taking a step back, what is the relation between Enterprise RA and Delegated RA? In the previous slide it said “with the exception of 3.2.2.” one could delegate certain actions, but what we’re seeing here is 3.2.2 for an Enterprise RA. So here it seems that there’s some distance between the two?

What you’re seeing there is slippage in the section numbers in the editing.

Ben: 3.2.2, what we’re seeing was what can or can’t be delegated with regard to the domain part. As long as both approaches have a form of domain validation and that gets performed, we can fix the language to address that this is being done.

Similar to treatment in TLS BRs where domain validation can’t be delegated. No delegation of mailbox control / maildomain validation.

Mads: So the reference should be to section 3.2.2.1 then, related to domain validation or mailbox control?

Ben: No, because there’s a domain part, and if you’re delegating the domain name space, then you would have to do it. If you’re doing mailbox validation, I am not sure I am using the right terminology, (…). The next comment I was going to make, it appears that we can allow the delgation of the validation of the mailbox to a third party.

No. All of the methods in 3.2.2.2 must be performed by the CA. No delegation of mailbox control. There are three methods: Email domain control (TLS BRs), control of individual mailbox, mx records. All of these will need to be performed by the CA. Not delegated.

Mads: Enterprise RA slide says this is possible for the Enterprise RA,

No, in both cases it should be the CA, confirm that the Enterprise RA has control over the email box.

Mads: I agree.

Ben Wilson: Not taking side, just something to think about. Something to consider on invidiual mailbox control, can this be delegated to a third party? Thinking of a use case, there’s an org or corporate intranet/extranet, they don’t want the CA to handle/interface with the individuals, they’d rather have that relationship be through them.

Stephen: They are welcome to do that, but they’d need an independent audit, similar to TLS BRs.

Wendy posted a comment. Clearer signposting between both is required,

Dimitris Zacharopoulos – HARICA: Enerprise RA is basically one of the customers of the CA, validated their domain namespace, and they can use that to an issue any smime cert for any email address that ends in a domain that’s already validated by the CA. Issue for their own employees.

Many of the Enterprise RAs may want to issue certificates for counterparties they are dealing with. This provides a way to issue mailbox validated at certain times, to external.

Dimitris: this would make them a Delegated RA that needs to be audited?

Except that there’s nothing in the certificate. In the description in section 3.2 there’s three buckets of vettings. Mailbox, Org details and individual details. The mailbox validated policity doesn’t have org or individual details, only email address, and that vetting has to be done by the CA, so no audit obligation would fall on the RA.

Dimitris: yes, Enterprise doesn’t do anything, just notifies the CA to validate a different entity. We don’t need to set rules surrounding that. In EV Guidelines it’s clear that this is a customer that has established a connection, the CA has validated the domain name, the org and the attributes, and the Enterprise RA is allowed to issue under that. Consistency between the guidelines.

Thing that needs to be added is an additional line, reiitering some text on the obligation to retain records for individual vetting.

This clarifies that there needs to be a contractual requirement that outlines the obligations of the enterprise RA.

Ben: move that last sentence up, and delete that second sentence? It seems to mean that you have to do either or, or both, sort of leading into you can’t do this, unless things are done.

I guess it’s “OR”. The first is org or sponsor validated, the second one is mailbox validated.

Case that gets “muddy” is Enterprise RA client, and for whatever reason wants to use the mailbox control policy. We should still do step 1, domain control step. If they want to do the mailbox control on top of that, great, but the domain validation still needs to happen, number 1 still stands.

Ben: Just needs reorganization.

Mads: Still struggle with the concept of Enterprise RA. If it’s a customer, can they verify the request from their own organization if the mailbox policy is used and the domain has been validated?

Yes, Enterprise RA would be allowed to use the mailbox validated profiles if they chose.

Ben Wilson: Maybe number 2 is required if number 1 hasn’t been done.

Go back and verify that.

Bruce: Might be a good idea if we mae a matrix. What can each actor do, and what are the use-cases. CA needs to verify the organization. The CA has to verify the domain after the @ sign. The Enterprise RA can verify before @ sign and the identity of the user.

Ben has submitted a request (not for this specific section) similar to what you’re describing: CA does what’s to the righ of the @, the Enterprise RA what’s left to the @.

Bruce: that might be too much. The CA can verify whatever the base domain is. There may be too many labels. CA for example does [entrust.com](http://entrust.com), but Enterprise does subdomains like [sales.entrust.com](http://sales.entrust.com)? (So not everything right to the @ sign is done by the CA). Similar to TLS.

Dimitris: For this practice, only use options for wildcard validation. This would allow the enterprise to validate the entire domain space, and focus on what is left on the @ sign.

Bruce: Sounds good.

Rework needed. Dificult and important to get right as it accounts for the majority of the certs out there.

3.2.4 Individual validation vetting – records maintained by the Enterprise RA are an authoritative source.

Internal Audit for Enterprise RA

8.8 refers to 8.4, which is almost entirely taken from the TLS BRs, except for the referenced ETSI standards.

Taken directly from the TLS BRs. Easy approach of solving the question of oversight. But is it suited considering the constraints that exist on the Enterprise RA. CA is doing the email vetting, the org vetting, the only variable component is the individual identity, and the reliance on internal records such as HR records. Not much additional guidance provided here. What’s the type of internal audit we need ot perform on that?

Ben: Internal audit might be ambiguous. It means that the CA performs an audit on itself. While it seems like there is an intention that the CA audits these other parties or the requirements. Does the CA want to do that, or is there another way? Can these other parties maintain a record and provide a sample? Maybe some CAs are performing these audits on the parties? Do they have the experience in doing that?

The intention was to ensure that the CA confirms that the Enterprise RA has practices and procedures. And that they actually do have the records underlying. Is it enough that the CA does a process review at start-up and ongoing? But instead used the language of the other standard, which accomplishes the same thing, but by looking at the certificates themselves. Introduces additional significant obligation on the CA, and is more certificate based? Is there feedback? This is difficult to level set at a level that is useful.

Dimitris: Internal audit is already defined, for technicaly constrainted Sub CAs. CA needs to pick a sample, and ask for the evidences for that sample. Enterprise should be able to provide the records. Maybe 3% is very big. Auditors have a maximum number (Ben: usually 30-40), different methodologies. There usually is a cap with extenral auditors, maybe introduce that cap?

Tim Crawford – BDO: If there is a cap, it should be stated specifically.

Dimitris: one way to tackle the workload.

3% scales up rapidly. With these customers, if they have 1 bad cert, they are going to routinely have bad certs. 1 vs 3% on a quarterly basis. What is are reasonable min and max sample on a quarterly basis?

Dimitris: 3% makes sense, just cap it.

Bruce: what do we get from auditing the Enterprise RA? They are limited to the org vetting, and limited to the domain. We’re down to a person’s name before the @ Sign. What risk justifies the effort?

There is an internal audit requirement for the CA for their own issuance, this is just an equivalent.

Bruce: For the internal audit, we can audit the org and the domains.

For most ERAs, the only piece is the individual information that is included. Is it appropriate to force a process review at the beginning? Do we have it as an upfront, maybe with yearly check-up, or as a quarterly review. Given the limited scope, it’s really one thing that’s going to go wrong at scale, rather than vary from cert to cert.

Ben: We should have a different requirement for ERAs. Because also we don’t say here (maybe we should), we’re not trying to collect PII, nobody wants to deal with that, creates so many different issues, will get push-back from the External RAs.

Retain the paragraph for Delegated Third Parties, and technicaly constraint Sub CAs, but add a variant paragraph for Enterprise RAs.

Ben: Maybe not even for name constrained subordinate CAs. Aren’t they almost like Enterprise RAs? CA has done the org and domain vetting, isn’t it almost like an Enterprise RA?

Dimitris: Don’t fully agree. Becaus CAs are responsible for the content of the cert. Imagine an Enterprise RA requests a cert for Ben Wilson. CAs are collecting PII anyway. Orgs have ways to deal with PII. If we leave it uncontrolled for the Enterprise RA, it just doesn’t sound very good.

Bruce: They have to assign that Ben Wilson an email address. Even if it’s not the person’s real name, they do actually have that email address.

Dimitris: The cert will have given name Ben, surname Wilson regardless of the email address. That needs to be a real person.

Tim Callen – Sectigo: who says that it has to be a real person? There may be “stage name”. It’s consistenyl used, but it’s not their legal name.

Dimitris. There’s a field for that, pseudonym. If you’re using a givenname and a surname, then that must be correctly validated.

Or go with the mailbox validated certificate, which doesn’t contain the name in the cert.

Ben: Maybe this section should have different requirements for different certificate types.

Difficulty is role-type certificates, which end up in the org validated bucket, as opposed to individual. As soon as it’s an individual, it’s supposed to be a real name.

Wendy Brown – FPKI: Disagree. If it’s a sponsored email, it doesn’t have to be a real name. It is sponsored, it’s an email that’s assigned by that organization. Can be to a bot, a person, they are responsible for that email.

If it includes givenname and surname, it needs to be real names.

Wendy: Real names for who, though? What if there’s more than one person with the same name, and one person gets assigned a different name.

Disambiguiation based on serial number.

Wendy: imposing a particular type of email naming. Out of bounds for this.

Isn’t the key element to differentiate the email address? To differentiate between John Doe 1 and John Doe 2.

Wendy: that might not be their legal name, that might just be the name that they go by in the Organization. We discussed if pseudonyms might be the right thing to use?

Different subject. We need to further discuss this. The intent now is that if it includes a name, it needs to be a verified name.

Mads: Identity attributes should belong to a real person. Email addresses is not so important. Avoid mixing those elements together.

When you create standards that bolt things down, once you have a standard for verified identities, the leaway for unverified identities is limited.

Dimitris: One clarification. For the Enterprise RA, can be either certs with just the email address, there’s no need for any type of internal audit. But if they want to include the name in the attribute of the certs, then that needs to be validated. Wendy does this address concerns?

Wendy: Concern about what gets shown in email products interface. What is shown, is what in the subject, not the org information in front of the @ sign, but “helpdesk”. May or may not fit a person’s name.

Dimitris: we can’t take into consideration all the UIs, we are just responsible for what is in the cert.

Wendy: yes, and my point is, if you delegate that element to the enterprise, then you delegate it. We don’t want to dictacte what is allowed to the enterprise.

But that has to be based on a set of rules.

Clint Wilson – Apple: Delegating performance of a function, not the control over the standard.

Bruce: common name vs givenname and surname. Maybe we’re just worried about givenname and surname, but if you use common name, then don’t worry about it?

Common name is pretty much free-form. Like to park that for now.

INDIVIDUAL IDENTITY

Several variations, spectrum of strictness. Personal view: CS BR Might be most suitable, but fairly limited two methods, F2F or digital signature, with cert issued under certain schemes. Widen that to give more options. Model followed is ETSI. To try and create consistency within identity proofing. Rules of the road for vetting legal persons, natural persons and natural persons in association with legal persons. Different modes that can be used, many more than currenly picked up.

Options:

– Physical identity document (passport) – Digital Identity document (reading the NFC chip remotely) – Certificate based applied by the Applicant – Enterprise RA records – Supplementary evidences for title, or other things, use authorised source – Verified professional letter (notarised, lawyer, accountant)

In future versions, would like to see this more filled out. One direction: remote identity vetting tools (e.g. automated selfie apps, video verification). Haven’t addressed that in much detail, setting paramaters requires deepdiving. Another example: relying on eID programs (mainly Europe). All of it described, but technical standards on how to do it haven’t been released (this summer), so can’t be included yet. Clearly things that will become important to facilitate quality vetting in the future. Other methods? Things we want to cover in more detail?

Mads: approach is interesting. I am considerint this not a list of methods, more a list of evidences of attributes?

Draft text right now. One thing that needs to be nailed down: what information needs to be collected? Givenname and surnames (must be current names). Supplemental information is okay, as long as we can verify it. We’re trying to build that in. How can we establish a current name, if the current name is not diplayed on the ID. Psuedonyms are optional – in some countries, pseudonyms are official. Address, if displayed it needs to be collected and verified. If further info is needed to uniquely identify the applicant. Additional information again as verified.

Ben: “further information” is ambiguous – is it meant for titles? Seems like a catch-all. Collect all the information to uniquely identify the Applicant. Issues with personal privacy? Data minimization principles. Introduce language to cover privacy principles. With the main principle being: only collect minimum necessary.

The way the section works is similar to how EV Guidelines are written. What are we going to do, then how we are going to do it. State what you allow as a CA for individual identity vetting.

Physical document – there must be a definition on what type of documents are accepted. There must be some parameters in the CPS about the accepted documents (or document types, which is a key word), but recognized that there may be different level of detail.

Documents must include biometrics.

Digital ID documents are very tightly defined. ICAO standard is really the only global standard.

Digital signatures must be purpose built for the application, using a valid personal certificate, following a limited list of standards. Text from CS BRs. An addition that may make the auditors cringe, in order to not issue certificates based on preceding certificates where the validation may have been performed in a distance past.

Tim Hollebeek – DigiCert: This won’t change behaviour.

Normative vs informative.

Tim: don’t disagree.

Standards all have “shoulds” because it is difficult to block.

Tim: we need actual rules. Note is fine.

Don Sheehy – CPA Canada: This statement needs rules. “Should consider requirements” – the whole thing could mean nothing.

Either that or just remove it, because other programs are audited.

Don: Might be easier. Not to influence direction. This is just an opinion on the auditability of that.

Difficult to enforce if the certificate was issued by another CA.

Tim: If you really don’t want to remove it, just don’t use SHOULD. Avoid requirement words entirely, since it is supposed to be informative. “It is important to ensure that”, has no normative words.

Intended to stop the CA to do perpetual issuance.

Tim Crawford: if we see “may” or “should”, we translate that to audit requirements, we don’t bring those over, we only bring over the MUST and SHALL. We wouldn’t bring this over.

Tim H: the capitalization should be fixed. If we want a SHOULD requirement, we just take out the “Note:”, then it’s not an informative note.

Rich Smith – DigiCert: Suggestion: Tighten up the wording, if the CA is relying on previous vetting that it performed, such vetting must not be older than X. Maybe we say 3 years, just pick a number. Only for the CA itself. CAB Forum to set example for other standards. Maybe they’ll tighten up their wording.

We’ll find a way.

Bruce: Passport 10 years, driver’s licence for 5 years. 3 years for certs sounds underwhelming. Why is that cert more important than official documents.

Rich S: Don’t disagree, just threw it out there, arbitrary number 🙂

One of the things that we are not going to get to today. ETSI has the same issue. What is the revetting period for individual identity. They said 3 years. Was going to go with 3 years for consistency.

Iñigo Barreira – Sectigo: Problem to check to see how many revettings have been done.

Clint Wilson: The difference is – is it a primary source of the identity, or is it not? Certificate is not the source of identity, just a representation. That’s the reason why there should maybe be a difference in treatment/validity.

Maybe different ranges.

Clint: not sure how complex we want to make it, but it makes sense that a passport can be valid for 10 years, but a certificate can only be re-used for a few years. It’s not the source.

This will get complicated.

Forging ahead 🙂

Supplementary evidences: Trusted registers, similar to what we have in EV for authorised sources. For individual identity, we may have things like Title. E.G CEO, CPA, … Some new category of sources. Authorise sources for individual vetting, but after disclosure. Significant change in approach – beginning the same thing as we do for EVs. How do we scope this for our use? Currently in here to spark discussion.

We could scope this for regulated supplementary information.

This one is one to think about. How to include a title if there’s no way to validate titles.

Tim C: not done at national level necessarily?

Ben: Use relevant government level instead?

How do we scope it to the fields? Probably want to expand to include other use-cases, of non-current name.

Verified professional letter needs to be cleaned up.

Tim C: Suspect that there are titles that people want, that don’t have evidences? “Reverend” for example.

Don’t know. Good question. What field does it go in?

Renne Rodriguez – Apple: Info in certificate should be verifiable, if not verifiable, then maybe don’t get it.

Will have to look further, solution designed for regulated professions. This might require some more definition.

All identity attributes included in the certificate must be validated. If the evidence has an explicit validity period, the CA must verify that the evidence is still valid at the time of the validation. So no expired identity document. The evidence must remain valid for subsequent validation.

Physical documents must be in original form, no photo copies. Ensure that the document is genuine. Basically: train your people. Remote verification is allowed, in real time. Compare likeness. Authoritve sources on ID shall be used. Sufficient information must be retained – doesn’t mean you need pictures of it all, but certain facts must be recorded, like type, validity period, document number.

Wiggle room – some approaches might be hybrid, and automation may be deployed. Important to acknowledge, but what automation means, might be further refined in the future.

Validation of digital ID. If you’re relying on an NFC chip in a passport, you have to validate it. NFC chips you can read, or read and validate. The additional validation step would be required. NFC chip includes biometric. This currently says that it’s not enough to scan the passport, you have to check the information from that scan and compare it to a visual or other information. The intent is that the document that you’re relying on is in control of the right person. Rudementary security requirement.

Digital signature, it has to be created as part of the vetting or onboarding process, can’t just be a random document that is digitally signed. Signature has to be validated.

If the evidences are not enough, and the certificate request contains information that can’t be validated with these sources, these sources can be supplemented. Think “title”.

Verified professional level has to be looped in.

No non-verified subscriber information allowed.

This casts out to Enterprise RA.. This is where we will run out of time, but the focus in the next call will be this. These are the requirements for CAs, it’s quite bolted down. For Enterprise RA, we refer to their records, but we don’t define what a record is, or the quality of the information. HR file, or active director? Do we want to define this more? And the way it has to be recorded. A bit of a slippery slope, especially with huge multinational. They might use third parties for the identity vetting for onboarding. Once you start recording the requriements, this can balloon. Please feed back experience.

Ben W: Document this in github?

Yes, absolutely. Define, but be reasonable.

Document is out in github. Actively improving the text, will come back and get a chance to raise questions and review.

ROADMAP TO BALLOT

End is in sight! Gap analysis of where we are in the existing draft, just so we have an idea where we are, and start addressing open questions. There are some with regard to the org vetting, how much of the EV cup we drink, Org ID. Just agree which questions we will tackle in version 1 and later versions.

Period to action on the complete text so that you can review with a broader people within your organization. Agree on how we collect comments – list, github comments?

Prefer to channel them in one place., so that we can have and make sure that people’s questions and concerns are taken into account and resolved in a uniform way.

Ballot: reminder of the rules. Overall, when you have an endorsed final draft ballot, which has to include the whole text, there has to be a final 7 day discussion period, 7 day vote period, and because new standard, a 60 day IPR review period. Pretty soon we’ll have to hammer out the different dates associated with this.

Elections end of October, aim to get this as far as we can before we get to that stage.

Choose effective date for the standards (audit criteria) and cert consumers for enforcement date (outside scope). Would we make the standard effective on a date and try and encourage to adopt it immediately even if the browsers aren’t enforcing it. For a period of the year in the future to allow for audit.

Tim H: A certificate consumer could put in their policies any date they want for adoption and enforcement of this standard. However, there is precedent for adoption dates being in the standard itself. The baseline requirements for example, had an effective date. It’s completely appropriate for us to discuss., especially because coordinating it across all certificate issuers would be a benefit. And so, if we can agree on a consensus effective date in this group, that would be good.

I think many of those standards has been so long ago now that I can’t remember how the transition was handled. Bigger variety than with TLS. We’re going to want to have an effective date of the standard with optional adoption. Invite clarity from the certificate consumers as to when they see, expect adoption versus audited adoption.

Tim: Little unclear. So if you pick an adoption date of say, June 1st, CAs will be required to pick it up in their next audit. So if they are audited September 30th, then they have a period from June 1st to September 305h for that audit, while the rest of their audits are for the full period. The concern is that CAs may not have a long enough audit period, and that puts them in a bind.

Don: With EVGs there was a point in time audit that everyone had to commit to, with regular audits to follow. But this type of audit is best done with regular year end, and you need a period of audit evidence to report on, we will have to get audit criteria and reporting developed as well.

Clint is willing to accomodate the legacy profile, if there was an end date to it. Do we want this inbed in version 1? Or will this be dealt with by the certificate consumers, or we modify in a future version. If the fade away of legacy is desired, how do we deal with it? Personal perference: in next version. Goal is to get legacies audited, then we can come back and see their close-out.

Clint: That’s a great possibility. Love to hear from CAs what the preference is. Handle it in root program policy, or directly in first version, or add in later when first version is adpoted? What’s the preference – trade-off?

Have we ever dealt with this?

Bruce: Yes, with BRs, there was a date, but not a mandatory date, it was enforced by the root program policy.

Ensure that there is coordination with the certificate consumer with regards to dates.

Tim: What happened with CS? That is the most recent one.

Br: Not sure. If we put a date in there, there’s no consequence to that date. There’s no failure. The failure is when you violate a root policy.

Clint: Root program requirement to comply with these requirements, as a stake in the ground? We want to build in enough time for audit criteria, policy itself to be finalized. That’s the criteria.

BR: we have BRs, we have a set of audit criteria that say that this will be applicable to audit periods that start at some date and that’s another item in the future. And then from your point of view, you’re expecting to see an audit report. It will take a little while to get there. You don’t know how far CAs have to convert. Some might be small, some might be a lot.

7 day discussion period, unreasonable considering the scale. Once we have a complete draft, how long does the discussion period have to take? Tim H: This is a minimum.

Pre-ballot discussion. How long would this be? A month? Once we have complete draft, would it be helpful to have draft explaning sessions, to set context and workings?

Tim H: Not common in this Forum. How this is done with other standards is 30 days circulation, and gather comments, and see where we are?

The tool could be commenting in github? Tim H: Yes, other methods are inferior.

Training to be able to do that? Tim H: Yes, concern about github and restricting participation. Less of a concern with comments. It’s easier. If we send an email with a link and explanation of how to do it?

Allows the comments to be seen in context. But maybe explainer day for github.

When we get to stage, channel everything in github, it’s all in one place, worried when some comments are in different places, and when later on, trying to explain why a decision was made, can make it difficult to piece together the information.

The draft is available today, and if you’re able to review it, and notice things that are dramatically wrong, raise the alarm now, before we go into that review. Just want ot get a feel how long would be apporpriate for the review. Feedback on this would be helpful. 2 months maybe? Would want to create a checklist with dates, at this point we need to have targets in order to keep this moving.

Regular working group next week, let’s stick to it, intent to return to the individual identity topic. Send a direct link to the list today, to where that list is. Take a look at it, and gather questions and comments. In the areas that are still wide open, this is the biggest one. Org Identity and Org Identifier are smaller. The standard is now on a flypath for completion.

### Code Signing Working Group 

**Speaker**: Bruce Morton
**Minute Taker**: Corey Bonnell

Member attendees: Andrea Holland (SecureTrust), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Corey Bonnell (Digicert), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Joanna Fox (TrustCor Systems), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Martijn Katerbarg (Sectigo), Nick France (Sectigo), Rich Smith (Digicert), Stephen Davidson (Digicert), Tim Callan (Sectigo), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (Digicert), Tsung-Min Kuo (Chunghwa Telecom), Yamian Quintero (Microsoft)

Non-member attendees: Branca Martin (Amazon), Georgy Sebastian (Amazon), Mike Agenius Kushner (Interested Party), Tadahiko Ito (SECOM), Yoshiro Yoneya (JPRS)

Dean read the antitrust statement.

Minutes for the January 27th and February 10th minutes were approved.

Bruce presented the Goals presentation (attached).

Signing Service Discussion

Bruce suggested we should identify high-level goals before making any changes to the CSBR document. He also suggested that if the Signing Service is not performing a RA function, then it should not be considered to be a DTP. Ian agreed.

Ian mentioned that another primary goal of defining Signing Service requirements is to define parameters around access control.

Ian suggested that another goal is to define requirements around timestamping. Bruce said that he views providing timestamping services as CA responsibility but not the Signing Service. Ian agreed that it is more secure for CAs to host TSA as opposed to third parties.

Bruce said that the primary goal of a Signing Service is to mitigate against key compromise. Dean suggested that it also opens the possibility for using ephemeral keys (one certificate/key per signing operation). Ian agreed.

Dimitris added that for “providing code signing signature”, we discussed two models. Either the hash is sent, or the full document (binary) is sent. Also, for timestamping, Dimitris noted that the TSA must be audited in all cases. Nick added that Microsoft clarified privately that TSAs must be audited. Tim mentioned that we now require CABF policy OIDs in timestamp certs for code signing, so Relying Party software knows whether a given TSA certificate is being audited for use in the code signing ecosystem.

On the bullet point “Not a Subscriber”, Ian agreed that the Signing Service is not the identity; the Signing Service is not the software publisher. Bruce raised Dimitris’s previous point about whether the Signing Service receives just the hash or the full binary from the Subscriber for signing and said that the Signing Service should not have to take on the responsibility for scanning for malware. Ian agreed. Dimitris added that the CSBRs currently require notification to the CA if Suspect Code is found. He also added that it would be an improvement if we define requirements around scanning for Suspect Code. Tim said that it may be challenging to define explicit requirements in this area to achieve the security goals.

Ian brought up the current requirement for Signing Services to being running antivirus software. He said that it would be an improvement for the requirements to state that the Signing Service must be hardened.

Ian said that service availability should not be covered under the requirements. Dean added that is a product feature and thus out of scope for this working group.

Bruce said that currently there are requirements for Signing Services but none for Cloud Services. However, it is difficult to differentiate between the two services. Bruce added that to clarify, the Signing Service could be operated by the CA. Tim suggested that if the different types of services have different security properties, then the certificates and signatures can contain a flag to denote the type of service that is managing the keys. Bruce said that keys managed directly by the subscriber may have drastically different levels of protection depending on the controls in place by the Subscriber. Ian added that he’s been brainstorming adding a flag to denote the type of key protection and will consider further.

Bruce asked Ian why he considers such a flag to be valuable. Ian said that although he doesn’t see software consuming such a flag in the near term, requiring such a flag sets the groundwork for using it in the future. Such a flag can also be used to see what type of service is being abused the most to sign Suspect Code.

Bruce said we should revisit the high-level goals to ensure that we’re not making the requirements for Signing Services to be very high compared to the other types of key protection. Tim and Ian agreed.

Bruce suggested that after the RFC 3647 migration is complete, the group can go through the document and markup the areas that define requirements for Signing Services. The next step may be to remove all these requirements and start from scratch since the current requirements are currently haphazard.

Tim added that we should look into existing implementations to gauge existing practices and see what needs to be amended. Ian said that he’ll look into providing details about how their internal signing service is implemented.

Tim said that RFC 3647 reformat may help with comparing the requirements for each key protection type. Doug suggested that the Signing Service requirements could be a different specification since the requirements are so different. It was agreed that we should use a modular approach to the requirements to allow for different entities to perform different aspects of the services covered under the document. Dimitris added that ETSI standards for key management may be useful to compare against and potentially use for these requirement. Tim mentioned that some amendments may need to be required to account for different countries (e.g. in US, states are sovereign). The goal may be to make the standards compatible but not necessarily identical.

Next meeting is March 10.