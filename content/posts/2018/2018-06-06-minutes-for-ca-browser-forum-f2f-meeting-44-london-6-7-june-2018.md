---
aliases:
- /2018-06-06-minutes-for-ca-browser-forum-f2f-meeting-44-london-6-7-june-2018/
author: Ben Wilson
date: 2018-06-06 04:10:11
tags:
- Minutes
- Face-to-Face
title: Minutes of the F2F 44 Meeting in London, England, 6-7 June 2018
type: post
---

**CA/Browser Face-to-Face Meeting Minutes, 6-7 June 2018 – London, UK**

**Attendees:** Robin Alden, Comodo CA; Don Sheehy, WebTrust/CPA Canada; Jeff Ward, WebTrust/BDO; Gord Beal, CPA Canada; Enrico Entschew, D-TRUST; Arno Fiedler, D-TRUST; Kirk Hall, Entrust Datacard; Bruce Morton, Entrust Datacard; Wayne Thayer, Mozilla; Frank Corday, Trustwave; Neil Dunbar, TrustCor; Mike Reilly, Microsoft; Aleksandra Kapinos, ADS SA; Barbara Stysiak, ADS SA; Atsushi Inaba, GlobalSign; Cecilia Kam, GlobalSign; Richard Wang, 360 Group; Tim Hollebeek, DigiCert; Phill Hallam-Baker, Comodo Group Inc; Dimitris Zacharopoulos, HARICA; Tim Shirley, Trustwave; Li-Chun Chen, Chunghwa Telecom; Nick Pope, ETSI ESI Vice Chair; Zhang Yi, CFCA; Bhanu Deoraj, National Center for Digital Certification; Naif Murizeeq S. Al Otaibi, National Center for Digital Certification; J.P. Hamilton, Cisco Systems, Inc; Tony Seymour, Comsign Europe, Comda; Adriano Santoni, Actalis S.p.A.; Curt Spann, Apple; Devon O’Brien, Google; Ryan Sleevi, Google; Iñigo Barreira, 360; Jiuqiang Cui, SHECA; Xingkun Tang, SHECA; Toria Chen, SHECA; Mads Henriksveen, Buypass; Peter Miskovic, Disig; Wei Yicai, GDCA; Xiu Lei, GDCA; Dai Yeqi, SHECA; Tadahiko Ito, SECOM; Dean Coclin, DigiCert; Ben Wilson, DigiCert; Franck Leroy, Docapost – Certinomis; Man HO, Certizen Limited (the operator of Hongkong Post Certification Authority); Tyler Myers, Godaddy; Leo Grove, SSL.com; Fotis Loukos, SSL.com; Trevoli Ponds-White, Amazon Trust Services; Michael Slaughter, Amazon Trust Services; Daymion Reynolds, Go Daddy; Xu Jiang, CTI Certificate Authority; Tony Nagel, QuoVadis; Travis Graham, Go Daddy; Alex Wight, Cisco; Rob Stradling, Comodo CA; Nick France, Comodo CA; Monika Radziewicz-Lepczynska, TUVIT/ACABc; Christoph Sutter, TUVIT/ACABc; Jeremy Rowley, DigiCert; Robert Duncan, Netcraft; Doug Beattie, GlobalSign; Tony Perez, GoDaddy; Mike Kushner, PrimeKey; Tom Lowenthal, Brave; David Hsiu, KPMG, Taiwan; Moudrick Dadashov, SSC; Ryan Hurst, Google; Mark Goodwin, Mozilla; Marcelo Silva, Visa; Geoff Keating, Apple; Bailey Basile, Apple.

# Day 1

## 360 Root Program Update

**Presenter**: Iñigo Barreira **Minute Taker**: Dean

[360BrowserUpdatesCABF-F2F-LondonJune18.pptx][1]

- New policy version 1.1 New CA Form to include root CA and subCA end user cert Working on new version; comments welcome
- Removal of WoSign and Startcom roots from 360 root store – end of March 2018 in v9.1 (current version 9.5)
- Show “not secure” when entering http mode
- Showing more details for errors when pages are blocked
- Root inclusion process: Scheduled to update every quarter For 2018 will start in first week of October
- 360 planning 6 month window for CAs to apply, need to be done by September for inclusion in October.
- Q: Does this mean that CAs that don’t apply, will have their roots removed in October?
- A: Probably yes

## Apple Root Program Update

**Presenter**: Curt Spann, Bailey Basile **Minute Taker**: Doug

Certificate Transparency

- CT Validation will be enforced in late 2018 for certificates issued after October 15, 2018. Details and the list of trusted logs can be found here:

Extended Validation

- The “Company Name” has been removed from the Safari UI and this has unified the URL bar across all platforms.
- Apple said that this changes was based on research and customer input. “Org name is not tied to users intended destination the same way that the domain name is”

Symantec Distrust

- See this support article:
- Phase 1 is in beta builds and this will distrust Symantec issued TLS server certificates issued before June 1, 2016 and after December 1, 2017.
- Phase 2 is coming, but no details were provided. Watch the support article for updates.

The Apple presentation is located here: [201806AppleCABF.pdf][2]

## Brave Root Program Update

**Presenter**: Tom Lowenthal **Minute Taker**: Neil Dunbar

By way of introduction, Tom explained that Brave is Multiplatform browser, Muon based, security focused fork of Electron on GitHub, eventually switching to Chromium fork. User experience focused, with special interest on privacy, for instance, by-default disabling of tracking methods. On Android, Brave uses a Chrome base.

- There is as yet no independent root trust program, and Brave does not anticipate its creation for at least 18 months.
- Substantial changes to certificate parsing and user experience are planned.
- CT Enforcement will be implemented, but anyone compliant with Google and Apple will almost certainly be compliant.
- For a UI standpoint: positive security identifiers to be scrapped (since current research does not support their further inclusion), and replaced with negative security warnings upon identified dangerous behavior.
- As an example of a scenario which would trigger a warning: A user attempts to enter form information, for example, credit card information, into a HTTP (non-secured) page.

## Cisco Systems Root Program Update

**Presenter**: J.P. Hamilton **Minute Taker**: Mike

Cisco Systems: (Had slides for presentation) [Cisco Browser Update.pptx][3]

- Introduced their root store at last RTP conference.
- Recently mandated for all Cisco products
- Product security baseline. Part of Cisco smart licensing program.
- Three bundles:

1. Original recipe
1. Extra crispy
1. Grilled Lite

- CAs need to already be in the Apple, Mozilla or Microsoft root store before being admitted into the Cisco root store
- Just joined CCADB
- Expect specialty root stores in the future (i.e. IoT specific)

## Comodo Group Root Program Update

**Presenter**: Phillip Hallam-Baker **Minute Taker**: Mads

Comodo Security Services (CSC) provides two browsers: Comodo Dragon (Chrome based) and Comodo IceDragon (Firefox based). The browsers are used both for research purposes and for enterprises who need control over systems they are using.

The philosophy is based on a believe in giving the user the information they require. The browsers will also be used for usability research – e.g. the behavior of users on long term. Phillip said he does not believe that people do not understand security signals.

The current security signals are:

- Green (EV)
- Padlock (Most DV)
- None (non-TLS)
- Error (defective TLS)
- Block (fraud alert (multiple sources))

As trust criteria, CSC does not plan to introduce any inclusion program, but rather an exclusion program. By default CAs included in the browser/platform are trusted. The user can choose which root store they use for trust. However, CAs must implement full lifecycle support, e.g. CAs that do not revoke might be excluded. CAs might also be excluded based on empirical measures of suspicious activity. The certificate should tell the user whether they are safe/secure, if this is done wrong the CAs might be excluded.

Phillip presented some thoughts about next generation PKI. Based on their experience as a CA, they have realized that CAs are not able to curate other CAs. A misused certificate sould be blocked within 30 minutes. A CA should issue 24 hour certificates, either by using short lived certificates or by enforcing OCSP. A trust curator provides trusted time and compressed CRLs.

Phillip also presented some thoughts about next generation cryptography, introducing end to end secure Web. This not only includes encryption of data in transit between the browser and the Web server but also encryption of all data on the Web server. Access to the encrypted data requires key server authorization and end user key. Standards are proposed as internet drafts – see .

After the presentation there were discussions around some topics and statements from Phillip. One of them was his skepticism about previous research related to security usability. Phillip responded that CAs should be evaluated on their ability to make the user safe.

The process of distrusting CAs also raised a lot of questions and comments. Phillip said that distrust would be based more on empirical results for CAs to make users safe, rather than errors in process. He also said that it was not possible to present the exact rules for distrust at the moment, but rather the philosophy. The problem is people trying to harm other people on the internet.

This again raised new comments and questions, one of them was that it should be more efficient to block a website rather than a CA. Phillip agreed that this was a fair point. Questions was raised about what the causes of distrust should be, like malware, phishing and fraud etc. Phillip replied that any site that makes a user unsafe is their focus, but they are not going to set hard lines for bad guys.

Ryan S commented that unclear and undefined rules for distrusting CAs might be problematic and opens up for ambiguity. He also asked why issuing a certificate binding a key to a domain could be bad. Phillip responded that he was reluctant to enumerate all the causes and think this is legitimate. Geoff and Mike commented that both Apple and Microsoft have policies making it possible to remove any CA for any reason.

## Google Root Program Update

**Presenters**: Devon O’Brien, Ryan Sleevi **Minute Taker**: Dimitris

- Since Chrome 66+, certificates that are non-compliant with the BRs regarding validity (825-day limit) will display errors on the client side. The algorithm to calculate validity has been updated. The new algorithm is based on the longest possible valid date for that period – for example, 39 months is 366 + 365 + 365 + 31 + 31 + 30 days, or 1188 days.
- Chrome 68 distrusted the first wave of Symantec certificates according to the announced distrust plan. Chrome 70 will address the following waves.
- On the research side, Google’s usability and security team continues to explore how to ensure that their products help users make effective and secure decisions. As part of that, studies are being conducted that continue to explore user behavior based on how the security status of the page is presented. The detailed methodology was discussed to solicit feedback from members present, to solicit additional user feedback, but detailed a variety of measures for user behavior and safety. This was asked not to be shared in advance of peer-review and potential publication. Current Public research for usability behavior is at research.google.com
- Kirk asked if there could be a limited (top 3) set of research documents from research.google.com that the Chrome team based their decision on changing the UI.
- Ryan responded that there are several public reports for that area and welcomed further discussion on the public list.
- As far as the Chrome UI is concerned (in desktop versions),
- Beginning with Chrome 68, pages with http will be marked as “not secure” –
- Beginning with Chrome 69, positive indicators will start being removed –
- Align chrome address bar with all types (unified color scheme for DV/OV/EV)
- Beginning with Chrome 70, for users entering data on HTTP pages, the negative warning indicators (“not secure”) will be stronger –
- Ryan discussed some of the research studies that the Chrome team is conducting around security indicators, including not-yet-published research, to solicit feedback from CAs about possible areas of consideration
- Certificate Transparency
- Main stakeholders are CT Log operators, CAs and User Agents
- Best practices shall be published including results from the “CT Days”. Ryan and Devon welcomed participation in  for issues related to CT that are not necessarily “Chrome-specific”. They consider the  forum a public forum for the CT ecosystem.
- Chrome team has contacted CAs that issued certificates with potential problems with the CT enforcement. These problems will appear when Chrome 68 is published as stable.
- Yeti, Nimbus, Argon are now Qualified, which are definitely usable for Chrome 68 and the CT enforcement. For the future, the Chromium team will be announcing when a log is safely “usable” so that CAs can start logging to these new logs.
- Full page interstitial for not CT compliance
- Enterprise administrators can set specific policy and have a couple of options to deviate from the default CT-enforcement Chrome Policy
- First option domain name and subdomains match filter and the CT compliance is not required
- Chrome 67 will add 2 more policy options for Enterprise Administrators ()
- More details in the . Look for the following: CertificateTransparencyEnforcementDisabledForCas CertificateTransparencyEnforcementDisabledForLegacyCas CertificateTransparencyEnforcementDisabledForUrls

For the user accessibility study:

- Kirk: Has Google done studies where they trained users as to what these indicators actually mean?
- Ryan: It’s unclear what the proposed methodology is to understand the question – the usability studies have looked at a broad spectrum. If there’s proposed methodologies that can be done at scale, open to considering feedback.
- Philip: User control makes users feel safe.
- Ryan: Some of the things of the study approximate that behavior but people can propose new measurements to Google Chrome team.
- Devon: Need quantifiable elements. But if users feel safe but they are effectively not safe, Chrome finds this concerning and takes action to protect the user.
- Mike: Is there any other list of studies/research related to the issue of user accessibility?
- Ryan: Several around, will send to the list.

On Thursday, we discussed the W3C WICG’s work on Signed Exchanges (). This allows content to be signed by the operator of example.com, but potentially hosted by any number of CDNs, caches, or even delivered offline such as sharing by users, but be safely and securely loaded by browsers “as if” it came from example.com, and with all the permissions and privileges. A compliant browser will be able to load and authenticate the page, regardless of the transport.

This allows for a number of interesting use cases, ranging from offline sharing of content, to web application bootstrapping, to more reliable hosting and sharing of content. To avoid this feature introducing any additional risk to existing server operators, it’s necessary to obtain a certificate that ‘opts-in’ to this feature.

This is expected to mitigate some potential risks from accidental usage (use a key offline and not online), and is similar to the discussions around Delegated Certificates in the IETF. The opt-in is accomplished by an additional X.509v3 extension at present, but could also have been met by listing an additional EKU – in both cases, it is and remains a TLS web server certificate, just with additional capabilities for browsers. This extension is not marked as “critical” so these certificates can work with existing browsers. It only offers an additional capability. Because of this, CAs should be aware of that work, and the desire for both sites and browsers to experiment with the draft specification to gather feedback and validate the design choices. This extension complies with the Baseline Requirements’ rules around extensions, and a preliminary OID has been assigned for experimentation. CAs that are interested in participating in such experiments can find discussion links in the specification, and further background available in the GitHub repository.

## Microsoft Root Program Update

**Presenter**: Mike Reilly **Minute Taker**: Tim

- Reminder that  should be used for communications to ensure timely response. Communications to CAs will come from this address as well rather than from individual team members.
- Updated CA application process released on our site’s Certificate Authority Intake Process page (.)
- Root Change request form coming for any CA initiated changes. Available for download on our site shortly.
- Continuing to build out our Crypto Business Intelligence (BI) to manage our root store. This includes use of Windows 10, SmartScreen and CT Monitor telemetry. This capability enables us to better understand the impact of changes to roots, either Microsoft or CA initiated, and how those changes may impact our customers.
- Continuing to conduct end-to-end examination of each root in the root store for EKUs, use, contract compliance and other issues which may represent risk to Microsoft customers. Moving last remaining CAs on 2007 version contracts to updated 2015 version.
- Continued efforts toward automation of program processes to minimize errors and enable increased verification of program compliance.
- We have the capability to deploy root store changes on a monthly cadence. Root change request review may not move as quickly though depending on complexity, conformance to CABF baseline requirements and/or Microsoft root program requirements/contract. Information on our monthly changes can be found at .
- Microsoft supports the Certificate Transparency initiative, but is not enforcing CT in Edge at this time.
- Symantec distrust process planning ongoing in coordination with DigiCert. Our main concern is down level OS support for Code Signing and Time Stamping for our customers.

Reminder on the different states of roots in the Microsoft Trusted Root Programs:

**Root Certificate Expiration**

Each root certificate has a validity period with a defined Start and End date. The validity period enables new certificates to be signed during that period. Customers will find roots that are expired are still in the Microsoft Certificate Trust List. This is because of Code Signing and Time Stamping. Microsoft doesn’t want to unnecessarily impair our customer’s ability to run valid applications and code that has been written years ago. For these applications to properly execute, they must chain to a root certificate in the Certificate Trust List. For example: To ensure that our customers can run their copy of Age of Empires, which was released in 2003, the root certificate that issued the certificate that signed that code must be retained in Windows indefinitely.

**Certificate Removal**

The Trusted Root Program removes the certificate from the program. All certificates that chain to this root are no longer valid. Any code signed by a removed certificate is no longer trusted by Windows.

**Disable**

The ability to Disable a root was introduced in Windows10RS1. Before the Disable functionality was introduced, Microsoft’s only ability to prevent certificate issuance from the root was Removal. This had consequences for Microsoft Windows users when Code Signing and Time Stamping were involved. By disabling a root, Microsoft is able to revoke all EKU capabilities while still allowing Code Signing and Time Stamped code to function.

NotBefore

Similar in functionality to Disable, but allowing more granularity, NotBefore was introduced in Windows 10 RS2 to allow the certain EKU’s to be disabled on a specified date. All certificates issued with those EKU’s prior to the NotBefore date are still valid and will function normally; however, certificates signed after the NotBefore date are invalid. Utilizing the NotBefore functionality is the most granular approach to removing certificate capabilities, as it allows the natural deprecation of existing end-level certificates.

## Mozilla Root Program Update

**Presenter**: Wayne **Minute Taker**: Cecilia

[CAB-ForumLondon-June 2018-BrowserNews][4]

[CABF_F2Fpreso_030518_vmf.pdf][5]

## Guest Speaker: Agile Crypto – How are we to survive the death of RSA/EC?

**Presenter**: (Michael Kushner, PrimeKey) No Minutes

[PrimeKey-CABForum-June2018.pdf][6]

## WebTrust Update

**Presenters**: Don Sheehy, Gord Beal, Jeff Ward **Minute Taker**: Kirk

### Current Work

- WebTrust Baseline + NS vs 2.3:
- Released effective February 1, 2018
- Updated to conform with Baseline 1.5.4 and NS 1.1
- WebTrust for CA 2.1
- Released effective September 1, 2017
- Sections added on key migration, destruction and transport
- Publicly Trusted Code Signing Vs 1.0.1
- Released effective October 1, 2017
- Modified version released to fix error in material and to remove unauditable criterion
- Current Status – updated
- WebTrust EV SSL
- Released v 1.6.2 effective October 1, 2017
- Updated EV SSL Audit Criteria to conform to EV SSL Guidelines v1.6.2 and other clarifications
- WebTrust EV Code Signing
- Released vs 1.4.1 effective October 1, 2017
- Removed Principle 2, Criterion 5.12 as it was not auditable
- Practitioner Audit Report templates
- Approved by AICPA/CPA Canada
- Released Sept 1, 2017
- Covers almost all potential types of reports (about 18 examples in each) and assertions
- Assertion based examples, as well as direct subject matter
- Need to be followed to get the seal
- Applicability Matrix updated
-

### New Work

- WebTrust for RA
- Third draft version prepared
- Has main principles similar to WebTrust and additional principles (appendices) for Baseline+NS, EV
- Strength of controls will be issue – volunteers from CABF for review and comment?
- Reporting alternatives being discussed including SOC2 like, public report and impact on CA report
- Practitioner guidance for auditors under development covering public and private CAs.
- Will provide examples of tools and approaches as best practices – please share if you have any in mind
- First draft reviewed May 2018 meeting – expected release 2019

### New and Old Issues – Terminology

CABF public post from Don and Jeff March 15, 2017 provided definition of:

- Point In Time (Will now be called Type 1)
- As of a given date
- Focused on the design and implementation of controls
- Effectiveness of controls not tested
- Audit report, example in our reporting guidance
- Period Of Time (Will now be called Type 2)
- Minimum 2 months, max of 12 (not just when auditors were there)
- Includes testing effectiveness of controls
- Audit report examples in our reporting guidance
- Readiness Assessment
- Consulting report – not an audit
- Report is for management and internal users only

### New Issues

- Privacy – impact of GDPR – a regulation in EU law on data protection and privacy for all individuals within the European Union. It also addresses the export of personal data outside the EU. The GDPR replaces the 1995 Data Protection Directive.
- Additional formalization of CPA Canada processes being undertaken based on perceived risk of service
- Replacement of Webtrust.org with CPA Canada –
- More detailed license and process considerations for auditors, including international
- Analysis of new ISO 21188 – recently released
- Public key infrastructure for financial services — Practices and policy framework
- Last version was basis for WebTrust for CA vs 2.0
- ISO 21188:2018 sets out a framework of requirements to manage a PKI through certificate policies and certification practice statements and to enable the use of public key certificates in the financial services industry.
- Defines control objectives and supporting procedures to manage risks.
- Does not address authentication methods, non-repudiation requirements or key management protocols.
- Draws a distinction between PKI systems used in closed, open and contractual environments. It further defines the operational practices relative to financial-services-industry-accepted information systems control objectives.
- Intended to help implementers to define PKI practices that can support multiple certificate policies that include the use of digital signature, remote authentication, key exchange and data encryption.
- Facilitates the implementation of operational, baseline PKI control practices
- While the focus is on the contractual environment, application to other environments is not specifically precluded.

5. CPA Canada: Gord Beal, Kaylynn Pippo (on leave), Janet Treasure, Bryan Walker, Annette DaRocha, Taryn Abate. Consultant to CPA Canada: Don Sheehy (Vice–chair)

Task Force Members and Technical Support Volunteers: Jeff Ward (Chair), BDO; Chris Czajczyc, Deloitte; Reema Anand, KPMG; David Roque, EY; Daniel Adam, Deloitte; Tim Crawford, BDO; Zain Shabbir, KPMG; Donoghue Clarke, EY.

Reporting Structure/Roles:

- Gord Beal – WebTrust falls into Guidance and Support activities of CPA Canada
- Janet Treasure – Seal system and licensing responsibility
- Bryan Walker –Licensing advisor
- Don Sheehy – Task Force and CABF liaison
- Jeff Ward – Chair of the WebTrust Task Force and primary contact
- All Task Force members provide WebTrust services to clients
- Volunteers are supported by additional technical associates and CPA Canada liaison but report to CPA Canada

## ETSI Update, Supplement to ETSI EN 319 403: Draft TS 119 403-2 and ACAB´c Update

**Presenters**: (Arno, Nick + Monika, Christoph) **Minute Taker**: Enrico

Nicks presentation was about two main topics:

1. Use of organizationIdentifier in subjectDN of EV Certificates: Nick explained the motivation of the usage of EV certificates in the context of the European Payment Service Directive 2 (PSD 2). The PSD2 requires EU banks to provide open interfaces for third party payment service. PSD 2 mandates qualified Website Certificates (QWACs) for financial institutes within Europe. QWACs could be EV certificates. ETSI and the European Banking Association develop the technical specification for implementing QWACs. ETSI and the European Banking Association propose additional text for EV Guidelines. The specification ETSI TS 119 495 to add a specific PSD2 authorization number was controversial discussed during the meeting. It was suggested by members of the auditorium that the additional organizationIdentifier attribute doesn’t require any specific processing by the browsers. For more details see Nicks presentation.
1. Introduction of TS 119 403-2 (Audit Attestation Letter) About 2. The meeting discussed the proposed specification for “Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates” TS 119 403-2. The meeting encouraged ETSI to go ahead and publish TS 119 403-2. A few detailed comments were raised during discussion which will take into account in an update to the draft document. The resulting revised draft is planned be tabled at the upcoming ETSI ESI meeting in a couple of weeks with the aim of publication in July. The meeting welcomed further exchange of audit requirements between CAB Forum and ETSI that might be taken into account in future revisions.

Monika from TÜVIT gave an update on the ACAB´c activities:

## Announcement of “London Protocol”; Invitation to Participate

**Presenter**: Chris Bailey **Minute Taker**: Ryan

[**London Protocol Presentation.pdf**][7]

**Objective**: Improve identity assurance and minimize the possibility of phishing from identity certificates **Protocol to be Implemented**:

- Actively monitor phishing reports
- Notify the affected website owner that phishing content was found and remediation instructions
- Each CA will share data regarding common database for future phishing content. The data will be available to participating CAs to conduct due diligence before issuing OV and EV certificates
- Developing name collision system to prevent the “Stripe Inc” threat vector
- Other: May add, delete, or modify efforts from time to time

**Sources of data**:

- CAs will collaborate to find reliable sources
- Data will be shared among participating CAs
- Members will periodically publish aggregate statistics to the CA/Browser Forum and to the media

### Q&A

- Ryan Sleevi: From the slides presented, it appears to be attempting to exclude certain users from certain products. How does this discussion comply with the antitrust statement?
- Kirk Hall: It is purely informational sharing, it does not deny certificates. It gathers information about trends about malware and misissuance. For example, “bad actors” going from one CA to another CA, share information about that customers.
- Mark Goodwin: Do you have data about whether this reduces the customer exposure to attack or helps users in any way?
- We currently use antiphishing lists like Phishlabs as the basis for denying certificates. Do you think those have any effect?
- Follow-up: From working in banking previously, takedowns were not effective if completed after a few hours.
- Response: You were working with URLs. With this, it’s possible a particular organization will go on a flag list, such that certificates for that organization also go onto a flag list.
- Devon O’Brien: One of the slides mentioned “Monitor for the reports for DV/OV/EV for phishing, and the CAs will contribute to a database that can be consulted by CAs as a gate to no OV and EV issuance”
- Kirk Hall: It is not a gate to issuance
- Follow-up: How will the process change, then?
- Kirk Hall: It is still being developed. It may simply result in a statement about the information.
- Follow-up: What will you do with that information?
- Dimitris: This is similar to using blacklists or high risk lists, but also checks the organization for additional information
- Kirk: Just because a customer with an OV or EV certificate has phishing content doesn’t mean they’ll go on a flag list. We have not to date been helping customers clean up their site once phishing is detected, it would only go on such a list if the customer was uncooperative and not doing anything with it
- Dimitris: Wasn’t there an information sharing WG to examine this?
- Ben Wilson: Yes, we eventually lost interest, especially after going through the analysis of the antitrust. Various groups establish ISACs that can operate without violating anti-trust laws
- Ryan Hurst: The slides presented says voluntary protocol is open to all CAs. Other organizations, such as Netcraft, are active in this space. Will they be able to participate?
- Kirk Hall: It includes, but is not limited to, CAs

Organizations interested in participating, e-mail Chris Bailey, project will start up over the next few years.

## Development of Name Clash Application

**Presenter**: Daymion Reynolds **Minute Taker**: Travis

The name collision service will be mechanism for CA’s to query if an organization name is already in use. The first steps will be to backfill the service using organization information within the CT logs. Members who wish to participate will be able to query, and add new certificates in real time. Once the dataset is collected to see how often name collisions exist within the ecosystem we will report collision types and frequency. The service will be available in July, with a follow up report planned for September.

- Do the planned changes to the browser UI solve this problem already?
- No.
- Will we there be fuzzy matching on this dataset?
- The first step will be character equivalency matching with follow up to fuzzy matching after the data has been analyzed.
- Will Uniform Name Dispute will be followed, if a conflict is found?
- Currently this tool is just being used to gather the data, and do the initial investigation. This will not be used for any issuance gating.
- Problem statement needs to be updated to reflect organizational names are not globally unique and not EV names

## Validation Working Group Update

**Presenter**: Tim **Minute Taker**: Wayne

Met for 4 hours on Tuesday. Notes of the meeting were distributed on the WG mail list.

- Discussed GDPR’s effect on WHOIS. Potential solution is allowing domain owners to communicate contact information in WHOIS. SOA records can include an email field and the BRs currently allow this email address to be used. Also discussed placing email address and phone number in CAA records and the steps that need to be taken to allow that to happen via IANA and IETF.
- Discussed 2 versions of ballot 225 that proposed improved operational existence requirements for EV. Discussed reliability of QIIS’. There was disagreement on what problem these improvements are intended to solve.
- Discussed status of findings from Validation Summit in Virginia, focusing on how to avoid pitfalls of some methods.
- Discussed CAs disclosing the validation method used in the certificate, and how to allow domain registrants to use CAA records to specify allowable domain validation methods – preferably with human-readable names rather than OIDs.
- Priorities for the group are adding and updating domain validation methods, and specifying domain control methods in CAA and certs.
- Curt suggested that browsers could convert validation method OIDs in certs into friendly names.

## Plenary discussion of Validation Improvements

**Presenter**: Tim **Minute Taker**: Wayne

Refer to the Validation Working Group Update above. There was no further discussion on this topic.

# Day 2

## Governance Change Working Group Update

**Presenters**: (Dean, Virginia) **Minute Taker**: Bruce

Ballot 165 was approved. The result is a change in governance of the CAB Forum to allow other topics to be covered. All members need to resign the new IPR agreement by 3 July 2018. Many members have not yet signed to date. Dean read list of non-signed members.

If you don’t sign, then the status was discussed. This issue should be discussed with Virginia or on the Governance list. Of course the the IPR agreement can be signed anytime in the future.

Working Group mission should be completed after July 3rd and will probably disband before the next face-to-face.

## Policy Review Working Group Update

**Presenters**: (Dimitris, Ben) **Minute Taker**: Ben

The Policy Review WG was formed to review the Forum’s guideline documents (Baseline Requirements and EV Guidelines) for consistency with RFC 3647 and other industry standards. One of the tasks over the past year has to been to review the use of the term “CA” and to distinguish between when we are referring to it as an organization versus when it is used to refer to the system that issues certificates. A remaining task before this can go forward as a ballot will be to review the definition of CA to ensure that it refers to the combination of a unique key pair and the CA name as the logical CA entity. We will review the use of the term “CA” in sections 5, 6 and 7, and the language around that. Then we will come back to the Forum for input.

Also, with the new Bylaws the Policy Review Working Group has the option to continue for a period or become a committee of the Server Certificate Working Group. Members of the WG were thinking that because the WG has dealt mainly with guidelines dealing with server certificates that it would become a committee of the Server Certificate Working Group.

Also, the WG discussed the effort to convert the EV Guidelines to RFC 3647 format. Options included merging the EV Guidelines with the Baseline Requirements, keeping them separate, or converting the EVGs to RFC 3647 outline and then aligning them and comparing them side-by-side with the Baseline Requirements. The WG anticipates that the latter approach of aligning and comparing the two will be the next step.

## Network Security Working Group Update

**Presenters**: (Ben Wilson, DigiCert; Tim Hollebeek, DigiCert; Dimitris Zacharopoulos, HARICA) **Minute Taker**: Trevoli Ponds-White, Amazon Trust Services

The charter of the group was to take a look at the Networking Security Requirements and come back with a recommendation to keep, amend, replace, or repeal them. Informally the group decided to amend them. Once the group recognized this they began working on trying to improve them by amending them. However the group still needs to create the core deliverable which is a document that is a summary of the work done, learnings acquired, and the recommendation.

- Question: Kirk Hall, Entrust Datacard – What is the feeling of the people working on this on how quickly we can make changes?
- Answer: Ben, Dimitris, Tim – The work will continue in the server certificate working group. Originally the group proposed a 3 month plan, but after discussion they are going in a different direction. First, start with improving the definitions. Then look at other standards, look at a threat model, and rework the requirements. Additionally the group needs a plan to maintain the networking security requirements going forward, should it rely on another standard or group? However there has already been research that shows there isn’t another standard that can easily be used. The group also encourages more people to join to drive requirements there are only 7 or 8 people participating in the group currently.
- Follow-up Question: Ryan Sleevi, Google – People likely don’t participate because the group feels like it has a high bar of entry due to the undocumented knowledge that has been gained by the participants in the group. So the report will be critical. Also for figuring out what should change it’s recommended that the group should start with what are the potential threats that are not yet covered in the baseline requirements and target improvements there. When we do look at other standards and documentation they should be as an input to the identified threats in the threat model. The threat model approach will allow the group to prioritize and focus.
- Question: Kirk – Does the group have a large portion of members that don’t participate and what can be done to engage more participation?
- Answer: Tim – The group uses multiple forms of communication, please participate.
- Follow Up Comment: Kirk – Send out an email to the list to encourage people to be vocal about they are interested in working on.
- Follow Up Comment: People can do ballots if they have targeted things they are interested in.
- Question: Kurt – Is ballot 221 on 2FA and passwords coming back?
- Answer: Tim – Yes, it will be reworked to be more clear and have a redline. Members please read the draft before voting.

## Discussion of Relevance of the European GDPR to Trust Services

**Presenter**: (Arno) **Minute Taker**: Tony

Arno introduced the discussion on the GDPR indication that the regulations had been in the public domain since 2016. AF presented Sections 30/32 highlighting the TSP’s duty with respect to records; the data subject’s right to assert claim over their data and the requirement on the TSP to maintain a risk management program as regards data. AF described the requirement of “Controllers” and “Processors” not in the EU to appoint representative in the EU as regards data protection. This services are available from third parties in the event that the TSP does not appoint internally but, details of the representative must be prominently displayed on the TSP’s website. Best practise is available by BITKOM Germany:

General Discussion of the GDPR

KH – How does representative comply? AF – Representative is contact – TSP does not comply just by appointing representative, but certain details \[shown on slide from BITKOM\] must be displayed.

RA- TSP is obliged to appoint representative PHB – Although regulations have been in the making for the last 7 years, some DPO’s will only be learning of these at the last minute AF – Under Roman Law, the law is published and people SHOULD be aware. Note – PRIVACY DIRECTIVE from the EU is coming!

DZ – (Regarding information transfer) Data subject has the ability to request transfer of data from one TSP to another? KH – Is this transfer and delete or copy? RA – Data Subject has the right to be forgotten. Discussion took place on the potential conflict of GDPR with responsibilities of a CA

Bruce – BRs are compliant with GDPR, but may have to review profiles, validation data retained. PHB – We need to be aware of GDPR (and similar) designing new technology TPW –TSP’s should be compliant generally – we have processes for retention and safeguarding of information anyway, and we should be aware that we should only keep data we need and scrub data we do not need.

RS – TSPs should discuss the matter with Counsel. It is not the place of the forum to provide legal advice to members. Key is really system design with respect to data access. BRs do not need to change.

Dimitri – Regarding Data Retention in contravention of s Subject’s request to delete ….Is compliance with BRs/Industry best practice a “Legal Basis” to allow override of request to delete??

Further discussions: GDPR applies to “natural persons” - Is an IP address personal data? - Is there any impact on CT Logs - Make up your own mind! - Article 17 gives some ability to work around the general provisions of “Right to be Forgotten” Concludes with “seek your own Counsel (Legal Advice) and bring specific concerns to the Forum (as regards potential changes required for the BRs).

## New S/MIME Working Group Charter

**Presenter**: (Tim) **Minute Taker**: Cecilia

Tim discussed an email he sent to the Public Discussion list titled: \[cabfpub\] For Discussion: S/MIME Working Group Charter S/MIME should be the simpler of the two proposed working groups. Most the issues for this charter was discussed in the Code signing one. There’s not a good forum to discuss S/MIME issues which is why the formation of a working group could help with policy around issuance. IETF only does technical standards. Currently, we are unable to confirm if any S/MIME certs are misissued. The formation of this group could help identify that. There was some discussion on how you are allowed to authenticate the subject and standardizing form for S/MIME certs. Currently the draft email thread is long. Next step is for Tim to recap and finalize the charter scope. Tim will circulate to the mailing list when ready.

## New Code Signing Working Group Charter

**Presenter**: (Tim) **Minute Taker**: Dean

Tim Hollebeek-presenter

Tim had sent the draft charter to the list a few weeks ago.

Previously there were a set of CS guidelines developed but not adopted by the Forum.

Governance reform gives the ability to create a new, chartered working group.

Tim read the draft charter out loud and asked for feedback.

Ryan H – What about the topic of best practices? Tim H – yes, that could be included.

Ryan S – Regarding scope, it would be good to identify the work and then define the working group. Ryan H – perhaps not make it platform specific Tim H – We don’t want to modify the Net Sec guidelines nor make it platform specific Ryan S – If your goal is not to modify the Net Sec guidelines but to make recommendations, it should be ok. But again, should review what the current problems are. Bailey- we would be more interested in a best practices document (not a profile) Tim -it’s possible to contribute but not adopt, if that is your concern Ryan S – but then you may have IP rights as an issue Dean – Other code signing consumers outside of the current membership may be interested in joining such a working group (such as Oracle or Adobe). Wayne – Perhaps form the working group with limited charter and revisit depending on who participates to expand charter Bruce – We need to fix the current document Ryan – Can’t CASC work on it? Bruce – We have 2 code signing docs: EV and regular code signing. CASC is just hosting the latter

Discussion on who should participate in a working group and what user agents would be involved.

Jeremy- can we have a group with only CAs? Ryan H – the bylaws permit that but is it in best interests of all? Ryan S – We don’t want this to be like PKIX WG which went down a rat hole Ryan H – or harm brand/reputation of CABF Wayne – I’m arguing for a narrow scope for now

Tim-In conclusion, we’d like to continue to have this discussion to modify the scope as appropriate.

Kirk-why would anyone participate if they don’t know the scope of the group Wayne-Start with a charter that outlines it and broadcast it Ryan S – Keeping scope narrow allows for broader participation by a variety of IP holders who can then withdraw if the scope gets more defined

Kirk-we passed the new bylaws because we had a large number of CAs that know code signing and already know what to do Ryan S – From Google’s perspective, there are alternatives that should be considered Ryan H – We would participate if it was possible but as defined it is not possible Tim – We would like to have all participate so continued discussion is likely Kirk – Publish to public list to gather more data from groups outside of the forum Tim- We will continue the discussion on the list

## Guest Speaker: SSL State of the Union

**Presenter**: (Robert Duncan, Netcraft) No Minutes

## Reviving Ballot 213 – Revocation Timeline Extension

**Presenter**: (Wayne) **Minute Taker**: Leo

- 4.9.1.1 amendment
- Meant to assists CAs accommodate subscribers so that cert is not unnecessarily or inconveniently revoked causing the site to abruptly go down (on a Friday evening for instance)
- Must revoke within 5 days
- should revoke within 24 hours
- 4 cases where must revoke in 24 hours:
- subscriber requests revocation in writing
- compromised private key
- CA determines cert is not authorized to be issued
- (**new**  ) CA determines faulty validation was used (whether validation method or problematic cctld for example)
- proposed – CA shall support all the validation methods to verify “owner” can request revocation, but getting pushback because not all CAs support all validation methods
- slippery slope on revoking certs on sites with “misleading” information
- remove subsection 13, doesn’t makes sense as it applies to intermediate certs
- 4.9.5 amendment
- require acknowledgment and preliminary investgaion and report back to person that reported the problem within 24 hours
- “Misuse” Definition and Usage Debate
- Ryan S – dropping ambiguous definition of “misuse” since it’s not “crisp” enough on clarity
- Kirk and Dimitris – debated philisophically about defining “misuse” to include sites distributing “malware”, phishing, etc
- Ryan S – legacy vs modern CAs differ on what “misuse” means
- Kirk – auditors never complained about this, proposed that this definition has worked fine thus far. Objects to the definition change.
- Wayne – disagrees with Kirk, asking for better definition
- Ryan S – this definition change does not impact current CA operations, but the says current definition is causing problems. People on msdp have posted questions on “what is misuse”? (see  )
- Geoff – sounds familiar, this was debated last year
- Wayne – will put something forth that hopefully most everyone can agree on
- lively debate, discussion will continue

## Requiring IPR Agreements from Associate Member Representatives; attendance at Forum meetings of representative of separate CA manager

**Presenter**: (Kirk) **Minute Taker**: Ben

This agenda item was for discussion of who should sign the new IPR Agreement. One position might be that everyone needs to sign the IPR Agreement—every representative of a Member, Associate Member, or Interested Party. While this might be technically right, from a practical standpoint this hasn’t been what we have done. The Bylaws provide that as a condition of membership, Members must sign the IPR Agreement. All Interested Parties must sign the IPR Agreement to get whatever benefit there is when being an Interested Party. Then there are Associate Members, which consist of organizations who we find useful to our work—ETSI, WebTrust, ACAB’C, and a few others. ETSI has a prohibition on signing the Agreement because the CAB Forum is not a legal entity, it is just a name. In 2009 ETSI signed a letter of understanding instead, which we accepted and continue to accept for them so that they can continue as an Associate Member. One issue that Chair considered when receiving these new IPR Agreements was determining the official representatives of the Associate Members. The solution would be for the Associate Members to identify their official representatives. They should be able to update their list at any time. The purpose is to have a list by which we can confirm representation whenever someone walks through the door. If they are not a representative, then they can participate as Interested Parties. The Bylaws provide that “Interested Parties and others may be invited by the Chair, in the Chair’s discretion, to participate in those portions of Forum Teleconferences and Forum Meetings that are relevant to their expertise or their participation in a CWG.”

Kirk presented a strawman proposal that for the official representatives of Associate Members we do not require their firms to sign the IPR Agreement. Ryan suggested that IP legal counsel were key to the discussion. Ben asked what we would do about ETSI and whether anyone appearing on behalf of ETSI would be willing to sign the IPR Agreement as an individual, in situations where we cannot get the Associate Member to sign the IPR Agreement. Nick stated that, as referenced previously, for ETSI to sign a legal agreement it needs an entity to sign with. ETSI’s IPR Policy requires disclosures and has a requirement for reasonable licensing but not free licensing. So that has created problems before when ETSI has tried to establish liaisons. He said that because he is presenting standards, not on behalf of himself or his company, he would have difficulty signing something that said that he was acting as an individual. One possible workaround is to rely on Forum Members who are also members of ETSI to relay information. There would need to be a disclaimer that information exchanged is not officially from ETSI, but this would make it more difficult to have the free exchange of information as we’ve done in the past. Sometimes draft ETSI documents will be presented and Forum members will give comments on those documents. Kirk noted that the IPR Agreement isn’t actually with the Forum. The IPR Agreement says, “\[it\] constitutes a binding contract amongst all participants of the CAB Forum (“Participants”) that execute the Agreement.” Nick said he could go back to ETSI on this point, but that he doubts that ETSI’s position would change.

Ryan noted that if individuals signed as individuals, they may not hold the IP implicated. For instance with ETSI, ETSI holds the IP. The problem is that today anyone who presents on a topic could be contributing something that is encumbered by someone else’s IP rights.

Nick noted that when he presents, it’s not he himself or his company, but just the consensus standard that has been developed by ETSI in order to improve the market. If contributions can’t come from ETSI, they can come from other Forum members like Arno or Dimitris. Something else would have to be arranged for when a presentation is to be made to the Forum.

Discussion followed about whether individuals who sign the IPR agreement would recognize that when they make a contribution, they are representing that the IP is unencumbered or that they do so with the understanding that they are authorized to share that information. If not, then they are either breaching an agreement with the Forum or breaching an agreement with their employer (or the holder of the IP). If an IPR agreement were signed by just an employee/individual, and that individual contributes something that the employer holds the IP rights to, then the individual has not entered the employer into the IP agreement. So that is why as a Forum we want to ensure that the company is obligated under the IPR agreement.

Kirk stated that we need more clarity on these issues and that if we intend to require individuals or employers of Associate Member representatives to sign the IPR Agreement, it will require a bylaw change. He also said that he doesn’t see much risk in adopting the strawman proposal.

Kirk requested that Governance Reform Working Group provide clarifications on these issues, in light of the upcoming July 3rd transition to a new IPR Policy.

## Subject information in EV certificates specified in clause 9.2 of the EV Guidelines and whether this allows for the inclusion of X.520 organizationIdentifier

**Presenter**: (Nick) **Minute Taker**: Tim

- Discussed on call about a month ago and passed on to VWG
- Ryan S asked if Nick got notes, and Nick confirmed
- Main requirement: to open up EU banks to provide services
- Issued as a directive; up to each country on whether or not it adopts
- One of the rules is that you have to use qualified certificates for SSL and digital signatures (electronic seal)
- Allows banks to authenticate and exchange data
- Includes requirement to include unique identifier in certificate alongside the name
- Banks must provide test interface by March 14, 2019 and be operational by September 14, 2019.
- Have developed standard for satisfying the requirement, by using the organizationIdentifier attribute of the Subject DN
- Defined Format: identifier of value type, country code, dash, identifier number
- Highest priority was to secure connection between the third party processor and the bank, which isn’t in scope for CA/B Forum. But it is expected that those parties would like to provide the same authorization identifier to their customers. This provides a hook into ascertaining if this is a bona fide service provider. Is what we’re doing going to work in the public domain?
- Proposal to extend EV guidelines to explicitly list organizationIdentifier in 9.2.x.
- Specific exclusion of NTR as an option since that value should go in serialNumber. Open to removing this if desired.
- Questions

* - Is the text appropriate or reasonable?

- How do we handle semantics indicating how you interpret it?

Ryan S: How and Why. First part of why is understandable (TPP \<-> Bank). Doesn’t need to be in publicly-trusted certificates. Second part is crux of question: should this overlap public PKI? Are you describing bank to browser experience? (Yes, but would like client assistance) Would this provide value? No, without changes to browsers. Sounds unlikely. Would browsers expose additional information to extensions to allow them to show this? Unknown. How well does this align with security models? (There are people who have the ability to get the information even if it’s not shown in the browser. Banking community is asking how can we do this.)

Marcelo: Believe this is worth looking further into this use case. Private PKI vs. public

Ryan S: Just because we want a solution doesn’t mean it’s what you want to use. Important to understand the why.

Marcelo: Can we make certificate not accepted by browser if you include this specific OID? Just an idea.

Tom: Biggest fear of having certification presented to users is no matter how good the specification is there is always a risk that the presentation to the user makes them think it’s safe to do business with that company.

Wayne: This sounds like philosophical arguments against EV rather than about this specific change. How does this change make EV any worse than it is today, if that’s your opinion?

Moudrick: Isn’t this the serial number?

Nick: No that’s the trade register. This is a separate register to do with payment services. Says this trade organization has been approved by financial services agency in that country.

Adriano: It’s not always clear who issued the identifier we put in the EV serialNumber

Nick: The fact that we’re using a structured format is something useful not only for authorization identifier but also useful in general.

Ryan S: There’s a whole design question on how, but to Wayne’s question: one part of it is understanding what is the goal and the other is to understand what are the possible consequences. Once we have this identifier as proposed we can have no other usage. What if another organization comes in the future wanting a different use case for the same field?

Wayne: Seems to reserve this field for ETSI use only. Two ways forward: no, you can’t use this field at all (status quo), or reserve it for ETSI and make sure it is extensible, or reserve it for ETSI and revisit guidelines when/if another request comes along

Dimitris: Fourth option already defined in ETSI: If it is missing the QC statement extension, it doesn’t matter what you put in the field.

Ryan S: Would need to encode those requirements in the EV guidelines as well as the BRs. How do we make sure that the guidelines ensure the lack of ambiguity.

Nick: Not going to get a total answer today, but is there an opportunity to continue exploring this with the validation working group?

Tim H: Needless conflict between individual standards are bad. Looks to be a small problem we should be able to fix. Validation mailing list is probably good avenue, but also happy to put on the agenda.

Wayne: Needs a champion to make it happen.

## Schedule for Election of Forum Officers

**Presenter**: (Kirk) **Minute Taker**: Frank C.

[Process for Election of CABF Officers – 2018.pdf][8]

- Kirk – Table parses the bylaws
- October 22 is the date for the new officers.
- Kirk went over the timelines for elections based off the process document he distributed
- In 2016, the process took longer than expected
- Dimitris – Elections to happen after July 3rd, do we need separate elections? Kirk was not sure and will need to look into it.
- Dimitris – suggested we do not have voting rules at this time
- Tim H. – Working group chair would be forum chair. The group would decide at another time. Forum level is unchanged.
- Server group is different based on the Ballot
- There are no rules currently for elections for the server group.
- Ryan – Suggested we have 6 months to establish a charter.
- Kirk – The server group will need to create a process for elections for that group.

[1]: /uploads/360BrowserUpdatesCABF-F2F-LondonJune18.pptx
[2]: /uploads/201806AppleCABF.pdf
[3]: /uploads/Cisco-Browser-Update.pptx
[4]: /uploads/CAB-ForumLondon-June-2018-BrowserNews.pdf
[5]: /uploads/CABF_F2Fpreso_030518_vmf.pdf
[6]: /uploads/PrimeKey-CABForum-June2018.pdf
[7]: /uploads/London-Protocol-Presentation.pdf
[8]: /uploads/Process-for-Election-of-CABF-Officers-2018.pdf