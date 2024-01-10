---
aliases:
- /2022/10/24/2022-10-24-minutes-of-face-to-face-meeting-in-berlin-germany/
author: Ben Wilson
date: 2022-10-24 04:07:28
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 57 Meeting in Berlin, Germany, 24-26 October 2022
type: post
---

# CABF Face-to-Face Meeting 57: Day 1 October 24, 2022

## Attendance

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Aleksandra Kurosz (Asseco Data Systems SA (Certum)) Aleksandra Ilnicka, Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ann-Marie Christian (WebTrust), Antti Backman (Telia Company), Arno Fiedler (D-TRUST), Arnold Essing (Telekom Security), Ben Wilson (Mozilla), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Christophe Bonjean (GlobalSign), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Daryn Wright (GoDaddy), Dave Chin (WebTrust), David Kluge (Google), Dean Coclin (DigiCert), Dilip Barman (Govt. of India), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Frank Steinfeldt (D-TRUST), Franziska Granc (Nimbus), Fumi Yoneda (Japan Registry Services), Hogeun Yoo (NAVER Cloud), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Irina Hedea (Deloitte) Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Jeremy Rowley (DigiCert), Joanna Fox (TrustCor Systems), John Sarapata (Google), Jos Purvis (Fastly), Joris Minolla (D-Trust), Jozef Nigut (Disig), JP Hamilton (Cisco Systems), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Keshova N (Emudhra), Kim Nguyen (D-Trust), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Michael Guenther (SwissSign), Michael Sykes (SSL.com), Morad Abou Nassan (TeleTrust), Nargis Mannan (SecureTrust), Nick France (Sectigo), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Rob Stradling (Sectigo), Rollin Yu (TrustAsia Technologies, Inc.), Roman Fischer (SwissSign), Ryan Dickson (Google), Sissel Hoel (Buypass AS), Dr. Soundra Pandian (Govt. of India), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Tyler Myers (GoDaddy), Vijayakumar (Vijay) Manjunatha (eMudhra), Wei-Hao Tung (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## CA/Browser Forum Meeting

### Approval of CABF Minutes from last teleconference

**Leader:** Dean Coclin (Digicert)

Prior minutes were not prepared and will be sent to the list for approval at the next meeting.

### Future face to face meeting schedule, fall election results, new working group chairs/vice chairs

**Leader:** Dean Coclin (Digicert)

- *Presentation link:*\*

**Discussion outside the presentation:** Future F2F meeting schedule:

- March 2023 meeting will be hosted by Entrust in Ottawa followed by a one day PKIC event on Quantum Computing
- Summer meeting will be hosted by Microsoft in Seattle, date TBD
- Fall meeting will be hosted by Globalsign in Portsmouth, NH, date TBD

A chart with all the new chairs/vice chairs was presented. The only unknown is the Forum vice chair which will be announced tomorrow.

### Browser Updates

#### Mozilla Root Program Update

**Leader:** Ben Wilson (Mozilla)

- *Minutes:*\* Dimitris Zacharopoulos (HARICA)
- *Presentation link: [Mozilla Root Program Update](/uploads/1-3-2022-October-Mozilla-Update-for-CABF-Berlin-F2F.pdf)*\*

## Discussion outside the presentation

- Question from Paul (Entrust): Will Mozilla have its own CT policy or follow the other Browser’s CT Policy?
- Ben replied that the plan is to use the least strenious policy from other Root Programs.
- Paul: Should we try to adopt something at the CA/B Forum (SCWG)?
- Dimitris: The CABF is not enforcing or monitoring the status of servers and does not supervise the enforcement of policies like CT Logs so it would be challenging to define CT policies at the SCWG level.
- Paul agreed about the challenges and mentiond that considering the various CT policies in place by different Root Programs, perhaps we can simplify and monitor for compliance. Some standardization might be part of that discussion. Perhaps each CA should operate a CT log server? More discussion can take place at the SCWG.
- Clint (Apple): CT policy from Apple does not place a requirement on CAs but Apple is the consumer of the policy.
- Paul: On CRLite are there any guarantees or a specific timeline between revocation and enforcement of the revocation in the Browser?
- Ben: It takes about 7 days to incorporate the revocations into CRLite. Ben needs to discuss some more with engineering
- Paul: CAs must issue CRLs sooner than 7 days and OCSP every 4 days, delaying the freshness of certificate statusses for users that have no cached response. If CRLite says it’s not revoked, will you fallback to OCSP?
- Ben: If CRLite says it’s not revoked, then OCSP will not be checked. Currently, the default is that OCSP is checked every time or OCSP stapling is cached
- Tim (Digicert): Using CRLite will not make things worse to how things are today.
- Tadahiko (SECOM): Mozilla wants to use additional mechanism
- Ben: The goal is to process all data into one big chunk. It needs to happen slowly. Once we get enough data, we can improve. No hard failing on things that should not fail.
- Vjay (eMudra): Is the double checking going to happen every time?
- Ben: It’s a fallback OCSP check happens once which is then cached for a certain amount of time.
- Trev (Amazon): Should we use certificates@mozilla.org instead of your personal emails?
- Inigo (Sectigo): Lifecycle. The key validity is different than the certificate validity. Existing Roots already have key material that is over 15 years. Ben said that Mozilla prioritizes the Root CAs that are already in the program. According to his experience the CAs that are also participating in the CA/B Forum
- Trev: It appears that Mozilla is mainly interested in the validity of 15y and will distrust at some point regardless of the validity of the actual Root CA Certificate. That means that a CA can continue issuing certificates but will not be trusted by Mozilla. Ben confirmed.
- Daryn (GoDaddy) asked if the time period start was based on the validity period or the actual creation date. Ben said it is based on the actual creation date, but they are relying on CAs to identify the actual creation date with assistance from Auditors.

#### Google Root Program Update

**Leader:** Ryan Dickson (Google)

- *Minutes:*\* Doug Beattie (Globalsign)
- *Presentation link: [Chrome Browser Update](/uploads/1-4-CABF-F2F-57-Chrome-Browser-Update.pdf)*\*

There were 3 main sections to Chrome’s presentation:

1. Chrome Root program updates where Ryan discussed * general updates, * provided a link to the latest policy * reminded us to use the new email address: chrome-root-program@google.com * Policy remains located here: [https://g.co/chrome/root-policy](https://g.co/chrome/root-policy "https://g.co/chrome/root-policy") * Reviewed the current application process * Outlined a set of longer term priorities related to:

- Replacing legacy roots with TLS only roots
- preparing for a post-quantum world
- Establishing a CA term limit similar to Mozilla’s 15 year limit, possibly shorter to promote agility
- Don’t want to impact ubiquity cases, so need to factor that into the plan
- described the feature Launch Roadmap for rolling out the Chrome root store to Android, Chrome OS, iOS and other operating systems

2. Certificate Transparency Updates

- Reminded us of the CT and CT log policies and recent updates to Log State Changes

3. General Browser Updates

- Summarized some of the important Chrome browser updates for Chrome 104-106 and a look ahead to what might be in upcoming releases.

## Discussion outside the presentation

Dean asked about Enterprise CAs and private roots will be treated

Ryan said that in windows, if a user adds a root into the trust store, or one is pushed via AD or GPO, Chrome will include it into trust decisions. Chrome root verifier will use all of those roots the same way in decision making decisions. Please follow test instructions (see link in ppt) to enable chrome root store verifier, and make sure that those locally trusted roots are being loaded correctly. You enable an enterprise policy to revert back if you need to.

Dimitris follow-up: If the Default is to use chrome root store, how are platform roots used?

Ryan said that by default Chrome verifier will use the Chrome roots and the locally trusted roots only (will not use those distributed by Microsoft for example).

Wendy asks: If private are pulled in and treated the same as trusted roots, for example, will CT enforcement be applied to these private roots?

Ryan: : All roots will be treated the same. There are enterprise policies to set CT enforcement. In the event that an enterprise has issues, they can always revert back and use the MS root store and CAPI to validate certificates.

Inigo askes about use of ACME

Ryan: Chrome will be asking what automation methods CAs use today. At least 90% of total issuance by CA owners support ACME/automation. The survey will be used to collect the automation methods supported by CAs. CAs with new root inclusion requests may be required to support ACME and other automation techniques for ICAs under those roots, but more details will be forthcoming after the survey.

#### Apple Root Program Update

**Leader:** Clint Wilson (Apple)

- *Minutes:*\* Marcelo Silva (VISA)
- *Presentation link: [Apple Root Program Update October 2022](/uploads/1-5-2022-october-cabf_wiki-apple.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

#### Microsoft Root Program Update

**Leader:** Karina Sirota (Microsoft)

- *Minutes:*\* Bruce Morton (Entrust)
- *Presentation link: [Microsoft Trusted Root Program Update](/uploads/1-6-Microsoft-CABF-57-Update.pdf)*\*

* Goal: Bettering our processes to make things better for all!

* Program Requirement Updates:

  - Currently investigating the benefits of making OCSP for TLS optional.
  - Currently investigating policy that all revoked certificate must have revocation reason code provided for revocations.
  - All CAs have to have group email alias. Currently 18 CAs that don’t provide a group email alias.

* Microsoft Edge Root Store Update:

  - Delivering a dedicated root store for Edge browser, which will include all active TLS enabled roots enabled in Microsoft.
  - Updating policies for EV policy OID; one CABF EV OID (2.23.149.1.1), plus one optional CA defined EV OID on all EV audited TLS roots. These are metadata for root CA and will not be included in the root CA certificate. Question asked about more OIDs to cover other policies such as QWAC. Note, CA company can have different policy OIDs per root.
  - Microsoft will be engaging CAs which 1) do not have a CABF EV OID applied, and 2) have more than 2 EV OIDs applied with their root (minus EV CS OID).

* Malware Monitoring:

  - Are starting initiatives around monitoring signed malware and working on creating a telemetry pipeline to identify signed malware. Once signed code is identified, CAs will be asked to investigate specific certificates.

* Program Communications Reminders:

  - msroot@microsoft.com should be used for communications to ensure timely response. Emailing any other aliases may result in the email being missed.
  - Program requirements can be found on Microsoft Docs at: [https://aka.ms/RootCert](https://aka.ms/RootCert "https://aka.ms/RootCert").
  - Program audit requirements can be found on Microsoft Docs at: [https://aka.ms/auditreqs](https://aka.ms/auditreqs "https://aka.ms/auditreqs").
  - Please test changes and confirm with 3 days when asked by Microsoft.

**Discussion outside the presentation:** No additional discussion.

### CCADB Update

**Leader:** Chris Clements and Ryan Dickson (Google)

- *Minutes:*\* Martijn Katerbarg (Sectigo)
- *Presentation link: [Common CA Database Update](/uploads/1-7-CAB-F2F-57-CCADB-Update.pdf)*\*

## Discussion outside the presentation

- CCADB Updates

  - New user and password reset instructions have been added to the website
  - The audit statements, policy documents and other data workflow pages have been updated
  - Instructions updated on Adding / Updating root request
  - It is now possible to upload Root certificates in CCADB which are being decoded

- System Feature Updates

  - VMC Audit fields are now available for RCA and ICA including in the API
  - The ALV system has not yet been updated for VMC
  - Recomputed all derived trust bits on intermediate certificates after making the OID → Friendly Name mapping table dynamic

- Add/Update Root Request

  - “CA Audit Update Request” and “CA Information Update Request (Non-Audit)” is now combined into “Add/Update Root Request”
  - When updating, CA owners only need to update the specific tab where they need to make updates
  - On the first update after this change some additional information may need to be filled by CAs

- Root Information Tab

  - Self-Assessment and Key Generation only need to be completed for new root CAs requesting inclusion

- Root Inclusion Request

  - Coming soon. Trying to simplify the process
  - One case can be used for multiple roots into multiple stores

- CCADB Groups

  - Moving from the Mozilla managed group to CCADB Steering Committeee managed group for public discussion: public@ccadb.org
  - MDSP will continue to exist and may be used for Mozilla specific needs where the CCADB group will be used by multiple root stores

- CCADB Public Discussion Group

  - Currently assessing the value of public discussion.

- Public Discussion

  - We want to adjust the process as currently in place.
  - Intent to start public discussion process earlier than currently done.
  - Intent to have public discussion to start together with the detailed in-depth review by the Root Store owners
  - Plan is to have discussions going on for 6 weeks. 3 root inclusion requests at the same time

- Reminders / Coming Soon

  - CCADB dashboard is available at wiki.mozilla.org/CA/CCADB_Dashboard
  - New CCADB Self-Assessment is currently being planned
  - New Root Inclusion Request Workflow is in development
  - CCADB policy v1.2 is currently in draft

- Questions

  - Stephen Davidson:

* Can CCADB become two way so updates are given when roots for example are remove

* Answer: This can be considered and improved upon

  - Paul van Brouwershaven:

* I appreciate considering to consolidate the browser policies into one policy, which I view as a positive change. What are the possibilities of consolidating these under the CA/B Forum?

* Answer: Language in the current policy is specific to CCADB requirements. Root programs can and will still have their own policies as well.

  - Dimitris Zacharopoulos:

* Regarding the Self-Assessment, which is a Chrome root program requirement, what is the expected tools to add that for existing CAs, should we keep sending this by email or also use CCADB?

* Answer: The CCADB page also points to the Excel file currently used by CAs and we do not expect that to change in the near future.

* Dimitris Zacharopoulos: When are we expected to send these in?

* Answer: For new inclusion requests, it’s part of the inclusion request. For all CAs, it will be an annual requirement starting 2023

### Updates to Forum web pages

**Leader:** Ben Wilson (Mozilla)

- *Minutes:*\* Ryan Dickson (Google)
- *Presentation link: [CA/Browser Forum Web Pages](/uploads/CABF_WebPages-2022-10.pdf)*\*

## Discussion outside the presentation

- Ben reviewed the website and identified things that require advice, discussion, review, or are in obvious need of an update.

  - Some changes are minor, others are more significant.

* In other areas, we need brand new content to fill in gaps within our existing sets of documentation.
* The minor updates are administrative like changing officer information.

- Ben shared a link where he performed this work, and where volunteers can sign up to perform the needed update.

- Categories include:

  - Browser/OS Information (not discussed, but needs review)
  - CA Practices
  - Minutes (these are quite outdated)
  - Documents

- Categories that need more content were also outlined:

  - BRs pages (a few blank landing pages)
  - CA/Browser forum news (either we should deprecate, or create more news)
  - Information for the public needs some newer content
  - WebTrust for CAs needs more content detailed, as well as ETSI.
  - SMIME Ballots (new page)
  - Resources and Proceedings are landing pages that should have clarifying content

- Most pages appear to need some amount of updating such as:

  - Read through, wordsmithing, freshen content.
  - Ensure documents are aligned with procedures in practice
  - More helpful notes on how to navigate the site

- EV content is very outdated

- Officers and Members will need recurring updates after elections conclude.

- Due to time constraints, further discussion is best served/orchestrated over email.

- ACTION: Members should volunteer to help out by placing their name next to a topic in the document Ben shared.

  - Word press can assign writing privileges - without granting administrative privs

* Ben just needs the mapping
* 2FA is required

- Paul recommends transitioning to GitHub from WordPress

  - Jos:

* Previously discussed in infrastructure meeting

* Jos put together a prototype

* Group felt that the overhead of page management would be more difficult for people than WordPress (everybody would need to learn how to use Git)

* Adding more labor overhead is something the group needs to see a significant benefit out of

* Jos wouldn’t mind revisiting this as we look at wholesale redoing chunks of the website, or at least content on the website

  - Paul: It seems like we all use GitHub to manage our policy and to track issues today. So yes, possibly a learning curve, but this is probably manageable.

* Some tools exist to help with writing markdown, etc. These help with publication elements without interfacing with GitHub.

  - Dean closes by thanking Ben, and he encourages members to sign up to volunteer, we’ll reconvene in the infrastructure group.

## S/MIME Certificate Working Group Meeting

**Leader:** Stephen Davidson (DigiCert)

- *Minutes:*\* Martijn Katerbarg (Sectigo)
- *Presentation link: [S/MIME Certificate Working Group](/uploads/1-11-smcwg_202201024f2f.pdf)*\*

## Discussion outside the presentation

# CABF Face-to-Face Meeting 57: Day 2

## Attendees

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Aleksandra Kurosz (Asseco Data Systems SA (Certum)), Aleksandra IInicka (Certum), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Anna-Marie Christian (CPA Canada/WebTrust), Antti Backman (Telia Company), Arno Fiedler (D-TRUST), Arnold Essing (Telekom Security), Ben Wilson (Mozilla), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Christophe Bonjean (GlobalSign), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daryn Wright (GoDaddy), Dave Chin (WebTrust), David Kluge (Google), Dean Coclin (DigiCert), Dilip Barman (Govt of India), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Eva van Steenberge (Globalsign), Frank Steinfeldt (D-TRUST), Franzeska Granc (Nimbus), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud), Ian McMillan (Microsoft), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Irina Hedea (Deloitte), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Jeremy Rowley (DigiCert), Joanna Fox (TrustCor Systems), John Sarapata (Google), Joris Minolla (D-Trust), Jos Purvis (Fastly), Jozef Nigut (Disig), JP Hamilton (Cisco Systems), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Keshova N (EMuhdra), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Michael Guenther (SwissSign), Michael Sykes (SSL.com), Morad Abou Nasser (TeleTrust), Nargis Mannan (SecureTrust), Nick France (Sectigo), Nikolaos Soumelidis (ACAB Council), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Rob Stradling (Sectigo), Rollin Yu (TrustAsia Technologies, Inc.), Roman Fischer (SwissSign), Ryan Dickson (Google), Sissel Hoel (Buypass), Dr. Soundra Pandian (Govt. of India), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (KeyFactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Tomas Gustavsson (PrimeKey), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Tyler Myers (GoDaddy), Vijayakumar (Vijay) Manjunatha (eMudhra), Wei-Hao Tung (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## CA/Browser Forum Meeting

### Potential bylaws changes to election process

**Leader:** Tim Hollebeek (DigiCert)

- *Minutes:*\* Stephen Davidson (DigiCert)
- *Presentation: [Election Issues](/uploads/2-1-CABF-Election-Issues.pdf)*\*

Collective discussion on how to improve election process to make it run more smoothly in the future.

Should each WG run its own election, or centrally do at Forum level?

- Improve guidance for WG leaders re confirmation ballots vs normal elections.
- Trevoli Ponds-White said that the confirmation ballots for single candidates seemed unecessary.

Which mailing lists should be used for announcements, voting?

- Consistent format of announcements.

Bylaws are clear what happens if there is a tie but what happens if a confirmation ballot fails?

Term limits for Forum chairs or WG leaders (recently removed)? * Benefits of rotation.

- Dean Coclin: Some of the WG are small so was considered to have less rotation. Ben Wilson in favor of elections centrally run.

Sequencing of nominations and voting?

- The automatic elevation of vice chair seems less likely. Might want to stagger the Chair and Vice Chair more as we end up having to decide who might be Vice Chair

Do we want to announce the number of votes received?

- Jeremy Rowley said the intent was to know % of votes but not necessarily who voted for whom. Dimitris said quorum must be established.
- Tim H asked can WG charters overide the Forum rules?

Bruce Morton said rules should be at the Forum level – not a lot of variance across WGs. Dimitris said that the WG charters need aligned as we learned improvements along the way that are not refelcted in some of the older WG charters; he has a list of ideas.

Trev said the quorum requirements could be improved.

Ben Wilson suggested that a poll should be conducted to solicit feedback on some of these points.

- Straw poll was that elections should be at Forum level.
- Straw poll on confirmation ballot. Martijn said that perhaps there should be an option for a protest vote. Tim Callan said that would be unlikely anyone would speak up in opposition, the answer may be to stand up a candidate so there was a proper election. Tobias Josefowitz asked if this was theoretical or actual issue; maybe better to just leave alone, as bylaws may not be able to account for all the variables of such a situation. Jeremy Rowley said the confirmation ballot provides transparency, and that they should be on the public lists, not just the announcements. Trev concurred. Roman Fischer said that confirmation ballots were probably not necessarily.

Tim Hollebeek asked if a discussion period is really required for election ballots. Ben Wilson and Trev said they felt it was not. Dimitris said that the original intent was that nominees would do a letter to the list during that period re their candidacy.

- Straw poll – retain Forum chair term limit to be one term (two years).
- Straw poll – three term limit for WG chairs (as proposed by Trev). Tim C asked why not have no term limits unless challenged – Jeremy R said so many people are friends in this group that it’s better to have a cap to allow fresh ideas. If there was no competition, you have to question the viability of the WG? Martijn Katerbarg clarified these are consecutive term limits not lifetime. In favor of term limits.
- Straw poll – Tim H in favor of sequential elections. Chair then Vice Chair.

Bruce M noted that elections can be confusing as flurry of emails for discussion and ballot, inconsistent presentation. Tim H said this could be improved via central Forum elections.

- another Straw poll – in favor of central Forum elections.

Straw poll – in favor of disclosing the aggregate number of voters in an election (not by type of member).

Straw poll – in favor that a WG chair that has hit term limit can run as Vice Chair.

### Forum use cases for PQC?

**Leader:** Bruce Morton (Entrust)

- *Minutes:*\* Paul van Brouwershaven (Entrust)
- *Presentation:*\*

## Discussion outside the presentation

- Bruce: I brought up the idea for forum use cases PQC, but has not prepared any slides.
- What are going to do around PQC or what is the process?
- How can the CAs drive this, is there anyone from the browsers that wants to comment?
- Ryan Dickson: Working on it, but we don’t have anything specific to share.
- Ben Wilson: Maybe we should have this discussion after the presentation “Quantum Cryptography topic” by guest speaker Dr Manfred Lochter (BSI) later today
- Tim: The NIST competitions has just completed, the majority of the discussions in LAMPS is a year of two
- Tim: Be careful with issuing, we don’t have information how to put them in CMS
- Bruce: I’m happy with that answer
- Tadahiko Ito: We need to look at Code signing, do we need a dedicated root to support different algorithms.
- Tevoli: Have the browsers pick a type of certificate like composite, hybrid, etc.?
- Dimitris: At the forum level we need to focus on the coming things, CAs, roots, HSM, certifications etc.
- Tim: We don’t have IPR at the forum level, maybe we need a cross working group where these issues can be discussed.
- Conclusion: Nothing that we can do now, those interested can best follow the work in the LAMPS working group of the IETF.

### Guest Speaker: “Quantum Cryptography topic”

**Leader:** Dr Manfred Lochter (BSI)

- *Presentation: [Quantum Safe Cryptography](/uploads/2-3-Browser_Lochter.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

### Audit Updates

#### ETSI Update

**Leader:** Arno Fiedler (Vice Chair ETSI ESI)

- *Minutes:*\* Clemens Wanko (TUV AUSTRIA)
- *Presentation link: [Update on ETSI ESI standardisation related to Publicly Trusted Certificates](/uploads/2-4-ETSI-ESI_Standardisation_Update_for_CAB-Forum-10-2022.pdf)*\*

New ETSI standards released:

- Trust Services for: Identity proofing, ETSI TS 119 461
- AdES creation & validation, Part 3: extended signature validation
- EU Trust Lists: Using & interpreting trusted list; Validation policy using trusted list
- Formats: JAdES
- Schema for algorithm catalogues

Explanatory statements made with regard to:

1. ETSI TS 119 461 → working ongoing to make TS this generally applicable for identification of persons
1. ETSI EN 319 401 → alignment with new ISO 27002 and NIS2 in progress; study started to investigate for additional measures/requirements
1. ETSI EN 319 411 → different updates and alignment with latest CAB Forum documents and recommended use of TS 119 461
1. ETSI EN 319 412-1 & 2 –> Proposals for detailed changes to certificate profiles
1. ETSI TR 119 411-5 → in progress and discussion: guidelines for the coexistence of web browser and EU trust controls
1. ETSI TS 119 403-2 → in amendment process to address multi Root-AAL and other changes for Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates (as in CA/Browser Forum)

Apart from that ETSI focuses on international alignment of ETSI standards.

## Discussion outside the presentation

- Clemens asked in how far it can be expected that the NIS2 alignment of the ETSI EN 319 401 can be expected to support full audit coverage of NIS2 along with an eIDAS Trust Service conformity assessment.
- Arno answered that it is not upon ETSI to guarantee this, but from the professional perspective the ETSI EN 319 401 shall be made fit to reach that goal. He referred to the ETSI presentation of Paloma Llaneza González at the CA-Day 2022 later this week (NIS II and eIDAS II: How to audit Trust Services in 2025?)

#### ACAB’C Update

**Leader:** Clemens Wanko (TÜV AUSTRIA)

- *Minutes:*\* Andreas Henschel (D-TRUST)
- *Presentation link: [Accredited Conformity Assessment Bodies Council](/uploads/2-5-20221025_ACABc_presentation_1.0.pdf)*\*

* The council has grown significantly:

  - at the moment 15 members
  - that means more than 50% of european auditors are ACAB’c members and more than 50% of the european TSPs are audited by ACAB’c members
  - certify 134 of all European qualified CA / TSPs (54%) → that’s eIDAS Trust Services. For CA active in CA/B ecosystem, almost 100% coverage is assumed
  - certifications in 83% of EU countries with QTSP

* ACAB’C Board elections: Clemens Wanko elected as Chair, Matthias Wiedenhorst and Nikolaos Soumelidis as Vice Chair

* AALT (Audit Attestation Letter template)

  - until now: for CA operating more than one Root, one single Root-AAL was issued by the CAB per Root CA audited
  - coming up by end of 2022: multi Root-AAL which allow issuance of one joint AAL for CA taking more than one Root under audit
  - Note: multi Root-AAL should be used in the future, the CAB may have reasons however to keep on issuing single Root-AAL

## Discussion outside the presentation

- Ben: Thanks to ACAB’c for the work that has been done so far within the CA/B-Forum
- Wendy: Is there a Link to the report of the attack of the Video Identification done by the CCC?
- Clemens: A Link to a report in German language will be posted.

#### WebTrust Update

**Leader:** Don Sheehy (CPA Canada)

- *Minutes:*\* Ben Wilson (Mozilla
- *Presentation link: [Webtrust for CA Update – Berlin](/uploads/2-6-Webtrust-CABFupdate-Oct2022.pdf)*\*

## Discussion outside the presentation

Don introduced Dave Chin and Anna-Marie Christian. Don thanked Jeff Ward for his hours of contribution. No recent formal collaborative efforts with ETSI, but planning in the future. COVID-19 was a challenge for on-site audits. This led to the temporary 6-month, limited-scope audit, and special Webtrust seal. This program is now being repurposed to handle catastrophic or government-mandated events. Network Security is being segregated from TLS Baseline Requirements, so it is independent and can be associated with Code Signing and S/MIME audits. He is hopeful that the NetSec requirements will be revised early next year.

They have worked on an illustrative template for audit reports.

For S/MIME audit report, there is an exposure draft based on the May 2022 version, that will be modified based on the final version of the S/MIME Certificate Baseline Requirements.

Subservice Organizations / Outsourcing arrangements – historically, the inclusive approach has been used. For external organizations, data centers, etc., they have used SOC-2s and carve-out Webtrust, which combined provide a full picture. There was concern from the browser community on this latter approach, when applied to future operational models, e.g. where a CA might be heavily outsourced. Therefore, the Webtrust Task Force elected to follow the inclusive, rather than the carve-out, approach.

Webtrust RA, developed in 2020. One RA in 2022 wanted a seal, so now that is available.

Updates to reporting – templates circulated for US, Canada, and International. Will be updating terminology for RA, as well as for items listed on slides 17 – 19. See also more detail provided in Slides 20 – 23 (auditor guidance, CA full lifecycle reports, etc.).

Slides 24-28 cover CPA Canada’s Webtrust Program. Dave Chin said they are working on seals for RAs, NetSec, and S/MIME. Anna-Marie Christian said her responsibilities cover the Webtrust Program, a dedicated Webtrust team, succession planning (knowledge transfer, etc.). She also reviewed reporting structures and roles (Slide 27).

- Inigo asked about cloud services auditing. What are Webtrust/ETSI doing in this area?
- Don said that they are awaiting the NetSec committee’s work in this area. On existing cloud services reporting, then there are limited examples of audits going to the extent of Webtrust. He said there are challenges.
- Clemens said it is possible to take up cloud services, but there are barriers – e.g. how deep can the auditor dig into the cloud services arrangement. Clemens is also waiting for information in this area.
- Trev asked Don was the concern that with a cloud service provider, it could be literally in any location, and you wouldn’t know where it was?

* Don responded that it is the hardware being used. There may be multiple data centers and within those datacenters there are multiple racks. Some might be miles or 1000’s of miles apart. * Trev said that her impression is that data centers for a region are not 1000 of miles apart, customer data doesn’t transit 1000s of miles, she could only speak for Amazon, but maybe there is a need to get education out on these topics. Consider US-Canada, or within the EU under GDPR.

- Dimitris asked about aligning our definitions and wondered whether some of the work had already been done by Webtrust. Don said that they were awaiting word from the CA/B Forum.

### Summary Presentations from Working Groups

#### Server Certificate Working Group (SCWG)

**Leader:** Jos Purvis (Fastly) Chair, SCWG

- *Minutes:*\* Corey Bonnell (Digicert)
- *Presentation link: [Server Certificate Working Group, 2020-2022 Summary](/uploads/2-8-scwgupdate.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

#### Code-Signing Certificate Working Group (CSCWG)

**Leader:** Bruce Morton (Entrust)

- *Minutes:*\* Dean Coclin (Digicert)
- *Presentation link: [Code Signing Certificate Working Group, F2F 57](/uploads/2-9-F2F-57-CSWG-202210.pdf)*\*

* Accomplishments since last meeting.

  - Done: Private key protection moved to June 2023
  - Plans (To Do): Updating revocation rules for signed malware
  - Signing service reqt update
  - Remove references to TLS BRs
  - Time Stamp updates
  - High Risk Applicants
  - Open Source project applicants

**Discussion outside the presentation:** No additional discussion.

#### S/MIME Certificate Working Group (SMCWG)

**Leader:** Stephen Davidson (DigiCert)

- *Minutes:*\* Mads Henriksveen (BuyPass)
- *Presentation link: [S/MIME Certificate Working Group, Berlin F2F](/uploads/2-10-smcwg_202201025f2f.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

#### Network Security Working Group

**Leader:** Clint Wilson (Apple)

- *Minutes:*\* Chris Kemmerrer (SSL.com)
- *Presentation link: [Network Security Working Group, October 2022](/uploads/2-11-2022-october-cabf-netsec.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

#### Infrastructure Subcommittee

**Leader:** Jos Purvis (Fastly), Ben Wilson (Mozilla)

- *Minutes:*\* Martijn Katerbarg (Sectigo)
- *Presentation link: [Infrastructure Subcommittee: F2F Meeting 57 Update](/uploads/2-12-cabf57-infraupdate.pdf)*\*

**Discussion outside the presentation:** No additional discussion.

## CSCWG Meeting

**Leader:** Dean Coclin (DigiCert)

- *Minutes:*\* Tim Callan (Sectigo)
- *Presentation link:*\*

## Discussion outside the presentation

## Signing Models

• Subscriber uses token or server HSM verification

• Subscriber uses cloud service verification

• Signing service hosts HSM – audit

• Signing service hosts HSM with protected private keys in cloud service – audit except cloud service

• Signing service uses cloud service to generate and store private key s- audit except cloud service

Bruce Morton (Entrust): Third is easiest to tackle. We have to figure out how to audit these. Clarification – it’s subscriber keys.

Tim Hollebeek (DigiCert): Aplying NCSSRs as currently written for key protection is between problematic and impossible. Adopting the NCSSRs is hard. For 4, there is difficulty in the audit. How do I audit what the cloud service does?

Jeremy Rowley (DigiCert): DigiCert mostly relies on cloud service providers’ SOC audit and then looks at the configuration of services

Ian McMillan (Microsoft): All public cloud has stated and confirmed FIPS-140-2 or -3.

Jeremy: Rely on this certification of the audit. Same as relying on certification of HSM hardware requirement.

For cloud:

1. Key creation and storage must remain in this cloud’s bounds

1. Access is secure and proper

This isn’t in standard reports like SOC 2.

Doug Beattie (GlobalSign): Maybe we need to say what do we want from the signing service.

Dimitris Zacharopoulos (HARICA): What if a cloud provider could get a WebTrust for CA audit? We think this will be difficult.

Nick France (Sectigo): Differentiate between who operates the service, like a CA or a third party, e.g. a partner or customer. We need some assurance these keys are being used correctly.

Ian: Or should all signing services be trusted as a third party?

Jeremy: But that would prevent a lot of reuse of WebTrust.

Tim: Don’t turn the easy case into the hard case.

Jeremy: Third party is hard to detect and hard to enforce.

Bruce: We need to think through: 1. What requirements do they have to meet? 2. Differentiate between CAs and third parties

Dimitris: We have not yet received feedback from auditors as this is recent.

Doug: We can decide what we want audited.

Dimitris: The fourth and fifth bullets are based on real industry behavior.

Martijn Katerbarg (Sectigo): How will CAs know a signing service is being used? Is this honor based?

Dimitris: Yes, it’s self-declared.

Jeremy: it’s an issue that we’re relying on them to tell us. We should focus first on the CA case. This is a blurry line.

## Signing Service Requirements

• Generation Subscriber Key Pair in hardware crypto module

• Operate the hardware crypto module to a standard

• Provide the Subscriber secure access to activate their Private Key for signing

Doug: Have hardware crypto module and operate it to some standard. Provide subscriber secure access to activate private key for signing. What else?

Ian: Full transparency on what was sighed (to subscriber, not CA). No limits on what can be signed, just logged.

Dimitris: But today these could happen without us knowing. Maybe we remove signing services from the BRs and be done with it.

Ian: Customers like this because they don’t have to do all the tricky PKI stuff.

Jeremy: Some customers want to import/export keys.

Trevoli Ponds-White (Amazon): Processing.

Bruce: But we don’t want keys to be imported.

Martijn: What is the definition of importing and exporting? Can I backup?

Trev: Backup would have different requirements.

## Signing Service – Cloud-based Key Generation

• Cloud-based key generation is allowed

• How do we determine what cloud-based key generation is?

• Can the CA provide cloud-based key generation?

• If the CA provides cloud-based key generation, then what audit requirements apply?

Bruce: What is cloud-based versus not? How does the CA know? How do you apply it?

Jeremy: If CA controls the hardware, it’s not cloud based.

Dimitris: We have requirements on this in section 6.2.7.3. In all cases, CA needs some kind of report, so you can rely on them.

Inigo Barreira (Sectigo): ETSI has no distinction between cloud-based and on prem.

Bruce: Propose moving on drafted ballot and then go after these hard questions in phases.

## Two-year Goals

Ian: Candidates to add:

1. Max validity period. Should we reduce it? 39 months now.

1. IS there a better way to enable short lived certs?

1. CT for code signing.

Why to reduce from 39 months: They have signed too much code for a revocation action. We need the ability to be more surgical in revocations. Revoking a cert can be difficult because of the impact.

Tim: For short lived certs, we need validation of authority. This is the only roadblock. We should fix it.

Ian: CT logging is hard. Issue is different from what it was used to sign. It’s missing a hugely important piece.

Dimitris: Harmonization of CA quality is the most obvious benefit for me.

Jeremy: You can detect CA hopping with CT logs. And log revocation reason codes.

Tim: It also solves the problem of CAs not knowing about certs from known bad actors.

Attendance: In the room: ….. On WebEx: …..

# CABF Face-to-Face Meeting 57: Day 3

## Attendance

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Aleksandra Kurosz (Asseco Data Systems SA (Certum)), Aleksandra IInicka (Certum), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Anna-Marie Christian (CPA Canada/WebTrust), Antti Backman (Telia Company), Arno Fiedler (D-TRUST), Arnold Essing (Telekom Security), Ben Wilson (Mozilla), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Christophe Bonjean (GlobalSign), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daryn Wright (GoDaddy), Dave Chin (WebTrust), David Kluge (Google), Dean Coclin (DigiCert), Dilip Barman (Govt of India), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Eva van Steenberge (Globalsign), Frank Steinfeldt (D-TRUST), Franzeska Granc (Nimbus), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud), Ian McMillan (Microsoft), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Irina Hedea (Deloitte), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (SecureTrust), Jeremy Rowley (DigiCert), Joanna Fox (TrustCor Systems), John Sarapata (Google), Joris Minolla (D-Trust), Jos Purvis (Fastly), Jozef Nigut (Disig), JP Hamilton (Cisco Systems), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Keshova N (EMuhdra), Kim Nguyen (D-Trust), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Michael Guenther (SwissSign), Michael Sykes (SSL.com), Morad Abou Nasser (TeleTrust), Nargis Mannan (SecureTrust), Nick France (Sectigo), Nikolaos Soumelidis (ACAB Council), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Rob Stradling (Sectigo), Rollin Yu (TrustAsia Technologies, Inc.), Roman Fischer (SwissSign), Ryan Dickson (Google), Sissel Hoel (Buypass), Dr. Soundra Pandian (Govt. of India), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (KeyFactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Tomas Gustavsson (PrimeKey), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Tyler Myers (GoDaddy), Vijayakumar (Vijay) Manjunatha (eMudhra), Wei-Hao Tung (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Server Certificate Working Group Meeting

### Antitrust Statement, Assign Minute Taking, Approval of SCWG Minutes from last teleconference

**Leader:** Jos Purvis (Fastly)

- *Minutes:*\*

Antitrust statement was read. …

### Validation Subcommittee

**Leaders:** Corey Bonnell (DigiCert)

- *Minutes:*\* Chris Clements (Google Chrome)
- *Presentation link:*\*

## Discussion outside the presentation

## Network Security Working Group Meeting

**Presenter:** Clint Wilson (Apple)

- *Minutes:*\* Ben Wilson (Mozilla) & Rebecca Kelley (Apple)
- *Presentation link:*\*

## Discussion outside the presentation