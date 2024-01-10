---
aliases:
- /2021/06/16/minutes-of-the-ca-browser-forum-f2f-meeting-53-virtual-16-17-june-2021/
author: Jos Purvis
date: 2021-06-16 15:30:42
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 53 Meeting, Virtual, 16-17 June 2021
type: post
---

## Wednesday, 16 June 2021 – Plenary Meeting (Day 1)

The Antitrust statement was read.

### Attendees

Adam Clark (Visa), Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Clemens Wanko (ACAB Council), Curt Spann (Apple), David Kluge (Google), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Eva Van Steenberge (GlobalSign), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jeremy Rowley (Digicert), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Kati Davids (GoDaddy), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Michael Guenther (SwissSign), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Nick France (Sectigo), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Redha Hamzah (PoS Digicert), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Shelley Brewer (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Chris Czajczyc (Deloitte (WebTrust)), Ian McMillan (Microsoft), Hongquan Yin (Microsoft), Natalia Kotliarsky (SecureTrust), Brittany Randall (GoDaddy), Wang Chunlan (GDCA), Arnold Essing (Telekom Security – guest), Jesse Weissman (Microsoft), Jose Guzman (GoDaddy), Tyler Myers (GoDaddy), Dustin Ward (), Aaron Russell (SSL.com)

### Future face to face meeting schedule

The Fall meeting will be virtual (again). The lineup for next year is confirmed for a meeting in Poland in the summer and for Berlin for the Fall. The Spring meeting will be in the US. Dean is working with several hosts to confirm.

### Infrastructure WG Recap

Infrastructure met on Wednesday 2 June:

- Github automation will require some updates to Pandoc in our containers, but this will require testing due to a major version upgrade.
- We are working now on getting automated activity summaries published from Github to our CABF lists, in order to ensure discussions on Github are not lost and are more visible, and to try and focus the discussion on the lists rather than in Github.
- We reviewed the possibility of solving the ‘Effective Date’ problem in ballots (where some ballots have an embedded Effective Date that is earlier than when the ballot will become effective) through the use of publishing automation. The idea is that ballots would contain a “Becomes Effective at N+30” tag, and the publication process would translate that to “30 days after the effective date of the ballot” at publication time. This will take testing and discussion, so it’s still just a proposal, but has possibilities.
- We are continuing the work on updating website content.
- For email bounces and failures, we are now manually reviewing the infra-bot mailer periodically and removing/blacklisting permanently bounced email addresses, to cut down on the number of bounces that Amazon SES sees from us.
- The update to the membership spreadsheet is in the works, and Jos reminded the CABF members present to please use the membership update forms and be sure to keep up with the people recorded as representatives for your company. This will cut down on the number of email bounces, among other things!
- Finally, Infra approved GoDaddy to shut down the old hardware server that provided all of the CABF services for so long. We want to express our appreciation again for GoDaddy’s team and their support of the CABF infrastructure over the last several years-they continue to be excellent partners!

## Server Certificate Working Group Meeting

Attendees: _As marked for the Wednesday meeting session above_

Jos called the meeting to order.

### Anti-Trust Statement

Jos read the anti-trust statement.

### Approval of Previous Minutes

The minutes for the 27 May and 13 May meetings were approved by general acclamation.

### Mozilla Root Program Update

**Speaker**: Ben Wilson (Mozilla)
**Minutes**: Ryan Sleevi

**Presentation:**

#### Q & A

- Q: Dean Coclin (DigiCert): P5 has “slow to respond to requests” – is that looking at the application specifically, or the CA overall?

- A: Ben Wilson (Mozilla): It’s both. It’s interesting, if we reach out to CAs over e-mail to remind them, they respond. But we’re also looking at substantive responses to the concerns. They’ll say we acknowledged the e-mail, but they won’t have addressed the substantive issues.

- Q: Ali Gholami: A lot of interesting analysis with the CA issues and incidents. Have you analyzed misuse of certificates, such as for fraudulent financial purposes.

- A: Ben Wilson (Mozilla): No, that’s not covered.

- Q: Bruce Morton (Entrust): On the compliance issues, is there anything to say that the BRs should be updated or improved or clarified?

- A: Ben Wilson (Mozilla): These come across every so often, but not currently systematically tracking these. I’m relying on the CAs that see such issues to do that work.

- A: Ryan Sleevi (Google): Some of these are tracked in GitHub, either for CABF or MRSP. Some of these lead to ballots by CAs, such as the recent Ballot 202 redux from Corey at DigiCert. Some of these are definitely ambiguous or have a long and storied history, like the recent discussion about the precision in the notAfter of a certificate. Having looked at all of these, although not tracked to the same detail as Ben, some are just the CA stating something is unclear, even when the language is already very explicit, and 99/100 CAs, or whatever precision you want, are doing the right thing. So there’s a spectrum here, but definitely look for the CA to bring these issues.

### Cisco Root Program Update

**Speaker**: J.P. Hamilton, Jos Purvis (Cisco)
**Minutes**: Karina Sirota
**Presentation:**

### Microsoft Root Program Update

**Speaker**: Karina Sirota (Microsoft)
**Minutes**: Jos Purvis

#### Change Management

- Karina reviewed the Change Mgt process – updated monthly except December
- Update packages available for download; please do test and confirm testing
- Public share backlog of changes pending to make users aware of future changes which you can share to your users
- Release notes posted to a standard link when live

#### Program Requirements

- Current requirements URL posted

- If there is confusion, please email msroot@microsoft.com

- Testing will occur for 2 mos prior to release date, so CAs should request changes for a specific release no later than 3 mos in advance of the release

- Issues or suggestions for the MS Root Program can now be provided on their GitHub page, which is now public, but please also email msroot@microsoft.com for their records

- They are adding a new page to site regarding procedures around change requests (will be public @ aka.ms/RootCert)

- Some minor changes around requirements language are also being made

#### Testing

- All CAs can currently test changes roughly two weeks before change release
- If you have changes, you will be notified when the test changes are live. Please test within 5 business days of notice and confirm working/not-working (anyone can test–just requires some quick registry changes)
- Instructions on testing are available on docs.microsoft.com

#### Communications Reminder

- msroot@microsoft.com should be used for all communications
- Program requirements on Microsoft Docs (aka.ms/RootCert)
- Audit requirements on Microsoft Docs (aka.ms/auditreqs)

#### Kernel Mode Code Signing

- Certs for KMCS must expire by 1 July 2021 for certs issued after 20 Jan 2020
- Certs able to sign ddrivers prior to this date can continue to sign non-driver code
- Link to FAQ for developers found online
- List of 2021 expirations of these CAs provided

#### Q and A

_Q (Dimitris Zacharopoulos, HARICA)_: We recently got this testing message and there seems to be an issue with the cert transparency settings. New roots are currently not allowed to log to prod CT logs and I don’t know if there’s a way to fully test websites using the new Edge as a result.

_A (Karina)_: We can look into it. If there are no other errors besides CT, that should be considered fine-once you’re able to log it to CT that would be considered fine. We do this type of testing internally and it should be OK; I can look into what else we can do.

_D_: I believe there are settings client can do but I believe these are only permitted for Enterprises not for public roots.

_K_: I’ll look into it for sure!

Dean asked to have one of the links pasted into the chat

_Dimitris_: Regarding the root program requirements–you pasted the link to Github. So CAs can keep track of changes or updates using that repo, right?

_Karina_: Yes, that was recently provided. I’m looking in to a way to provide redlines and changes through that. I believe we have the ability to do that through GH now.

### CCADB Update

**Speaker**: Kathleen Wilson (Mozilla)
**Minutes**: Ben Wilson

Presentation:

#### JSON Array of Partitioned CRLs

We previously announced a new field in the CCADB, “Pertaining to Certificates issued by this CA”. We have also added a field called “JSON Array of Partitioned CRLs”. Mozilla does not currently have requirements for this field. It is currently set to 5,000 characters. One CA said they need 16,000 characters. Please comment in MDSP if you have issues with the size of the field.

#### Root Inclusion Cases

Root inclusion cases have been extended to Apple. In the CCADB, there is shared information, but each root store operator will make its own determination on whether to include a root.

#### CA Task Lists

When a CA opens up the CCADB, they will get a report and if any of the Task List items on your CCADB home page are non-zero, be sure to expand the corresponding report and resolve the problematic items.

#### CCADB Enhancements Now Tracked in Bugzilla

CCADB enhancements and bugs are now being tracked in Bugzilla –

#### Other Uses of Root Stores

Lists of curated roots are available in the CCADB – – subject to license appearing there.

#### CCADB Enhancements

We are currently prototyping CCADB for other kinds of updates – CA Owner information, selecting root certificates to update, and updating information on root certificates such as policy documents, test websites, and other fields. Then root store operators will verify and accept the changes.

#### Questions

Clemens asked if auditors could get access to do ALV pre-checking of their audit letters. Kathleen said that the solution might be to provide a form outside of CCADB to perform such checks. Ryan said that is already on the roadmap.

### Q&A discussion

**Speaker**: Jos Purvis \[lead\]
**Minutes**: Neil Dunbar

Jos: List contains form for Q&A, anonymous submission allowed, in order to foster discussion without personally attached to the question.

For the SCWG:

Q1. Interpretation of 6.5.2, the Computer Security Rating of the BRs.

_“How do people interpret “6.5.2 Computer security rating”? What is the expectation for this section? A number of CAs put “No stipulation” in this section. The RFC guidance for this section sounds more aspirational than instructive. Is this a section browsers find value in and if so how would they like to see it used? If there is no value in it should we consider formally amending the BRs to not require this section?”_

In the BRs, no entry in 6.5.2 is noted.

From RFC 3647,S 4.6.5

> This subcomponent is used to describe computer security controls such as: use of the trusted computing base concept, discretionary access control, labels, mandatory access controls, object re-use, audit, identification and authentication, trusted path, security testing, and penetration testing. Product assurance may also be addressed. A computer security rating for computer systems may be required. The rating could be based, for example, on the Trusted System Evaluation Criteria (TCSEC), Canadian Trusted Products Evaluation Criteria, European Information Technology Security Evaluation Criteria (ITSEC), or the Common Criteria for Information Technology Security Evaluation, ISO/IEC 15408:1999. This subcomponent can also address requirements for product evaluation analysis, testing, profiling, product certification, and/or product accreditation related activity undertaken.
>
> From [<https://www.ietf.org/rfc/rfc3647](<https://www.ietf.org/rfc/rfc3647)>

Dean: NIST IR also says “No Stipulation”

Tim H: This came from DoD Orange Book controls.

Ryan: Suspect this answer will not be as full as desired. Browsers would like Much more detail of their activities in CP/CPS and audits. Much discussion Over the years which may, or may not be in the audit. There is a tension between CAs not wanting to put detail in the CPS in case it causes mass revocation, versus CA transparency. The browsers would like to see much more disclosure on the security controls which CAs operates. With regard to the ratings, it is not as relevant or important. However, if a CA is operating a PKI for WebPKI they may also be operating for a local government which has its own requirements for machine ratings.

So no real value in removing the section from the BRs, which is generally complex and not useful, but the real goal is to get more disclosure in the CP/CPS documents

Ben W: When reviewing CP/CPS, I look for references on security ratings, so I don’t feel that CAs should not “No stipulate”, but I like to see CAs filling in details, since it shows desire to address the RFC 3647 categories.

Karina S: Microsoft also likes to see CPS documents with that information filled in, where it is applicable.

Clint W: Do the browsers find value in the section? Not today, since it is so underutilized. I don’t know what we could put into the BRs at this point. 6.5.2 is not a RFC 3647 section, but it is referred to within Section 4.6.5. Should it be used? We would love better transparency to measure how CAs assess security for their systems, whether for validation or any other usage. So Apple does not assign it great value today.

Jos P: I would like to expand this to all the relevant 6.5 sections, so that CAs can provide such information, because I see value in those disclosures.

Q2:

_“As you know the current root CA inclusion seems quite complicated and time-consuming in CCADB. Several programs such as Chrome, Cisco etc rely on approval from Mozilla root program to include new CA’s. For a typical CA it will take nearly two years to be trusted by the CCADB members. This is mainly due to a long process causes as the followings: 1. Almost full verification and additional requirements from Mozilla including CPS reviews etc. Would not it make sense to delegate these things to the trusted auditors? or what’s the purpose of these double verification by Mozilla? 2. Why other root programs such as Android and Cisco in CCADB have dependency on Mozilla root inclusion? 3. Why in the prioritization of the root CA’s by Mozilla some applications are prioritized? This causes a unfair processing of the applications in favor of other players in the market. Wouldn’t it make sense to regulate the timing process for applications?”_

Jos P: This isn’t really a CA/B issue. If people want to talk to the root stores, talk to them. Leaning in the direction of tabling this.

Kathleen W: Delegating to trusted auditors: Not all auditors are created equally. Some are very thorough, others don’t even follow the template. We appreciate ACAB-c and WebTrust for establishing templates. But we need more consistently good quality of audits and audit statements – this is perhaps more relevant for CA/B.

Ryan S: Correction: Chrome and Android do \_not\_ rely on Mozilla inclusion. We have our own processes, one of which is about public discussion. Mozilla’s determination does not determine Chrome and Android.

Ben W: Posted [https://wiki.mozilla.org/CA/Required_or_Recommended_Practices#CP.2FCPS_Documents_will_be_Reviewed.21][1]

If people review the comments there, they will see what gets looked for and what attracts criticism. This list evolves as new requirements come into force, the CPS must reflect that. Auditors may not know to look for those changes. Some changes could be made more rapid, but the review is not the bottleneck, nor is prioritization.

Most delays are caused by not filling out the CCADB requirements.

Regarding unfairness – that’s a value judgment which is hard to comment on.

Kathleen W: Posted [https://wiki.mozilla.org/CA/Required_or_Recommended_Practices#CP.2FCPS_Documents_will_be_Reviewed.21][1]

Ryan S: (in chat) – Note that Google Chrome has its own set of prioritization policies as well – – prioritized based on our user security needs

Kathleen W: It is the readiness in publishing to CCADB which helps prioritize a CA inclusion request. If a CA is prepared, it does not usually take 2 years.

Ryan S: To the question: “Why don’t we delegate” to auditors/third parties. As a root program, we oppose delegation. Mainly because there is poor quality control around delegation of trust. Regarding CA/B input, things which increase delegation and third party trust is likely to be opposed by root programs. So if a Ballot came up to support delegation, we would probably oppose this.

Clint W: (in chat) – +1 regarding delegation concerns/opposition

Jos P: We also try to reduce delegation for the same sort of reasons.

Mike R: (in chat) – Concur with concern of risks to root store with delegation. Within a root store we are as strong as our weakest CA so any additional risk in our CA portfolio is not desired.

Jos P: Propose table the remaining questions to see if we have time tomorrow to address others.

## Thursday, 17 June 2021 – Server Certificate Working Group Meeting (Day 2)

The Antitrust statement was read.

### Attendees

Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Aleksandra Kurosz (Asseco Data Systems SA (Certum)), Ali Gholami (Telia), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Clemens Wanko (ACAB Council), Curt Spann (Apple), David Kluge (Google), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Eva Van Steenberge (GlobalSign), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Kathleen Wilson (Mozilla), Kati Davids (GoDaddy), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Redha Hamzah (PoS Digicert), Rebecca Kelley (Apple), Ryan Sleevi (Google), Shelley Brewer (Digicert), Sissel Hoel (Buypass AS), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority), Xiu Lei (GDCA), Chris Czajczyc (Deloitte (WebTrust)), Ian McMillan (Microsoft), Hongquan Yin (Microsoft), Natalia Kotliarsky (SecureTrust), Brittany Randall (GoDaddy), Arnold Essing (Telekom Security – guest), Jesse Weissman (Microsoft), Tyler Myers (GoDaddy), Aaron Russell (SSL.com)

### Guest Speaker Prof. David Maimon: Evidence Based Cybersecurity

Presentation: [Evidence-Based Cybersecurity and its Relevance for Guiding Certificate Authorities Operations][2]

### ETSI Update

**Speaker**: Arno Fiedler (Vice Chair ETSI ESI)
**Minutes**: Clemens Wanko (ACAB’c)

Arno updated the audience on latest ETSI standardization activities within the ETSI Signatures and Trust Service Standards Framework. New are standards on

- Identity proofing,
- AdES creation & validation, Part 3: extended signature validation,
- Schema for algorithm catalogues.

With regard to Identity Proofing the TS 119 461 was forecasted to come end of July 2021:

- TS 119 461 – Policy and security requirements for trust service components providing identity proofing of trust service subjects

Use cases are:

- Identity proofing by physical presence
- Remote attended identity proofing
- Remote unattended identity proofing
- Use of eID and digital signature for identity proofing

The section of stanadrds for EU Trusted Lists was completet by

- TS 119 615 Procedures for using EU trusted lists and
- TS 119 172-4 Validation policy for EU qualified signature /seals using EU trusted list

Apart from that, the following tests were performed: Interoperability tests with non-EU trusted lists (e.g. Japan)

Finally Arno announced the drafted update of the EU Regulation 910/2014 (eIDAS) which had been released June 3rd by the EU commision.

### ACAB’C Update

**Speaker**: Clemens Wanko (TÜV AUSTRIA)
**Slides**: [/uploads/20210615_53.cabforum_acabc_slides_01.pdf][3]
**Minutes**: Arno Fiedler

ACABc the Accredited Conformity Assessment Bodies – Council (association) has the objective to harmonize amongst accredited conformity assessment bodies (CABs) a comparable/standardized application of conformity assessment requirements (ETSI, CEN, CA/B Forum, eIDAS, etc.) Clemens reports about Assessments in COVID-19 situation: all Council members are still running, working safely from home and keeping busy with certifications while respecting the International Accreditation Forum requirements when managing extraordinary events or circumstance with remote audits. (see slide 6) Clemens shows the adoption of the Audit Attestation Letter (AAL) and gave notice about a revised EU eIDAS Regulation.

1. Council overview
1. How to restart audits alongside COVID-19? → will shift back to on site auditing as far as travel allows.
1. Audit Attestation Letter template for ETSI auditors → AAL was updated to Mozilla Root Store Policy 2.7.1. Please require ETSI auditors to use this new template.
1. Revised EU eIDAS Regulation (draft)

Please download AAL Version 2.8 (or later) here:

### WebTrust Update

**Speaker**: Jeff Ward (BDO), Don Sheehy (CPA Canada)
**Note Taker**: Brittany Randall (GoDaddy)
**Presentation**: [/uploads/20210615_53.cabforum_acabc_slides_01.pdf][4]

**Minutes** (in addition to items covered in the presentation):

_Jeff Ward:_

- One thing Jeff misses about in person meetings is Arno dressed up in a suit.

Impact of Covid 19

- Important to remember there are two primary issues
- Clients being able to get to facilities to demonstrate controls
- Auditors being able to be on site to observe
- Determined that guidance in 2021 is still applicable

Practitioner guidance for auditors

- Practitioner guidance was issued to all WebTrust practitioners
- Additional updates to follow with increased use of remote auditing

Reporting Guidance

- All US reports are covered by AICPA and CPA Canada

Detailed Controls Reporting

- Some Cas have started piloting. This report type is very long.
- Note that the detailed controls report will not replace the short form report which is the one that is suited for the public facing seal
- Reviewed the five proposed main sections (similar to a SOC 2 report) where section five could be used to include management repose and bugs filed during the period.

_Don Sheehy:_
Current Status of Updated WebTrust Documents

- Challenges with meeting virtually. CPA Canada only wants to release documents once a year.
- Monitored forum activities, but have not changed any of the primary documents since the last meeting
- Ideally, will be making changes in fall 2021, likely around the fall CA/B meeting.
- Was a clarification of public disclosure of CP or CP/CPS noted on the CPA Canada Website which is going to be included in the fall revisions.

WebTrust Reports available

- Reports are available for the entire CA lifecycle

New Projects

- Ongoing monitoring of S/MIME for potential new WebTrustengagements
- Looking at separation between network security and baseline, which are currently combined
- Impact of third parties on WebTrust engagements
- Traditionally, WebTrust has taken a fully inclusive approach which includes service providers and sub-service providers and all the controls the provide. The only thing currently segregated out is WebTrust for RA.
- With movement to the cloud and additional third party roles, question is to whether or not there needs to be a carve our approach.
- Reaching out to key user groups for comments on any of the proposals prior to making any key decisions which will be make with input of all significant users.
- Developing a suggested template to support Mozilla request related to auditor qualifications to help provide consistency. This includes significant discussions relating to disclosure to CPA Candata, meeting Mozilla objectives, privacy laws, etc.

CPA Canada

- Janet Treasure is leaving – naming a successor, however waiting for official announcement. Many thanks to Janet for all of the work she has done including dealing with ongoing issues, seals, delivery of seals, and audit reporting.
- No other changes

Questions?

- Kathleen: Do you have a timeframe when you think you might have that template available for the audit team qualifications?
- Don: Working on it now. Got one that one of the task force members has already developed. Should have a draft within the next month or so that we can share with you.

### Strategies for retiring older root CA certificates

**Speaker**: Ben Wilson (Mozilla)
**Minutes**: Wayne Thayer (Mozilla)

Ben said that as part of the efforts to improve the Mozilla root program, they are looking at removing older roots that may not comply. In their April survey, Mozilla asked CAs what some of the challenges are, and received comments from most CAs. One key point was to coordinate with other root programs/browsers. Also, there are challenges to removing older roots, and Mozilla should have a method for evaluating which older roots should be removed. A suggestion was to look at characteristics of older roots, and also looking forward to what kinds of roots (e.g. 4096-bit RSA keys) would replace them.

Ryan Sleevi said that he read all the feedback, and it is confused or nonsensical. An alternative strawman for the compatibility risk . Some CAs have some risk, some have no risk. For all these roots, CAs can follow the method of creating a new root and cross signing it with the old root. Every CA on this call has done that at least once. We know the process works in the abstract. So what goes wrong? What are the challenges CAs face with this process? We need some data to understand this. So to reframe the question, what were some of the challenges faced with this approach?

Bruce Morton said that he understood Mozilla wanted to remove old roots, but Ryan said that old can be used to sign new. That may be the confusion.

Ben said that they would allow cross-signing, and could streamline the process of including the new roots.

Ryan said that the goal is to determine what it would take to swap a CA’s roots – replace old with new.

Bruce said that this could be combined with moving to dedicated CAs for specific purposes.

Ryan said that the goal is to include the new root before the old is removed.

Ben said that Mozilla could remove the server trust bit from old roots to facilitate the cleanup and move in the right direction.

Brittany Randall said that CAs would start issuing from the new root. What about customers who are still inheriting trust from the old root? What is the transition plan?

Ben said the first concern is that different browsers are in use, and coordination is needed to streamline this transition.

Ryan said that Google’s goal is to ensure minimal disruption. The root swap would not happen until TLS certs issued from the old chain have expired or been replaced. This provides CAs time to identify and address compatibility issues. Ben said we could also have a program for CAs who opt in to a program to streamline the inclusion process, such as CPS reviews.

Ryan said that in Chrome, CAs doing root replacements to more restricted roots get the highest priority.

Karina Sirota said that Microsoft’s process is similar, with a more streamlined process for root replacements that does not require a point-in-time audit. Old roots are not removed until end-entity certificates have expired.

Dimitris Zacharopoulos said that he had been meaning to reply on the mozilla-dev-security-policy list about cross-signing compatibility issues with S/MIME clients. HARICA believes that transitions of TLS certificates are relatively easy, but email clients don’t all have ways to easily add/“inject” cross-certificates in the S/MIME signatures. The approach of removing the websites trust bit rather than the root is most appropriate.

Wayne Thayer asked if there is any movement on the pace of root store updates on Android devices.

Ryan said that Android supports cross-signs, but the update cycle is nowhere near what is desirable, but cross-signing is a viable solution. This is really a problem for new CAs, not existing CAs replacing older roots.

Wayne said that cross-signing is slightly more complex and error-prone, which introduces risk when many clients must rely on the cross-signing for compatibility.

Ryan said he would like to understand what those risks are for existing CAs. There is some risk tied to lifetime of cross-sign, and risk to customer config errors. Are there other risks? Can CAs experiment with these transitions to identify a successful path.

Wayne said that he is referring to server configuration errors. Is there a way to quantify that?

Ryan said there are tools that can help, such as cfssl and crt.sh. What software are CAs concerned about, and what tools can be created to help customers, such as SSLLabs.com and Hardenize? There are opportunities to build a common tool like this that works for all CAB Forum members. Identifying risks allows us to define solutions.

[1]: https://wiki.mozilla.org/CA/Required_or_Recommended_Practices#CP.2FCPS_Documents_will_be_Reviewed.21
[2]: /uploads/evidence-based-cybersecurity.pdf
[3]: https://wiki.cabforum.org/_media/20210615_53.cabforum_acabc_slides_01.pdf
[4]: /uploads/20210615_53.cabforum_acabc_slides_01.pdf