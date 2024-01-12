---
aliases:
- /2015/06/24/2015-06-24-face-to-face-meeting-35-minutes/
author: Ben Wilson
date: 2015-06-24 17:51:40
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 35 Meeting in Zurich, Switzerland, 23-25 June 2015
type: post
---

## Meeting 35 Minutes

**Day 1 Wednesday, 24 June 2015**

## CNNIC application

A discussion on the CNNIC application for membership in the CA/B Forum took place. Although it appears their application is complete, two questions arose: 1. They don’t appear to be licensed in China (BRs requires that a CA be licensed in the country they do business if a licensing scheme is in place) and 2. they appear to be a registrar for a TLD as well as a CA. Dean stated that they have a valid BR audit which would address item 1 but was asked to get clarification from CNNIC. Further discussion will take place on the next call.

## Working Group reports

**Policy Working Group** (Ben)

Goals:

- to make it easier to understand and implement
- so the structure is in compliance to RFC 3647
- implement the Policy in the CAs CP/CPS documents
- address the EV requirements

Issues to resolve:

- revocation
- physical security

Done on the meeting:

- review of section 1, 2, 3, 4, started with 5

There where some discussions how detailed the policy should be. To meet all the different requirements or methods of the Standards as example WebTrust or ETSI the document should be a high level statement. Ben invited interested participants to the working group phone calls – the time is 15:00 on Thursday in between the CAB calls.

**Validation Working Group** (Kirk)

Goals:

- initially to specify procedures for Validation of requests
- the purpose was changed for verification of Domains and
- resolving EV issues

Status:

- new DV proposal
- Methods of validation should or may be can reduced from 9 to 7, so 1 to 5 are discussed left 6 to 9 from section 7 of the DV proposal
- ballot 147 is ongoing regarding on company letters
- there are discussion regarding a new business category named “other” to identify client regarding “local law”

There were also some discussions how to proof the ownership of a domain – when you put something on the website to demonstrate the control of the domain. (more discussion on the second CAB day) The opinion on this method is changing.

If there are any problems with the validation during the issuance of EV Certs report this to the validation working group members are Kirk, Cecilia, Robin or Jeremy.

**Code Signing Working Group** (Dean)

Status:

- The draft has been commented, there are 2 items open
- Final draft will be released – it will be not perfect – all are requested to bring it forward

What is new with this policy

- Formats are described
- The certificate has to be stored in hardware device

The information sharing thematic could not be covered it is delegated to the information sharing work group

## Information sharing Working Group

The information sharing working group is working to define technical aspects like

- Data format (what is the best XML or something else)
- When
- Who
- Control
- Use
- Feed in the system

So there are technical persons required – the call is taking place on every second Friday in the same week like the CAB phone call at 16:00.

## Microsoft Root Program Update

Consolidated root program in a single group at Microsoft. New changes went live on June 2, 2015. Received comments from information that was sent out in April. Only about 4-5 companies responded.

Program was launched in Windows 95, added auto-update in XP, and added update to certificate properties in Vista. Windows 10 will ship with April 2015 certificate update.

Microsoft currently works with 79 commercial CA’s and 47 government CA’s which manage 334 roots.

The overview of the program changes were to do the following:

- Change program requirements for rules to join, requirements to stay in, and ways to get kicked out.
- Streamline audit requirements and require a qualified auditor, baseline requirements audit and set obligation on CA.
- Re-wrote contract to address government CA’s and commercial CA’s. The new agreement supersedes all previous agreements. Agreement must be signed in 90 days.

The changes were made as the requirements were old, out-of-date and conflicting.

Rick stated that there were still new requirements which were confusing such as when SHA-1 was allowed or not allowed. Jody stated that they would look into resolving this issue.

In the new program all communication would be done by email including contractual notices. The CA’s must provide contact information three times per year (it is possible for the CA to add an auditor as a contact). Microsoft may contact certificate subscribers if there are issues with a Root. Audit compliance evidence is CA’s responsibility to provide.

Microsoft has streamlined the audit requirements. The auditor must meet Microsoft’s qualification requires and as such must be licensed by WebTrust or accredited per http://www.european-accreditation.org/mla-and-bla-signatories#4. Auditor must be one level down and not accredited by others. Qualified audits must match EKUs requirements per the tables in the MS audit requirements document. SSL requires a Baseline Requirement audit. Government CA’s must either be commercial or limit the TLDs.

Don suggested that there may be some confusion for how root and third party sub CA’s audit reports must be correlated. Jody stated that this issue can be addressed.

CA’s must use separate sub CA’s for EV, DV and OV certificates. CA’s must also include the industry policy OIDs in both end-entity and sub CA’s. OID values were stated, but it was commented that there is an error which will be corrected.

Eddy stated that there are issues with creating new sub CA’s on a short term basis. Jody says that Microsoft will be flexible and will allow reasonable time to implement new sub CA’s. If the CA has an issue, then they should approach Microsoft with a plan with reasonable dates and provide status updates.

Microsoft requires separate sub CA’s to 1) provide greater flexibility to limit or revoke, 2) provide greater certainty to know the type of certificate presented, and 3) provide additional flexibility to implement browser or OS features.

Wayne has issues with creating new sub CA’s and to separate OV and DV CA’s. Jody emphasized that the CA can propose a plan to implement the requirements. Jody also indicates that all technical requirements can be checked by Microsoft through telemetry.

The key takeaways are that 1) Microsoft intends to be firm in new requirements, 2) Microsoft knows that changes take time, and 3) Microsoft wants CA’s to propose reasonable plans to implement.

CA’s and Microsoft must deal with incident responses for compromise, security incidents and incidents which have exceptional circumstances.

Questions:

- Microsoft will provide methodology to provide PKI hierarchy for each root.
- Microsoft does not plan to change the contract unless there is a material issue.
- Why is there a requirement that the CA has to have a time-stamp authority (TSA).
- Some old roots do not have CNs, but this is a requirement
- If there are new sub CA’s then the old certificates will not be impacted. Just don’t issue any more on the old CA.
- Is there an issue with KPMG not listed for Turkey. No as cross border accreditation will allow KPMG to audit in Turkey.
- What about S/MIME? Microsoft will need to follow up on S/MIME.

## Short-Lived certificates

Ben Wilson: Several years ago we were trying to improve revocation response times in the wake of the Diginotar incident. Looking at all of the things which could be done. Some say that with a short-lived certificate, even when that certificate doesn’t include pointers to revocation information, the amount of risk is the same as a longer lived certificate with revocation information because the time for an OCSP response or CRL to expire is comparable with the life of the short lived certificate.

The BRs require that revocation info be included in all certificates. There is no way no be compliant with the BRs while issuing certificates without revocation info even if the certificate is short lived. There is no prohibition on a CA issuing short lived certificates today – but they must include the revocation pointers. When talking with people who know more than I do about this, they say the best way to try out short lived certificates is to remove the revocation info.
Browsers won’t check (and won’t complain) when no revocation info is present.
Eddy: Is the reason to improve the user experience or to protect from Diginotar.
Ben: A couple of big customer have come to us and – really it’s customer experience.
The Conversation around short-lived certificates without revocation pointers has gone on. Some People are opposed to it. Some people support it. Some say you could use CT logging and staple OCSP.
Against that, if you’re doing CT then you’re logging a new certificate every day instead of every 2 years, so the magnitude is very great.
option: short lived certificates – put in a different log and roll the CT log over fairly frequently – or prune logs.
I don’t want to get into massive CT details.

Ryan: not sure I follow how CT plays into this..
1 argument is simply a matter of performance. It doesn’t hold much weight.
Dropping CRL URL from certificate saves bytes, but requiring CT adds more bytes back in, so the ‘saving bytes’ argument is problematic.
Wayne: We’re doing a lot to add size to certificates. OIDs, CT
Ryan – we don’t require CT proofs in certificates – they can be stapled or got another way. There is 1 area of concern that a number of partners have asked for clarification – OCSP is hard. Short lived certificates could be a real saving, especially in IOT space (e.g. Digicert-plex)
The question is whether or not for the passive attack model (e.g. mis-issuance) – whether the short lived certificates offer the same security.

Robin: Ben, Your premise was that the security of a short lived certificate without revocation info was equivalent in some sense to that of the revocation response. It is comparable maybe, but I would disagree it is equivalent, because if there is a certificate with revocation information there is the opportunity for a CA to revoke the certificate, issue new revocation response and make it available to relying parties.
I appreciate there are replay attacks that can be done on revocation responses, but nonetheless you can get the message out to some people and that option isn’t available with short lived certificates.

Ryan: That was the distinction I was trying to make, Under active attack OCSP responses can be replayed.
Under a passive attack (such as loss of key) the revocation can have value.

Ben: As you say, There are situations where the circumstances are amenable to short lived certificates (IoT)
Ryan: providers want devices to phone home every week. If it hasn’t phoned home then they want to ‘stop’ the certificate by not re-issuing a new short-lived certificate.

Wayne: current viable alternative to highly available OCSP is stapling.
Ryan: stapling itself is an alternative, but the way it is structured is that you still have to have the ability to issue a response every day.
E.g. The Plex media streaming device. You can load it from anywhere on the internet & need a secure connection to the device.
Dean: I’ve done cable boxes
Ryan: Plex is public – they wanted to understand if they could have a short lived certificate.
Robin: If they want to do short-lived certificates, to issue the certificate & a single OCSP response is only twice he effort. – not a million times the effort.
Ryan: sure – The BRs say an OCSP service must be High Availability
Robin: The BRs don’t say HA – only 99.9% availability – if you control the application then you know not much internet load will arrive.

Ben: It’s a different risk model. Web pages – lots of people going to them. – these devices have fewer visitors.
Ryan: – Stapling is a great way to reduce OCSP responder loads for CAs.

There’s a reseller who resells Comodo and Digicert and (I think) Symantec reseller based in the US who contributes code to Apache and ngnix, including code supporting OCSP stapling.

Dean: It’s good to hear about this new area where this may be a necessary thing.

Ben: How do we identify this sort of scenario where this may be permitted?

Ryan: If the forum would like to better understand the use cases:
We have the notion in the Mozilla process of having technically constrained CAs.
The BRs are more stringent than Mozilla’s requirements. It is the BRs that need CRL and OCSP pointers in end entity certificates issued from constrained CAs. Not Mozilla.
Mozilla say that if the intermediate itself is BR compliant then that’s good enough. Plex could have used a sub-ca Name-Constrained to their own namespace and then issued certificates with no OCSP & CRL and Mozilla would be happy.

Bruce: How is the damage constrained for relying parties?
Ryan: by Name-Constraints, the subscriber sets the policy . The subscriber can set a more relaxed policy.
Tim: as a relying party – I just know the URL. I have no way of knowing that this portion of the internet is different.
Robin: Are you saying that revocation or other responsibilities falls at the sub-CA?
Eddy points out that revocation times are long for sub-CAs.
Tim: Name-Constrained sub-CAs could be used to avoid some BR requirements.
Ryan: Mozilla policy has ‘get out of jail free’ cards for Name-Constrained CAs.
Wayne: Do the browsers view these certificates as compliant?
Ryan: Yes. Plexapp.com – is viewed with a browser.

## Ballot process/preparation. Demo of new system of marked up version of BRs.

Ben – The Problem: easy to keep track of changes when there was only one set of BRs, changes were minor, and there weren’t many people. Coordination of ballot #s wasn’t necessary. Had certain rules about ballot format, what the ballot was for, why it was needed, redlined version of proposal. Ben thinks people were starting to get a bit careless about ballots, and it wasn’t always clear what changes need to be made to the BRs after ballots had passed. Official ballot needs to be clear about the exact changes being voted on, without any interpretation being necessary.

Kirk suggested unanimous consent could be used to correct minor inconsistencies discovered while updating the BRs to reflect results.

Ryan – The Solution: proxy-presenting for Peter Bowen Ballots done in Word via track changes, need a particular version of Word, production of PDF is painful, etc. Also, there is no good way to track changes to the BRs over time. Peter has put the baselines in a textual, easy to read form, that can be converted into “eye pleasing” formats. Dean asked if it’s easy to see which lines were the result of which ballots. Ryan answered this could be done by checking the BRs into a source control tool like git, which has a “blame” feature to figure out where an individual lines came from.

Kirk – Does this apply at all stages of the ballot? Ryan – Yes.

Ryan showed the source document in .md format, and showed the document converted to HTML and PDF. Making a change to the BRs is as easy as editing the text file.

Dean had some concerns about usability of command line tools. It was mentioned that WYSIWIG editors exist for all these tools. Ryan demoed editing the BRs via a github web interface. Ryan demonstrated adding comments inline to discuss changes to the BRs. Kirk asked if comments appeared in the final document. Ryan confirmed that they do not, but comments would be saved and the public could see all the conversation that was involved in creating the baseline requirements. It was mentioned that git might be a bit complex for non-technical users. Ryan mentioned that there are two parts: converting the BRs to text, and the tools used to simplify the process. Wayne mentioned that github really is not all that much more complex than Word. There could be simple instructions for how to create a ballot using github. Ryan mentioned that Ben is currently doing quite a bit of work to create redlined versions of documents, and merging documents, that is error prone and not necessary. Wayne: don’t have a good way to track versions today; this is exactly what github is for. Kirk: if we need better version control, we need to do that. Wayne: Manual version control is very costly, tools like this are designed for this. Ben: Ben currently manages the master version of the documents, with a central server to coordinate changes, things might work better. Rick: Could members of the public participate in discussions? Ryan: It’s up to us whether we allow public participation. Rick: There is the danger that the comments get split between github, and the email list. Ryan: We’d have to have rules about what goes where, perhaps pre-ballot on github and ballot on list. Again, there are two parts: replacing Word with something more flexible, and using github. Rick: Could we use Google Docs? The UI is more friendly. Ryan: Perhaps, but the version control features are less powerful. Kirk: Once a ballot is over, who makes the changes? Ryan: If we were using github, Ben would just have to press a button to accept the results. The view of the BRs is the latest version. Kirk: Do I have to scroll through the entire document to see the changes? Ryan: No, the default view shows only the changes, and a few lines of context around the changes.

## WebTrust Update

Don Sheehy from Deloitte LLP then gave the following WebTrust update:

1. The WebTrust committee met once in Seattle since the last Forum meeting with a focus on auditor licensing, looking at the need for updates and understanding Microsoft’s new requirements.
1. Auditor licensing – There were a few issues identified at the last CAB Forum meeting with regard to potential independence (for example, the size of engagement relative to practice) and issues identified with respect to the performance and reporting . For a recent CA’s audit (TrustCor), CPA Canada awarded a WebTrust seal on an incorrect report. The seal was suspended until a period of time audit is completed and a proper period of time report issued. The seal was recently reinstated but it was noted that the wrong report is attached to the seal. In addition there were a number of deficiencies in the report. Don offered to share information with the company to make sure they post the correct report. With regard to independence, CPA Canada acknowledged that this is a practitioner determination – all auditors are aware of the requirement of independence so it is their responsibility.
1. The Task Force began redoing the Baseline and Network security audit guidelines. The process is very slow due to the use of the RFC 3647 format for the Baseline Requirements (the mapping from the BRs to the BR WebTrust audit requirements is not as clean as it once was). Further complications arise from the fact that the new network security requirements are not in same format.
1. Certain issues were identified with the recent Microsoft root program changes
1. Responsibility for reporting hierarchy completeness rests with CA (it will not be an auditor responsibility). Auditor identification of all non-technically constrained sub-CAs may be an issue at times (independent sub-CAs, cross-signed roots, etc.). There will be a number of scenarios where one or more auditing firm are involved in auditing the entire hierarchy – organized by root.
1. New Roots may be needed to satisfy the requirement for dedicated sub-CAs for DV, OV, and EV certs.
1. Timing of audits and timeliness of reporting issues – it is the client responsibility to submit audit reports and issues with reports to browsers. Use of third party data centers may not allow timeliness of reporting of certain issues in infrastructure.
1. There could be a need for additional reports if specific browsers add new requirements. Microsoft stated it didn’t think auditors would need to audit its new root program requirements – it will use telemetry to monitor compliance.

## Browser News

**Microsoft**: No update on Internet Explorer or Edge

**Google**: Ryan said there wasn’t much news to report. He indicated that Chrome was considering a feature that Microsoft’s new Edge browser implemented: blocking all mixed content on sites using HSTS. To explain: There are two types of mixed content: “Active” vs “Passive” (browsers are now calling these “Blockable Content” and “Optionally-Blockable Content” under the Mixed Content spec). **\<script\>** is an example of Blockable content; **\<img\>** is Optionally-Blockable. Edge blocks both Blockable and Optionally-Blockable for HSTS domains. Chrome currently blocks Blockable (for all domains, HSTS or not), and doesn’t block Optionally-Blockable (for any domain, HSTS or not). Ryan said that Chrome may change in the future, such that it adopts Edge’s behavior.

Ryan added that Google is continuing to expand the Developer Tool Console in Chrome, and is working on better explaining why a security indicator was degraded.

**Opera**: Operas browser is now based on Chromium, haven’t taking all the code – lower level APIs are used, but not the UI. We did previously run our own root store, but this is replaced by the use of the OS root store similar to the Chromium project. Presto is still based on our online root store and it is still millions of installations of Presto. The online root store use Mozilla root store (NSS). Opera Mini run Presto on the server-side.

Opera deals with certificate related errors slightly different than Chromium. Instead of showing a crossed out https or an exclamation mark for mixed content we simply drop the security status to “web” which is the same as for http.

Opera will show user installed roots differently than pre-installed roots. You will get a hint when you start a session. Google will show all roots the same way. Many virus companies use user installed roots to monitor traffic and the use of such user installed roots will give the user a warning.

Opera migrates away from SHA1, and will simply drop the security status to “web” (as for http). Opera will add CT-support for EV, same as for Chrome. EV green bar is shown on desktop only, not in mobile.

Dean said that the EV indicator is not so easy to see, at least not for colorblind people. A suggest for improvement for Opera.

**Mozilla** Firefox release schedule: https://wiki.mozilla.org/RapidRelease/Calendar

1. 1024-bit root removal – nearly complete, but had to re-enable the “Equifax Secure Certificate Authority”. Barring a new security threat, plan is to turn off the Websites and Code Signing trust bits for this root certificate in the September batch of root changes, which is expected to go into Firefox 44, due for release on 26th January 2016
	* Bug: <https://bugzilla.mozilla.org/show_bug.cgi?id=1156844>
2. Developer console warnings for SHA-1 and RC4 released in Firefox 37(released Mar 31) for top level page loads (doesn’t work in private browsing mode) Examples for testing can be found in bug 1138101
	* Developer console SHA1: <https://bugzilla.mozilla.org/show_bug.cgi?id=1068949>
	* Developer console RC4/SSL3: <https://bugzilla.mozilla.org/show_bug.cgi?id=1092835>
	* Subresource load warnings: <https://bugzilla.mozilla.org/show_bug.cgi?id=1159152>
3. Short-lived certificates – implemented code to bypass revocation, but not yet turned on because “short-lived” hasn’t yet been defined. Contact Richard Barnes if you’re a CA interested in working with Mozilla to trial this.
	* Bug: <https://bugzilla.mozilla.org/show_bug.cgi?id=1141189>
4. HTTP secure by default – published blog post about deprecating non-secure HTTP. Received some push back but planning to press ahead
5. must staple – have a patch, making some progress on implementing
	* Bug: <https://bugzilla.mozilla.org/show_bug.cgi?id=901698>
6. Name constraints – currently discussing name constraints for government CAs. This discussion has proved interesting enough that Mozilla received a letter from the Commerce Committee of the US House of Representatives.
7. OneCRL – is the plan for publishing revocation info directly. Now implemented with blocking either by certificate or by subject / pubkey. Not yet bypassing OCSP/CRL checks pending confidence in ability to update the blacklist quickly. Will then enable for intermediate CAs.
8. SSL telemetry – HPKP violations account for about 0.26% of SSL warnings – appears to come from captive portals. Reports are available at <http://people.mozilla.org/~mgoodwin/tlser/tlser.html>
9. Salesforce CRM – used to send May CA communications. Will issue Salesforce license to primary contact of each CA. Kathleen looking for Guinea pigs for using salesforce – if you want to volunteer, please email Kathleen
10. Raw responses to CA survey available at <https://mozillacaprogram.secure.force.com/Communications/CommunicationSummaryReport?CommunicationId=a04o000000M89RCAAZ>. Have received responses from all but 3 CAs
11. Copyrights – still deciding if every CP/CPS is required to be freely redistributable. Feedback received from Symantec and would welcome feedback from others. Currently planning to require the Creative Commons license with or without restriction on derivative works.
12. Discussion of next Mozilla policy coming in August and will take place on mozilla.dev.security.policy forum.
	* Proposed updates: <https://wiki.mozilla.org/CA:CertPolicyUpdates#Consider_for_Version_2.3>


## Add more info to EV Green bar

Richard presented a proposal for added information in the EV green bar. There are a lot of fake sites in China – Richard proposes we add a “true site” term to the EV bar. Richard to send out information for comments in the main mailing list – add a note to say we discussed and would like more feedback

# Day 2

**Thursday, 25 June 2015**

**EV Wildcard (EVWC)** Dean: Not allowed today. It is the most authenticated so in that sense seems more logical than DVWC. What does cert represent? Most think business owner, but Jeremy thought it was the owner of the private key (on a prior call). From the Netcraft conference, it was shown user generated webpage that can be loaded into something like fbsbx.com. However any cert could be used, so this isn’t a EVWC specific issue.

Cloudflare is having issues with phishing DVWC?

Ryan for EVWC. What is the authorization domain, what are the security limits? If you can get EVWC, you can get it for any of the subdomains anyway. The example with appspot.com. foo.appspot.com Google can get an EV for any of these, but not the other way around. Foo can’t get it because appspot.com is what is validated. In validation, EV removes the “any other validation” method so can’t show control. Apple pares the URL down to the domain. So Netcraft worries about this covering joe.azure.microsoft.com to just azure.microsoft.com. Again, only Microsoft can get this EV for the domain.

Bruce said store.com could be bruce.store.com or dean.store.com If Bruce does fraud, all the info is to store.com Could this be in the subscriber agreement that only the owner can get the EV? Fraud subscriber will click OK.

Robin thinks the argument gets weaker. Why should ryan.store.com get the same level of trust as store.com? Ryan said he would agree if there was a mechanism to differentiate ryan.store.com and dean.store.com, but there isn’t right now. Facebook wants to do sharding. Mostly for performance reasons, but it also allows certs on each subdomain. Today they can get an EV for each one, but if they have 30 shards it is very expensive to do. EVWC would allow easier issuance. Wayne asked if multi-domain would cover this? May not be better in the pure security perspective, but showing each user domain explicitly provides more transparency.

Kirk feels EV is for strong identity, so ryan.store.com would be shown as store.com is not ideal. Ryan said often the payment is through store.com so you have to call them anyway. Bruce asked why wouldn’t Google want an EV for appspot.com. Ryan said that is a branding decision, not a security decision, but they could.

Robin. Don’t need just one cert. Could mix and match certs and sites.

EV is only 4% of the market, so something is holding it back. Don’t know if it is price or difficulty getting it or value. Why continue DVWC then if we do EVWC? Ryan wants to push SSL and afraid no DVWC would prevent people from doing it. Bruce said Amazon has tons of retailers, but all on Amazon.

Richard felt EVWC good, DVWC bad. For the reason of more validation.

Kirk proposed an EV (NOT WC) that somehow allows a cert/validation procedure for multiple levels. Ryan feared more confusion. Site says one name and transaction on CC statement is different. Can’t prevent that.

Inigo fine with EVWC.

Moudrick said EVWC infers “anything” so agrees with Wayne that multi-domain would be better.

Turktrust thinks EV should be highest level validation and should not allow WC.

Eddy said what about facebook.store.com? Ryan said, you can still get an EV for this subdomain, It might flag due to the Facebook part showing up high-risk, but the CA can justify it and issue. So again, no further security risk. Eddy for it, just was thinking through.

Opera thought it sounded like a bad idea at first, but when you go through the arguments, doesn’t see how it hurts anything.

Tim H mentioned the private key protection issue for all WC where if you have the key you can open any domain. Is it worse if this happened on EV than DV?

Dean called time. Told everybody to go consider it with their people.

## Certificate Transparency Update: Current log status, Future plans, etc. 

Ryan reviewed the current status of Certificate Transparency:

1. 7 organizations have logs now, check the web site for the latest.
2. Chrome 43 and 44 follow the Relaxation requirements
3. The new CT policy has been released. The minimum number of SCTs has not changed, but you need one SCT from a Google log and one from a non-Google log (prior policy allowed all SCTs to be issued from Google logs). The enforcement of this new logic will be in Chrome 46. Ryan will let us know how Chrome will know if certificates fall under the prior policy or the new one (the date of the SCT, and/or the certificate “not-before” date must be prior to a tbs date). This “date” has not been finalized.
4. How to receive Green bar treatment as it applies to SCTs:
	1. Certificates on the 2014 Whitelist
	2. Certs with SCTs and/or a not-before date up until a tbs date with SCTs with no log independence requirement (One or all SCTs can be from Google Logs)
	3. Certs with SCTs and/or a not-before date after a tbs date with at least one Google and one Non-Google log
5. Relaxation of the independence requirement is not a permanent decision. The goal is to return to the original requirement eventually. The long term goal is also to log all types of certs, not just EV.
6. The goal of CT logs is that they take Certificates from any CA and that they can contain any Domains. Google encourages log providers to take certificates from all Roots and for all domains
	1. If you are a log monitor you need to look at all logs
	2. CAs should not expect to have 100% availability of the Logs and they should be prepared for failure, the internet does not have 100% availability.
7. Google is building out more CT related auditing and consistency checks to verify things like was the SCT really added to the log. An SCT is only a promise to add it to the log.
8. Sometimes you cannot get enough SCTs and you need to cancel and start over later.
	1. Any precerts you posted should be compliant with the BRs (don’t post precerts then verify compliance). From a policy perspective people watch logs for certs they intend to issue
	2. If you log the same precert you are supposed to get the same SCT, so re-posting should not result in more entries. 6962 says the log can give you the same SCT, or a new one.
	3. If you re-post a precert that is not binary the same, you will get a different SCT.
	4. If you’re first issuance attempt failed and you are doing it again for the same cert, but it has different not-before/after dates, then you will get a new SCT.
	5. If you first issuance attempt failed and you update the not-before/after dates and keep the same serial number, log monitors will see what appears to be 2 different certs with the same serial number. Even though the first attempt did not result in the issuance of a certificate, it indicates the intent to issue the certificate. Different pre-certs with the same serial number may trigger some concerns.

## ETSI Presentation

Iñigo Barreira from IZENPE made an ETSI Presentation. Initially he explained the current situation of ETSI deliverables. And then he gave information about the ETSI deliverables to be published in 2015. According to this deliverables to be published as TS in June 2105 and starting the procedure to became EN in 2016

* 319 401 General Policy Requirements for Trust Service Providers

EN 319 411 Policy and security requirements for Trust Service Providers issuing certificates

* 319 411-1: General requirements
* 319 411-2: Requirements for trust service providers issuing EU qualified certificates

EN 319 412 Certificate Profiles

* 319 412-1: Overview and common data structures
* 319 412-2: Certificate profile for certificates issued to natural persons
* 319 412-3: Certificate profile for certificates issued to legal persons
* 319 412-4: Certificate profile for web site certificates issued to organizations
* 319 412-5: QC Statements
* 319 421 Policy and Security Requirements for Trust Service Providers issuing Electronic Time-Stamps
* 319 422 Time-stamping protocol and electronic time-stamp profiles

319 411-1 and 319 411-2 are the general requirements according to EIDAS regulations. 319 412-4 and 319 412-5 are the most important parts for CAB Forum and CAs should follow these two standards. Iñigo stated that the implementing dates of these standards have not been decided yet. During this presentation Iñigo also informed participants about the eIDAS Audit Requirement. The most significant requirement is Article 20.1 as follows;

“Qualified trust service providers shall be audited at their own expense at least every 24 months by a conformity assessment body. The purpose of the audit shall be to confirm that the qualified trust service providers and the qualified trust services provided by them fulfill the requirements laid down in this Regulation. The qualified trust service providers shall submit the resulting conformity assessment report to the supervisory body within the period of three working days after receiving it.”

ETSI audits will be carried out only by auditing bodies accredited in accordance with Annex E of TS 102 042.

Jody Cloutier from Microsoft asked how does a browser know if an auditor is qualified or not. Iñigo stated that any auditor who is able to perform ISO 27001 audits can also perform ETSI audits and the accreditation can be checked from a website of the ETSI so an organization should understand that if the auditor is qualified to perform such audits and added that Microsoft Agreement’s clause about qualified auditors is correct from this angle. Browsers can also check if a specific auditor is able to perform audit. Currently three auditing bodies (KPMG, TUV-IT and LSTI) are accredited.

## Bylaw Updates

Discussion around Kirk’s proposed ballot 149 took place. A note taker was not assigned for this segment but in summary, members felt that additional requirements around browser root programs were not warranted so Kirk agreed to modify the language to specify the proper name of the [WebTrust](https://cabforum.org/wiki/WebTrust) audit and submit to the forum.

## Domain Validation

Robin: there are different ways to control issuance of certificates sufficient that we can issue a certificate for it.

Robin: The aim of the game is to get rid of the catch-all provision for domain validation.

The supposition is that if we do away with the catch-all and replace it with the actual methods that CAs are using. We’re not particularly trying to block anything done today, but we are trying to make it transparent, clarifying by setting it out in the BRs that each method in use is enumerated in the BRs.

It removes the reliance on the CAs estimation that any new method is ‘equivalent’ to any of the documented methods.

Bruce. The purpose is not to remove what people are doing. Is that right?

Robin: If a CA said that they always turned around 3 times and spat before issuing a certificate and had persuaded their auditor that was OK then the benefit of this process was that a light would be shone on the process and the forum could decide whether it was acceptable.

Ryan. There is a risk of having the catch-all. We have seen CAs using methods which do not meet an acceptable standard.

Bruce. We want to make a list. The purpose is to have a list so we can clean it up.

Robin. Many things could had been done, but need to have it documented.

Robin. On Tuesday, in the working group, We were discussing the definitions. I suggest we skip over the definitions for this presentation since, although they are important, we need to discuss the list of acceptable methods of domain validation as set out in this proposed revision. What are we authorizing?- What are we proving control of? – those will be left to the working group.

The list is:

1. Confirming applicant directly with Registrar – unchanged.
2. Email to the registrant, technical, or Administrative contact from WHOIS – unchanged.
3. the list of 5 email prefixes. The email addresses will be held by people who do control the domain. – unchanged.
4. Domain authorization document – validation can be carried forward for a period of time. – unchanged.

Kirk: 4 now talks about including any private, anonymous, or proxy registration service. Ryan: That language has been brought up from the paragraph following #7 in the current BRs, but the meaning is unchanged.

5. This is a new method. Some CAs say if you could demonstrate control of the web-content of the domain – we’ll accept it. Kirk: This is actually a re-write of the current #6. It is not a new method, but a re-write of the current #6 limiting the option of where the content can be posted. The explanation we’ve been given for this limitation is that some hosts the decision to allow their users to control the entirety of the content of a website, but do not intend to give the applicant authority to order certs, and that the intention is that site owners \*will\* lock down access to the ‘well-known’ URI. We don’t agree for 2 reasons: a) If they’re foolish enough to give people access to their entire site then that is their decision. Many web pages don’t allow random people to make arbitrary changes to their sites so this is turning the world on its head by saying that people who have less security are limiting options for people with more security. b) Hosting companies and other site owners won’t know about this well-known path so the protection is not effective. It creates a new vulnerability. We think that people should still be able to post on their home-page or document root. Ryan: The way it works today is that a CA can do whatever they want today. Some CAs may make poor decisions – such as allowing the applicant to specify the location for the file to be changed. This opens the door for certificates to be issued incorrectly for many sites that host user content, including Facebook. Rick: What about the document root? Kirk: Yes, what about keep the .well-known URI and add the option of the document root. Ryan: That would limit the options which hosting sites offer to their customers and prevent them from allowing their customers to upload to the document root. The 5 prefixes for email address validation are also weak. Some are from RFCs, but admin@? … FQDN vs. part of the domain for authorization. Consider that today anyone who can demonstrate control of foo.bar.random.com or bar.random.com or random.com can get a certificate for foo.bar.random.com.
6. Changes in DNS record. E.g. a TEXT record – or could be a CNAME or a different DNS record. Ryan: There are types of DNS records which are necessarily amendable by service users (for some protocols) and those would not be suitable for this purpose. Robin: So that would be an argument for drilling down and specifying the type of DNS records acceptable for this method. We use one variation of this today (CNAME). People are happier to trust a change made to the DNS for a domain rather than a change to a page on the site. Its a useful method.
7. You can indirect the domain ownership through a DNS CNAME. Ryan: A CNAME is like a forwarding phone number. In use you are forwarded through it without being aware of the forward. Robin: If you’re interested in how this work then there will be two steps to the validation. e.g. assets.example.com The people who control assets.example.com have setup a CNAME so that any query for assets.example.com forwards to assets.example.com.cdnservice.com and then undertakes the domain control check on assets.example.com.cdnservice.com. They could then demonstrate control of assets.example.com.cdnservice.com using any of the 9 methods in this section/ A CNAME can be setup at any level in the DNS, so for a FQDN or a 2nd level domain or even (in theory) a TLD. The person controlling the domain you are validating has elected to forward the DNS lookup (and thereby the address resolution and the destination of the traffic) to the destination of the CNAME.

Rick: it seems odd that this #7 is at the same level of everything else when it requires one of the other numbers to be used also. Ryan: That’s the implementation – that when you follow this step you have to restart the process. Doug: We could also treat this as a step in the whole process – like for wildcards we say #1 strip off the ‘\*.’ we could say here, optionally follow a CNAME and validate ownership / control of that domain instead of the original. Tim: We should that put #7 as the last in the list and say ‘following the CNAME method use any of the above methods to verify control on the new domain’ Robin: Yes, maybe so. Dean – will you make a note of that for Jeremy, please.

8. Confirm the applicant controls an IP address. Some discussion over the quality of the check – but it was pointed out that the check of IP control must be carried out according to the language in section 11.1.2.
9. The final one is of putting a certificate on the site – so a ‘test’ certificate issued by the CA. If the CA creates a certificate as a unique ‘thing’ which they give to the applicant and if the applicant can make that certificate live over https then they have demonstrated practical control of the domain.

Ryan. This is similar to number 5. It problematic for a couple of reasons. Different ports are used by different protocols. e.g. IMAP A university student found a CA who allowed you to specify the site name (mapping to IP) \*and\* the port number. Google will hand out ports on their turn relay (and other service providers allow this for many reasons, too). This means that anyone can have apparent control of an (almost) arbitrary port number. Port number requires privilege. I can open a port and get a certificate for port number 15000. Running a SSL is not necessarily a privileged operation.

It matters which port you’re using. There are a whole set of security concerns around port use.

Port number under 1024 being privileged is an example and a rule of thumb, but is not a standard.

Your email administrator may not be authorized to order a certificate.

Dean: Is that something we’ve added in?

Ryan: Yes, it’s the ‘Let’s Encrypt’ model.

Doug: It’s a GlobalSign model, too. We do something similar. If we need to specify the list of ports in section #9 to make it robust then that’s OK.

## Cert Validity Periods 

Dean introduced the topic: There have been discussions on 2 years vs. 3 years certificate validity periods. Some people want to reduce the maximum validity period for OV and DV certs to 2 years to reduce security risk to those products. Other people want to increase the period to 3 years for all certs because they are all uniform. Customers are asking for 3 years EV certs and we are not able to issue those, so why can’t we extend to 3 year.

Kirk said that EV started out as something really special with high authentication and therefore we must revalidate every year. However, we are finding that nothing changes much and it is complex and a lot of work and I am unsure of the value of annual revetting. We support the idea of aligning the validity period of all certs to 2 years – with respect to revetting (not certificate validity period). I.e. increase EV revetting periods to 2 years and decrease OV/DV to two years vetting period.

Dean wants to keep the revetting period a different topic from certificate validity period (certificate lifetime). Eddy said that if we issue every 2 years, we should validate each second years.

Tim said he had no problem with validity periods compared to the pain of revalidating/revetting EV. If we have a customer with 5 different EV certificates issued at different times during the period, we have to revalidate the information every year for EV, and as Kirk was saying nothing changes every year.

Eddy said that they revalidate after a year. A DV is doing a very small assertion. An EV is doing a higher assertion. A CA has more information on an EV customer than the DV customer. Increase the validity period for EV and decrease the validity period for OV/DV because the vetting process for EV is more complex and therefore more secure.

Doug said it is not ideal to have 3 year certificates and doing validating annually, i.e. increase certificate validity period for EV from 2 year to 3 year and still doing annual validation.

Ryan proposed annual revetting for domain and every second year for organization. Do domain revalidation every year in case the domain has ceased. If something changes, you have to revoke that certificate.

If I want to be evil and shady, I can block revocation information for users accessing the site. Revocation checking that doesn’t work makes a longer certificate validity period a higher risk. 2 years lifetime constrains the upper bounds. Pushing out to 3 year potentially means that the certificate no longer properly warrants who the domain holder is. Decreased validity periods or requirement for OCSP stapling could fix that (or we could fix the revocation problem).

Ryan is concerned with domain revalidation when change of domain ownership takes place. If I sell you sleevie.com I can still get certificates for it the next 39 months.

This goes back to what we are trying to do with CT – if we buy sleevie.com we would like to know what certificates are out there lurking. CT is talking about what happened in the past.

The CAs in this room to pretty interesting experiments on how to do domain control validation. It could be a trade off, do the identity validation for longer periods and then the domain control validation for a much shorter period.

Different proposals for certificate validity periods came up based on different arguments:

| Type   | Today | Tim | Wayne | Ryan | Eddy | NN  |
| ------ | ----- | --- | ----- | ---- | ---- | --- |
| **DV** | 3     | 1   | 3     | 2    | 1    | 2   |
| **OV** | 3     | 2   | 3     | 2    | 2    | 3   |
| **EV** | 2     | 3   | 3     | 2    | 3    | 3   |

The alternatives will be further discussed in the next meeting.

There was a discussion regarding requiring the possibility of enforcing OCSP stapling as a way of solving the revocation checking problem.

Ryan said that pushing OCSP stapling alone will not work. This will make the SSL harder, because the experience for the customers is awful. This is not a browser or a server problem, but an ecosystem problem which must be solved by all participants.

Ryan said that he would love to see OCSP stapling working and could consider requiring OCSP stapling for EV certificates.

## UI Indicators in browsers

Rick Andrews:  

Firefox had previously announced they were going to degrade security user interface (e.g. removing the green bar, changing the color/appearance of the padlock) if any part of a site uses RC4.  

Rick had asked that there be a way to identify when this happens and why.

They’ve made some changes already.  

(Rick demonstrated FF visiting a site which gave an exclamation mark over the padlock)

The certificate information screen gives a general message.  

‘more info..’ says ‘broken encryption – RC4’ – which is pretty helpful.

The browser could have contacted 1000 sites to build a page. How to identify which caused the problem?

If you need to dive deeper, you can look in the  

“developer web console”->Network  

shows every connection being made to render the site plus, beneath it, a list of errors/warnings, including the use of RC4.

Show request info->Security  

shows the details negotiation for each connection.  

The detail you need is here – suitable for a tech support team to go at.

Ryan says similar functionality is pre-release in Chrome.  

Ryan demoed a pre-release version of Chrome.  

using the publicly available test site badssl.com.  

The page security state in the developer console shows errors.  

Chrome will display the absence (or presence) of CT logs in all certs, including DV and OV.  

Digicert is (optionally) including CT log proofs in OV certs.

## DV/OV/EV Certificates, Appropriate use and OIDs 

Dean: Microsoft has described OIDs for DV/OV/EV to be used. DV/OV come from the BRs, EV isn’t defined in the EVG.

Dean: Microsoft has required that these policy OIDs in the intermediates, so does that mean CAs need to cut new intermediates? Eddy: Depends, but not necessarily.

Inigo and Arno raised that ETSI defined OIDs for each of these five years ago, and multiple CAs are already using this. Ryan: Except the Microsoft program requirements don’t use those. They’re free to define their own policies, and they have.

A discussion ensued about how OID Arcs are allocated. Ryan explained to Dean about how OID arc allocations are made – 2.23.140 is the CABForums’, and we can do whatever we want without telling anyone. That said, we’ve set up a framework for how we do that – Jeremy makes sure we don’t duplicate OIDs.

Dean asked about searching for the OIDs, he can find info about DV/OV, but not EV, so does that mean registration is needed. Ryan explained that’s just an informational process (Harald Alvestrand or Orange SA’s site), and that’s what it’s for, but it’s not required by any process.

Eddy pointed out that Microsoft trumped that procedure in putting out the policy document. Jody made it clear that they’re not tied to the number itself, just that there’s a process to distinguish each of these certificates with a common identifier.

Bruce raised the point that back years ago, a hierarchy of OIDs was setup, so we should just follow that. Ryan pointed out that Ben’s email (about the tor OID) was related to this.

Wayne went and explained each of the OIDs – the OIDs used for the documents, and how they’re assigned. Dean made a proposal for an EV OID, and checked if Jody would be fine with it. Jody reiterated that it’s less about the specific number, as long as there is a common OID. Applause.

Jody explained Microsoft’s position, that they’ve begun discussing the feedback from yesterday’s meeting, and are working on providing clarifying changes. These aren’t minuted because Microsoft will wait to formally announce those.

Bruce asked for clarification with the policy OIDs – in particular, whether or not that policy OID needs to appear within the intermediate itself, or if it’s OK just to appear within the end-entity itself. There was some discussion about the anyPolicy OID and how that works, but Jody clarified that the end goal is to ensure it appears within the end-entity certificate, and he’ll clarify how that works.

Kirk raised that the informational explanation of the OIDs was incorrect for OV and could be confusing. Jeremy will work to resolve this.

**Discuss F2F Meeting 36** in Istanbul Oct 5 and Future

Istanbul October the 6th 2015

A discussion about hotel rates for Istanbul ensued. Some suggested it should not be above $225. Dean suggested to E-Tugra to get rates for several hotels for different budgets.

## Hosts 2016

- Middle of February Go Daddy (Phoenix)
- Middle of June Izenpe (Bilbao)
- September or October Microsoft (Seattle)

## Host 2017

- Chunghwa Telecom February or October (Taiwan)
