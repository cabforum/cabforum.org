---
aliases:
- /2022/06/06/2022-06-06-minutes-of-face-to-face-meeting-in-warsaw-poland/
author: Ben Wilson
date: 2022-06-06 22:49:55
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 56 Meeting in Warsaw, Poland, 6-8 June 2022
type: post
---

## CABF Face-to-Face Meeting 56

# Day 1 – June 6, 2022

## Attendance

Dean Coclin, Corey Bonnell, Aleksandra Kurosz, Dustin Hollenback, Ben Wilson, Clemens Wanko, Dimitris Zacharopoulos, Iñigo Barreira, Martijn Katerbarg, Paul van Brouwershaven, Andreas Henschel, Arnold Essing, Stephen Davidson, Peter Miskovic, Jozef Nigut, Aneta Wojtczak-Iwanicka, Kateryna Aleksieieva, Atsushi Inaba, Michał Malinowski, Wojciech Trapczyński, Mike Agrenius Kushner (Guest), Henrik Sunmark (Guest), Aleksandra Ilnicka, Anna Sikorska, Leo Grove, Huseyin Kuran, Robert Poznański (Guest), Sissel Hoel, Mads Henriksveen, Tomasz Litarowicz, Ewelina Chudy, Paulina Karwowska

**REMOTE**: Ryan Dickson, Bruce Morton, Trevoli Ponds-White, Doug Beattie, Rae Ann Gonzales, Ian McMillan, Steven Deitte, Wendy Brown, Don Sheehy, Jeff Ward, Curt Spann, Pekka Lahtiharju, Daryn Wright, Wayne Thayer, Roman Fischer, Clint Wilson, Adam Jones, Raffaela Achermann, Tadahiko Ito, Joanna Fox, Rachel McPherson, Fumihiko Yoneda, Yoshiro Yoneya, Sooyoung Eo, Ho Geun Yoo, Michelle Coon, Brittany Randall, Li-Chun Chen, Aaron Poulsen, Marcelo Silva, Adam Clark, Tim Hollebeek, Heather Warncke, Michael Slaughter, Xiu Lei, Antti Backman, Andrea Holland, Israr Ahmed, Lynn Jeun, Vijayakumar Manjunatha, Prachi Jain, Daniel Jeffery, Tyler Myers, Hazhar Ismail, Katsuyoshi OZAKI, Yoshihiko Matsuo, Janet Hines, Niko Carpenter, Nargis Mannan, Nick Pope, Arno Fiedler, Karina Sirota, Rebecca Kelley, Zurina Zolkaffly, Khairil Nizam, Adrian Mueller, Rich Smith, Joseph Ramm, Corey Rasmussen, Tsung-Min Kuo, Eva Van Steenberge, Chris Kemmerer, Michael Sykes, Tom Zermeno Jeremy Rowley, Ashish Dhiman, Roland Yiu

## Approval of CABF Minutes from last teleconference

**Leader:** Dean Coclin (Digicert)  
**Minutes:** Approval was postponed so members can have time to review the minutes which were posted late.  

## Future face to face meeting schedule, fall election discussion, working group chairs

**Leader:** Dean Coclin (Chair)  

Presentation: [Forum Election Summary][1]

**Minutes:** Volunteers were requested for 2023 meeting hosts. Interested parties should contact Dean. A discussion around the fall election and the allowance of WG chairs to be re-elected as the WG charter is vague in that regard. Tim and Dimitris believe the Forum charter should be revised to specifically allow this. Tim to draft revised language.  

## Browser Updates

### Mozilla Root Program Update

**Leader:** Ben Wilson (Mozilla)  
**Minutes:** Dimitris Zacharopoulos (HARICA)  
**Presentation link:** [Browser News – Mozilla][2]

**Discussion outside the presentation:** No additional discussion or questions.

### Google Root Program Update

**Leader:** Ryan Dickson (Google)  
**Minutes:** Doug Beattie (Globalsign)  
**Presentation link:** [Chrome Browser Update][3]

Ryan’s presentation had these 3 main agenda items; please see the presentation for details.

#### 1. Chrome Root Program Updates

**Update Summary:** Chrome is continuing to make progress on establishing their own root store

## Detailed Updates

- Although, today, Chrome integrates with platform root stores and certificate validation processes, there is a collection of CAs that are planned for the initial release of and transition to the Chrome Root Store taking place later this year.
- Until very recently, the Root Store was managed by a policy published in 2020 that outlined the set of ongoing requirements and commitments for the CA operators included in the initial store. The initial policy also outlined how the initial set of roots targeted for the Chrome Root Store would be maintained and updated until Chrome’s CA application process opened.
- An updated version of the Chrome Root Program Policy was recently published at https://g.co/chrome/root-policy
- The updated policy immediately replaces the original version from December 2020, but many requirements are future dated.
- Ryan requested CA operators review the updated policy, and to reach out to chrome-root-program@google.com with questions.
- Ryan reviewed the Chrome Root Program’s priorities, originally shared at the February F2F, and discussed how several updated policy requirements aligned with those goals.
- Notable changes for CAs included in the Chrome Root Store: an annual self-assessment process beginning in 2023
- Notable requirements for applicant CAs: CA certificate key material “freshness”, dedicated-use hierarchies, disclosure of domain validation methods in use
- Chrome is also exploring future requirements to further align its program policy with the goals and priorities discussed earlier. Some items include: limiting the duration CA certificates are distributed as trusted by the Chrome Root Store, phasing-out multipurpose root hierarchies, promoting automation, and applying consistent audit expectations for subordinate CAs. Ryan is looking forward to working with members of this group and hearing their feedback related to the items presented in the future.
- The Chrome Root Program will use the CCADB and is planning on opening up applications in the fall
- Chrome is continuing its gradual roll-out of new features related to the Chrome Root Program, including the Chrome Certificate Verifier and Chrome Root Store.
- Ryan shared general reminders for CA operators.

#### 2. Certificate Transparency Updates

**Update Summary:** No significant updates since the February F2F. A few reminders were shared.

## Detailed Updates

- Technical enforcement of Chrome’s updated CT policy began in Chrome 100. This includes removal of the “One Google Log” requirement, and aligns SCT expectations with Apple’s policy. Dropped the 1-Google log requirement earlier this year. See more at https://goo.gl/chrome/ct-policy.
- CT Log Policy has been updated to allow log operators to enforce acceptance of certificates based on EKU (id-kp-serverAuth). See more at https://goo.gl/chrome/ct-log-policy.
- CT enforcement in Chrome on Android landed in Chrome 101
- Google is still working to turn-down its legacy, non-shared Logs. Advance notice will be shared when these efforts restart.

#### 3. General Browser Updates

- Ryan detailed the planned deployment schedule for features related to the Chrome Root Program Launch. He indicated that a “backup“ slide included in the presentation discusses testing procedures using Chrome Canary.
- Updated contact email: chrome-root-program@google.com
- Policy page reminder: https://g.co/chrome/root-policy

### Apple Root Program Update

**Leader:** Clint Wilson (Apple)  
**Minutes:** Dustin Hollenback (Microsoft)  

## Presentation link

## Root Program Updates

- TLS and S/MIME
- Closing out fall updates now and starting spring updates in July
- VMC
- Root program is being added to CCADB

## Dates

- 2022-04-01
  - S/MIME Certificate Profile Requirements
  - CA Disclosure in CCADB
- 2022-10-01
  - Full CRL disclosure

## Technical Enforcement

- Cross-certified CAs treated the same as subordinate CAs
- Name Constraints have path building inheritance

## SHA-1

- SHA-1 CertIDs are supported now, but plan to move to SHA-256 CertIDs for OCSP requests
- Apple requests that CAs investigate compatibility

## CT Log List

- Cleaned up log entries to make it more efficient for devices to consume the log list
- Additional Cleanup in Fall that won’t impact any existing CT Log lists used today

## Private Relay

- CA Communication will be coming this month about Private Relay so that CAs are aware

## Questions

- Dimitris (HARICA) asked if SHA-1 will be discussed at IETF forum level
- Clint (Apple) said that it could be a combination of IETF, the browsers, and other forums
- Tim (DigiCert) encouraged Clint to bring this up at IETF. He suggested going to all of the forums to discuss.

### Microsoft Root Program Update

**Leader:** Karina Sirota (Microsoft)  
**Minutes:** Martijn Katerbarg (Sectigo)  

## Presentation link

**2022 Goals**

- Bettering all our, primarily internal processes for CAs

## Program Requirements Reminders

- Current requirements are posted at https://aka.ms/rootcert
- Any question regarding the current requirements can be sent to msroot@microsoft.com
- For any issues or suggestions for the Microsoft Trusted Root Program they can now be provided on the GitHub page: https://github.com/MicrosoftDocs/security/issues. Microsoft has requested to also send an email to msroot@microsoft.com simultaneously.
- Testing will occur for up to 2 months before release date. Changes for specific release months should be requested no later than 3 months in advance of the release

## Testing

- Root Store Certificate Trust List is updated monthly, except for December
- Update packages are available for download and testing at https://aka.ms/CTLDownload
- Please confirm testing has been completed when asked by Microsoft!
- Notifications will be sent out if to any CA that has changes in an upcoming release once the test changes are live. CAs should test within 5 minutes days of this notification
- Testing instructions are available at https://docs.microsoft.com/en-us/security/trusted-root/testing
- Any changes for the end of August release need to be in by email no later than June 17th

**Communications Reminder:** Program audit requirements can be found at https://aka.ms/auditreqs.

## Guest Speaker: Quantum Cryptography

**Presenter:** Robert Poznański (Certum)  

## Presentation Links

[Post-Quantum Cryptography and Trust Services][4]

## Potential Working Group on standardizing terms across the Forum

**Leader:** Clint Wilson (Apple)/Trevoli Ponds-White (Amazon)  
**Minutes:** Stephen Davidson (Digicert)  

Defined terms are important. In CABF there are now multiple stds – but sometimes the definitions for the same items are not totally consistent across the stds.

Gives example of slightly diverging definitions in CS, TLS, S/MIME BRs for CA.

Approaches could be 1/ use cross referrals between requirements (as defined in section x of TLS BR), 2/ Duplicate defined terms in each BR, 3/ CABF-wide set of defs.

Stephen Davidson supported from context of S/MIME BR where defs were friction in writing new standard and it made sense to have a central glossary, so the current WG could focus only where a def needed to be extended or restricted. He supported the idea of a BR of BRs for other areas of the CPSs like section 8 audit which did not significantly deviate between BR types. Tadahiko Ito and Inigo Barreira supported the idea.

Tim Hollebeek said that sorting out the defs was a required first step towards doing BR of BRs.

Dimitris Zacharopoulos said this was a recurring idea raised in the past by Tim, and would require the individual WG’s to opt in under their charters.

Ben Wilson noted that most orgs had central glossaries. Dean Coclin asked if we needed a separate WG. Tim said the defs are normative so a small dedicated WG really should be used to isolate the CABF from IPR issues. The WG would create a document, and the individual WGs would have to ballot accepting it.

Tadahiko noted that this may impact CA CPSs that currently ref the different BR documents.

Stephen noted that there would have to be clear allocation of responsibilities between the Definition WG and the other WGs, and handling how WG’s can propose new or changed defs, otherwise the defs would quickly begin to deviate again in the “type” BRS. He gave the example of how the TLS BR dealt with conversion of non ASCII characters in the context of TLS but the sense was slightly different for S/MIME and called for an expanded definition. It would be important to explain how “niche” changes would be dealt with. Trevoli Ponds-White noted this would be for core defs, and that the niches would probably stay in the WG documents. Paul van Brouwershaven suggested that an automated definition check could make the documentation effort more useful and accurate. Clint asked CABF members who were interested in assisting in writing the charter to contact he and Trev.

## SMCWG Meeting

Leader: Stephen Davidson (DigiCert) Minutes: Mads Stephen: Discussion of feedback to the draft SBR: the goal today is to go through the feedback and try to solve open issues. We hope to be able to create a ballot after the next WG meeting.

Stephen opens the spreadsheet with comments; feedback have come by email, github etc – feedback came in 10 mins before the meeting

Section 1.1: Comment on the overview from Globalsign, missing some info on the purpose of the different types of certificates. This will be done.

Section 3.1.4.2: Accent substitution: PR from Teletrust cleared up the text. GlobalSign: is non-latin chars like Chinese available? Stephen suggests to “be silence” on this topic. Clint W: agree.

Section 3.1.4.2/.3: Same question from Inigo (the CA should define substation rule) – change to a MAY. Tim H agrees, this will be changed.

Section 3.2.2: Use of permitted/excluded subtrees: Ashish described his feedback and Dimitris replied; We use name constraints with domain names; we are not restricting this to the host part, only the domain part. I don’t see any issues with excluding subtrees for this purpose. S/MIME is only email addresses. Stephen wants someone to add some text to fix this language. Ashish proposes some changes.

Section 3.2.2.2 (RV): Resets the old RV when a new one is created – shorter lifetime and the new one kills the old. The RV must be recreated for each instance of the email. This was picked from NIST 800-35? Lotus proposed this – and Stephen tried to recap the arguments from him. Clint is in favor of keeping the text as is. Doug: this is inconsistent across different standards. Paul replies that the requirement for a new RV for each email within 24 hours before the the first one is used is unclear. Tim: try to address what the problem to be solved and not overspecify the procedures. Stephen: compromise; 24 hrs but allow to resend. Tim: agreed.

Section 3.2.2.4 (CAA): Stephen explains why this section needs more text than ‘no stipulations’, this section will grow in the next version. Tim: agrees. Stephen suggest using ‘No stipulations’ – with a note.

Section 3.2.3.3: Disclosure of sources; only for QGIS? Stephen: the text is taken from TLS, but extended a bit. Any data source used for validation should be disclosed. Not necessary for “secondary” sources used to verify information from other sources. Change to “The CA shall disclose sources used for…”.

Section 3.2.4.1 option 4 (line 16): Could additional adopted standards be allowed? Stephen is negative to this. Dimitris: this looks like any other method approach and should be avoided. This is similar to Code Signing and this type of language is used in ETSI TS 119 461? Stephen: we should be careful to open this up.

Wendy: if this is about eIDAS Regulation – seems a bit EU centric – what about mDL – ISO/IEC 18013-5? Stephen: No, this is about digital signature methods. I have listed the eID schemes, while the ISO standard is broader? If we can describe the standards that the CA could rely on, they should be added to this section. CDS should be removed.

Section 3.2.4.2: Should not be necessary to re-validate if an identity document has expired. There was a general agreement on the last call.

Section 4.1.2: When Enterprise RA are involved, they may accept the Subscriber Agreement on behalf of certificate holders? Ben: could this be explicitly stated? It follows from the definitions. Tim: we should explicitly state it and continue. Stephen: a clarification of this text is suitable. Doug: this could also be a system, not only organizations or persons.

Dimitris: Sponsored vs Individual: the RA will still validate that I am the employed at the enterprise. Stephen: if the certificate is an Enterprise RA cert, the RA is responsible for the relation. The individual is the one that signs the Agreement. Wendy: I think the authorized representative already covers this. Eva: Some text about affiliation – allow for the Enterprise RA. Stephen knows what to look for.

Section 6.1.5: Propose to increase the key length, Stephen don’t want to address this now.

Section 7.1.2.2: Any prohibited value? Wendy: it should be allowed to include other extensions. Tim: the BR has never been “default denied”. If we want to include allowable extensions, this should be easy to add. Stephen: we here specify what the CAs SHALL not and what they are not allowed to do. Extensions are also covered in 7.1.2.4.

Ben: Can we go back to CPS: should we say something about CP OIDs to be used? This is included in 7.1.6.1. Should we include ‘no stipulations’ in 7.1.2.2. Tim: if we want to be able to build chains according to RFC 5280, we should have this. anyPolicy is allowed according to existing text.

Section 7.1.2.3 (CRL): OCSP is not mandatory for S/MIME (in root programs) – so CRL is mandated to provide revocation status service. Dimitris: the broad use of S/MIME certs should require at least one. Inigo: For ETSI OCSP is mandatory, but it could be one or both. Stephen comes up with some language.

LDAP and FTP are allowed in the SBR; but should they be removed? Stephen thinks that LDAP is much used in the Enterprise, but not FTP. Corey: allows for the clients to have some flexibility – in the legacy profiles. Stephen proposes to keep this.

Wendy: is the OCSP always using HTTP? Corey: the rfc 6961 allows for LDAP.

Section 7.1.2.4 (SC logon); Ben: we should not open up for using S/MIME besides email. Stephen: this is not the intent. Some discussion about how to interpret this text. Ben: if this is in BR; we should take a look at that. Tim: this should be changed.

Dimitris: if you put some EKU in the certificate, the CPS should say something about how this is validated. Tim: agree, Tim will propose a readline for this.

Section 7.1.4.2.2 (Orgidentifer): possible conflict with ETSI. Creates a possible conflict for CAs issuing certs both according to ETSI standards and for US organizations.

Section 7.1.4.2.2 (OU): allowed if it’s possible to validate it. Stephen argues that this is ok.

Eva: did we solve the issue of orgIdentifiers? Stephen: we have not identifies any example of organization that would not have any NTR, VAT, LEI etc.

Dimitris: Public libraries could be an example. Tim: there is two solutions to this problem: could also include this in the OU. We have a similar issue within EV. Stephen: we could add additional mechanisms for this. Tim: keeping the expectations for governmental organizations as for EV could be an option.

Stephen: could add the same “wiggle room” as for EV. Where everything else fails, add Government Entity (GE) in the certificate instead. Keep it consistent with EV – this could be accomplished.

Section (7.1.4.2.4/5) Mandating Country? Stephen argues for keeping Country as a MAY. Inigo. I agree with this, but we should be consistent across different certs.

Dimitris: Inigo is right – having a org.name without the Country seems problematic. Rich Smith also agrees. Stephen agrees and will change this. Wendy is in favor of keeping it as a May.

Some discussion about which country should be used in this case – that’s why May is still an option. Corey: the Country name should have the same Country code as in the OrgIdentifier.

Paul: a subsidiary could be used in the OU, this Country could also be used. If no Country is included, this could be misleading. In some countries, also some state information could be required.

Wendy: Please do not start to include State and Locality. Tim: operational existence should not be included, but legal existence – where the legal Country should be included. It does make sense to include this in the Country.

Wendy: I am as an individual might not be located in California, even if my company is registered there. A sponsored certificate is issued to a natural person.

Paul: As the focus should be the natural person, the Country could follow the person and not the company.

Stephen; the current wording supports this options, but that’s another discussion.

Corey: Why do we require state or locality if we do not require C.

Rich Smith: We should not require operational existence but might be a function of the jurisdiction.

Paul: Which RP will look into these data and understand what this about?

A lot of discussion about the content of the Org.Information in the certs. Must be able to disambiguate between organizations in a given jurisdiction. If the OrgIdentifier includes an LEI which do not include an jurisdiction, then we might need to add some more information. For the LEI record, the country is set to ‘XG’.

The LEI is not an official register, the LEI refers to this information. Some discussion about LEI identifier vs company information for this legal entity.

Change Country to SHALL and require state and localliy if this is necessary to disambiguate the organization.

Stephen: I will create a new redline based on this feedback and encourages all groups to add comments.

# CABF Face-to-Face Meeting 56: Day 2

## Attendees

See Day 1 list with the addition of the following: Nick Pope,

## Continued discussion of Fall elections

**Leader:** Dean Coclin (DigiCert)  

**Presentation:** [Forum Election Summary][1]  

**Minutes:** Tim to propose a ballot and will decide if re-elections will be allowed for Forum Chairs.  

## Audit Updates

### ETSI Update

**Leader:** Nick Pope (Vice Chair ETSI ESI)  
**Minutes:** Clemens Wanko (TUV AUSTRIA)  

## Presentation link

Nick Pope informed about the following updates from ETSI:

- ETSI Standard TS 119 461 on Identity Proofing: workshop held beginning of June discussing latest developments and updating the TS.
- ETSI Standard EN 319 411-1, on issuing certificates ist uder update. 8 detailed change requests were discussed of which four are ratified in the meanwhile. Furthermore the 411-1 receives updates to be in line with TS 119 461 (see above).
- ETSI Standards EN 319 412-x on Certificate Profiles: four change requests ratified and one under discussion.
- ETSI Standard TS 119 403-2 for CABs auditing PTC CAs: updates taken over into TS in order to adopt to AALV requirements.

Further information was provided with regard to:

- ETSI standards adoption around the world and ETSI activities to adopt and align with standards in other areas of the world.
- The upcoming EU Identity Wallet for EU citizens and connected with this, the options for Qualified Trust Service Providers.

ETSI already identified 40 requirements resulting from eIDAS 2 which are covered by the current ETSI standards. Ten further standards require updates. Three new standards for eIDAS 2 currently have high priority: Profiles for Attribute Attestation, Policy and security requirements for Attribute Attestation Services, EU Digital ID Wallet interfaces for trust services and signing.

### ACAB’C Update

**Leader:** Clemens Wanko (TÜV AUSTRIA)  
**Minutes:** Andreas Henschel (D-TRUST)  

## Presentation link

- ACAB’C is growing, 7 new members aplying, 9 existing, 17 overall expected within this year
- A list with all members with CAB status available (see presentation)
- Certification program on audit harmonization in preparation
- ACAB’c would like to ask for access to the AALV Tool
- eIDAS 2.0 is coming up including regulations and directives regarding Cyber Security, GDPR, NIS 2 (directives has to be interpreted and implemented on national level → NIS 2)

## Q&A

Ben – When is the adoption deadline of NIS 2?
Clemens – Still in discussion. eIDAS 2 will set a date. Probably not before 2023 plus transition period.
Dimitris – there will be a two year transition from the date the directive comes into force for implementing national legislation

### WebTrust Update

**Leader:** Jeff Ward (BDO), Don Sheehy (CPA Canada)  
**Minutes:** Ben Wilson  
**Presentation link:** [Webtrust for CA Update][5]

Jeff: Reviewed Slide 2 – Outline of Discussion Topics

Slides 3 and 4 – Collaboration with ETSI is focused on improving reporting formats and templates, etc.

Slides 5 and 6 – Covid-19 Impacts – Practitioner Guidance includes procedures/model for similar types of disruptions going forward (information is made available electronically to practitioners through the CPA Canada / WebTrust website).

Slide 7 – Temporary, 6-month COVID seal can be used for Covid, but not when the practitioner knows that there will be qualifications.

Slide 8 – Updates to Criteria (none to report since last F2F briefing).

Slide 9 – Jeff reviewed current versions of WebTrust criteria.

Slide 10 – Updates to Reporting Guidance – Working on new Verified Mark Certificate criteria

Slide 11 – Don presented new projects and changes. Task Force has worked on separate Network Security report. Mozilla has requested templates for auditor qualifications statements. Versions of qualifications statements are prepared for Canada, U.S. and International. Since CPA Canada is not “involved” a disclaimer is being added to the templates.

Slide 12 – Carve-out reports – what if WebTrust has to address outsourcing – tasks outsourced to a third party provider? Usually auditor has been able to audit the entire operation. However, for example, a data center’s operations might be “carved out”. Issue is how should these be treated when other, more substantial tasks are outsourced, like a cloud HSM? Task Force is working on preliminarily position statement, but would like to discuss this also with ETSI and browsers.

Slide 13 – Will be working on S/MIME requirements when the S/MIME requirements go to ballot and will discuss this again at the Berlin meeting.

Slide 14 – Practitioner Guidance. WebTrust task force will be reviewing changes to SOC2 in the U.S.

Slides 15 and 16 – Detailed Controls report – will be provided when requested by browser community. (Primary reports will still be the short-form report, that when not qualified, are accompanied with the seal.)

Slide 17 – Full Lifecycle – Root Key Generation – Key Protection reports. Point in time reports include transportation, migration and destruction, etc.

Slide 19 – Reporting Structure / Roles – Jeff Ward – Chair, Don Sheehy – Vice Chair

Slide 20 – Questions. Re: CPA Canada and China. Since the last F2F meeting, the situation was resolved as follows: CPA Canada will not address directly with mainland China, but a Hong Kong auditor can list China as an area and provide seals for a CA located in mainland China.

## Continued discussion of Fall elections

Leader: Dean Coclin (DigiCert) Minutes: [See attached presentation][1]

## Summary Presentations from Working Groups

### Server Certificate Working Group (SCWG)

**Leader:** Doug Beattie (GlobalSign), Vice-Chair, SCWG  
**Minutes:** Aneta Wojtczak (Microsoft)  

Accomplishments since last F2F:

- Ballot SC54 – Onion Cleanup Ballot
- Ballot SC51 – Reduce and Clarify Audit Log and Records Archival

Those two passed since last F2F meeting → SC54 – April 23, 2022, SC51 → April 15, 2022

Ballots under consideration:

- Debian Weak Keys Ballot – this effort is driven by Chris Kemmerer
- SLO/Response for CRL & OCSP Responses – David Kluge from Google leading the charge there.

Validation Subcommittee → The main focus of work was the initial version of the certificate profiles ballot.

Some of the topics covered since last F2F:

How we will handle transition from the current versions of certificate profiles to the new versions. This will be covered in more details tomorrow.

The project work tracking was moved from Trello to GitHub.

There was some discussion about EV guidelines regarding “3-second rule” for downloading CRLs for EV certificate chains and clean up EV Enterprise RA language. Those two items will be covered in more details tomorrow during the Validation subcommittee meeting.

### Code-Signing Certificate Working Group (CSCWG)

**Leader:** Bruce Morton (Entrust)  
**Minutes:** Bruce Morton  

Since the last F2F meeting in February 2022, we have passed two ballots to cover the following:

- Subscriber Private Key Protection
- CSBR to Pandoc/RFC 3647 format

Now that the format ballot is done, we will move ahead with ballots to address the following:

- Signing Service requirements
- High Risk Applicants
- Remove references to TLS BRs
- Time-stamp updates
- Open-Source Project Applicants

### S/MIME Certificate Working Group (SMCWG)

**Leader:** Mads Henriksveen (BuyPass)  
**Minutes:** Stephen Davidson (DigiCert)  

Draft is complete! https://github.com/cabforum/smime/blob/preSBR/SBR.md

Since last F2F, discussions to resolve outstanding issues such as:

- Organizational validation, eventually settling on OV with organisationIdentifier
- Pseudonym
- serialNumber
- Internal audit topics

Just concluded 30-day “pre-ballot” discussion period to emphasize feedback from WG orgs. Now sifting comments for resolution in this version, or hold for future version.

Target to move to ballot at end of summer!

- Ballot: 7 day discussion / 7 day voting
- 60 day IPR review
- 8 month effective date

### Network Security Working Group (NETSECWG)

**Leader:** Clint Wilson (Apple)  
**Minutes:** Adam Jones (Microsoft)  

- Focus and Simplify NSRs – Targeting requirements unique to Web PKI
- GitHub for issue tracking
- Restart work on variants in level of security required for discrete components of CA infra
- Continuing on risk assessment process
- Reviewed by external experts for feedback
- Presentation around risk assessments
- Reoriented engagement
- Looking to provide example to forum for how CAs can perform these risk assessments
  - One scenario
  - Narrative
- NSR definitions updates
- Raised topic around universal definition working group
- Formal understanding of network security requirements for individual components of CA infrastructure
- Usage of cloud services – need to update requirements to reflect changing reality
- True understanding of high security zones and requirements (are vs. should)

### Infrastructure Subcommittee

**Leader:** Ben Wilson (Mozilla), Vice-Chair, Infrastructure Subcommittee  
**Minutes:** Martijn Katerbarg  

Quick demo of the new member application was given. Forum hosts and WG Chairs have been asked to register meetings and attendees in the new system for testing. The hope is to get this towards production use by the next F2F.

Continuing to reorganize the website

Our webpage uses an old PHP version (version 7), which means we may need to take down the website a day. The theme needs to be updated before we can upgrade to PHP 8.

Ballot shepherds that can help with any issues and setup a process for creating ballots using GitHub is still on the backlog.

## CSCWG Meeting

Leader: Bruce Morton (Entrust) Minutes: Dean Coclin Bruce read the anti-trust statement. Attendance: In the room: Leo Grove (SSL.com), Josef Nigut (Disig), Atsushi Inaba (Globalsign), Mike Agrenius Kushner (Keyfactor-Guest), Heinrik (Keyfactor – Guest), Clemens Wanko (ACAB-c), Aneta Wojcak (Microsoft), Martin Karterbarg (Sectigo), Corey Bonnell (DigiCert), Ben Wilson (Mozilla), Dean Coclin (DigiCert), Inigo Barreira (Sectigo), Dimitris Zacharopoulos (Harica), Tomasz Litarowicz (Certum), Paul vanBrowershaven (Entrust). Alexksandra Kurosz (Certum), Paulina Karwowska (Certum), Ewelina Chudy (Certum), Anna Sikorska (Certum), Aleksandra Iinicka (Certum). On the line: TIm Hollobeek (DigiCert), Wayne Thayer (Fastly), Aaron Paulson (Amazon), Adam Jones (Microsoft), Andrea Holland (SecureTrust), Bruce Wei (TrustAsia), Chris Kemmerer (SSL.com), Don Sheehy (WebTrust), Doug Beattie (Globalsign), Ian McMillan (Microsoft), Eva VanSteenberge (Globalsign), Hazhar Ismail (MSC Trustgate), Jeff Ward (WebTrust), Joanna Fox (Trustcor), Kharil Nizam (MSC Trustgate), Li-Chun Chen (Chungwa Telecom), Lynn Jeun (Visa), Marcelo Silva (Visa), Michael Sykes (SSL.com), Nargis Mannan (SecureTrust), Niko Carpenter (SecureTrust), Rollin Yiu (TrustAsia), Tadahiko Ito (Secom), Thomas Zermeno (SSL.com), Trevoli Ponds-White (Amazon), Tsung Min-Kuo (Chungwa Telecom), Tyler Myers (GoDaddy), Vijay Kumar (e-Muhdra), Wojciech Trapczynski (Certum), Yoshiro Yoneya (JPRS), Zurina Zolkaffly (MSC Trustgate).

The attached presentation was used as a guide for the meeting. [Code Signing Certificate Working Group Presentation][6]

Bruce opened by discussing the elections in the fall. Dean said elections will be opened 60 days prior to the expiration date, per the bylaws. Please start thinking of running if you are interested.

The first topic was the Signing Service Requirements (see slide 7). Bruce reviewed each bullet point. Tim said that one of the purposes of the signing service was to prevent fraud and we should add something about how the subscriber authenticates to the signing service.

Bruce then ran through the marked up version of the document to highlight the changes with regard to the signing services. (the marked up document, including notes and comments from the meeting, is included as part of the minutes). Dimitris suggested that having to authenticate for every signing in the same session would be problematic. Ian agreed and a discussion was had of some sort of token for a limited time, as a suggestion. This needs to be worked out. A discussion about changing key requirements from 140-2 to 140-3 took place and is reflected in that section of the document. A discussion about audits took place and section 8.4.1 was modified accordingly.

The next topic was around rules for cloud based key generation for a signing service (slide 8 in the deck). Inigo asked if they cloud provider needs to provide information for the audit (i.e. proof of keys in HSMs). How does one determine if it is in the cloud? Auditors would have difficulty accessing the cloud location. Tim asked how does one know that the HSM is handled securely? Ian said from what he has seen, the cloud providers provide a lot of certification proof as part of their services. But how do they prove they are a certified cloud provider? Dimitris said there are some ISO standards for data centers and cloud providers to cover that. Those could be added to the CSBRs. Tim said we should look at the cloud HSM providers and see what specs they follow. Inigo said that ENISA has some sort of cloud security specification which is more strict but not specific for PKI. Don said that cloud does bring up an issue of auditability and controls. A short discussion of audits for clouds took place.

What if the signing service stored the keys in the cloud but had the HSM onsite? Various opinions on how this work were discussed. Clemens said depending on the device certification, this would be covered.

The next topic was on high risk applicants. Nothing needs to be done before Nov 15th.

Timestamp updates: Slide 10 was discussed. Ian to follow up with Karina on the proposed update. A discussion about destroying the old key once the new key is in production took place. All agreed that was a good idea. Validity periods were discussed. Appears to be some benefit to Java of having 135 month validity. Bruce suggested a max of 54 months. Regarding the TS server Dimitris said it should be offline. All agreed. Bruce asked if the TS server should have its own CPS (i.e. TPS). There may be items that need to be disclosed. Tim didn’t think there was value there.

Meeting minutes of the prior meeting (May 19th) were approved.

Revocation: Martijn presented some redlines to the revocation section 13.1.5.3 to make it less complicated. Bruce said he would be willing to support updating this section. Ian agreed that the definitions could use some cleanup. There was a discussion about obtaining telemetry data from Microsoft to help with this section.

Dimitris asked what the next steps were for future ballots. Martijn suggested we should have a cleanup ballot. Corey concurred and said we should wait until IPR clears for current ballot. After the cleanup ballot, then we can look at a signing service proposal.

The meeting for next Thursday (16th) will be canceled so the next meeting will be the 30th.

# CABF Face-to-Face Meeting 56: Day 3

## Attendance

See Day 1 with the addition of the following: Attila Rozgonyi (Guest)

## Approval of CABF Minutes from last teleconference

**Leader:** Dean Coclin (Digicert)  

## Minutes

Minutes approved from last 2 teleconferences

## Server Certificate Working Group Meeting

## Antitrust Statement, Assign Minute Taking, Approval of SCWG Minutes from last teleconference

**Leader:** Doug Beattie (GlobalSign)  
**Minutes:** Martijn Katerbarg (Sectigo)  

Antitrust statement was read

The agenda is presented by Doug

2 Ballot recently passed:

- SC-54 (Onion Cleanup)
- SC-51 (Audit Log Requirements)

2 more are under consideration:

- Debian Weak-Keys
- SLA for OCSP and CRL responses

### Validation subcommittee

**Leaders:** Corey Bonnell (DigiCert)  
**Minutes:** Martijn Katerbarg (Sectigo)  
**Presentation link:** http://lists.cabforum.org/pipermail/validation/attachments/20220608/ea4bb526/attachment-0001.pdf

#### Agenda

Validation Subcommittee Agenda is presented

V1 of the Certificate Profiles Ballot

#### Any Other business

Minutes haven’t gone out yet and thus will be reviewed and approved at the next call instead

Progress since Spring F2F

- SC-54 (onion cleanup) cleared and became effective late April
- There’s been a discussion on EV CRL 3-second rules as well as Enterprise RA language which we’re looking to cleanup
- Certificate profiles V1 ballot is moving forward. Some items have been pushed back to V2 as they were deemed too impactful for the first version
- We’ve been working on a transition plan
- Migrated from Trello to GitHub Project for tracking all changes and issues

#### Certificate Profiles

Major reformat and changes in BR section 7.1. Getting close to a formal discussion and voting period. A few normative changes are introduced and every CA should start analyzing the draft ballot to determine the impact for them

URL: https://github.com/sleevi/cabforum-docs/pull/36

Corey has performed an Impact Analysis of most items introduced by this change. The overview may not be exactly accurate since Censys.io is not fully up to date on the trustlist. Pre/Leaf certificates were also not de-duplicated and some expired certificates are still flagged as valid.

_MUST (NOT) level changes on Validity_

- There are now restrictions on backdating Certificates, depending on whether it’s a root, subCA or subscriber certificate
- Restrictions on forward-dating, which are prohibited for CA Certificates, but 48 hours are allowed for Subscriber Certificates
- Root CA Validity is capped at 25 years which matches the Microsoft Root Policy requirement

Question from Ben Wilson: The MS policy states 25 years from submission, not creation.

Karina Sirota: We could review this, as it’s legacy language

_MUST (NOT) level changes on Subject DN:_

- Specific well-defined ordering that MUST be followed
- Multiple instances of the same attribute are prohibited which would also affect GRID certificates

A question is asked if the GRID community using this aware of these changes? There’s a discussion on domainComponent which uses multiple instances of the same attribute.

Additional feedback is requested from CA’s providing services to the GRID community

Dimitris believes due to their policies, they do rely on publicly trusted certificates

There’s general consensus that we need more information from the GRID community, while at the same time there being a possibility to actual validate the information in the domainComponent attributes.

Ballot 148 originally removed the validation requirements for the domainCompoent attribute, however the intent of the ballot at that time was not to specifically deny usage of the attribute.

_Domain Names and IP addresses in any attribute must be validated per section 3.2.2.4/3.2.2.5_

There is a discussion on whether this should be applicable for each subject attribute. The example “O=ACME Enterprises Co.Ltd” is given. With the current language, “Co.Ltd” would need to be validated as a domain name. It’s pointed out that this is impossible as Co.Ltd would be an internal domain name, and so, the company would not be able to get a OV or EV certificate. There are multiple proposals of paths forward to resolve this. There is general agreement that the language should be updated.

_MUST (NOT) level changes for the KeyUsage extension_

All bits must be unset except:

- For RSA keys:
  - digitalSignature (SHOULD)
  - keyEncipherment (MAY)
  - 1.4 million certificates have dataEncipherment which would no longer be allowed
- For ECDSA:
  - digitalSignature (SHOULD)
  - 14K have keyAgreement which would no longer be allowed
  - Dustin mentioned there doesn’t seem to be an effective date for this change. There’s general agreement that this change should be moved to the Version 2 ballot instead
- For OCSP Responders:
  - All bits must be unset except for digitalSignature
  - 396 certificates have contentCommitment

_MUST (NOT) level changes for certPolicies_

- userNotice is now prohibited for all certificates. This is seen as a change from the current guidelines and as such might need an effective date. Impacted CAs are asked to respond. Reason for prohibiting the field is to reduce certificate size.
- Effective 2022-11-01 certPolicies extension is prohibited in OCSP Responder certificates (815 certificates affected)

There’s a discussion on removal of effective dates from the ballot and instead use language that will state the effective date will become IPR + x months.

_MUST (NOT) level changes for EKU:_

- The inclusion of non-TLS related EKUs is prohibited for Subscriber Certificates.
- For Cross Certificates, the entire certificate profile MUST follow the relevant specification that defines the extension (i.e. RFC), even if deviations from that profile are compliant with the BRs.
- Non-HTTP OCSP and CA Issuers URIs will be prohibited – 17K certs affected.
- Multiple OCSP, CA Issuers and CRL URIs must be encoded in order of preference.
- Subject Key Identifier must be unique within the scope of the issuing CA corresponding to the certified Public Key.

_MUST (NOT) level changes for Non-TLS ICAs_

- The Subject of a non-TLS ICA MUST be validated and encoded according to the TLS BRs if the issuing CA is capable of issuing TLS SubCAs.
- Conformance to RFC 5280 is required
- All permitted IP addresses and Domain Names in nameConstrains MUST be validated per 3.2.2.4/3.2.2.5
- All dirName nameConstraints MUST be validated per 3.2
- If a rfc822Name nameConstraint contains a Mailbox Address, the CA MUST validate the domain part per 3.2.2.4
- Subject Public Key types are restricted to those allowed by the BRs
- certificatePolicies MUST NOT contain anyPolicy if the SubCA is not issued to an affiliate

There’s a discussion on what or when the TLS BRs can say something of a non-TLS ICA. This is deemed in scope when the issuing certificate’s key is used when the issuing CA is also TLS-capable.

## Guest Speaker – Attila Rozgonyi, EFQTSP and Microsec

[EFQTSP and CA/B Forum relations][7]

## Network Security Working Group Meeting

Presenter: Clint Wilson (Apple) Minutes: Ryan Dickson (Google Chrome)

A recording of the antitrust statement is played

Clint greeted participants and shared a summary of the meeting’s goals, and a recap of prior Working Group efforts.

Meeting Goal: share an update and discuss the current approach for the ongoing risk assessment work

Recap:

The Working Group has been working to establish a risk assessment of the BRs to help CAs identify and understand the various risks related to the CA system elements defined in the NetSec/TLS BR requirements.

Focus of this exercise was focused on the NSRs, given broader applicability beyond just TLS BRs.

As the team has working on the assessment over the past few months, several questions have been identified

We wanted to engage the broader community of experts to help address these questions and align expectations moving forward

A few weeks ago Trev coordinated a presentation on threat model strategy from one of the Amazon’s senior security engineers (Greg, who specializes in threat models)

Session was recorded, we’ll try to figure out how to share

The session was valuable and helped guide the process you’ll hear more about today

In part of establishing the broader assessment framework, we wanted to work through a specific example and use it as a model for future work.

We’ll work through a thought exercise, focusing on process and approach, not outcome, specifically related to an example risk assessment related to OCSP Responders.

Clint offered background on the upcoming exercise and corresponding \[doc\] [Threat Model for Publicly Trusted CAs][8] (https://docs.google.com/document/d/1cmKs-H5mMg2cVHiDG6NUFzBvYJH3OwiIgKROXTUG5bU/edit?resourcekey=0-dlLWckJvTVZ6i8Kn7YerUA#heading=h.uqq521al3wq2)

One of the key recommendations from the Amazon security engineer was to come up with a functional model to perform a threat model against

Start by describing a system, and then perform an evaluation against that specific system’s description.

As shared by the Amazon security engineer, narrative approaches are helpful, and also expressed that the group not threat model PKI as a whole, but to instead focus on specific scenarios

In one of the group’s earlier meetings, Paul suggested they start with an OCSP Responder. The group began to describe how the specific responder functioned.

Trev explained that in the process of describing the system using a narrative approach helped uncover assumptions and threats that may not otherwise have been considered

Trev reinforces that the goal of the exercise is not to make an example system that’s a template for CAs, but an artifact that’s a means to the end…the end being the mitigations we identify that need to be requirements in our policies as a result of the exercise.

Another tip from the Amazon security engineer: to make progress on the model, you might want to start with a system that’s not particularly considered “good”

Use this as a starting point to ID how systems might be setup, identify assumptions, and problems that should be avoided

Clint shared his screen and reviewed the document sections, and gave participants some time to review it.

Doc begins with a system design narrative, and then outlines assumptions and assets. An example data flow diagram outlining relationships with other systems is included, but it’s not yet representative of the narrative at the opening of the doc.

The group spent time discussing improvements to the existing language, refining the target system’s scope, and brainstorming assumptions not yet documented. Some of these items are outlined below.

On the Narrative:

Tim recommended we include pre-certificates. (added)

The group discussed whether expired certificates should be included.

Paul shared background on how scope was bound for the work, specifically related to how expired certs were deemed outside of the scope of the doc.

On the Assumptions:

Tim recommended clarifying the specific scope of the intended system

Assumptions impact our understanding of how the system should work and impact the assessment. Including specificity to identify the responder provides responses for publicly-trusted CAs operating under the BRs establishes clear boundaries and removes potential for future disagreement.

After discussion by the group, a new assumption added specifying scope, as recommended by Tim.

A few comments from Wendy and Corey led the group to add an assumption indicating the responder is compliant with relevant RFCs and standards

The group discussed and added an assumption that the system’s receipt of the pre-produced responses are secure.

On the Assets:

Mads asked whether the private key signing the OCSP responses should be listed as an asset. The group debated this point and ultimately decided to add an assumption that an HSM protects the signing key.

The group discussed adding the signing key as an asset and exploring further in a future round of updates (i.e., this process will use a phased approach).

At other points during the discussion:

The group discussed the STRIDE assessment model (discussed favorably)

Dimitris identified the NetSec WG charter was not yet in GitHub. He later submitted a PR that was approved by Dean to close this gap.

On next steps:

Clint shared the group meets every Wednesday, all are welcome to join.

Future meetings will focus on continuing this work and the data model/ state flow diagram(s)

The session closed.

[1]: /uploads/forum_election_summary.pdf
[2]: /uploads/2022-June-Mozilla-Browser-News-1.pdf
[3]: /uploads/CABF-F2F-56-Chrome-Browser-Update-PUBLIC.pdf
[4]: /uploads/postquantumcrypto_06.2022.pdf
[5]: /uploads/Webtrust_CABF_Update_June_2022.pdf
[6]: /uploads/f2f_56_-_cswg_202206_v1.pdf
[7]: /uploads/efqtsp_cabf.pdf
[8]: /uploads/CA_Browser-Forum-Threat-Model-for-Publicly-Trusted-CAs.pdf