---
aliases:
- /2017/10/04/2017-10-04-minutes-face-face-meeting-42-taipei/
author: Ben Wilson
date: 2017-10-04 20:04:27
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 42 Meeting in Taipei, 4-5 October 2017
type: post
---

## Final Meeting 42 Minutes – F2F meeting, Taipei, Oct. 4-5, 2017

Preliminary Note: The CA/Browser Forum was delayed in completing the minutes for its last Face-to-Face meeting Oct. 4-5, 2017 in Taipei, and the proposed final Minutes were only sent by the Chair to the Members on December 13, 2017 for their review. There was not enough time for Members to review the draft before the next teleconference of December 14, and the teleconference of December 28 was cancelled due to the holidays. The next Forum teleconference is scheduled for January 11, 2018.

To avoid further delay in publishing the Final Minutes on the Public list, we are following Bylaw 5.1(a) which states that draft Minutes will be considered final two weeks after publication to the members, at which point they will be considered final and be posted to the Public list. The only edits offered during this two week review period were from the Mozilla representative, and the edits related solely to Mozilla’s presentation during the meeting and so were accepted.

**Attendance:** Peter Bowen (Amazon); Geoff Keating and Curt Spann (Apple); Jeremy Shen (Central Police University); Franck Leroy (Certinomis / Docapost); Wayne Chan and Sing-man Ho (Certizen Limited); Wen-Cheng Wang, Bon-Yeh Lin, Wen-Chun Yang, Jenhao Ou, Wei-Hao Tung, Chiu-Yun Chuang, Chung-Chin Hsiao, Chin-Fu Huang, Li-Chun Chen, Pin-Jung Chiang, and Wen-Hui Tsai (Chunghwa Telecom); Alex Wight and JP Hamilton (Cisco), Robin Alden (Comodo), Gord Beal (CPA Canada), Ben Wilson and Jeremy Rowley (DigiCert), Arno Fiedler and Enrico Entschew (D-TRUST); Kirk Hall (Entrust Datacard); Ou Jingan, Zhang Yongqiang, and Xiu Lei (GDCA); Atsushi Inaba and Giichi Ishii (GlobalSign); Wayne Thayer (GoDaddy); Devon O’Brien (Google); David Hsiu (KPMG); Mike Reilly (Microsoft); Gervase Markham and Aaron Wu (Mozilla); Hoang Trung La (National Electronic Authentication Center (NEAC) of Vietnam); Tadahiko Ito (Secom Trust Systems); Leo Grove and Fotis Loukos (SSL.com); Brian Hsiung (Sunrise CPA Firm); Steve Medin (Symantec); Frank Corday and Tim Hollebeek (Trustwave); Robin Lin, David Chen, and Huang Fu Yen (TWCA); and Don Sheehy and Jeff Ward (WebTrust).

### Antitrust Statement – Read by Robin Alden

### Mozilla Root Program Update – Gerv

Notetaker: Jeremy

1. Mozilla root policy 2.5 shipped. Anyone with questions should ask Mozilla.
1. All s/MIME intermediate certificates must have true technical constraints by Nov 15 2017. Revocation of non-compliant intermediates must happen by April 15, 2018.
1. Non-BR cert and OCSP issues. Lots of reports of non-compliance with public thanks to Ryan and other reports. Mozilla looks at the severity of the problem along with the speed, openness, depth, and competence when deciding what to do. Part of the remedial action is to integrate checks into the issuance process that evaluate compliance prior to issuance. Mozilla is debating whether there will be a requirement for programmatic checking added to the Mozilla policy.
1. BR self-assessment. Mozilla may require CAs to perform a Self-Assessment to surface additional compliance issues. This is just a proposal at this point. Feedback is welcome. One assessment would be required for each CP/CPS pair.
1. CAA and CNAME. Mozilla permits the errata and non-errata checking. The expectation is all CAs will migrate to the errata within the next three months after the ballot requiring use of the errata is passed by the CAB Forum.
1. ONECRL. The process for adding intermediates to OneCRL is established. Mozilla adds a batch of non-urgent updates every 2 weeks. Mozilla will make more urgent updates as needed. OneCRL is only checked for TLS (and is not checked for s/MIME). CAs can add their legacy non-constrained CAs to avoid BRs. However, this is only appropriate for legacy intermediates. New intermediates must be technically constrained. Be sure to test the certificate’s serial number before it is marked as revoked in CCADB. Many intermediates have similar names.
1. CA Communication. The next CA communication will occur in the Nov/Dec timeframe. The communication will include administrative notices, self-assessments, a request for CAA identifiers, a CABlint requirement, and refinements to the problem reporting mechanism. All CAs are expected to have at least one CAA identifier. There will be penalties for failing to add intermediates to CCADB within the one week requirement. Mozilla is pondering whether each CA should provide an email mechanism for communications. Gerv will make a note to alter the report to spam proof the email addresses.
1. Aaron Wu is working towards getting all BR self-assessments completed. Aaron will let CAs know if further information is needed. Only after Aaron completes his review does a CA move to the public discussion phase.
1. Firefox changes. Firefox 58 will print warnings to the developer console for Symantec-rooted EE certs if the notBefore date is before June 2016. Firefox 60 will disable all these certs (due out in May 2018). Firefox 57 will include the first ever formally verified cryptographic primitive in a major browser. The implementation uses Curve25519 for key establishment. Gerv will consult with Firefox team to discuss when they will extend permitted keys to include 25519.

### Microsoft Root Program Update – Mike

Notetaker: Robin

Team updates: * Keri Street no longer with Microsoft

- Karina Sirota hired a few weeks ago
- should be used for communications to ensure timely response. Communications to CAs will come from this address as well rather than from individual team members

Microsoft Trusted Root Program releases through Windows Update: * Most recent release had 43 changes. Details at http://aka.ms/rootupdates. Highlights:

- This release will “NotBefore” 6 WoSign/Startcom roots per Windows Security Blog
- Next release targeted for end of November 2017
- Govt Domain constraints: technical solution pushed out to latter half of CY18
- Continued efforts toward automation of program processes to minimize errors and enable increased verification of program compliance

Update on our Common CA Data Base CA Audit Letter Validation project (Jixi) * Purpose: CA Audit Letter Validation using Natural Language Processing. Accept requests from Salesforce to validate CA audit letter and pass results back

- Status: Connected to CCADB Prod for testing and bug fix phase
- Demo at next f2f (March 2018 in Virginia)
- Daju project: Increase automation of the process of ingesting CA changes and delivering the bits needed to deploy the changes as part of our Windows Update process. Basically, creates a program dashboard for change control. Targeting January 2018 to go live

Reviewing all external facing communications (e.g. websites, contracts) for consistency and improvement opportunities

EIDAS Technical Best Practices Document status: (submitted to Head of eGovernment and Trust Unit for the EU) in coordination with the other Browsers (Mozilla, Google and Apple) * Basically, a summarized version of browser program requirements related to technical best practices

- Receipt acknowledged but no additional feedback or next steps proposed

Other areas of recent focus include: * Certificate Transparency (CT)

- Building out CT Monitor as part of TRP
- Participating in CT policy days with other browsers in November
- Impact of CT on Govt partners?
- DNS Certification Authority Authorization (CAA) Implementation
- Given that CAA is now mandatory and ballot 214 is currently in voting period, Microsoft will give immediate dispensation for CAs to issue certificates following the algorithm specified in either RFC 6844 or RFC 6844 as amended by Erratum 5065 when performing the mandatory pre-issuance CAA checks. If Baseline Requirements are updated to require Erratum 5065 algorithm, then CAs will be expected to transition to this updated algorithm within a reasonable amount of time which may be specified by a follow on ballot to 214 in the CAB Forum.

SHA-1 deprecation updates can be found at http://aka.ms/sha1

### Google Root Program Update – Devon

Notetaker: Peter

Google Chrome Program Update

Devon presenting

– Chrome has shipped new certificate parser on all platforms - used instead of platform native parser or BoringSSL (Linux on 63 is the last to land)

- – Q: Why did Chrome do this?
- A: Foundational component for future work

– CT: Some churn on log list. Expect-CT experimental header shipped in Chrome 61. Starting to take a better look at inclusion proof checking, both in browser and in the crawler, to help assure things are included in the log.

– UI: HTTP Bad is continuing to roll out to mark as negative indicator. 62 marks as negative in incognito mode and any use form interaction. New paper on research.google.com on causes of TLS errors; data is being used to create TLS error pages. New MITM page that triggers on known misconfiguration page for AV and detected captive portals.

– As of yesterday, Google has signed the CCADB agreement, so they are now officially working with Mozilla on CCADB

– Symantec blog post is up; managed PKI discussion is continuing on m.d.s.p

– Want to push CP/CPS to follow RFC 2527 & 3647 formats (for those not using either)

- – Gerv comment: Mozilla wants all to move to 3647

– Looking to improve incident response reporting and blameless post-mortem practices and increased transparency. Revocation is necessary but not sufficient response in many cases.

– Q re CT: Is April finalized? A: CT policy days will finalized the exacts dates

– Q on cert parser: Does it affect path processing? A: No. Still using securityframework on mac

– Q: Have they put out final details on CT days? A: Will check with R. Hurst

– Q: Are you confident that the CT ecosystem is strong enough to support April date? A: Yes, R. Hurst’s team is working to flush out any remaining bugs on the Trillian code base

– Q: Will a certificate issued with SCTs that are trustworthy at issuance continue to be SCT-valid if the logs are later distrusted? A: Policy calls out log trusted at time of issuance, not at time of TLS handshake

– Q: Is there a single central place that has a reference list of trusted logs? A: Yes, it is on gstatic

– Q: Will logs be distrusted retroactively? A: (Gerv) There is a possibility that it could happen, especially for a small period of time, but unlikely.

– Q: Will Google work with Mozilla on best practices to avoid conflict? A: Yes, but these are just best practices, not specific requirements. A: (Gerv) I doubt there will be significant disagreements

### Apple Root Program Update

Notetaker: Wayne

Curt Spann –

– Just released iOS 11 and MacOS High Sierra – these releases include the improved revocation checking mechanism that was presented in Berlin

– Latest batch of improved root inclusions have been completed

– Focusing on creating a CT log policy. It will include a log monitoring solution. Curt will be at CT policy days in November and is looking for community input.

Peter – does slight false positive risk present in the new revocation mechanism still exist?

Geoff – Yes, nothing has changed. We are not hearing about false positives. The IDP flag in CRLs does cause issues with this revocation mechanism – avoid IDP (partitioned CRLs) if possible. If having a problem with revocation on the latest version of iOS or OS X, try:

- Enable OCSP Stapling (immediate)

- Update CRLs (take effect with next download version)

- • Publish a full CRL (no issuingDistributionPoint)

- Place relevant certificates in Certificate Transparency (weeks)

- • For every CA, put one cert in CT which references a full CRL

- Contact certificate-authority-program@apple.com

Peter – can anything be done to eliminate a specific false positive?

Geoff – no, because the certificates that trigger false positives will change over time.

Robin – it’s generally not in the CA’s control if OCSP stapling is used or not.

Geoff – if, worst case, you can’t get customer to implement OCSP stapling, reissue the cert. The new serial will solve the problem for that specific certificate.

### WebTrust Update

Notetaker: Kirk

Jeff Ward, Don Sheehy, and Gord Beal made the following presentation (available for download)

Current Status: WebTrust for CA 2.1 is complete. Generally, sections added on key migration, destruction and transport that were not in ISO21188. V2.1 will be effective September 1, 2017. hanks to CA/B members for comment

Details of changes in WebTrust for CAs v2.1 – Includes: Updated introduction section, including clarifying definitions for Root CA, Intermediate / Issuing CA, and Subordinate CA, and added explanation of a Bridge CA structure.

Removed references to WebTrust v1 for Business Practices Disclosures. All CP / CPS documents must now be in accordance with RFC 3647 (recommended) or RFC 2527.

Updated the following criteria: • Criteria 1.1 and 1.2 –removed WebTrust v1 references • Criteria 2.1 and 2.2 –swapped order to be consistent with 1.1 and 1.2 • Criterion 3.6 –Expanded scope to specifically address hypervisors and network devices • Criterion 3.7 –Expanded scope to specifically address system patching and change management activities • Criterion 3.8 –Clarified scope to include requirement for backups of CA information and data to be taken at regular intervals in accordance with the CA’s disclosed business practices. • Criterion 4.5 –Split into two criterion (4.5 and 4.6), subsequent criteria renumbered • Criterion 4.6 –Clarified scope to include destruction of any copies of CA keys for any purpose, and added illustrative controls addressing formal key destruction ceremonies. • Criterion 4.10 –New criterion added to address CA Key Transportation events • Criterion 4.11 –New criterion added to address CA Key Migration events • Criterion 6.1 –Streamlined criteria, minor updates to illustrative controls • Criterion 7.1 –Updated to address cross certificate requests

Current Status – WebTrust for Publicly Trusted Code Signing: Modified version released to fix error in material and to remove unauditable criterion Removed Principle 2, Criterion 5.11 as it was determined not to be auditable Clarified Principle 2, Criterion 3.2 with regards to the signing of Subscriber Agreements Vs 1.01 effective October 1, 2017

Current Status – WebTrust EV Code Signing: Released vs 1.4.1 effective October 1, 2017 Removed Principle 2, Criterion 5.12 as it was not auditable

Current Status – WebTrust EV SSL: Released vs 1.6.2 effective October 1, 2017 Updated EV SSL Audit Criteria to conform to EV SSL Guidelines v1.6.2 and other clarifications, including the following: • Principle 2, Criterion 2.2.3 –Updated maximum EV certificate lifetime to 825 days • Principle 2, Criterion 3.2 –Clarified signing requirements for Subscriber Agreements • Principle 2, Criterion 4.13 –Codified the requirements regarding the CA’s responsibility for verifying the accuracy of QIISs used for verification

Current Status – WebTrust Baseline Requirements including Network Security Requirements Released vs 2.3 effective TBD based on CABF feedback Updated SSL Baseline Audit Criteria to conform to SSL Baseline Requirements v1.4.9 and Network and Certificate System Security Requirements v1.1 Principle 1, Criterion 6 –Require CAs to disclose their CAA Records policy in their CPS Principle 2, Criterion 2.14 –Clarified the requirement for Root and Subordinate CA Subject Information Principle 2, Criterion 4.6 –Revised age of data from 39 months to 825 days Principle 2, Criterion 4.10 and 4.11 –New criteria added to address CAA Records processing requirements Principle 2, Criterion 4.12 and 4.13 –Renumbered from 4.10 and 4.11 Principle 2, Criterion 8.3 –Updated that this criterion is only effective for certificates issued before 11 August 2017 Principle 4 –Updates made to conform to CA/B Forum Ballot 210

Current Status –DRAFT Practitioner Audit Report templates: Approved by AICPA / CPA Canada Released Sept 1, 2017 Covers nearly all potential types of reports (about 18 examples in each) and assertions Separate documents created for each governing body (US, Canadian and International) Needs to be followed to get the seal from CPA Canada

Current Status – updating/preparing WebTrust for RAs: 2ndDraft version in process Will have main principles similar to WebTrust and additional principles (appendices) for Baseline Requirements including Network Security Requirements and for EV Strength of controls will be an issue Reporting alternatives being discussed including SOC2 like, public report and impact on CA report

Current Status – IN PROCESS: Practitioner guidance for auditors Under development covering public and private CAs. Draft expected early 2018

Some Old and Some New Issues: WebTrust for CA reports –should a more detailed version be created similar to SOC 2 (limited distribution/no seal) or report with detailed system description and controls Cloud questions continuing to surface -perhaps WT for RA will help lay groundwork for other delegated third parties

CPA Canada Now: Gord Beal, Bryan Walker, Kaylynn Pippo (maternity leave), Lori Anastacio, Janet Treasure. Consultant to CPA Canada: Don Sheehy (Vice –chair) Task Force Members and Technical Support Volunteers

Task Force Members and Technical Support Volunteers: Jeff Ward (Chair), BDO; Daniel Adam,Deloitte; Chris Czajczyc, Deloitte; Tim Crawford, BDO; Reema Anand, KPMG; Zain Shabbir, KPMG; David Roque, EY; Donoghue Clarke, EY.

Reporting Structure/Roles: Gord Beal –WebTrust falls into Guidance and Support activities of CPA Canada Janet Treasure –Seal system responsibility Bryan Walker –Licensing advisor Don Sheehy -Task Force and CABF Jeff Ward -Chair of the WebTrust Task Force and primary contact All Task Force members provide WebTrust services to clients Volunteers are supported by additional technical associates and CPA Canada liaison but report to CPA Canada

CPA Canada activities Auditor list updated More formalization and support in seal issuance and licensing processes.

Questions: Gerv noted there had recently been a question about changes in the BRs (relating to CAA implementation) that presented technical problems, and which might result in some CAs receiving Qualified audits, even though they were trying to comply with all BR and audit requirements. He observed that there may be a benefit to the current lag time between when changes are adopted in the BRs and when they appear in the BR WebTrust requirments, because issues in the BRs can be fixed before they find their way into the BR WebTrust requirements.

Others commented on this issue, and expressed the following points of view:

- The BRs presently require CAs to follow the most current version of the BRs, and to promise they are doing so in their CPS – whether or not the changes to the BRs are included in WebTrust for BRs. This could create a problem. Gerv thought it might be good to remove that requirement from the BRs and only require CAs to follow the current BR WebTrust requirements, as those were the only requirements that are actually tested and reported to the browsers and public. In that way, browsers can give CAs special and temporary dispensation to not follow certain problematic BR changes before they are incorporated in the next WT BR release.
- There was discussion of whether a CA could face an audit problem if there is a mis-match between the BR requirements and the current BR WT requirements. The auditors said it would depend on the level of importance of the issue, and in some cases the auditor might simply comment on the issue in the audit report but the CA would not be at risk of failing the audit or even receiving a qualification.
- The browsers don’t want these ballot problems to occur often, so the Forum should try to avoid ballot problems like what occurred with Ballot 214 regarding CAA errata. Gerv pointed out that the problems with CAA and the ballot only became obvious at a later date.
- Jeff Ward noted there will always be a delay in getting changes in the BRs into a new version of the BR WebTrust requirements. Gerv noted that browser root program requirements (including special and temporary dispensation from BR compliance) can be done more quickly and easily than updating the BR WebTrust requirements.
- Wayne thought this problem could be solved in part by new and better effective dates in the ballots themselves
- Curt asked how browsers could be assured that CAs are following the latest BR requirements if they are not covered by the latest BR WebTrust requirements. Gerv noted that some requirements are external, and non-compliance can be observed by the browsers.
- Devon noted that auditors are in the best position to know if a CA is in compliance – browsers generally can’t check for compliance.
- Gerv emphasized that the conversion of BR changes to new BR WT requirements is a process (including determining what in the BRs is auditable), and so can’t always be speeded up.
- Don noted that when the EV requirements were created, the Forum went created a long list of Errata to correct the early versions of the EV requirements, and the WebTrust auditors were not required to change the audit requirements on a weekly or monthly basis – the audit criteria were more stable then, which was better.
- Kirk said if Gerv had ideas on changes to make to the BRs to deal with these issues, he should propose them Gerv said he would move forward with suggestions.

### ETSI Update

[https://portal.etsi.org/TBSiteMap/ESI/ESIActivities.aspx][1]

Notetaker: Enrico

Arno presented an Update on the ETSI Working Group ESI: (Electronic Signatures and Infrastructures)

ISO 17065 is one of the foundations of the ETSI Certification Policies based audit scheme. Caused by the eIDAS Regulation an European accreditation system is incorporated into the audit scheme. There has been the need over the past few years for a better way to know who is accredited as an auditor for ETSI CP, because ETSI is an official standardization organization that does not oversee audits.

The accreditation scheme is not person-based, it is accreditation of the auditing body – the Conformity Assessment Body (CAB). The CAB is responsible for the quality and skills of the auditor and the quality of their work. In Europe, at the top level, there is the European Accreditation Authority ([http://www.european-accreditation.org][2]). A CAB must conform to the ISO 17065 and must be accredited to audit pursuant to ETSI 319 403. To verify whether the CAB is accredited, you can request its accreditation certificate, and the certificate will need to reference the applicable standards for which the CAB is accredited. The ACAB’C is now an organization that cares about the quality of the auditor. ETSI has created a detailed audit check list for auditors who audit CAs, the check list includes more than 300 specific controls.

Standards are available for download at https://www.etsi.org/standards-search. The most important standard for this group is EN 319 411-1 . End of October 2017 an actual version will be published.

### Governance Working Group Report

Notetaker: Ben

During the Policy Review Working Group meeting we went over a proposed change to the definition of Certification Authority. It would be amended to read, “a technical certificate generation service that is trusted by one or more entities to create and revoke or hold public key certificates and is operated by a Trust Service Provider.” And after that discussion, we received a comment from GDCA that they would like it to refer to a “logical entity”. GDCA was going to post something to the list to clarify this request. GDCA clarified that the request was so that the definition of a CA was not limited to a service, so that it could be an organization. Ben said that the “organization” part is under the last part of the definition that mentions “Trust Service Provider” and that he had misunderstood GDCA’s request. Ben said that we could say “a logical entity or service”, or we could leave the definition as proposed. Ben noted that the definition was a combination of ETSI and ISO definitions crafted by Peter Bowen. Peter said he didn’t mind having “logical” in the definition if it would help non-native-English speakers. It was agreed that further discussion on the public email list would be of benefit to everyone on this issue. Dimitris said that he had the definition in an email from September 14 that could be referenced, and Ben said that he had forwarded that email to GDCA. Kirk suggested that they provide examples of the logical relationship to make it clearer for people to understand what is being proposed.

Another topic discussed was a review of the Baseline Requirements and the use of the word “CA” to determine whether we’re talking about the organization or the logical entity / service that signs and revokes certificates. The relative frequency of places where “CA” will remain is high when compared to places where we would replace CA with Trust Service Provider.

Dimitris noted that during the discussion on Tuesday we also focused on “trusted by one or more entities” in the proposed definition and whether it should say “trusted by Application Software Suppliers.” Ben said that you could word it by leaving that phrase out and saying “trusted to create and revoke” or “trusted by subscribers and relying parties” because Application Software Suppliers are acting as agents for relying parties. Dimitris said he is fine with the definition as is. Ben noted that the next speaker had joined and that we should take the topic offline and continue it during the next call or on the mailing list.

Finally, Ben noted that in reviewing the use of the term “CA” he identified an inconsistency between the Baseline Requirements and the EV Guidelines. In the Baseline Requirements section 7.1.6.3 we talk about use of the anyPolicy policy OID by an “affiliate of the Issuing CA” whereas in section 9.3.4 of the EV Guidelines we say it may be used for a subCA “for which the corresponding Private Key is controlled by the Root CA.” Ben said he prefers the usage found in the EV Guidelines. It was suggested that with the modified definition of CA, section 9.3.4 of the EV Guidelines could even be edited to read, “(2) Certificates issued to Subordinate CAs that are operated by the same Trust Service Provider as the Issuing CA MAY contain the special anyPolicy identifier (OID: 2.5.29.32.0).”

### CCADB Update and demonstration

Notetaker: Mike Reilly

- Purpose: Common CA Database (CCADB) Demo was presented as a result of CA feedback and questions on use of the database.
- Demo started with an overview of the “Information for CA” page. Aaron walked through the process of creating a new audit case and how it’s tracked in the dashboard. New audit cases are based on CA information. Currently a manual process is used to validate this information, but validation will become automated soon as part of the Jixi project mentioned in the Microsoft update
- Question asked: Will the CCADB replace Bugzilla? No, currently Bugzilla pulls reports from CCADB to provide info to CAs and others. Microsoft, Mozilla and Google use this CCADB (Google just announced they are joining it) to track CA information in support of their root programs. Apple is looking to use it as well and is going through legal review to start using it.
- Auditors would like to see the CCADB data as well. Follow up: Kathleen to discuss with Microsoft and Google to see how we may do that.
- A new field has been added that shows auditor information and allows for easy add of auditor from a drop-down list
- Audit statement (PDF) is added and audit type is selected along with audit date. Audit date cannot be more than 90 days past the end date. If a CA has a reasonable reason why they went past 90 days they can add comments
- Question asked: can the file name for audit document URL be the same each year? No, since we require new filenames/URLs for audit statement each year, please have CAs to use a new filename for a new document
- CAs should list all certs in the CCADB that way browsers can cross reference and the CA has less data input requirement overall to get info to browsers using CCADB
- Question asked: One CA had to upload the same audit document multiple times for multiple roots and wondered if there was an easier method. Answer was that CA still need to create multiple roots under one Audit Case if audit document is the same one, and CA can create multiple audit cases for different audit statements.
- Positive comments by a few folks as to the good design and ease of use for adding audit documents
- Are the dashboard tools available to the CAs? (EKU Management, Audit Standards, etc view). Those views are part of the “Jixi” project Microsoft mentioned in its update and will be demonstrated at the March f2f CABF meeting. Mike to take action to update CAs on what views and reports Jixi will provide for their use
- Question: Any plans for adding submission APIs so it’s easier for CAs to add their information? Answer is NO, so far CA still need to create each case/root case one by one, no API supported for now.
- Question: Will “bulk load” capability be available? CA would need to get in touch with Kathleen if this is needed. It was used initially to get all CAs onboarded
- There are also detailed instructions on the CCADB site should CAs want to follow up on how to use the CCADB (Gerv comment)

### Guest Speaker: Jonathan Levi – Hyperledger Fabric Project 1.0 update and usage of x.509 v3 certificates

### Approve Minutes CABF teleconference Sept. 14, 2017

The Minutes were approved, and will be posted to the Public list.

### Determine Applicability of Certificates by using standard CABF CP OIDs

Notetaker: Li-Chun Chen

[Determine Applicability of Certificates by using standard CP OID][3]

Dr. Wen-Cheng Wang changed his presentation title from original “Using CP OIDs instead of Extended Key Usage to distinguish different kinds of Certificates” in meeting agenda to “Determine Applicability of Certificates by using standard CABF CP OIDs” Determine Applicability of Certificates by using standard CP OID.pdf.

At first Wen-Cheng asked the audience that: When a certificate-using software (such as a browser) encounter a SSL certificate or a code-signing certificate that is chained up to a trusted Root CA, how does it determine whether the certificate is issued by a Subordinate CA that conforms the applicable CA/Browser Forum guidelines?

He said: Currently, there is no systematic and automatic way to check this applicability.

In the slide page 3 about Mis-issuance by Unconstrained CA, The PKI is WebTrust for CA Audited. SubCA 1 is WebTrust SSL BR audited. So SubCA1 can issue OV/IV SSL Certificates. SubCA2 is WebTrust EVCS audited. So SubCA2 can issue EV Code Signing Cert. SubCA3 is not “WebTrust SSLBR” audited or “WebTrust EVCS” audited. SubCA3 could mis-issuse SSL certificates or EV Code Signing certificates unless all SubCAs are “Technically Constrained”. In the slide page 4, Wen-Cheng discussed some application software use EKU Chaining in Sub CA certificates and EE Certificates to let SubCAs to be “Technically Constrained”.

Using EKU in Sub CA certificate is controversial. The section 4.2.1.12 of RFC 5280 says “In general, this extension will appear only in end entity certificates.” Both ITU-T X.509 and RFC 5280 say nothing about the semantics if this extension appeared in CA certificates.The is no EKU Chaining (a.k.a. EKU nesting) in the standard certification path validation procedure define in both ITU-T X.509 and RFC 5280.

Wen-Cheng reminds that the X.509 standard and RFC 3647 define a Certificate Policy (CP) as “A named set of rules that indicate the applicability of a certificate to a particular community and/or class of application with common security requirements.” For example, a particular certificate policy might indicate the applicability of a type of certificate to the authentication of electronic data interchange transactions for the trading of goods within a given price range. A CP is represented in a certificate by a unique number called an “Object Identifier” (OID). When a CA places multiple CPs within a certificate’s Certificate Policies extension, the CA is asserting that the certificate is appropriate for use in accordance with any of the listed CPs. CA/Browser Forum had defined several CP OID as below.

EV SSL CP OID: 2.23.140.1.1

EV Code Signing CP OID: 2.23.140.1.3

DV SSL CP OID: 2.23.140.1.2.1

OV SSL CP OID: 2.23.140.1.2.2

IV SSL CP OID: 2.23.140.1.2.3

Each CP OID indicates the applicability of different type of certificate.

From the perspective of audit, Wen-Cheng in his slide page 8 shows the Audit Applicability Matrix quoted from WebTrust for Certification Authorities – Audit Applicability Matrix in WebTrust website. “CABF BR + CABF Network and Certificate System Security Requirements” define a set of rules (i.e. effectively a CP) for the applicability of publicly-trusted DV, OV, or IV SSL certificates.

Wen-Cheng said “CP OID Chaining” is well-defined in the certification path processing procedure of the X.509 standard and RFC 5280. Where

user-initial-policy-set: comprising one or more certificate policy identifiers, indicating that any one of these policies would be acceptable to the relying party for the purposes of certification path processing.

initial-explicit-policy = true: indicates an acceptable policy identifier needs to explicitly appear in the certificate policies extension field of all public-key certificates in the path.

Processing intermediate certificates: each CP OID that appears in an intermediate certificates must also appear in the upper-level intermediate certificate or in the user-initial-policy-set.

Each CP OID that appears in the end-entity certificate must also appear in the intermediate certificates.

In page 16 of Wen-Cheng’s slide, he showed a table from about CABF compliance OID. Most of the CAs put their private CP OIDs in their intermediate CA certificates and EE Certificates. What should we do? Wen-Chung suggested to enforce to adopt CABF CP OIDs. Set a sunrise date as below:

Effective DD MM YYYY, CAs MUST use the following CP OIDs in the subordinate CA certificates and the subscriber certificates. Maybe two years later.

Note that currently “Microsoft Root Certificate Program” already mandate the use of CABF CP OIDs 4.15 CAs must use the following OIDs in the end-entity certificate: DV 2.23.140.1.2.1; OV 2.23.140.1.2.2; EV 2.23.140.1.1.; IV 2.23.140.1.2.3; EV Code Signing 2.23.140.1.3; Non-EV Code Signing 2.23.140.1.4.

For Browsers, All of the Root CA certificates in the trust list must associate with one or more applicable CABF CP OIDs.

Wen-Cheng concluded that the advantages of determining the applicability of certificates by using standard CABF CP OIDs instead of EKUs is that it can provide a uniform, systematic, and automatic way to determine the applicability of different types of certificates. It is fully compliant to the certification path processing procedure defined in the X.509 standard and RFC 5280.

Let’s do the right thing in a way that we do it right

Do the right thing: we must always check the applicability of certificates

Do it right: By enforcing standard CABF CP OIDs, we can systematically check applicability of certificates.

Ans: If people wants to use their own private PKI, they have to import their own Root CA to browser. They can assign appropriate CP OIDs in their certificates, so we can still use the systematical way to do the CP OID validation.

Ans: So if the appropriate CP OIDs are assigned, the browser can knows that it is OV or EV on path processing.

Q: The browser wants to check if the certificate is mis-issued according to CAB’s baseline requirement. If a CA wants to mis-issue certificate, it can easily add the CP OIDs into the mis- issued certificate. Your opinion is asking all browsers to change the software to check the CP OIDs and all CAs must add CP OIDs into intermediates to achieve something that is not much valued. That is my concern to this proposal and I don’t think it will work.

Ans: The CA should disclose the CP OIDs used in their certificates, so it could be easily determine the certificate has appropriate CP OIDs or not.

Q: The Web PKI doesn’t do CP OIDs checking.

Ans: It depends on browsers. I know Firefox and NSS don’t process certificate policies. Microsoft requires all CAs to have appropriate CP OIDs end entities, since these CP OIDs may not in intermediates.

Q:Your opinion is to request browser to full process the CP OIDs in path building. These is not only to end entities, since Microsoft require all the root certificate has these CP OIDs too.

Ans: I think it is a big challenge to trust stores and browsers, but in long term it is a right way to do it.

Q: What is the problem that we are trying to solve? You are trying to use a trusted root to issues certificates to intermediates that not comply with baseline requirements.

Q: If the browser claim requires CT/SCT is embedded in the certificate, it also works and in such CA, any issue among in OV and EV situation, roughly in 24 hours condition, is that correct?

Ans: Yes. If someone find there’s something wrong and he commits and reports to the browser of course you can stop the CA. But you already accepted, by using the CP OIDs, you will reject this kind of certificate immediately.

Q: Yes. Right now we are in reactive position. We will detect them. Something prevents it. You mention we need 24 hours to solve them but in situation, no one saw them and the browser will reject certificate there for about a process time.

Ans: If someone find there’s something wrong in the middle, some CA issue website certificate and is not issued by me. I will get some report to the browser. Browser will ask CA to fix. So mis-issued problems happen from time to time. So if we can have a systematical way, we can reject this kind of mis-issued certificate immediately

Q: You want the ability to have a root CA that essentially issues a constraint supported to a 3rd party that has different controls to the root CA. So you don’t completely trust, you want to be able to issue to something else, the supported CA, cross sign, and explosively exclude them. Say I know I sign that, I disclaiming responsibility in the mis-issue. Is that right?

Ans: Of course the CA has the liability to perform well management of their system, but here I just like to comment this is a standard when check the certificate. And in this way if there is an issue, it can be automatically rejected.

Q:If you have a RootCA issuing the SubCA then they have to be concern about their compliance with the baseline requirements. If you can somehow do that with some other mechanisms such as like CP OID rather than EKU then you can do that maybe this is also a build suspenders part of that. What the idea is that maybe you can control your reliability by doing that and not be such as oids of subCA what you created if it’s like an external subCA.

Ans: What I would like to suggest putting this CP OID checking is that it can help browser to automatically detect the mis-issued of these certificates.

Q:It’s not evil bit said and you are saying this is a mis-issuance but what said be not evil bit but I am saying the mis-issuance they can be mis-issuing and then they can just issue said to be not evil bit. In which case, you know, We will assume, it’s not evil, they will check they are not evil bit. Actually it is not evil.

Ans:I do not invent this. This is defined in the standard. We commend we use this checking standard. The advantage using this kind of OID checking is because that it is systematical and automatic.

Q: Is there a need to do this change? What is the problem you try to resolve?

Ans1: Different CA has different hierarchy, for example, If an RCA only has one subCA, then EKU chaining is enough.

Ans2: EKU chaining is simple. But there might be non-browser applications processing ICA certificate with EKU will have problems.

Ans3: CP OID Chaining is a systematic and automatic way to detect miss-issued certificates. It lets browsers and other clients to detect and block miss-issued certificate immediately rather than reported later by other parties.

Q: There are many different implementations among Browsers and CAs, so it is challenging to do this change.

Ans: We know it is challenging, but we just want to evaluate the possibilities of this change.

Q: The Key issue is the EKU Extension should not be used for certificate signing. If the EKU extension is non-critical, will it prevent the standard-violation problem?

Ans: As far as we know, If you recognized the EKU Extension, you should process it no matter it is critical or not.

Ans: Critical or non-critical. The standard says that if certificate use the software which recognizes EKU, you need to process it, even the EKU extension is marked as non-critical

Ans: Yes, service can process and understand. In case Microsoft certificate services, if you could put EKU into supported CA, that means sub-CA can issue any client certificates that have different OIDs, not including any EKU extension of sub-CA.

Ans: That’s what I emphasize then. How we replace EKU with CP OID. I suggest all of CAs add the standard of CA/Brower Forum OID into certificate. This is first step you need to do. If all of intermediate CA and subscriber certificates contain these standard CP OIDs, then the certificate using system, such as browser or the operating system or even the future software can check these CP OIDs chain automatically. Prevent the accident of mis-issue immediately.

Q: Right, this means that get back to the point, say EKU constrained is?

Q2: Right, I think the general answer is so? That’s what we’re using paper works. Everybody signs up to it, and everybody is using it. It does its job. It’s great deal and let’s it!

Ans: There is an improvement because you can automatically detect.

Q: You can use EKU chain. EKU desti and you can all of this, right?

Ans: Yeah! You can also use the EKU to do this check. But the problem is controversial and also caused other problem. The certificate is varied by other standard complies, such as the C and the CPP software. It might be affected if you use the EKU chain.

Q: The Web PKI is the web PKI. Sometimes that’s the way it is.

Ans: Currently, In the BR also faces that in general the EKU do not in the subordinate CA group. But, currently we use in the subordinate group.

Q: It’s optional extension.

Q2: So do we turn into the discussion or are there more and more to discuss?

Ans: Just want to ask Browsers. Do you want to implement this and the mechanism? In the long term, I say this is the right way issue. I do not suggest we immediately implement this. I don’t know how long we need take to implement this, and how long the standard CP OIDs will be in or on the subordinate CA. But we are gathered here to improve the trustworthiness of the certificate. I think in the long term we should have the systematic way and automatically way to detect this issue. This is why I want to propose.

### Validation Working Group Report

Notetaker: Jeremy

1. Backlog ballots

1. Non-latin qualified notaries b. SRVNames c. ASN.1 for JOI

1. Ballot 190 Experiences

1. Everyone generally agreed that the documentation/revision storage was fairly difficult. Most are storing the information as a date that correlates to a BR version b. Jeremy said there’s a lot of inconsistency in the language that we need to fix c. Tim said the random value means two different things – sometimes it means a nonce and sometimes it is a secret. Redefining the term will clarify the confusion d. The language sometimes refers to an unknown actor. The room agreed generally that the CA should be the actor in all cases. This requires clarification e. Jeremy said there’s confusion about whether items can be used cross-method. Tim said this is clarified once we fix the nonce/secret confusion f. Document/information reuse is confusing. g. The scope of the domain approval is also confusing. Sometimes the document says FQDN, other times it says authorization domain. Once it says base domain h. The document is also unclear on the scope of the approval. How does a subscriber know they are approving sub domains. Gerv asked if we should require scope approval during the verification. Jeremy thought this was a good idea.

1. Resuability is unclear. Each method should state what can be reused and what needs to be redone. Each method should also state what how long specific actions are good for.

1. Ballot 190 Issues

1. Jeremy showed the issues list b. The validation WG will go through the list on their call

1. IP Address validation

1. The last proposal was circulated on March 24th b. The ballot eliminates the “any other method” c. Jeremy recirculated the proposal for discussion on the mailing list

1. CAA Experiences

1. The biggest question was about how systems should behave if DNS doesn’t answer. This was partly discussed on the mailing list. There are two options. First, if there is no record, assume the record is permissive for the CA. Second, if there is no record keep working the chain. The first is the correct interpretation but CAs are permitted to be more restrictive. b. Others felt CAA was not mature enough for adoption. The RFC needed more clarification before we tried to implement. c. Peter brought up that DNSSEC implementations lacked quality. CAs are required to fail open if DNSSEC is not present, but fail close if DNSSEC is present. d. There are issues with split horizon e. Some failures are caused by CNAME loops f. People have seen issues with malformed records. CAA needs better implementation tools as these are generally caused by manual input processes. g. Lesson learned – these new ideas need a more phased-in approach.

1. There was a lengthy discussion about CAA and the audit, especially as it pertains to the errata. What happens now that the browser and audit requirements differ? Ultimately, this became a non-issue as neither WebTrust nor ETSI would updated before the errata requirement went into effect.

1. The validation WG said they would write a normalization document. j. CAA for IP Addresses is an IETF issue, not something to discuss in the WG k. CAA flags. Four were suggested: Validation methods, account identifier, certificate types, and brands l. There’s a question whether the WG will cover these or a new CAA WG will create them

1. Root and Intermediate Requirements

1. We discussed modifying 7.1.4.3.1(b). Right now it specifies that the Sub CA must be listed in the O field. There’s a question whether vanity issuing CAs are permitted.

### Domain Validation Implementation Issues

Notetaker: Jeremy

See Validation Working Group Report.

### Network Security Working Group Report

Notetaker: Ben

Ben explained the background of the Network Security Working Group. The CA/Browser Forum’s interest in network security dates back to the Diginotar event in 2011. As a result of Diginotar, the Forum adopted the Network and Certificate System Security Requirements (NCSSRs). Until recently we hadn’t revisited the NCSSRs, so this Working Group was formed to take a look at the NCSSRs and decide whether the repeal them and adopt some other network security standard or edit the NCSSRs. If we had repealed them, there are still several provisions in the Baseline Requirements that talk about things like risk assessment and network security, as do the WebTrust criteria. However, the reason we originally adopted the NCSSRs was because there was a feeling that the Diginotar event happened because there were gaps in certain areas, e.g., WebTrust 2.0 has Illustrative Controls, which are not mandatory. Also, CAs have experienced pain points in applying the NCSSRs due to different interpretations by auditors, etc. The Working Group has gathered comments on these and recently tackled some of the easier ones to address in Ballot 210. We prioritized the remaining issues, and we reviewed those during our working group meeting the day before yesterday.

During our working group session, we discussed the path forward. The NetSec Working Group also has a subgroup working on CA architecture, the threat model, threat analysis, risk assessment, (i.e. what are we trying to protect). The reason for this is that this analysis will allow us to define security perimeters of things like root CAs and certificate issuing systems. Meanwhile, the Working Group will continue to discuss the remaining items on the prioritized list. We may re-prioritize the list based on a suggestion that we take low-hanging fruit – items that are easier to address.

### CAA Implementation Issues

Notetaker: Robin

Jeremy initiated the discussion on the topic.

There were a number of Issues expressed at the working group yesterday::

- There is a lack of clarity on how the system should behave if the DNS doesn’t answer.
- A lack of quality around DNSSEC implementations
- RFC not mature enough.
- Split horizon issues
- Failures because of CNAME loops
- Malformed records. Tried for CAA, but failed..

Lesson: we need a more phased approach. Do we need a report-only mode?
What happens now that BRs requirement is different from browser requirements (due to RFC errata)? This turns out to be a non-issue, because its not yet in the audit criteria.

Kirk: – Malformed records?
Jeremy – CAA missing issuernames, or nonsensical data in an issuername.
Wayne – I see a need for a toolset for people creating CAA DNS records.
There should be a way to make it much simpler for customers.

Kirk: What is still pending in CAA?
Jeremy – There is still an errata which is not yet held for update.
An RFC through the ACME group with FLAGS. Errata still come.

Tim – Doug’s recent thread on what to do around retries.
Jeremy: I was surprised to see the variation in expectation. Do you fail closed or fail open?

Wayne – what we’re asking is, does an individual DNS lookup failure count as a failure? Or do you need to try every step?
Geoff: If the server failed, you try the server and then retry. What do you assume, if you can’t get the record?

1. Assume no record – so you can issue.
1. Assume there is a record that allows you to issue.

So for the moment a failure means you can issue.

Gerv: That surprises me because I would expect it to fail closed.

Geoff: I agree that it should fail closed, but the BRs don’t say that.
Alex: Agree. It is bad security practice to fail open.

PZB: Fail open if you have an affirmative ‘this isn’t DNSSEC signed’ indicator. Fail closed if DNSSEC in use.
Wayne: Do you have to use DNSSEC only or can you just do DNS?
….
PZB: – so we’re back to yesterday, the standard is OK, but the DNS implementations suck.

Wayne – we need to get to a point where we agree on the requirement, in this room at least.

Gerv: Agreed. A test suite would be good – but need not be a product of the forum. A document with use cases and expectations for edge cases.

Gerv: It is not a good use of CA’s time to work out all the edge cases. Let’s do it in the forum instead, or elsewhere, once.

PZB: Bullet 3 is the core thing. If you’ve pointed it at a private DNS server then it won’t resolve. supersecret.project.com points to 10.2.3.4. .com zone says whether project.com is DNSSEC signed.

Steve: Assuming that you have a DNSSEC capable system.

CAA is discussed in the validation WG, currently.
Kirk: There may be a larger group that wants to talk about it. (working towards the test set)
Tim: start a new group

Kirk: Can someone come up with the charter.
Geoff: I will come up with some language for a charter.
Tim: Issue in implementing RFC6844 and errata in compliance with the BRs.

PZB: Issues and experience in implementing 6844 and errata.

Wayne: I wanted to clarify the ballot around 214 . Is there still an issue on how DNAMES should be handled.
Tim: Yes. That is the errata that is not yet held for update.

Kirk: Should we get involved in the IETF process?
PZB: There is no approval process for errata. Once it has a number (RFC6844) it never changes. Sometimes there is enough interest to get an update – in which case it gets a whole new number. E.g. 3280 became 5280.
Jeremy: You can have a bis.
PZB – that is a draft. It gets a new number.

## CT Implementation Issues

Notetaker: Giichi

Kirk: I’m concerned about availability and reliability of CT log especially if this is mandatory process for service availability for CAs. Google seems to be confident about the availability.

Devon: what is 99% up time CT team is primary working on getting code ready and not for availability. The intent was to first release and monitor traffic and uptime, etc.

Need to have clear SLA to be able to monitor the real availability. Currently Google being the sole determinator of up time, what it means to be. Could be network issues. Kirk: Why trust CT log when only 98% availability is maintained. Feels like punishing user.

Devon: heart of uptime argument is ensuring the log doesn’t intentionally shut down issuance There will be significant policy change to address uptime issue. Clearly articulating the concerns around uptime is going to affect how policy would be formed.

Gerv: are you saying there are certificates being kicked out without notification period?

Jeremy: during the qualification period do we require certificate for those who do not permit logging

Devon: 90 days window is a monitoring period and for people to know what’s going to be after the monitoring period is over.

Peter: getting CT back doesn’t mean there is a log, it’s a promise signed by a server that there is a log. For malicious log, it issues bunch of promises, if it’s unavailable, it take the fetch log operationally offline then issue promises that never knows, and is never detectable until it comes back online.

Jeremy: one of the implication we had was that policy is not the amount of information you get as a CA. it’s helpful to get more information from log operator on how policy is embedded in the log.

Devon: now, there’s a clause to catch all of this to what is public interest to find out what is not defined what are criteria on accepting. What is the terms for CA for acceptance? One of the non-technical checks on whether log could be trusted. We need to address things like what if policy changes, to some extent it’s operated by trust store and everything need to be qualified but based on increased feedback.

Jeremy: Would it worth coming up with log policy?

Devon: would be valuable. Policy on what log operator support on CA, we would be interested to know more about what they are doing.

Jeremy: the interest is probably more on browser rather than public.

Devon: Browsers are the ones who makes distrust decision based on the policy, so we want to make sure we understand the expectations from CAs.

Kirk: I’d like to re-open the conversation on enterprise customer don’t want to put CT and don’t want to go back to private. Could Google explain why name redaction cannot be done?

Devon: long standing discussion on this topic and could further be discussed at CT meeting.

Kirk: want to know “why” cannot

Peter: There were several options Ryan agreed to implement to allow enterprise to push policy to say “for my enterprise, I do not require CT on subset of certificates”.

Kirk; That’s not the same. They wanted to work within their environment without having to get warning. They don’t want to configure special setting in order to avoid browser warning. Coming back to the original point, what is the reason why redaction is not allowed?

Peter: With redaction how do you determine if one is permissible redaction or not? For example, if Amazon decides payment.amazon.com doesn’t want to be checked by Google? How do we ensure that doesn’t happen?

Kirk: That is not really a relevant threat. If domain is validated, and it is their domain. For payment.amazon.com, it’s Amazon who has ordered such certificate, and they can simply ask for redaction.

Peter: Reason for CT is to avoid the challenge of somebody misdoing it. Mozilla currently surveillances 64 trust service providers, and the reality is there are vulnerabilities in the process. That’s where CT can make it easier to spot these mistakes.

Kirk: If you see payment.amazon.com certificate and if we look at CT log, we will automatically know or do we need to do some research?

Peter: For Amazon certificate, every single certificate issued from Amazon goes through internal management system that talks to CAs and anything shows up to CT log that aren’t in there is a major security alert.

Kirk: Yes, but that can also be done with redaction as well.

Peter: Yes, but what do I do?

Kirk: You contact the CA and request for revocation. But what do you do anyway when you see a certificate in CT and un-redacted CT that you think is not adequate. It would be the same process, asking the issuing CA to revoke the certificate.

Peter: We will need to investigate.

Kirk: that issue was different my point was subscriber should be able to identify the certificates that they don’t recognize and ask issuing CA to revoked.

Peter: if it is redacted, all the information subscriber get was it was issued to xxxx.amazon.com and its serial number. Then subscriber will need to ask issuing CA for further detail.

Kirk: that is Amazon’s specific case of handling it. If someone finds out about certificates that they are not sure about, they will have to research it anyway.

Peter: what is the goal of redaction? Under what circumstances does CA need to disclose further information?

Kirk: If they can prove domain control.

Peter: What happens to redaction if someone sells the domain?

Kirk: that’s the use case we never thought about.

Kirk: CAs can bring redaction issues propose to create rules around it including points on how CA should handle the request from subscriber.

Devon: We can probably bring proposal and have informed discussion at CT Policy Day.

Robin: current RFC does not mention about redaction.

Kirk: We can fix it in version 2, but in the meantime, errata can be released.

Peter: part of issue is that technical specification is not really finished.

Jeremy: it was abandoned because there was no ambiguity.

Peter: RFC6962 continued to move forward, existing methods at least needs to be updated.

Devon: another reasons for holding up the changes to RFC6962 are that there area other signification technical changes are coming.

Kirk: Main point is to come back with errata and technical scheme on how to do name redaction.

Devon: even if changes are incorporated in errata, it needs to be reflected technically before it means anything.

Kirk: is that what happened to CAA errata?

Devon: errata doesn’t equal to implementation.

Peter: implementation must happen from both CA and Browser side. It must be deployed to all customers and will takes long time to roll out. Do apple check CT as well?

Geoff: Yes

Jeremy: Microsoft also check.

Geoff: but we will need to have users update the mac OS.

Devon: what are behavior on EV certs in CT in High Sierra?

Geoff: in order to get EV treatment in High Sierra and have to have CT

Devon: which CT log does it support for SCTs?

Geoff: Apple has a list, but not useable yet.

Curt: will create similar to Google one.

Kirk: for CAs to bring up on redaction, we will discuss offline.

### Policy Review Working Group Report

Notetaker: Tim

The definitions of Trust Service Provider and CA were discussed. It was proposed that “logical entity” would make the definition clearer. Further discussion will occur on the CABF public email thread.

We need to go back and find the thread where we identified which instances of CA in the BRs refer to the service and which refer to the organization. Very few instances refer to the organization.

Should the definition of CA state that it is trusted by “one or more Application Software Suppliers” instead of “one or more entities”? It’s not clear.

“operated by the same TSP” vs “affiliate”? Might handle after the CA bifurcation work is done.

### Review of pending ballots

- Reminder to include redlines with ballots

206: “Governance Rule Change”

- nothing to add

207: “ASN.1 jurisdictionBlahBlah”

- About to be introduced

208: “dnQualifiers”

- About to be introduced

209: “EV Liability”

- Allow CAs to have a per-cert total cap on liability
- About to be introduced

213: “Revocation timeline extension”

- Pushing out the timelines for non-urgent revocations
- Ryan wanted notification of the CAB Forum if it takes longer
- Seems a bit stuck, but want to pass it
- Robin and probably Kirk will endorse

XXX: Remove “Any Other Method” from IP Address Validation

- Looking for endorsers
- People should read through it one more time

XXX: Remove requirement to obey latest version of the BRs

### Symantec EV Cert Discussion

Notetaker: Robin

For background to this issue, look on the CABFMAN email list.
The domain /FQDN is 0.me.uk/ev-phishing.
The email subject is:
Subject: \[cabfman\] Data for discussion of Symantec EV cert article

Kirk opened by asking the nature of the problem with this certificate. The on-list discussion seemed to center around the ‘applicant place of existence’. UK Companies House shows that address.
Gerv: I was hoping SYMC would discuss this to determine whether there were improvements we can make to the EV guidelines.
Kirk sent out that they have his name and a picture of his house. One quote in the article ….
Geoff: The original requirement was that he had a place where they actually did business.

PZB: is there a requirement that SYMC discuss this?
Gerv: my indications are that SYMC are willing to discuss, so that Q is moot.
Steve Medin: We see a request from a module peer as a requirement.
We regret that the investigation is taking a long time. We believe this will lead to an improvement in the EVGL.
Kirk: You said there is a problem. What is the problem?
Gerv: Steve said there is a problem.

Geoff: The point is that if you have business operations at that address it is harder to move.
Steve: you can’t just use a QGIS to prove ‘operational existence’ – even by companies house. There is the potential for some disappointment in some of the processes and there may be a improvements required across the board to meet the standard as it is currently stated.

### Possible Root Program/BR Lint testing requirement

Notetaker: Robin

Should we have a rule requiring lint testing?

Gerv: recently people have been digging thru CT and fining issues with certs and creating bugs. It is useful to see which CAs are on the ball. One common thread is that CAs realizing that cablint and x509lint are potent weapons so they incorporate them into their issuance process. Kathleen was wondering whether it is wise enough for it to be a program requirement or a BR requirement. We would probably not mandate the use of particular software. But if you don’t do that, can you have a requirement without teeth..?
Tim: Doesn’t that just end up being ‘don’t misissue.’
Devon: It’s a handy thing to lint, but we already have the requirement to comply. Does it help to have a meta requirement like that?
Jeremy: I disagree. It’s handy to have the requirement to steer CAs to do it.
Devon: You imply CAs aren’t perfect?!?
PZB: as an author of some of the software in question, .. urges caution to require its use! There are bugs! It was written for internal use.
I’m somewhat disappointed in the use that has been made of it to report findings in certificates from crt.sh.
Gerv: From our perspective, we don’t sweat the small stuff, but it is useful because it flushed out one CA that doesn’t know what they’re doing.

Robin: We run the tool against the certificates we issue. Although PZB is correct to say no tool is perfect, there is value in running the tool, but an ‘exception’ process is necessary.
Gerv: If you get a finding from such a tool it is up to you whether you choose to issue nonetheless. You have at least made the determination. We drew attention to the existence of these Lint tools in our last CA communication.

Jeremy: but new CAs come along.. A recommendation could be useful.
Gerv: we have a problematic practices and a best practices page.
Wayne: Could it be a MUST that prior to issuance a CA must perform a check for technical compliance?
Curt: Doen’t we already have that requirement by auditing?
Wayne: Post issuance
Devon: But we have requirements, CAs must follow requirements already.
Gerv: I guess we should just add this to our best practices page.

### Discussion of Mozilla BR self-assessment experience

Notetaker: Robin

Gerv: Kathleen ponders a suggestion that CAs that haven’t done a self-assessment recently should do one. Is it fair to say that, for each CP/CPS pair, you would need a separate assessment? So our request may be ‘can you do N self-assessments’.

A BR audit maps each requirement of the BRs to the CP/CPS.

Aaron checks before inclusion that a CAs documentation is adequate and BR compliant. It used to be that we went through the CP and CPS and did the mapping. Now we get the new CA to do the mapping as a self-assessment.

Gerv: SSL.com – you are in the inclusion process. Can you give us a rough idea how many man hours the self-assessment took?
Leo: several weeks elapsed time.
Gerv: So of the order of a man-week?
Leo: – that would be fair.

Straw poll shows no-one had more than 3 CP/CPS pairs.

Ben: what about a CP/CPS combo that just maps to the BRs?
Gerv: We say that you can’t just the dump the BRs into your CP/CPS for 3.2.2.4.

Kirk: It could be useful to help a CA find gaps in their own process.
But I don’t want to subsequently hear from the browsers that ‘You said in your SA that you did 7.1.4, but we found that you don’t. Double whammy.

Gerv: That is not the intent.
Devon: How many people are there on the planet whose job it is to map CP/CPS to BR audit criteria? 10?

Gerv: Having the CA doing the mapping makes the process of CP/CPS evaluation much easier at the time when it comes to admit a CA to a root program.

Kirk: Maybe as we post a new version of our CPS, the self-assessment could be tied to that.

Robin: It’s got to be useful to have more eyes on a CP/CPS. You can’t review your own code! As Jeff Ward pointed out yesterday, the CA’s auditor will already have done the mapping as part of their annual audit work. Do we just end up handing over our auditors’ mappings?

Gerv: OK, so I haven’t made you do an incredible amount of work.

Robin: Small amount of incremental value, for a small amount of work?

Geoff: The interesting thing is the ratio between the work done and the value derived.

Gerv: I will take this back to Kathleen.

### Information about next F2F Meeting 43 hosted by Amazon in Herndon, VA, USA – March 6-8, 2018

Notetaker: Kirk

Peter confirmed the next F2F meeting will be hosted by Amazon on March 6-8, 2018 at its Herndon, Virginia location. More information will be provided in the coming months.

Kirk said that both Cupertino, CA and London had been suggested for the June 2018 meeting, and asked for a straw poll of preference. Gerv asked where the Fall 2018 meeting would be, and Kirk said China. Gerv said that London seemed the better choice for a June meeting, as that balances meetings among Europe, North America, and Asia, and the group’s consensus was the same. The June 2018 meeting will be hosted by Comodo in London. Kirk asked other members to talk to him if they wanted to host a meeting in 2019.

[1]: https://portal.etsi.org/TBSiteMap/ESI/ESIActivities.aspx
[2]: https://www.european-accreditation.org/
[3]: /uploads/Determine-Applicability-of-Certificates-by-using-standard-CP-OID.pptx