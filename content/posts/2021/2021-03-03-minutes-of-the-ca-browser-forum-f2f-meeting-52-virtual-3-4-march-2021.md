---
aliases:
- /2021/03/03/minutes-of-the-ca-browser-forum-f2f-meeting-52-virtual-3-4-march-2021/
author: Jos Purvis
date: 2021-03-03 16:42:00
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 52 Meeting, Virtual, 3-4 March 2021
type: post
---

# Wednesday, 3 March 2021 – Plenary Meeting (Day 1)

## CA/Browser Forum Plenary Session

The Antitrust statement was read.

**Attendees:** Aaron Poulsen (Digicert), Aaron Gable (Let’s Encrypt), Adrian Mueller (SwissSign), Ahmad Syafiq MD Zaini (MSC Trustgate), Aleksandra Kurosz (Asseco Data Systems SA (Certum)), Ali Gholami (Telia), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Brenda Bernal (Digicert), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Clemens Wanko (ACAB Council), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eusebio Herrera (AC Camerfirma), Eva Vansteenberge (GlobalSign), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Iñigo Barreira (360 Browser), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jeremy Rowley (Digicert), Jos Purvis (Cisco Systems), Juan-Angel Martin (AC Camerfirma SA), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Kati Davids (GoDaddy), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Michael Guenther (SwissSign), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Nick France (Sectigo), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelley (Apple), Rob Stradling (Sectigo), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Sissel Hoel (Buypass AS), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Chris Czajczyc (Deloitte (WebTrust)), Ian McMillan (Microsoft)

### Report from Code Signing Certificate Working Group

**Presenter:** Bruce Morton (Entrust)  
**Note Taker:** Bruce Morton (Entrust)  

Moving forward, the CSWG plans to ballot more urgent items, migrate the CSBRs to RFC 3647 format, migrate to CA/Browser Forum new Pandoc version format, and then update CSBRs to reduce confusing requirements. Some issues have been found with references to SSL BRs and SSL EV Guidelines.

Since the last F2F meeting the CSWG has completed two ballots: Ballot Progress:

- CSC-4: 3072-bit RSA deadline moved to 1 June 2021
- CSC-7: EV and non-EV clauses rationalized

CSWG is also working on the following items:

- Subscriber Key Protection to require secure crypto, allow public-cloud, address verification of private keys on hardware.
- High Risk Certificate Requests and may use a third party to consolidate information.
- OCSP requirement for Code Signing and Time-stamp certificates, where CRL is required and OCSP may also be used.
- Time-stamp certificate validity period may drop from 135 months to 15 months.

Based on ballot CSC-4, there have been a few items to clarify regarding 3072 and SHA. The new certificate requirement will allow existing roots and subordinate CA to use 3072-but RSA, but new roots and subordinate CAs must be 4096-bit RSA. Code Signing and Time-stamping certificate minimum is 3072, but may be 4096. Cross-certificate to extend ubiquity for a new root may be issued from 2048 root, but the cross-certificate must expire by 31 December 2030. CAs can support SHA-1 revocation responses after the sunset date and SHA-1 Time-stamp certificates can only be issued until 30 April 2022.

### Report from S/MIME Certificate Working Group

**Presenter:** Stephen Davidson (Digicert)  
**Note Taker:** Stephen Davidson (Digicert)  

The Antitrust statement was read. Membership in the SMCWG has grown to 27 certificate issuers, 6 certificate consumers, 3 associate members, and 6 interested parties. Since last CABF virtual F2F, the SMCWG has conducted a discussion of leaf certificate profiles, noting existing relevant standards and requirements. This has lead to creation of certificate policy framework that both brings current acceptable practice into an auditable state, and sets longer terms goals such as dedicated S/MIME certs. S/MIME types (mailbox, organization, sponsored, individual) will exist in these grades (legacy, multipurpose, strict). Discussion has also progressed on email verification methods, with a goal of adopting BR methods now but considering additionl automated methods (such as acme-email-smime and acme-sso) in future. The draft of the SMIME BR has been moved to CABF SMIME GitHub, currently as a working draft in a fork of the “PreSBR” branch. As with other CABF standards, we plan on creating new branches for each ballot, and only moving to the “Main” branch upon successful passage of a ballot. Thank you to the Infrastructure Committee! In coming months the SMCWG will seek to finalise the draft leaf certificate profiles and begin documenting the ICA and root CA requirements. Further discussion is required on validity and verification reuse periods.

### Report from Forum Infrastructure Subcommittee

**Presenter:** Jos Purvis (Cisco)  
**Note Taker:** Ryan Sleevi (Google)  

- Brief discussion about GitHub and table-based content
- Lots of discussion on membership management
- Google form is a good initial step
- Need to revisit how we do the membership management, possibly reforming the sheet used to track membership
- Wayne will work on improving the searchability of our mail archives by producing a sitemap for mailman
- Updates to the Website
- More discussion later during the F2F
- More work on use cases and structure

## The Forum Plenary was adjourned

## Server Certificate Working Group

### Report from SCWG Network Security Subcommittee

**Presenter:** Neil Dunbar (Trustcor)  
**Note Taker:** Dustin Hollenback (Microsoft)  
**Presentation:** [/uploads/f2f_52_summary_presentation.pdf][1]    

- Near Term Objectives
- NCSSR language and patching rules are vague
- Sub-team changes
- Cloud Services Team created
- New Forum Guideline to complement the NCSSRs
- Neil provided a timeline for when major components are expected to be completed
- These will start as rough ideas and will be provided to the larger community for feedback
- Ballot Status
- Reviewed created ballots and ballots in the pipeline
- Illustrative Design Document Proposal
- Early discussions about an illustrative design to be a companion to NCSSRs
- This will probably be owned by Document Structuring Group
- Presentation Comments
- No comments

### Report from SCWG Validation Subcommittee

Presenters: Tim Hollebeek (Digicert), Wayne Thayer (Mozilla)
Note Taker: Wayne Thayer (Mozilla)

Tim gave an overview of happenings since Oct. He said that two secondary topics were raised:

- The acceptable redirects ballot has been hanging around and needs to be completed;
- The subcommittee is still planning to transition tasks from the Trello board to GitHub. Tim and Wayne will work on this in the next few weeks.

Tim went on to state that the subcommittee is focused on four main topics:

- _What to do about OUs_ – Fix current rules or transition away? The discussion on Tuesday indicated that the only option with Certificate Consumer support is to transition away from OUs in TLS certs. However, that doesn’t mean someone can’t propose a ballot to revise the rules.
- _Shorterning validation reuse period for DV_ – During the discussion it was agreed that issuance states is simpler, as long as ample lead time is provided for CAs to communicate the change.
- _Wildcard HTTP validation_ – Ryan asked for data from CAs to help determine the length of the transition period.
- _Certificate profile work_ – Ryan has made progress with table markdown formatting in the background. The profile work includes common-sense improvements to the rules that will need to be reviewed and discussed. There will also be clarifications because the current language is sometimes ambiguous. This work will be the focus of the subcommittee between now and June.

No questions were asked.

### Future face to face meeting schedule

**Presenter:** Dean Coclin (Digicert)  
**Note Taker:** Dean Coclin (Digicert)  

Future meetings were discussed. Dean said the summer 2021 meeting would be virtual, unless others objected, and he would send out a Doodle poll for the dates. The Fall meeting is proposed to be hosted by OATI and we will have to wait a bit to see if that’s going to be possible. Nick France said many countries are on lockdown and are prohibiting international travel, hence it’s hard to predict when that would be relaxed. Given the uncertainty and the timelines, no decisions beyond summer 2021 were made at this time. We will revisit this at the next F2F.

### Apple Root Program Update

**Presenter:** Clint Wilson (Apple)  
**Note Taker:** Enrico Entschew (D-TRUST)  

#### CT Policy Reminder

CT Policy changes announced, enforcement date moved back a few weeks to April 21, 2021. Open to feedback on the upcoming changes.

#### Full CRLs and CCADB fields

Efforts of the CAs, especially HARICA, to provide some basic automation to fill in the fields were appreciated. The same goes for the conversation with Ryan and Aaron.

#### New fields within CCADB to populate full CRLs or equivalent representation

Two different fields: Full CRL (a single URL for a CRL covering the entire issuance), which is preferred, or, alternatively, a JSON array of CRL URLs (TBI) which combined cover the entire issuance. Via API, fields will be dynamically updatable in the future

Expectations:

- Applies to all CAs / all issuance activity
- Expect to require at least one of these fields to be required for non-TLS-issuing CAs first

No policy at present that requires this to be filled. Will introduce a policy requirement at some point for non-TLS CAs.

Goal:

- Offset the need to rely upon OCSP, which causes some issues for Apple devices and users (e.g. inherently additional step required to fetch the OCSP response, that introduces failure as part of just establishing TLS connections).
- Improve, if not solve, revocation within the PKI they use.
- Interested in collaborating with CAs on platform-level revocation and ensuring this approach is scalable and sustainable. Other options may exist for tackling these problems, and open to exploring these other options, even though the focus right now is on full CRLs (If you are interested, please contact Clint Wilson or Curt Spann)
- Minimal disruption to end-user experience

#### Root Inclusion Process Update

- Working through the queue about 5x faster than in the past.
- Goal to move to a similar level of agility as asked for of CAs.
- Process starts with requesting inclusion via CCADB along with an email notification to Apple’s CA program mailbox. No need to follow-up, but you are welcome to do so.
- Working on improvements to the CCADB review flow to reflect Apple-specific needs.
- Review of CA (Documents, incidents, impact to Apple users) and communication with the CA
- Priority is given to existing CAs, and to removal of CAs, such as due to incidents, over new inclusion requests
- Decision will be reached and communicated with the CA

#### Questions

Wayne Thayer: Have you considered setting up a subcommittee and/or mailing list in the CA/B Forum to support collaboration with CAs \[around revocation improvements\]?
Clint: Fantastic suggestion. It’s something we’ve considered, and would be interested in what would be most valuable for CAs.
Wayne Thayer: It would be interesting to gauge interest and who would be willing/want to participate. If CAs are interested, setting up a subcommittee is not too much work.
Jos Purvis: Revocation has been an issue in the industry for a while. Lots of discussion about what’s acceptable and what isn’t. A subcommittee would be good to work through this.
(Support in the Chat from Tim Hollebeek and Trevoli Ponds-White to a Subcommittee)

### Cisco Root Program Update

**Presenter:** J.P. Hamilton, Jos Purvis (Cisco)  
**Note Taker:** No update was presented.  

### Google Root Program Update

**Presenters:** Ryan Sleevi, Devon O’Brien (Google)  
**Note Taker:** Neil Dunbar (TrustCor)  
**Presentation:** [/uploads/CABF_F2F_52_Chrome_Browser_Update.pdf][2]

#### Devon’s update on CT Plans shared to ct-policy@chromium.org Key Points

- Google Log policy to go at some point – Google should not be a critical dependency as a log provider
- Another CT virtual day planned
- Chrome 90 supports SCT auditing to ensure that CT logs are adhering to the requirements of Chrome policy
- Log Compliance monitoring on RFC 6962 and requirements increasing
- CT Log list shifting from static file to dynamic list – details coming soon
- Expiry Range enforcement has been pushed back
- Project work on Android is to enforce CT on Chrome dependent on dynamic CT log list

#### Ryan’s update to Chrome Root Program

Work continued to have as a goal of zero user visible disruption; goal for CAs to have a consistent, predictable model of how their certificates will behave on Chrome on all platforms. Still some edge cases to work through to ensure no disruption to users. If issues are likely to impact CAs, Google Chrome will reach out to them to work out any bugs or issues. Chrome does work differently on some platforms – not the desired goal.

Common question is “what is a TLS only PKI hierarchy”. Example given in diagrams of partitioned level 1 CA partitioned as TLS/SMIME, with issuance criteria under that; prior to that was a single TLS root and DV/EV/OV under that, with end-entities under that.

Also a question as to what the migration strategy for legacy roots with assurance levels higher up, rather than functional splits. Possible migration model would be legacy signing a new TLS root with assurance levels under that.

Requirement restated as to CAs requiring an incident report _to Google_, and not just public disclosure. Some CAs waiting weeks or months before disclosing. Incident Management should notify Google ASAP – full analysis not needed – a simple note saying “We are investigating” is enough. This requirement will become more important further on. No distrust yet, but it is important.

Reiterating to contact at chrome-root-authority-program@google.com

Jeremy (DigiCert) asked for timelines on some changes, like Chrome’s own root store.

Ryan explained that data collection on user impact is going on, to establish correctness and performance. Data is slow to come in. So there is an iteration cycle (not in CA facing cycle), but more in local enterprise configuration. So no timeline can be provided yet. New verifier has been launched on Linux and ChromeOS; Mac and Windows will follow.

Dean (DigiCert) asked how would this happen?

Ryan said that a new version of Chrome would happen. But possible that a multivariant version could roll with a 50/50 split of legacy/new root program & verifier, to ensure that the issues are minimal. Ryan explained that Chrome 88 on Mac has the ability to do this, but is not enabled currently.

Dean asked if the behavior is inherited on Chromium products.

Ryan explained that the process for launching such features to Chrome Stable users requires that they be enabled-by-default for builds from the main development branch (e.g. what drives Chrome Canary/Dev). So the change will be on-by-default for Chromium before it’s fully enabled to Chrome. Chromium-based browsers will have this as a default in their codetrees. Ryan gave the example of CRL Sets as being something which diverges across different Chromium-based browsers, such as Microsoft sharing in the October F2F their plan to switch to a Microsoft CRLSet instead of a Chromium CRLSet. \[In Chat\] Mike Reilly said that MS now consumes its own CRL Set, not Chromium CRL Set.

Dimitris asked would they treat an intermediate CA as a trust anchor.

Ryan said that it wouldn’t be an intermediate CA per se: it would be a root which just happened to have a certificate signed by a legacy CA Root.

Dimitris asked if that would be offline airgapped stored key material.

Ryan said that yes, it would. A full root equivalent.

Dimitris said that could introduce some audit difficulties.

Ryan said that he would want to simplify audits: the goal is to have a single audit span over all the new root and subordinates. He said that they understand that the audit engagement and audit report do diverge, so there may be some differences in how they engage and Google will help with those issues.

Dimitris asked about root inclusion requests when the CA may have the root key generation ceremony completed, but not yet have the audit report. Should the CA contact once they have some information, or wait until they have all the necessary information?

Ryan replied that they would prefer that CAs wait until they have enough information, according to the inclusion request priorities, to be prioritised correctly. He mentioned that WebTrust audits preferred – other audits on a case by case basis.

Bruce asked about the difference between a multipurpose root and a legacy root.

Ryan explained conceptually, they’re the same design. The multi-purpose example is for situations where a CA may need to be enabled for multiple trust purposes, but in root programs that may do things like constrain the number of roots, such as for size/memory reasons. The application to Google would be to use the TLS root hierarchy as the top anchor. The legacy root example is the same approach as multi-purpose, but is for CAs which already have roots included in products and are wanting to include them in the Chrome Root Program. It’s an example of “cleaning up” the existing hierarchy. New issuance would transition to paths through the new TLS root, which would keep compatability with those existing/legacy applications, while allowing them to apply to Chrome with just the new TLS-only Root.

Ian McMillan from Microsoft asked how the constraints would be observed (e.g. EKUs).

Ryan replied that while the diagrams are perhaps overly succinct. There is a version of TLS root which is self signed, and one which is signed by another root. While roots cannot have EKUs according to the BRs now, any version of a certificate which was cross signed would certainly have an EKU to constrain the certificate. The original diagrams had example certificates, but were removed because of complexity.

Paul (Entrust) asked why would one have a TLS root, versus an EV root which then issued TLS certificates.

Ryan replied that they wanted to focus on what could be done with the minimal disruption. He added that perhaps in the future, one could extend a TLS-EV root out of the prior TLS root. But the example given was so that CAs could transition to compatible hierarchies. This adds to simplicity of audits, since sometimes CAs have run into audit scope issues because of mixed purpose roots.

Pedro (OISTE) asked about audit reports. He asked when Google would expect audit reports to cover these single purpose root hierarchies.

Ryan said that CAs already have different reporting requirements (e.g. CCADB disclosure, disclosure of incidents for specific root programs). But this is not a requirement today, and there are still conversations to be had prior to this becoming a hard requirement. This presentation is more about “why”, rather than hard requirements.

Ben (Mozilla) asked if they would submit a subordinate CA, or must it be a self signed root.

Ryan said that there should be a root (self signed) CA, with a Root Key Generation Ceremony. A cross-signed version would exist, but that wouldn’t be used: Chrome would build the path to the self-signed version. This isn’t a hard requirement, but is the top priority for prioritizing CAs. The idea is to identify those CAs most aligned with user security.

Ali (Telia) asked if the policy would be reconciled in the Baseline Requirements, given that they can have separate requirements from the browser.

Ryan replied that this is an area for the root programs to take the lead and work with CAs. They would like to see the BRs improve and clarify scope. Google would like to see it in the BRs, but it is not a priority. But this is more of a desire to see a hierarchy which will best help the userbase. Eventually it may become a requirement.

Google recognize that root programs may have different requirements on size of hierarchies. Ryan does not think that this design will make it into the BRs in the next year; but he is up for discussion as always.

### Microsoft Root Program Update

**Presenter:** Karina Sirota (Microsoft)  
**Note Taker:** Ryan Sleevi (Google)  
**Presentation:** [/uploads/microsoft_cabf_52_update.pdf][3]  

Sebastian (GlobalSign): When you say you require testing, what e-mail do you use to notify the CA?
Karina: We use the alias for the CA from CCADB to communicate with the CA that may need to be impacted by testing.
Mike Reilly (Microsoft): To the testing point, we really want to encourage CAs to test. There have been some self-inflicted incidents caused by a lack of testing, and we really want to work with CAs to avoid that.

### Mozilla Root Program Update

**Presenter:** Ben Wilson (Mozilla)    
**Note Taker:** Clint Wilson (Apple)  
**Presentation:** https://docs.google.com/document/d/1PLTai4NQuucRvEIRxoV0gK4G5JXh7CbyqJMSO9tZmKw    
**Uploaded as PDF:** [/uploads/mozillaupdate-march2021.pdf][4]

(No questions were asked following the presentation)

### CCADB Update

**Presenter:** Kathleen Wilson (Mozilla)    
**Note Taker:** Dimitris Zacharopoulos (HARICA)  
**Presentation:**  https://docs.google.com/document/d/1wWmhVdVKf7Dflau4ka3_VUo-X8U6mAQgAxVExb9rZxY    
**Uploaded as PDF:** [/uploads/ccadb-news-march2021.pdf][5]

- CCADB release notes, includes a summary of updates from November 2020 and on
- CCADB API has a sandbox for CAs to test before switching to production. Contact Kathleen for access.
- CAs can only update their hierarchies
- CAs can only update Intermediate CA records

#### Additional comments

Ben: Some audit reports include CA certificate SHA256 hashes on a table which wrap on multiple lines. This doesn’t work in several cases. Auditors should prefer adding these hashes on a single line.

### Discussion of cabforum.org Website

**Presenter:**  Ben Wilson (Mozilla)    
**Note Taker**:  

## The Server Certificate Working Group was adjourned

# Thursday, 4 March 2021 – Plenary Meeting (Day 2)

## Server Certificate Working Group, cont’d

The Antitrust statement was read.

**Attendees:** Adrian Mueller (SwissSign), Ahmad Syafiq MD Zaini (MSC Trustgate), Aleksandra Kurosz (Asseco Data Systems SA (Certum)), Ali Gholami (Telia), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST), Barry Kilborn (Quo Vadis), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (DigiCert), Clemens Wanko (ACAB Council), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Vansteenberge (GlobalSign), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Iñigo Barreira (360 Browser), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jeremy Rowley (Digicert), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Kati Davids (GoDaddy), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Michael Guenther (SwissSign), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Ian McMillan (Microsoft)

### Guest Speaker: “Cryptography in a post quantum world”

**Presenter:** Dustin Moody, NIST  
**Presentation:** [/uploads/nist_pqc\_-\_30.pptx][6]  

### ETSI Update

**Presenter:** Arno Fiedler (Vice Chair ETSI ESI) and Nick Pope (Vice Chair ETSI ESI)  
**Note Taker:** Sebastian Schulz (GlobalSign)  
**Presentation:** https://documentcloud.adobe.com/link/track?uri=urn:aaid:scds:US:08fa88f2-d955-447e-9233-4bca7dcd75a9  

Arno Fiedler makes introduces himself and Nick Pope; Nick Pope begins on the presentation.

- No additional comments or questions are raised

Arno Fiedler closes with the announcement of TSP Forum and CA Day

- Focus will be on verfifiable credentials based on eID
- Governments are lookin at SSI, very relevant with updates to eIDAS
- The event would be possibly “hybrid”, both with on-site attendees and remote attendees
- There is some disagreement whether an in-person event scheduled for September is already achievable
- The “hybrid” approach is being called “the worst of two worlds”

ETSI TR-119460: https://www.etsi.org/standards-search#search=TR119460
ETSI Audit Attestation Letter Templates for download, Version 2.7 here: https://www.acab-c.com/downloads/

### Acab’c Update

**Presenter:** Clemens Wanko (TÜV AUSTRIA)
**Note Taker:** Enrico Entschew (D-TRUST)
**Presentation:**

In addition to the information in the slides, the following was reported by Clemens Wanko:

- CAs are encouraged to make their ETSI auditors aware of ACAB’C and the option to get a free ACAB’C membership.
- ETSI auditors are requested to use the current version of the ETSI Audit Attestation Letter Template. It can be found here:
  ETSI Audit Attestation Letter Templates for download, Version 2.7
- This morning, a CA’s current AAL was used to test the extent to which the audit attestation letter could be processed by the audit attestation letter validation tool. The new template is taking care of the requirement that no line, feed or page break in the SHA 256 fingerprint is accepted.
- ACAB’C offers that whenever a more detailed report on a CA is needed, e.g. on topics such as findings or methodologies on how the audit was conducted, this can be done on demand.

### WebTrust Update

**Presenter:** Jeff Ward (BDO), Don Sheehy (CPA Canada)
**Note Taker:** Andrea Holland (SecureTrust)
**Presentation:** [/uploads/F2F52-WebTrust-Update-March-2021.pdf][7]

#### Items mentioned in addition to slides

_Don Sheehy:_

##### WETSI – December meeting discussions

- Impact of ISO 27099. Once it is released, later this year, it might impact our base WebTrust service. Our initial principles and criteria were based on international ISO standards.
- Audit issues and audit techniques
- On-going reporting considerations

##### Impact of Covid-19

- Guide was developed for covid-19 that leveraged from SOC reporting from AICPA on remote audit

##### Practitioner Guidance for auditors

- Will be incorporating remote auditing testing techniques and any other updates

_Jeff Ward:_

##### Details Controls Reporting

- Reached out to clients to see what needs to be added to the report
- Tweaking based on risk profiles from the firms on the task force

##### Current Status of Updated WebTrust Documents

- Bridging of reports is possible for Code Signing

##### WebTrust Reports Available

- Key Protection is used for multiple keys are generated or one that is not used right away to make sure it is stored safely
- Applicability matrix has which reports are applicable when, for what, and the versions
- All the templates are on the website or in the process of being posted

##### Enhancement of CPA Canada Processes

- Focus on making sure have qualified practitioners
- Third party assessment from consulting firm looked at risk of the WebTrust program. Report not released yet, will report in June

No additional questions or comments

### CABF Website: Use Cases and Feedback

**Presenter:** Ben Wilson (Mozilla)
**Note Taker:** Jos Purvis (Cisco)

Ben: What we were talking about in Infra was to go over some use cases and then gather feedback about what we should do with the website. I have a mind-map we’ve created of the website with the idea that we would organize the home page and menu items to focus on the different working groups-instead of having the BRs, EVGs, it would be the different working groups. Then we would redo the Documents page and have that be the most current version of the documents and have a link to the archive of older versions. One of the things that Dean had asked is that we make it clearer for Interested Parties and what they want to do, so we have that as a use case now. The other two use cases are “current member wants to review most current version of a document” (which we discussed, and we’d also have document links on the WG pages). We wouldn’t delete any existing pages, we’d just add paths from the menus or pages. Another use case is “a CA/Certificate Consumer wants to join the Forum”. Mainly we want to gather some info about the membership’s needs or wants or requests.

Dean Coclin (DigiCert): Right now if I go to the Ballots page there’s a list of ballots. How is that populated–manual? Automatic?
Ben: It pulls it automatically. The way we’ve done it in the past is that pages are tagged with the ‘Ballots’ tag and then pages with that tag are pulled into that list based on that tag. So when we post a new ballot, we just tag it as category Ballot–then the table then generates based on that. We could play around with that to see that the most current one is at the top–I think it’s alphabetical right now, and we could have it show chronological.
Dean: I don’t see the code-signing ballots at all.
Ben: That might be because they’re not tagged.
Ryan Sleevi (Google): Yes. Dean have you been uploading the ballots to WordPress?
Dean: I’d have to refer that to Bruce.
Bruce Morton (Entrust): I think the answer is no: we’ve been posting them in the wiki, but we haven’t been putting them up on the site.
Ryan: That’s what I thought, and it’s something we’ve talked about in Infra–it’s a task for the chair and that’s part of the process for the chair to do (which they may not be aware of) to post it on WordPress with tags, along with the IP review process and so forth. The ballots are sorted alphabetically right now, which means the CSCWG stuff, if there, gets lost. Some of those tasks likely got overlooked as part of the first WG creation.
Bruce: Yep. Could we get some training on that process?
Dean: Agreed.
Trev Ponds-White (Amazon): Should those be added as use cases, like people updating the content on the website?
Jos Purvis (Cisco): Yes!
Trev: The other one I’d say would be relying parties that aren’t looking to participate but are looking for more info about the CABF and what it is. Basically people that use certificates and want to understand what it means when someone says “CABF rules say I can’t do X”–something that explains to them the context of the rules. Something I find not-a-good user experience is that the first page has info for the public and then says click for more, and then the next page does not in any way, shape, or form continue that thought or provide more info on that point.
Jos: I definitely agree.
Ryan: I agree as well, I think it’s not just relying parties. Its “what the forum does and doesn’t do”, because I think there’s confusion on that point. I know there’s some debate about that in the forum vs. how root programs work, but I think we can find consensus on _something_ about what these documents are and why they matter. So, “why you can or can’t get a cert” and “why a root program would require something more”. Trev: Yep. People think the CABF is a trust store or has the ability to make trust decisions. So these aren’t so much relying parties, they’re just people.
Jos: “I have a cert and I’d like to understand what it’s for.”
Trev: More, “I use a cert and I’d like to understand the rules that govern it or why you can’t use my rules.”
Ryan: Or thinking that the CABF is somehow an enforcement body.
Jos: One question that we get quite a bit is “The CABF says you can or can’t do this, what about this cert?” “Well, that’s a private cert or a code-signing cert or whatever”–with the division into working groups, people are confused about which requirements apply to which cert, and the rules don’t apply the same way.
Wayne: I think that relates to being able to ask questions. It seems like the questions@ email address is hard to find on the website, and we provide only a little info about the mailing lists. We could present the archives more clearly and make it possible to search for an answer to their question there before contacting us.
Trev: Some of these we can just put the answers to. And I definitely like the ballot pages themselves and find them really useful.
Dean: This is good, we’re getting a lot of info we can use in the Infra meetings to take apart the website.
Wayne: I’d add that documents are scattered hither and yon. Presenting a consolidated view of the documents is a priority.
Ben: That’s high on the priority list.
Trev: It would help if the documents had some kind of similar name-tag. The ‘Baseline Requirements’ seem like a general term, rather than specific to SSL/TLS, and then you go to that tab and some things on that tab are requirements and some things are guidelines or even just random page links in the drop-downs for each document set. We could solve this by putting requirements on a requirements page and then squaring the drop-downs (and potentially document names) so that all requirements docs are called requirements. For instance, the EV name suggests the EV guidelines are guidelines rather than requirements. Tim (in comments): Going to Proceedings → Minutes takes you to a short redirect page instead of taking you directly to the minutes.
Jos: The naming of the documents is larger than the website organization. Now that we’re looking at the organization of docs larger than the SCWG, we should consider modifying the BR and EVG names. Maybe we just need to change the nicknames for the BRs, but when I hear “Baseline Requirements” I assume they cover all the things, which they don’t (they just cover SSL), and we should potentially rename EVGs to EVRs as well.
Tim: The minutes list has all of the minutes, and it would help if those were separable/filterable by WG and by type (F2F vs. teleconference, e.g.).
Trev: It would be great if you could do that with Ballots _and_ Minutes, so you can see just the Infra ballots or SCWG ballots.
Tim: It’s the same interface so we should solve the same problem with it. For instance, three times per year I want to see all the Validation minutes for the last six months.
Trev: This is a nit, but it seems weird that the NCSSRs are in a Resources dropdown and the BRs dropdown.
Ben: The thing I was thinking–and some of this might be duplicative–but if we had a page called Minutes, you might have things separated out by WG. But you might also have WG pages that have all the content for that WGs. Which might be duplicate information, but isn’t it better to have multiple ways of getting to the same information?
Tim: Yes. Don’t duplicate information, but every relevant page should have a path to get where you’re going to next.
Jos: Duplicative paths, rather than duplicative information.
Trev: That goes along with the concept of use cases. We could probably consolidate some of the pages. I have so much feedback on this.
Jos: Great, please send it to Ben or the Infra subcommittee.
Trev: The About Us dropdown has leadership and so forth. Have the WGs list the leadership, their archives, their contact emails, etc.
Ben: I was thinking if we had the WGs across the top then people don’t have to click on About Us.
Trev: Yes.
Jos: I would encourage anyone that has more feedback to contact the members of the Infra subcommittee so we can incorporate it into our construction efforts.

## The Server Certificate Working Group was adjourned

[1]: /uploads/f2f_52_summary_presentation.pdf
[2]: /uploads/CABF_F2F_52_Chrome_Browser_Update.pdf
[3]: /uploads/microsoft_cabf_52_update.pdf
[4]: /uploads/mozillaupdate-march2021.pdf
[5]: /uploads/ccadb-news-march2021.pdf
[6]: /uploads/nist_pqc_-_30.pptx
[7]: /uploads/F2F52-WebTrust-Update-March-2021.pdf