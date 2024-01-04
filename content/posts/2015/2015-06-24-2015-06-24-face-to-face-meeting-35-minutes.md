---
aliases:
- /2015-06-24-2015-06-24-face-to-face-meeting-35-minutes/
author: Ben Wilson
date: 2015-06-24 17:51:40
title: Minutes of the F2F 35 Meeting in Zurich, Switzerland, 23-25 June 2015
type: post
---

**Meeting 35 Minutes**

**Day 1
Wednesday, 24 June 2015**

**CNNIC application**

A discussion on the CNNIC application for membership in the CA/B Forum took place. Although it appears their application is complete, two questions arose: 1. They don’t appear to be licensed in China (BRs requires that a CA be licensed in the country they do business if a licensing scheme is in place) and 2. they appear to be a registrar for a TLD as well as a CA. Dean stated that they have a valid BR audit which would address item 1 but was asked to get clarification from CNNIC. Further discussion will take place on the next call.

**Working Group reports**

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

There where some discussions how detailed the policy should be. To meet all the different requirements or methods of the Standards as example \[WebTrust\]\[1\] or ETSI the document should be a high level statement. Ben invited interested participants to the working group phone calls – the time is 15:00 on Thursday in between the CAB calls.

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

**Information sharing Working Group**

The information sharing working group is working to define technical aspects like

- Data format (what is the best XML or something else)
- When
- Who
- Control
- Use
- Feed in the system

So there are technical persons required – the call is taking place on every second Friday in the same week like the CAB phone call at 16:00.

**Microsoft Root Program Update**

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

Microsoft has streamlined the audit requirements. The auditor must meet Microsoft’s qualification requires and as such must be licensed by WebTrust or accredited per . Auditor must be one level down and not accredited by others. Qualified audits must match EKUs requirements per the tables in the MS audit requirements document. SSL requires a Baseline Requirement audit. Government CA’s must either be commercial or limit the TLDs.

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

**Short-Lived certificates**

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

**Ballot process/preparation. Demo of new system of marked up version of BRs.**

Ben – The Problem: easy to keep track of changes when there was only one set of BRs, changes were minor, and there weren’t many people. Coordination of ballot #s wasn’t necessary. Had certain rules about ballot format, what the ballot was for, why it was needed, redlined version of proposal. Ben thinks people were starting to get a bit careless about ballots, and it wasn’t always clear what changes need to be made to the BRs after ballots had passed. Official ballot needs to be clear about the exact changes being voted on, without any interpretation being necessary.

Kirk suggested unanimous consent could be used to correct minor inconsistencies discovered while updating the BRs to reflect results.

Ryan – The Solution: proxy-presenting for Peter Bowen Ballots done in Word via track changes, need a particular version of Word, production of PDF is painful, etc. Also, there is no good way to track changes to the BRs over time. Peter has put the baselines in a textual, easy to read form, that can be converted into “eye pleasing” formats. Dean asked if it’s easy to see which lines were the result of which ballots. Ryan answered this could be done by checking the BRs into a source control tool like git, which has a “blame” feature to figure out where an individual lines came from.

Kirk – Does this apply at all stages of the ballot? Ryan – Yes.

Ryan showed the source document in .md format, and showed the document converted to HTML and PDF. Making a change to the BRs is as easy as editing the text file.

Dean had some concerns about usability of command line tools. It was mentioned that WYSIWIG editors exist for all these tools. Ryan demoed editing the BRs via a github web interface. Ryan demonstrated adding comments inline to discuss changes to the BRs. Kirk asked if comments appeared in the final document. Ryan confirmed that they do not, but comments would be saved and the public could see all the conversation that was involved in creating the baseline requirements. It was mentioned that git might be a bit complex for non-technical users. Ryan mentioned that there are two parts: converting the BRs to text, and the tools used to simplify the process. Wayne mentioned that github really is not all that much more complex than Word. There could be simple instructions for how to create a ballot using github. Ryan mentioned that Ben is currently doing quite a bit of work to create redlined versions of documents, and merging documents, that is error prone and not necessary. Wayne: don’t have a good way to track versions today; this is exactly what github is for. Kirk: if we need better version control, we need to do that. Wayne: Manual version control is very costly, tools like this are designed for this. Ben: Ben currently manages the master version of the documents, with a central server to coordinate changes, things might work better. Rick: Could members of the public participate in discussions? Ryan: It’s up to us whether we allow public participation. Rick: There is the danger that the comments get split between github, and the email list. Ryan: We’d have to have rules about what goes where, perhaps pre-ballot on github and ballot on list. Again, there are two parts: replacing Word with something more flexible, and using github. Rick: Could we use Google Docs? The UI is more friendly. Ryan: Perhaps, but the version control features are less powerful. Kirk: Once a ballot is over, who makes the changes? Ryan: If we were using github, Ben would just have to press a button to accept the results. The view of the BRs is the latest version. Kirk: Do I have to scroll through the entire document to see the changes? Ryan: No, the default view shows only the changes, and a few lines of context around the changes.

**WebTrust Update**

Don Sheehy from Deloitte LLP then gave the following WebTrust update:

1. The WebTrust committee met once in Seattle since the last Forum meeting with a focus on auditor licensing, looking at the need for updates and understanding Microsoft’s new requirements.
1. Auditor licensing – There were a few issues identified at the last CAB Forum meeting with regard to potential independence (for example, the size of engagement relative to practice) and issues identified with respect to the performance and reporting . For a recent CA’s audit (TrustCor), CPA Canada awarded a WebTrust seal on an incorrect report. The seal was suspended until a period of time audit is completed and a proper period of time report issued. The seal was recently reinstated but it was noted that the wrong report is attached to the seal. In addition there were a number of deficiencies in the report. Don offered to share information with the company to make sure they post the correct report. With regard to independence, CPA Canada acknowledged that this is a practitioner determination – all auditors are aware of the requirement of independence so it is their responsibility.
1. The Task Force began redoing the Baseline and Network security audit guidelines. The process is very slow due to the use of the RFC 3647 format for the Baseline Requirements (the mapping from the BRs to the BR WebTrust audit requirements is not as clean as it once was). Further complications arise from the fact that the new network security requirements are not in same format.
1. Certain issues were identified with the recent Microsoft root program changes
1. Responsibility for reporting hierarchy completeness rests with CA (it will not be an auditor responsibility). Auditor identification of all non-technically constrained sub-CAs may be an issue at times (independent sub-CAs, cross-signed roots, etc.). There will be a number of scenarios where one or more auditing firm are involved in auditing the entire hierarchy – organized by root.
1. New Roots may be needed to satisfy the requirement for dedicated sub-CAs for DV, OV, and EV certs.
1. Timing of audits and timeliness of reporting issues – it is the client responsibility to submit audit reports and issues with reports to browsers. Use of third party data centers may not allow timeliness of reporting of certain issues in infrastructure.
1. There could be a need for additional reports if specific browsers add new requirements. Microsoft stated it didn’t think auditors would need to audit its new root program requirements – it will use telemetry to monitor compliance.

**Browser News**

**Microsoft**: No update on Internet Explorer or Edge

**Google**: Ryan said there wasn’t much news to report. He indicated that Chrome was considering a feature that Microsoft’s new Edge browser implemented: blocking all mixed content on sites using HSTS. To explain: There are two types of mixed content: “Active” vs “Passive” (browsers are now calling these “Blockable Content” and “Optionally-Blockable Content” under the Mixed Content spec).**