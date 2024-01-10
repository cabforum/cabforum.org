---
aliases:
- /2017/06/21/2017-06-21-f2f-minutes-meeting-41-berlin/
author: Ben Wilson
date: 2017-06-21 16:58:05
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 41 Meeting in Berlin, Germany, 20-22 June 2017
type: post
---

## Meeting 41 Minutes

## Recordings

## Day 1 – Wednesday, 21 June 2017

### Attendees:

Adriano Santoni (Actalis), Andrew Whalley (Google), Arkadiusz Ławniczak (Certum), Arno Fiedler (D-Trust), Atsushi Inaba (GlobalSign), Ben Wilson (DigiCert), Benjamin Chiang (ChungHwa Telecom), Bruce Morton (Entrust), Chris Bailey (Entrust), Coenelia Enke (SwissSign), Curt Spann (Apple), Dean Coclin (Symantec), Devon O’Brien (Google), Dimitris Zacharopoulos (Harica), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-Trust), Fotis Loukos (SSL.com), Frank Corday (Trustwave), Franck LeRoy (Certinomis), Geoff Keating, (Apple), Gervase Markham (Mozilla), Iñigo Barreira (StartCom), JP Hamilton (Cisco), Janet Treasure (CPA Canada), Jens Bender (BSI), Jeff Ward (WebTrust), Jos Purvis (Cisco), Karolina Ruszczyńska (Certum), Kim Nyugen (D-Trust), Kirk Hall (Entrust), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom – telephone), Mads Henriksveen (Buypass), Marcin Szulga (Certum), Masakazu Asano (GlobalSign), Mike Reilly (Microsoft), Moudrick Dadashov (SSC), Neil Dunbar (Trustcor), Peter Bowen (Amazon – telephone), Peter Miscovic (Disig – telephone), Phillip Hallam-Baker (Comodo – telephone), Rich Smith (Comodov- telephone), Richard Wang (WoSign), Robin Alden (Comodo), Ryan Hurst (Google), Ryan Sleevi (Google), Sissel Hoel (Buypass), Steve Medin (Symantec), Tim Shirley (Trustwave), Tobias Zatti (Symantec), Tyler Myers (GoDaddy), Virginia Fournier (Apple – telephone), Wayne Thayer (GoDaddy)

### Official Welcome from Conference Host Kim Nguyen, D-Trust

### Recap of Prelim Matters, Review Agenda and Logistics

### Antitrust Statement & Assign Note Takers

### Misc. Items of Business:

Opening statement, welcome new members

### Apple Root Program Update

Note Taker: Bruce Morton

#### Apple Revocation

Apple played a session “Your Apps and Evolving Network Security Standards, Session 701”, <https://developer.apple.com/videos/play/wwdc2017/701/>. This session is available to download, but you will need a developer account. The session discussed revocation:

- Apple will currently only check revocation if the server is using OCSP Stapling.
- OCSP has issues as it needs an additional connection and is performed in the clear. There can be a privacy issue where a CA could aggregate data about an end user.
- OCSP Stapling has an advantage as there is no additional network connection and the OCSP status is sent with the SSL handshake.
- OCSP does not protect against malicious servers which could omit the OCSP response.
- Apple revocation enhancement will gather data such as the Intermediate CAs from the CT logs.
- For Roots and Intermediate CAs, Apple will gather all revocation information from CRLs and aggregate for their clients. If the CRL response indicates the certificate is revoked, then the client will check OCSP and status will be based on the OCSP response.
- CRL update will eventually happen on a daily basis.
- Lossy compression will be used for large CRLs where it is expected to have false positives (i.e., indicate revoked) at about 2%.
- For many sites, OCSP hits will go to zero, for others it will stay the same.
- What can the CA do to help? 1) Ask customers to OCSP Staple, 2) Update your CRL, 3) Issue full CRL from time-to-time if you are using issuingDistributionPoint, 4) Put certificates in CT or put I at least certificate in CT that references the CRL.
-

If there is an issue contact [ca-program@group.apple.com](mailto:ca-program@group.apple.com) .

- Apple is not putting any new requirements on CAs.
- Deployed in an OS release later in 2017.

Q: The false-positive rate is indicated at 2%. When a false positive is encountered, that means clients will perform an OCSP check to determine if it was a false positive, and only fail if it receives a revoked response, correct? A: Correct

Q: Does this mean that there will be a stampede of clients all attempting to connect to an OCSP server when a popular site appears in that false-positive list? A: Because these OCSP servers already need to handle clients making these requests, it should not produce additional load. Q: But macOS and iOS disable OCSP checking by default, except for EV certificates, right? This would potentially mean OCSP responders for DV/OV sites encounter substantially more load than today.

Q: When a site is on the false positive list, it potentially means that its users on macOS and iOS will have a slower-than-normal experience. Is there anything the site operator can do? A: Sites in this situation should implement OCSP stapling. If this is impossible, CAs may consider issuing a new certificate with a different serial number, which probably won’t be a false positive. Occasionally (not every update), the hashes may change, and then a different set of certificates will cause false positives. This is most likely to happen when the number of revoked certificates changes significantly. If OCSP stapling is impossible for a small number of very popular sites, a CA might consider issuing those certificates from a different intermediate, which should have very few revoked certificates. Small lists of revoked certificates will be represented directly and will cause no false positives.

#### Apple Trust Store Update

- Apple is refining the audit requirements; no announcement yet.
- In the future, Apple hopes to provide a machine readable formats for trusted roots.
- With the new revocation system, the browser will make revocation harder to click-through.
- CT log approvals have been updated, but not published yet.
- CT logging continues to be supported for EV.

### Google Root Program Update.

Speaker: Andrew Whalley Note Taker: Robin Alden

#### Introducing

Introducing Devon O’Brien
He has been with Google for around for 4 weeks!
A fellow security TPM in the chrome team. Will be focusing on PKI, CT, and general chrome stuff. He was formerly with Apple.

#### Wosign/Startcom

As [previously announced](https://security.googleblog.com/2016/10/distrusting-wosign-and-startcom.html), Chrome has been in the process of removing trust from certificates issued by the CA WoSign and its subsidiary StartCom.

We started the phase out in Chrome 56 by only trusting certificates issued prior to October 21st 2016, and subsequently restricted trust to a set of white-listed host-names based on the Alexa Top 1M. We have been reducing the size of the whitelist over the course of several Chrome releases.

Beginning with Chrome 61, the whitelist will be removed, resulting in full distrust of the existing WoSign and StartCom root certificates and all certificates they have issued.

Based on the [Chromium Development Calendar](https://www.chromium.org/developers/calendar), this change should be visible in the [Chrome Dev channel](https://www.chromium.org/getting-involved/dev-channel) in the coming weeks, the Chrome Beta channel around late July 2017, and will be released to Stable around mid September 2017.

#### UI

End of April we posted “Next Steps Toward More Connection Security” on the Google Security blog.

Beginning in October 2017, Chrome will show the “Not secure” warning in two additional situations: when users enter data on an HTTP page, and on all HTTP pages visited in Incognito mode. Eventually, we plan to show the “Not secure” warning for all HTTP pages.

#### Superfish

Superfish is adware that came installed on certain Lenovo laptops sold in 2015. Superfish MITMs all users with the same (now public) private key. All users with the Superfish root installed are vulnerable to trivial MITM on any HTTPS website. Superfish was discovered and addressed in 2015 with a Microsoft/Lenovo response.

It turns out that the Superfish software also uses SHA-1 signatures, which Chrome started blocking in M57. When M57 went to stable, users who still had Superfish installed now saw ERR_CERT_WEAK_SIGNATURE_ALGORITHM certificate errors on every HTTPS website.

In the future we will detect Superfish is installed and provide much more specific information to allow users to remove it. We would like to do this in more cases – provide users with more specific actionable feedback.

Chris Bailey: Are you making those a new category of action? Andrew: Yes – specific advice steps

Speaker: Ryan Sleevi

#### CT

We lost one log (PuChuang) but gained two new open ones (DigiCert, Symantec), which we’ll be sending an update to the [ct-policy@chromium.org](mailto:ct-policy@chromium.org) list on shortly. Further, there are two other logs from Comodo who have recently completed their monitoring period and which will also have an update to ct-policy@ with respect to the Chrome versions they will be trusted in.

#### TLS

Work continues with TLS 1.3. We continue to see wide-scale deployment issues due to TLS inspection devices. TLS interception remains a significant problem for deploying Internet-wide security improvements; if you work for a vendor who provides such products, we’d love to establish a regular dialog with your teams to ensure your products do not hold back Internet security even more.

### Microsoft Root Program Update.

Note Taker: Gerv Markham

- New Program Manager: Mike Reilly

- Been at MS 7 years, was in banking and the military

- Other team members are:

- Keri Street (Communications/Audit and Key Management)

- Gordon Bock (Program Dev and Tools)

- Nate Santiago (Internal Crypto Management)

- Sophia Wong (Crypto Disclosure and SHA-1 Deprecation)

- Working on a audit verification capability for the CCADB to remove slow manual processes

- Looks for errors and flags them

- May 9th 2017: Edge and IE no longer load SHA-1 sites

- Working on warning consumers who download software signed with SHA-1, moving towards full distrust in all contexts

- August: flight-testing TLS/SSL domain constraints using the Federal PKI

- October: rolling them out more broadly to all government CAs (normally to ccTLD)

-

Still TBD: disable trust for new WoSign and StartCom certs (aimed for April 25th but didn’t hit it)

- Areas of interest:
- DV, OV and EV
- Common browser UI
- CT
- CCADB improvements and partnerships
- Developing a CT support plan right now both for server and client
- Expect more at the next meeting

### Mozilla Root Program Update.

#### 1. Policy 2.5 Nearly Shipped

Mozilla Root Store Policy 2.5 is close to being shipped. At the moment, we are seeking feedback on whether any of the changes requires a phase-in period. Once we have determined that, we will be publishing the policy, and any changes without a phase-in period will be immediately applicable. So it would be wise for everybody to read the new policy and if there’s anything you think might take a few months, do let Mozilla know. Details of the changes in the policy are documented in the mozilla.dev.security.policy newsgroup. Here are some highlights:

- Certificates with anyEKU have been added to the scope. Firefox doesn’t recognise these certs but they are by other users of NSS (1.1)
- Accounts which perform “Registration Authority or Delegated Third Party functions” are now also required to have multi-factor auth. (2.1)
- CAs are required to use only the 10 Blessed Methods for domain validation. (2.2) This requirement has already had a deadline set for it in the most recent CA Communication; that deadline is 21st July 2017.
- Q: If we get ballot 190 passed by that date, will it be updated to align with ballot 190?
- A: Yes
- There are further requirements on the information that needs to be contained in publicly-available audit information. E.g. laying out what was covered and what wasn’t etc (3.1.3)
- When CAs do their BR-required yearly update of their CPs and CPSes, they MUST indicate this by incrementing the version number and adding a dated changelog entry. (3.3)
- The requirements for what constitutes a TCSC for email have been reformed to actually make some sense – the cert now has to have meaningful technical constraints on rfc822Name. Currently in discussions about if there will be a phase in period for this. (5.3.1)
- New intermediates must be disclosed in the CCADB within a week. (5.3.2)
- Section 7.4 (“Transfers”) has been replaced by a new section 8 which requires CAs to notify of various operational changes. This is a merge-in of text equivalent to the existing Root Transfer Policy which was documented on our wiki. (8)

#### 2. Wiki Cleanup

The Mozilla Root Program wiki content has been simplified and cleaned up, so it should now be much easier to find what you want. The starting page is now <https://wiki.mozilla.org/CA> .

#### 3. Security UI

We have released new security UI which flags pages with password forms over HTTP as insecure. We’re working on a similar feature to detect and flag credit card forms submitted over HTTP.

#### 4: Queue for Public Discussion

Things have hopefully improved in terms of moving the queue for public discussion along.

Firstly, we have added a “BR Self Assessment” step. This is a system where the CA prepares a document to explain how all the BR requirements are fulfilled by their CP and CPS, thereby lightening the load on our reviewers. All CAs in the inclusion process need to perform the BR Self Assessment before their request may proceed further.

Q: What tools are provided for that?

A: There’s a template on the Mozilla Wiki.

There will be a discussion about if self assessments are generally a good thing and could be done at other times than just the during the application process.

Aaron Wu (under Kathleen’s guidance) has taken over responsibility for working with CAs on their Information Verification and on verifying the BR Self Assessments. Aaron is working on these as fast as he can, and will be starting discussions for the CAs for which he has completed verification of their information and BR Self Assessments as soon as he can, but no more than one per week (and only after Kathleen has approved his write-up).

#### 5. Revoked Intermediate Certs

We’ve been making steady progress to streamline the process of transferring revocations disclosed to the CCADB into OneCRL, Firefox’s revocation list. There are now only a handful of certs which are listed in crt.sh as disclosed as revoked but not in OneCRL. The process still contains a human-in-the-loop check before certifying the resulting list, so there will be a 2 day lag in normal circumstances. We can still take emergency action in 0-2 hours if necessary.

#### 6. CA Communication

We sent a major CA Communication in April and a small one in May notifying CAs of CCADB changes in May. From the April communication we learned:

- It seems like all CAs are on track to implement domain validation via one of the Ten Blessed Methods by July 21st 2017.
- There is a surprising level of support for reducing certificate lifetimes to 13 months, albeit weighted towards smaller CAs. By CA count, it’s about 50:50. This issue continues to be on our radar, and no CA should be surprised if further proposals on this topic emerge.

As a follow-up to the CA Communication we’ve added fields to the CCADB to track a CA’s CAA identifiers and problem reporting mechanisms, and we’ve published a new report which provides this data. We realise that the canonical source for this will, for the moment, continue to be a CA’s CPS but we hope it’s useful to the community to have this gathered in one place.

#### 7. SHA-1

Following on from the question relating to this in the last CA Communication, we are consulting with Microsoft about the possibility of setting a deprecation timeline for SHA-1 in email.

#### 8. Root Store Community

The “Mozilla CA Community” is now the “Common CA Database”, and has its own website at ccadb.org. That should now be where you find both the CCADB Policy, which has moved from Github, and also instructions for how to use it, which have moved from the Mozilla wiki. Microsoft continues to use the CCADB and we continue to hope that other root store operators will be able to come on board soon. The contact email address for CCADB-related matters is [support@ccadb.org](mailto:support@ccadb.org) , which reaches all the participating root stores.

All CAs need to keep their CP/CPS and Audit information for their intermediate certs current. CAs must directly update their CCADB records for their intermediate certs. We will be adding automation to send email to CAs when their audit statements for their intermediate certs are due.

#### 9. Annual Updates

In addition to any updates as CPs and CPSes change, all CAs in Mozilla’s program need to submit an annual update via the CCADB, as documented on ccadb.org. Those updates need to contain 3 things:

1. URLs to updated audit statements;
1. URLs to updated CP/CPS docs;
1. 3 Test websites (valid, expired, revoked) for each root certificate that has the TLS/SSL usage (trust bit) enabled.

Common problems with the test sites that we have seen:

- sites not accessible outside of the CA’s internal network
- test site not serving correct intermediate cert chain
- revoked cert is also expired

Please visit the test websites using a copy of Firefox on a home computer or similar, and make sure the appropriate error appears, before providing the URLs to the CCADB.

#### 10. Adding Disclosure-Failed Intermediates to OneCRL

As you will all know, since mid-2016 CAs have been required to disclose all their non-constrained SSL intermediates in the CCADB. Compliance with this requirement has been… variable. Policy 2.5 requires that disclosure occur within one week of certificate creation. We are considering moving to a policy of adding undisclosed certificates we discover which are more than a week past their notBefore dates directly to OneCRL, permanently. In other words, Firefox would treat them as revoked. We hope this will provide sufficient incentive for disclosure, and for CAs to implement proper tracking of their intermediates (and perhaps even cross-referencing with CCADB data) such that “oversights” no longer happen. Comments on this proposal are welcomed.

Q: Would the listing be permanent?

A: Yes

Q: What about sub-CAs for non-included roots?

A: No need to disclose for non-included roots, but if they are ever included there will be a period in which they must be disclosed.

Q: What about if a CA does large volume sub-CA creation?

A: Had not considered that, but there’s currently a bulk import to the CCADB and there could be an API in the future.

#### 11. Disclosure of TCSCs

We are considering additionally requiring disclosure of technically constrained intermediates in the CCADB. Such certs need to be disclosed in CT anyway, and it helps us to check that they are actually technically constrained as they should be. There would be no need for CP/CPS or audit documents. crt.sh finds only 50 certificates across 8 CAs which are TCSCs valid for server authentication, so it currently seems like this won’t be high impact. Still, feedback on this idea is welcome.

URLs related to the above:

-

Firefox release schedule: <https://wiki.mozilla.org/RapidRelease/Calendar>

-

Root Store Policy 2.5 draft: <https://github.com/mozilla/pkipolicy/blob/master/rootstore/policy.md>

-

Root Program Wiki: <https://wiki.mozilla.org/CA>

-

Queue for Public Discussion: <https://wiki.mozilla.org/CA/Dashboard#Ready_for_Public_Discussion>

-

April 2017 CA Communication: <https://wiki.mozilla.org/CA:Communications#April_2017>

-

CA Operator Information Report: <https://ccadb-public.secure.force.com/mozilla/CAInformationReport>

-

CA Operator Information Report (CSV): <https://ccadb-public.secure.force.com/mozilla/CAInformationReportCSVFormat>

-

CCADB Website and Documentation: <http://ccadb.org/>

-

Technically constrained intermediates: <https://crt.sh/mozilla-disclosures#constrained>

### WebTrust Update

Note Taker: Kirk

[Webtrust-CAB-update-June-2017][1]

Jeff Ward and Don Sheehy provided the following report. They introduced their guest Janet Treasure of CPA Canada.

#### Background

-

As many Forum members know, WebTrust for CAs was based on ISO 21188

-

WebTrust criteria are generally based on frameworks that have been publicly vetted and that are generally available to the public

- The Task Force does not create technical criteria, only audit criteria based on the technical criteria developed by others
- Have proposed changes for the CABF to consider, ballot, vet and vote

#### Current Status

There is no update for the following:

-

WebTrust EV

-

WebTrust EV Code signing

-

WebTrust Code signing

-

WebTrust Baseline + Network Security

##### !WebTrust for RA (Registration Authorities)

- There is a draft version needing CABF comments – available soon (likely July)
- CABF input will clarify our path to completion – some of the critical issues are “how much security is needed”

##### !WebTrust for CAs Version 2.1

Version 2.1 updates to WebTrust for CAs will include:

- Updated introduction section
-

Removed references to WebTrust v1 for Business Practices Disclosures. All CP and CPS documents must now be structured in accordance with RFC 3647 (recommended) or RFC 2527.

- Updates to the following criteria:
-

Criteria 1.1 and 1.2 – removed WebTrust v1 references

- Criteria 2.1 and 2.2 – swapped order to be consistent with 1.1 and 1.2
- Criterion 3.6 – Expanded scope to specifically address hypervisors and network devices
- Criterion 3.7 – Expanded scope to specifically address system patching and change management activities
- Criterion 3.8 – Clarified scope to include requirement for backups of CA information and data to be taken at regular intervals in accordance with the CA’s disclosed practices.
- \[New\] Criterion 4.5 – Clarified scope to include destruction of any copies of CA keys for any purpose, and added illustrative controls addressing formal key destruction ceremonies.
- \[New\] Criterion 4.9 – New criterion added to address CA Key Transportation events
- \[New\] Criterion 4.10 – New criterion added to address CA Key Migration events
- Criterion 7.1 – Cross certificate requests added

#### Audit reporting issues

- Consistency in reporting has been an issue at times
- Types of audit opinions – there are four main types:
- Unqualified/unmodified (clean)
- Qualified (except for)
- Adverse – the point where there are too many qualifications
- Disclaimer – work is performed but the report states no opinion is being made by the auditor – these are rare
- As part of reporting templates being developed, the Task Force will provide a sample report that discusses each section of the audit report to provide guidance to the browsers \[what they should be looking for etc.\]
- Will try to keep consistency in qualified reports – both US and Canada have options that will try to be limited
- Possible transmittal letter being addressed
- Distribution of qualified reports being considered for alternatives

#### Other Updates

- Practitioner Audit Reports – US – have received AICPA comments to release updated reporting under SSAE 18. Some changes will be for modified reports.
- Canada and international reports undergoing minor updates to approved versions under CSAE 3000 and CSAE 3001. Task also includes Management Assertions that are given in qualified report scenarios.
- Practitioner guidance for auditors under development covering public and private CAs. Draft expected later this year.

##### Report Content Additions

Disclosure of Changes in Scope or Roots with no Activity

- During the year, various roots may be retired and may not be in use at the end of the reporting period. In addition, certain roots that are included in scope may not have issued any certificates. This information is important to users of the report and should be included. Reporting When Certain Criteria Not Applicable as Services Not Performed by CA
-

There will be situations where certain WebTrust criteria are not applicable as the CA does not perform the relevant CA service. (e.g. certificate rekey activities). In these scenarios, it is recommended that the auditor note in the audit report that the criteria were not audited.

List of Root and Subordinate CAs in Scope

- All reports issued must list all root and subordinate CAs that were subject to audit. For attestation engagements, this list should match the list provided in management’s assertion.
- The names of the CAs should be presented in a manner consistent with how these names appear in applications that use the CA’s certificate (for example, when viewing the certificate chain in a web browser). The most common method of identification would be the “Common Name (CN)” field in the “Subject” extension of each CA certificate.
- The list of CAs should be presented in a clear format. It is preferred to list the CAs in a referenced appendix.

Being discussed:

-

WebTrust for Delegated Third Party Providers (DTP)

- Would include Cloud, OCSP, etc
-

Feedback from CABF on integration of WebTrust for Registration Authorities

- Basic guidance developed in past – issues will include extent of testing, report leverage, full SOC 2 vs specific testing
- Criteria for integrity of Certificate Transparency databases (data in CT logs might be used by auditors)
- How can auditors determine log integrity – two CT logs might have same certificate content but could both be wrong
- Criteria and audit needed for public/user confidence and potential audit reliance

##### Some new and old issues

- Issues in Network Security still leading to qualifications in audits – potential modification of the guidelines
-

WebTrust for CA reports – should a more detailed version be created similar to SOC 2 (limited distribution/no seal). Cost and usefulness

- Cloud questions continuing to surface as well as DTP involvement, creating confusion and inconsistency on audit scope
- The audit standards have changed in US and Canada

#### CPA Canada

Latest Changes

- CPA Canada: Gord Beal, Janet Treasure, Kaylynn Pippo, Lori Anastacio, John Tabone, Bryan Walker
- Consultant to CPA Canada – Don Sheehy (Vice –chair)
- Task Force Members and Technical Support Volunteers: Jeff Ward (Chair), BDO; Daniel Adam, Deloitte; Chris Czajczyc, Deloitte; Tim Crawford, BDO; Reema Anand, KPMG; Zain Shabbir, KPMG; David Roque, EY; Donoghue Clarke, EY

Reporting Structure/Roles

-

Gord Beal – WebTrust falls into Guidance and Support activities of CPA Canada

- Janet Treasure – Seal system responsibility / product responsibility
- Bryan Walker –Licensing advisor
- Don Sheehy – Task Force and CABF
-

Jeff Ward – Chair of the WebTrust Task Force and primary contact

-

All Task Force members provide WebTrust services to clients

- Volunteers are supported by additional technical associates and CPA Canada liaison but report to CPA Canada

The next day, the Forum discussed the interest of many CAs in moving portions of their certificate systems to the cloud. It is widely believed that this is prohibited by current WebTrust requirements, especially the Network Security audit requirements. Kirk asked Jeff and Don if WebTrust could formulate new audit requirements that could address cloud-based CA systems. There was a lengthy discussion of the challenges involved in auditing activities in a cloud-based environment. In theory, an auditor could apply existing audit requirements to a cloud data center if the data center allowed it, but that would be difficult. The general conclusion was that the new Network Security Working Group should address some of these issues in any new requirements. Kirk asked whether the new requirements should include special provisions for cloud environments, but Ryan said no, the requirements should just be stated and left to the CA, auditor, and cloud service provider to figure out how to comply and prove compliance to the auditors.

### Guest Speaker

Dr. Jens Bender, BSI Bundesamt für Sicherheit in der Informations-technik Referat “eID-Technologies and Smart Cards” Topic: “eIDAS - Current Status”

### ETSI Update on European Norms for Trust Service Providers by ETSI (Arno Fiedler)

Note Taker: Connie Enke

- Presentation with the Standardization Framework – Slide 2
- TSP Standard Overview – Slide 2
- Ongoing Standardization –Slide 3
- Question on requirements for Signing Service – hint from Arno join the ongoing working group
- EN 39 411-1/2 policy requirement – Slide 5
- New Service within eIDAS signature Validation based on a new Standard – Slide 6
- New CN Standards are upcoming for Signing Device – Slide 7
- Also a new introduces I secure delivery Services – Slide 8
- Next new Service – long-term signature preservation – slide 9
- Internationalization Workshop in USA March 2017 – Slide 10
- Workshop with Jipdec – in July 2018 – Slide 11
- Allover Information for actual project please reverse to slide 12 of Arnos presentation

Presentation of updated ETSI EN 319 411-1

- Question regarding issuing CA last CRL
- Inigo answered it should be covered in the new standard revision

Presentation Clemens Wanko TüVIT

Conformance Assessment Body – located in Germany

Why Europe needs eIDAS – harmonized legally bnding digital communication within the EU legislation, industry and citizens. Qualified Service binding legal value is anticipated / reverse burden of proof

Slide2 of Presentation listing of defined Services from 01.July 2017

QWACS- European Alternative to register at Browser Rootstores

eIDAS and ETSI Assessment Players there is a TSP that is assessed by Assessors they are belonging to an Conformity Assessment Body (CAB) using the defined Assessment Criteria’s The CAB is reporting to a supervisory Body (National) the supervisory body puts the certificates the are good to the rusted list.

Ryan formulated the following GAP: When a Supervisory Body removing a TSP from the List it is possible that the TSP will be on the List back again on the List with the same keys – that is a GAP in the law

This Problem is related to the validation process

Dimitris said that the TSL does not “remove” a TSP from the List but merely removes the “granted” status for corresponding CA and Time-Stamping Certificates. If there is a problem with a TSP, and depending on the problem (for example a Root or CA Key compromise is different than an issue where the Auditor delayed to provide the Conformance Assessment Report in due time), the Supervisory Body will mark this TSP’s entries accordingly. In order for signing actions to be “qualified” (whether in document signing, SSL/TLS authentication, etc), at the time the signing action take place, the CA or Time-stamp Certificate must be in the TSL with status “granted”. He presented the following example:

1. A TSP is in the TSL with status “granted” in May 2017
1. The TSP issues a Qualified Certificate for digital signatures in June 2017
1. The Subscriber uses this Certificate and signs a document in June 2017 (signature A)
1. The TSP fails to deliver a Conformance Assessment Report (CAR) by July 1st 2017 (as required by the eIDAS regulation) and removes the “granted” status from the TSP on July 10th 2017
1. The Subscriber, using the same Certificate, signs a document July 15 2017, when the TSP does not have the “granted” status (signature ![B)](/wiki/moin_static199/modernized/img/smile2.png "B)")
1. The TSP submits a “clean” CAR to the Supervisory Body in August 2017 and the Supervisory Body updates the TSL by **adding** a new entry for the TSP, which marks the new date after which the TSP has the “granted” status again.
1. The Subscriber, using the same Certificate, signs a new document on September 2017, (signature C)

The result would be:

- “Signatures A and C” are Qualified, because the TSP had the “granted” status when the document was signed.
- “Signature B” is not Qualified because the TSP did not have the “granted” status when the document was signed.

People can expand from this example for what is expected for QWACs. “Qualified” status for a web site is similar to EV. If the TSP did not have a granted status in the TSL at the time of the TSL/SSL connection, it would not have “Qualified treatment”.

Summary of Discussion: To provide a most possible Security for clients a List of all issued client certificates should be created – to ensure and overview all existing certificates for every subject

The ETSI standard provides guidance and requirements to report any incident and have plans and procedures available to handle situation like key compromise or misissuance.

Conformity assessment body will accreditate the national accreditation bodies – they will accreditate conformity accreditation bodies

Note: there may be more conformity assessment bodies – they may be not allowed to conduct ETSI conformance audits

Please note that the ACAB-C has provided a sample for an attention letter. This letter was before presented in Redmond. If there are any questions or remarks on it post it to the ACAB-C Forum.

### Guest Speaker

Clemens Wanko from TÜVIT/ACABc – “Update: Addressing Browser Audit Requirements under eIDAS/ETSI”

Clemens said that there were several discussions with the Browsers that resulted in an audit report template that would meet the Browser’s expectations.

Dimitris asked if this template could be posted on the public mailing list.

### Governance Working Group Report – Overview of draft Bylaws changes.

Note Taker: Dean Coclin

The group presented a summary of changes to the bylaws with slides prepared by Virginia Fournier. These are attached here. In addition, a markup of the bylaws was presented and comments were provided by the attendees. They are provided below, by section:

5.1 (a): change to 2 weeks following the meeting after the minutes were taken. Ryan was concerned that the minutes might take too long to publish if left as is. In addition, he said the publication of the minutes allows for transparency and triggers IP obligations.

VMF: We talked about this in the Governance WG, and we didn’t like the idea of minutes approved by default before the next meeting. In other standards organizations, minutes are approved at the following meeting – this gives members the opportunity to discuss and correct any issues. The working group will take this under advisement and discuss at its next meeting

5.3.1: add Associate Members, provided they sign the IPR policy. A separate discussion took place regarding the status of AMs and their participation in the WGs. Specifically WebTrust.

VMF: Associate Members could participate in WGs if the charter permits that. However, Associate Members are non-voting members of the Forum, so they would not have a vote in WGs either. Also, Associate Members would have to sign up to the IPR Policy as required by the Bylaws. Perhaps a separate IPR for AMs should be considered.

5.3.1 (c) should create top level definitions/criteria for communications. Examples are x,y,z

VMF: The Governance WG decided that each WG could specify what communication methods works for them in their own charter, rather than having a Forum mandate that everyone needs to use a Sharepoint site, for example. Some members felt that the bylaws should not be prescriptive, but rather list just high level requirements such as “open, transparent, archivable, etc). The group will re-look at this.

5.3.2 (b) set some boundaries for length of time of poll

VMF: This seems ok. We talked about 1 week (similar to ballot review). The working group will discuss what is reasonable

IPR Policy Check definitions of Participants and Members. Participant refers to Members (should refer to AMs as well)

VMF: The IPR Policy doesn’t mention “Associate Members” at all. Does anyone remember why that was?

The draft Bylaw will be sent out to all members, requesting that their legal teams review and provide feedback.

### Recap, logistics

### Adjourn for the Day

## Day 2 – Thursday, 22 June 2017

### Recap of Prelim Matters, Review Agenda and Logistics

### Antitrust Statement & Assign Note Takers

### Approve Minutes CABF teleconference June 8, 2017

### Validation Working Group Report.

Note Taker: Doug Beattie

Notary ballot 192: Voting has started (and ballot subsequently passed)

Peter created 4 different branches in github to document the proposed changes for upcoming ballots:

Add dnQualifier as an allowed attribute for all certificate types (including DV).

-

If SubjectAltName is critical, then you can have an empty subjectDN but this will likely not be compatible with PKI clients

- The DN qualifier is a CA specified value (not subscriber) that will allow the subject DN to not be empty. This will allow the depreciated CN to be phased out.
-

[https://github.com/cabforum/documents/compare/master…pzb:dnqualifier?expand=1](https://github.com/cabforum/documents/compare/master...pzb:dnqualifier?expand=1)

Add ASN.1 info on the EV jurisdiction attribute types. There is ambiguity about what the valid values of these fields are and this change re-affirms the common understanding and more clearly specifies the values

-

[https://github.com/cabforum/documents/compare/master…pzb:evj-asn?expand=1](https://github.com/cabforum/documents/compare/master...pzb:evj-asn?expand=1)

Add language to the EV guidelines to clarify that CAs may limit their aggregate liabilities, These align with the current ENO insurance limits already in the guidelines.

-

[https://github.com/cabforum/documents/compare/master…pzb:ev-liability?expand=1](https://github.com/cabforum/documents/compare/master...pzb:ev-liability?expand=1)

Allow underscores in domain names and clarifies what can go in common names. This builds on Ben Wilson’s draft

-

[https://github.com/cabforum/documents/compare/master…pzb:underscores?expand=1](https://github.com/cabforum/documents/compare/master...pzb:underscores?expand=1)

Validation ballot, 190:

- Kirk sent out a recommended ballot recently.
- Peter send out a recommendation to split the ballot
- Ryan recommends split: Adopt 11 methods while leaving the re-use discussion to future ballot and work through the question of interpretation of reuse because there is some uncertainty about what is “data in documents”, for example, is an audit event considered “data in documents” that can be reused?
- Is the statement “I validated this with a random number” the “data”? There may be a need to document more precisely what this is for each method.
- Gerv suggests tracking domain validation by method and date so CAs can re-do only those validations if there is an issue with the method in the future.
- Kirk recommends moving forward with the latest ballot text while Google and Apple want to postpone until the language on reuse is more clearly specified.

### Disclosure of SSL Technically-Constrained Sub-CAs in the CCADB.

Note Taker: Mads Henriksveen

Gerv: The CCADB has a disclosure scope which currently includes root certificates and unconstrained intermediates used for SSL. Email intermediates or technically constrained intermediates for SSL do not have to be disclosed. My proposal is to require disclosure of Technically Constrained SSL intermediates in the CCADB to further improve the better transparency for the ecosystem. Are there any difficulties with this proposal?

Robin: Could these be logged in CT-logs instead?

Gerv: Disclosure in CCADB does not need CT.

Ben: Mozilla requires that disclosure occur within one week of creation and before use.

Gerv: CCADB is public and this is good for the analysis of the ecocsystem.

Ben: Microsoft would like this information as well, but perhaps with a broader perspective.

Dimitris: What about intermediates for Code Signing and S/MIME?

Gerv: Code Signing is out of scope for Mozilla, regarding S/MIME this is not clear (at least not for those only doing that). How SSL tight is the CCADB?

Ryan: Microsoft use CCADB for Code Signing etc – it is not that SSL tight.

Gerv: Disclosing S/MIME intermediates is a good idea.

Chris: CCADB has a batch import mechanism that can be used to import several certificates.

Neil: Would it be possible to automate this through APIs and provide documentation on how to do this?

Gerv: I will talk to Kathleen about how hard this will be, i.e. endpoints where you can deliver certificates and add metadata to define the type of certificates.

Ryan: Metadata for S/MIME and Technically constrained intermediates, there are not needed audits.

Ben: This is not undoable, but it will take some time.

Gerv: Only new ones have to be included. An API will be useful, but in general no objections.

Doug: Since Technically Constrained has not yet required disclosure, this could be a lot of certificates.

### Policy Review Working Group Report.

Note Taker: Neil Dunbar

Dimitris Zacharopolous (DZ): Policy Working Group review ballot 188. Discussed concerns raised on the mailing list. There emerged three principle conclusions:

1. Where we use the new text ‘CA Certificate’, ensure this implies no policy changes due to the replacements. The goal would be for the new ballot to be policy neutral.
1. Add term ‘CA Operator’ where we use the term ‘CA’, so the term CA Operator or CA Certificate should be present in BRs where applicable (instead of just ‘CA’).
1. ‘Externally Operated CA’ shall be used in 6.1.1 and Policy Identifiers Section. All others will use Subordinate CA, without the adjective Internal/External, to the extent possible.

Kirk Hall (KH): Any markup to show for the proposed changes?

DZ: The group was working from BR 1.4.1, so it should not be difficult to mark up a copy. We will use GitHub to demonstrate the proposed changes.

KH: Have any ambiguities arisen as a result of those changes?

DZ: We tried to ensure that there were no ambiguities. If any do come up, we will revert the changes so that both CAs and auditors have a clear idea of what each term means.

KH: Noting that the previous ballot on terminology failed, is the new ballot substantially different?

DZ: The new ballot will be introduced with knowledge of what caused the previous failure.

Ben Wilson (BW): Wasn’t there an additional discussion in the WG besides ballot 188?

DZ: We also talked about future work for the Policy WG. The central idea was to separate policy requirements from practice requirements. In thinking of including S/MIME and Code Signing working groups, it might make sense to have a common language and practice document which spans certificate types, e.g. a common identity validation definition. So, that different certificate types only need to address type-specific concerns. However, most certificate types have common policy requirements.

BW: We also discussed this in the Governance WG. With different models, how do we track CA/B Forum commonality across subordinate groups?

KH: For a new WG, can we just say validation shall be via BRs, excepting particular steps as needed? But if the base document changes, how does the WG handle this? Is the notion to create a superior document which can’t be overridden by a single WG?

DZ: Yes. WGs would refer to the specific base document. But focussed primarily on policy rather than practice, i.e., a true Certificate Policy, then a different document would show specific controls and procedures, somewhat like a practice statement.

KH: So if Governance WG changes go through, will Policy become a subgroup of the Web Server WG which takes over?

DZ: Working Group leaders will need to convene to ensure no inter-group conflict.

KH: Or each WG can do so independently?

Andrew Whalley: Non controversial commonality should be able to be established. Maybe not validation but key storage, or certificate profile, could be defined by a common vocabulary, which would extend across working groups.

DZ: Also definitions for terms can be made common.

KH: Governance WG probably needs to think this through, has it come up so far?

BW: It needs to be thought on, but the Governance WG has not yet done so.

DZ: Hopefully by the time of the next meeting, we should have a replacement ballot for ballot 188 ready.

KH: I recommend that in the future, the WG pick a given BR version, then drop in changes on a chapter-by-chapter basis, rather than all in one. This avoids the failure of the entire workload.

DZ: Some of these changes will need to be looked at throughout the whole document, for example, when we introduce definition changes.

### Add BR-Required Self-Assessment – CA mapping of their CP/CPS to the BRs.

Note Taker: Jos Purvis

Gerv opened discussion: When CP/CPS documents are submitted for approval, Mozilla has to ensure they’re compliant with the Baseline Requirements, which means mapping requirements in BRs to the CA’s CP/CPS documents. This work seems better done by people more familiar with them-i.e., the CAs-and that will reduce the amount of work being done by Mozilla personnel. Mozilla is therefore now requiring a BR self-assessment, and has provided a template document for this. Kathleen at Mozilla has suggested that this template might be better owned by the CA/B Forum for the use of all the root programs, and potentially be made a part of the BRs as a periodic requirement on CAs.

Ryan raised a clarification that the current Mozilla document does not list the BRs: instead, it takes the structure of the BRs and asks CAs to provide references to where in their CP/CPS documents these requirements are placed. This allows CAs to map between RFC3647 structure and their own CPS, where there are differing placements of sections. Today’s Mozilla form, then, is just a means to map the bits of 3647 to the CA’s own CP document. *This is still useful*, he said, particularly when discussing 3647 mapping into other languages, but it’s not quite what Gerv initially described. He indicated that what Gerv is describing is closer to what ETSI has done with their standards: mapping them to other standards and listing out specific requirements to make life easier for ETSI auditors (cf. ETSI “assessor’s guidance document”).

Bruce said that since the BRs are 3647-structured and there’s a forthcoming ballot requiring CP/CPSes to map to 3647, the sort of mapping Ryan is talking about (that the Mozilla document currently does) wouldn’t be very useful because everything will already be where it’s expected to be.

Gerv asked about the status of the ballot on mapping to 3647; Ryan responded that it’s on Github, just awaiting co-sponsors. Ryan wondered whether that ballot might need changes in light of this discussion, and whether it might want to add normative requirements with the assignment of tags for auditors around requirements (e.g. “DV-REQ-01” for the first domain validation requirement).

Ben pointed out that CAs often do these mapping exercises to other requirements documents like the BRs for participation in other PKIs like the Federal Bridge, and that this seemed similar to what Gerv was originally describing. He felt it could be very useful for other purposes outside of the BRs.

Gerv said it seemed to him that passing a ballot to require 3647 compliance would meet a lot of what Kathleen was trying to achieve. He wondered if he needed to go back and meet with her to understand how much that would do for her and whether there was more to it.

Ryan pointed out that it’s a tremendous effort for the root stores to do CP/CPS review, and that CAs may still place representations of requirements in different sections. He pointed to the certificate profile or validation practices as ones that could reasonably be inserted in at least two different places in a CP/CPS document depending on interpretation. 3647, he said, has some general statements about what goes where, but in today’s world it’s still pretty spread out and that while compliance to 3647 helps, it may still allow things to go in other places. He felt this templating/mapping work would therefore still be useful.

Gerv wondered whether it would be useful to insert hints in the BRs to indicate which section of a CP/CPS document is best to put information about compliance to each requirement.

Ryan said that, looking at the recent OCSP ballot, some CAs put information about CRL/OCSP into section 7.2, others in section 4.6. ETSI documents tend to more rigorously mandate the structure and content of the resulting document (e.g. “section 7.6 shall be a table describing…”). He felt that more rigorous approach might be more useful with the BRs-more of a “fill in the blank” approach.

Neil pointed out that it’s not a simple mapping. CAs have to put in explanatory text indicating how you arrived at that mapping. Sometimes the placement of a section may be very obvious, but other times (he cited domain validation) they may be all over the map. In addition, he pointed out, some sections in the BRs have no text at all.

Ryan said CAs have asked Google, “What do you want in this section?” He said Google is looking for, “You said you validate these things: how do you validate them? Which methods do you use?” 3647 would get to the substance of what’s needed, but it’s still not sufficient. The only issue with being too prescriptive about structure is that it may cause conflicts for participation in multiple PKIs like the Federal Bridge whose requirements for mapping might conflict with the BRs.

### Network Security Working Group – Initial Discussions.

Note Taker: Dean Coclin

Ballot 203 has passed which forms the Network Security Working Group.

During the working group meeting on Tuesday, the following raised their hands as interested participants: Ben Wilson, Dimitris Zacharopoulos, Jos Purvis, Mike Reilly, Ryan Hurst, Doug Beattie, Steve Medin, Dean Coclin, Don Sheehy, Moudrick Dadashov, Robin Alden, Neil Dunbar, Wayne Thayer, Tim Shirley, Bruce Morton, Gerv Markham (volunteering Tom Ritter of Mozilla), Janet Treasure, Dean Coclin

The Forum Chair will send out a formal notice of invitation to members and interested parties to join the working group.

During the working group meeting, Dean nominated Gerv (or representative of Mozilla) as WG Chair. Ben said we should wait till the formal notice goes out. Ryan Hurst volunteered to be interim chair

Wayne will setup the WG mail list.

A regular meeting will be scheduled on the alternate weeks of the regular CABF meetings, same time.

On Tuesday’s meeting we discussed the following:

1. Partially reviewed Ben’s spreadsheet of issues
1. The current regulations do not accommodate CAs in cloud environments
1. Don Sheehy suggests a “risk based” approach, rather than a “controls based” approach
1. Ryan H suggests we don’t have the right people in the room to create/modify this document
1. Root programs don’t universally agree on the current requirements in the Net Sec document

It was hoped that a general call for participants will result in interested parties with general knowledge of this area and/or professionals from the participating CAs

It was suggested that the group focus on CA “pain points” as a first step, specifically areas such as offline root management, prescriptive days, and AV requirements for read only media. Perhaps the group can do a quick pass to fix things that are major issues.

### Review of pending ballots.

#### Ballot 184 – RFC 822 Names and otherNames, SRV names (Jeremy)

Ben Wilson: Peter Bowen is working on the ballot on GitHub

#### Ballot 186 – Limiting reuse of validation information (Ryan)

Ryan: Update depends on ballot 190 progress, based on technical risk and suitability of validation method for long-term use.

#### Ballot 190 – BR 3.2.2.4 Validation Methods (Kirk)

Already dealt with.

#### Ballot 192 – Notary Clarification (Jeremy)

No comments.

#### Ballot 202 – Underscore Characters in SANs (Ben)

Ben Wilson: Have final language, Need endorsers.

#### RAs and Delegated Third Parties (Gerv)

Gerv: Looking for endorsers. It’s possible the existing state might be needed by certain CAs who are having problems and might need delegation.

Gerv: The problem here is that it’s difficult to ensure that audit qualifications of DTPs are reflected in the audit of the parent CA

Ryan: Translation services and such will be covered in the audit of the parent CA under this proposal.

Doug Beattie: If you delegate to someone who is WebTrust audited, would that not be covered? Gerv: No. Ryan: You already have to be doing that \[having an audit of the DTP\] before the ballot. The problem this tries to solve is of audit qualifications and remediations of DTPs not being visible. Gerv: It might be possible to fix the problem other ways, but since no-one was actually using full DTPs it seemed easier to just ban the practice. Ryan: This is a similar problem to the SOC.2 application to service providers and other work, so maybe if that gets solved we can bring this back.

Doug: What if we made an exception just for people in one or more root programs? Gerv: Is this for a contract you might be signing with another root program? If that relationship looks like this, you have done something wrong. In such a case all the issuance of certificates should be done by the partner, so the domain validation will not be done by a different person than is issuing the certificates. Doug: That’s not the way I read it, so… Ryan: The proposal for this specific case has said there will be no DTPs involved, it is a specific bullet point. … If you have an audit, and another root CA has an audit, you might be using systems from the other root CA which aren’t covered by their audit, leaving a gap.

Arno: Explained how his system works. They successfully guarantee that the topmost audit’s requirements are covered. Gerv: The problem is not that auditors don’t know how to audit correctly, it’s one of pass-through between the audits.

Kirk: If I have a translator in Ecuador, and they make a phone call for me, I think that’s a DTP. Ryan: Yes, although these are corporate identity checks not domain validation. Kirk: I was discussing practices at Trend Micro, not Entrust, but this is something we did. I’m concerned the exact wording of the ballot might prohibit this. Ryan: This just means the translator will be in scope of your audit. Geoff: But today, the translator doesn’t have his own little WebTrust audit, correct? Kirk: No… Gerv: It’s true that the section on DTPs doesn’t say that agents covered by your own WebTrust audit are not DTPs.

Kirk: For example, the requirements only say that your employees need to have background checks, not your agents. Ryan: There are some giant loopholes as applied in practice.

#### Expected ASN.1 grammar for BR & EV certificates (Peter)

We went over that already.

#### Bylaws change – Membership requirements (Gerv)

Gerv: Now has a second endorser so it’ll be brought to the list shortly.

#### Bylaw change – Voting rules (Jos)

Jos: Did I propose that? Uh, in that case, this is a great idea! We’ve had a number of recent problems with the balloting process, and there’s a real problem with ‘so what now’ when a problem occurs. There might be some quick fixes we want to think about. Email is not a good system, except for all the others available to us… We might make organizations specify who can submit a vote. Maybe some strictures about what happens if there is a debate about the validity of a vote. The rest we can safely punt to the governance working group.

Ben: Also, something about which version of the ballot text takes precedence. Jos: I’m happy to discuss it, or just toss out a version on the mailing list.

#### Requiring RFC 3647 format (Ryan)

Ryan: Proposed effective date 1 Feb 2018. Hopefully vague enough to allow the flexibility we discussed while still having an effect. Intentionally loop-holey to get the rough idea. Two endorsers found in meeting.

#### Profiling OCSP & CRLs (Ryan)

Ryan: Will send to management list. Concerns around issuance of CRLs and frequency of that, offline CAs vs. how quickly you can revoke an intermediate. One recent intermediate revocation took multiple days to propagate from a CA’s issuance of CRL through their CDN. The OCSP side is mostly there except for subordinate CAs and multiple OCSP responder certificates. Some CAs give their OCSP certificates to other entities, under a ‘creative’ interpretation \[of the BRs\].

Ryan: We know there are ~50 CAs which sign OCSP online because they’ll sign a nonce. It’s basically the same as online certificate issuance, it needs to be robust, but we haven’t provided any guidance.

Ryan: We’ve heard from some CAs that the restriction on delegated CA responders will be a problem. We’ll listen and adjust accordingly.

#### Change in liability for EV certificates (Peter)

Nothing to add.

#### Any other ballots?

None!

### Information about next F2F Meeting 42 in Taipei, October 3-5, 2017

[CAB-meeting-42-in-Taipei][2]

### Membership Requirements for Browsers

Note Taker: J.P. Hamilton

Mozilla proposed changing the CABF Bylaws language to allow non-browser Root Stores like Cisco to join as a Browser member.

Gerv read the current Bylaw for Browser membership requirements. Discussion then turned to allowing Cisco to join, but also ensuring that the language doesn’t allow just any product with a simple root store to join as a browser member of the Forum

Dean asked if Cisco was formally asking to join Forum as a Browser. Cisco confirmed its interest in joining as a browser member and its willingness to wait until new working group bylaws for the new Web Server Working Group are drafted, if necessary.

Ryan brought up previous discussions on a similar issue years ago with Ballot 28. Gerv suggested Cisco could join under current rules.

There was a discussion of the uses of the Cisco root store and program versus that of the uses of the roots stores of current browser members, and whether the relationship between CAs and Cisco was similar to the relationship between CAs and the current browser members.

Gerv stated that Cisco is running a set of Root stores where it is making independent decisions on root store inclusion, similar to current browser members. Ryan brought up previous ballot 28 again as an example of difficulty in deciding the scope of browser membership and concerns that were previously brought up about overly broad criteria for browser members.

Ryan and Gerv discussed the options for Cisco’s membership as a browser under the current Bylaws language. Ryan also brought up previous discussions about browser membership criteria with Oracle and Adobe.

Ryan then suggested that Cisco may already meet the browser membership requirements in the Bylaws due to its multiple products using its root store. He also asked that we update the membership language in the future.

Ryan and Gerv then suggested that Cisco reapply as a Browser member and include information showing it meets all current membership criteria for a browser members. Under the Bylaws, the application will then be submitted to Forum members for approval by consensus, subject to the ability of any member to ask for a formal ballot on membership. Gerv then asked any member who thought Cisco did not qualify as a browser member under the current Bylaws to express any concerns about this privately to him or to Cisco.

### Review accomplishments / list of tasks, thank you to hosts

### Adjourn

[1]: /uploads/Webtrust-CAB-update-June-2017.pdf
[2]: /uploads/CAB-meeting-42-in-Taipei.pdf