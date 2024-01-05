---
aliases:
- /2020-02-19-minutes-for-ca-browser-forum-f2f-meeting-49-bratislava-19-20-february-2020/
author: Jos Purvis
date: 2020-02-19 15:54:51
tags:
- Minutes
- Face-to-Face
title: Minutes of the F2F 49 Meeting in Bratislava, Slovakia, 19-20 February 2020
type: post
---

Minutes of the F2F 49 Meeting in Bratislava, Slovakia, 19-20 February 2020

## CA/B Forum Plenary 

**Attendees:** Peter Miškovič, Dean Coclin, Nick France, Arvid Vermote, Dimitris Zacharopoulos, Jeff Ward, Don Sheehy, Clemens Wanko, Ryan Sleevi, Tadahiko Ito, Trevoli Ponds-White, Atsushi Inaba, Chris Bailey, Kirk Hall, Jos Purvis, Clint Wilson, Mike Reilly, Karina Sirota, Arno Fiedler, Mads Henriksveen, Sissel Hoel, Vijay Kumar M, Srinivasan V, Tomas Gustavsson, Mike Kushner, Matthias Wiedenhorst, Dustin Hollenback, Doug Beattie, Wayne Thayer, Corey Bonnell, Joris Minolla, Enrico Entschew, Tobias Josefowitz, Robin Alden, Mariusz Kondratowicz, Neil Dunbar, Jeremy Rowley, Tim Callan, Leo Grove, Thanos Vrachnos, Pedro Fuentes, Anna Sikorska, Paulina Karwowska, Devon O’Brien, Eva Van Steenberge, Nikolaos Soumelidis, J.P. Hamilton, Arnold Essing, Derek Bronson

### Approval of Minutes from previous teleconference 

The minutes were approved.

### Report from Code Signing WG 

_Presenter:_ Dean Coclin (Digicert) Bruce Morton (Entrust Datacard)
_Note Taker:_ Dustin Hollenback (Microsoft)

#### Minor Ballot Changes 

- There is a pre-ballot out to make minor changes to the code signing working group charter. A forum level ballot will be presented shortly.

#### CSCWG Summit 

- An in-person summit for EV code signing guidelines will be held at Microsoft
- Microsoft will bring some Code Signing Certificate subject matter experts.

#### Cloud Based HSMs 

- Tomas Gustavsson provided the working group with some comments about Cloud based HSMs and how to prove attestation of private key.

#### New Member 

- There is a potential new member to the group and more information will be provided later.

#### Document updates 

- 16.3 in BRs updates needed
- 16.4 in EV guideline updates needed

#### Upcoming Meetings 

- No call next week due to RSA.
- There will be another call just before the summit.
- In-person summit scheduled for Wednesday, March 18th.

#### Discussions 

- Robin Alden asked what is the Code Signing Certificate Working Group aiming at in terms of guidelines. Do we know if we are going to create one document or maintaining two separate documents?
- Dean Coclin said that the goal is to get to one document, but will differentiate between normal and EV validation.

### Report from Forum Infrastructure subcommittee 

_Presenter:_ Jos Purvis (Cisco)
_Note Taker:_ Ryan Sleevi (Google)

- Walked through some of the pending changes to the website; pending a new date for the migration
- A few holdups with the migration of the mailer system, working through SMTP issues with upstream
- Wiki system has had some challenges sending outbound emails. This mostly affects password reset e-mails. If you’re having trouble, reach out to a member of the Infrastructure Subcommittee
- Discussion around branching and how to manage the documents
- Held a working session at the end of the day to work through a recommended flow
- Will be cleaning up and pruning the GitHub repository, along with updating documentation
- Wayne: We didn’t discuss this, but it came up later. The ballot to move the canonical version of the documents from the Word document to GitHub
- Jos: One ballot in the way that needs to be described in the ballot as to how to account for, but likely to have an update in a few weeks

### Creation of Additional Groups – Secure Mail 

_Presenters:_ Wayne Thayer (Mozilla)
_Note Taker:_ Clint Wilson (Apple)

#### Background Review 

- Wayne: I guess I’m the Tim and Wayne show.
- I guess it might be worthwhile to summarize where we’ve been. We’ve had discussions for creating an S/MIME BRs for a long time now. It was blocked way back to 2016 by forum infrastructure subcommittee.
- That was solved by forum structure reform.
- At the shanghai meeting we talked quite a bit about it.
- Ben Wilson drafted a charter about a year ago and some work was done.
- There was a big issue and some disagreement, about whether the charter should be specific to validating email, or wheher it should include identity.
- At the last meeting, at Ghongzhou, we said we wouldn’t get to consensus and the best way would be to put it to a vote.
- It was put to a ballot and it failed. Partially due to comments late in the discussion period that weren’t fully understood. Also some unaddressed comments from long prior.
- Since then, Tim has been working with Clint to address some of those issues. Thank you to Clint for giving a very clear description of the concerns. Tim sent out an email yesterday addressing some of those concerns brought up by Apple.

#### Recent Concerns Overview 

- Some of the concerns that I’m aware of
- The ballot includes membership as certificate consumers mail transfer agents. It’s been removed, I believe.
- Tim has talked about cessation of membership brought up by Apple. How a certificate consumer and issuer might stop membership.
- The counterpoint that Tim’s made is the language is very similar to other groups. Should we try to improve it with S/MIME formation.
- When the WG is first formed, there’s a need in order to be a certificate issuer, your certificates need to be trusted by a certificate consumer. And then another mechanism where certificate consumers can’t join unless they trust certificates issued by a certificate issuer.
- We had this same sort of problem with the CSWG and people just joined and we just made it work.
- So the quesiton again is whether we want to improve this now as part of the S/MIME wg formation or not.
- At this point I’d like to open it up to discussion, to see if there are any additional comments.

#### Discussion 

- Dimitris: The way I understand this chicken and egg problem is at the bootstrapping meeting we’ll have potential consumers and issuers, we can have a structure for having consumers announce and then have the issuers join as well.
- Ryan: A much easier solution, it’s unclear why a consumer needs to trust an issuer in order to join. Beyond bootstrapping issues, there are concerns with why consumers trust an issuer as membership and whether that affects their ability to distrust an issuer. An easier solution is simply to remove the circular dependency. This could be for both consumers and issuers. Considering this is a bit greendfield, we could just allow consumers and issuers to join. So we could solve this issue just by having a more open charter.
- Dimitris: Going over the charter, I fail to see this dependency from the certificate consumer side. (Reads portion of charter)
- Ryan: It uses the precise term “Certificate Issuer” in the version of the draft we reviewed. But yeah, that’s roughly the idea is just remove that dependency. If you’re a software provider, aboslutely join the group. If you’re a certificate issuer, absolutely join the group. If you’re a CA, you shold be able to participate. Until the S/MIME WG actually publishes a standard and requirements, there’s no need to be restrictive.
- Dimitris: I wouldn’t object to relaxing some of these requirements.
- Wayne: I think that helps clarify that issue. The other issue in the charter around ending membership. (Reads portion of charter). As I understand the concerns from Apple, it’s this automatic cessation. How would we solve the problem.
- Ryan: I feel really bad for Clint taking minutes for this session. If there’s a reason to believe a member should no longer be a member, you can send that to the forum. What the process for verifying the conditions of removal or suspension. If there’s reason to believe that a member no longer qualifies, what’s the actual process. There’s no process for a consumer to respond to allegations. If there was a process defined/described, (describes) there’s no way right now to verity the claimed reason
- Wayne: From Google’s perspective, it’s not really about the criteria, it’s about the lack of process. So fi there was a process added, then that would resolve the problem.
- Ryan: ALong with the opportunity for the member both consumer and issuer to respond. We put them in the suspended state to allow them to get the audit or switch auditor. There’s a chance to respond.
- Dimitris: We had a long discussion. From my reading there’s no way for it to happen automatically. It has to be challenged. (reads from charter). So if the concern is about having the chair do this, then I think we could update the charter to requirea. ballto
- Clint: Ryan’s description would address many of the concerns we have, but not all of them. I’ll get some additional details of those concerns to the public list
- Ryan: The draft that was sent doesn’t follow the charter template. The draft leaves it abiguous whether it applies to consumers. The suspended process essentially works the way we’d want, but not following the draft charter template makes it much harder to be sure that all the things we spent so much time discussing are actually addressed in the charter.
- Wayne: It exactly mimics the SCWG language, so you’re saying the new template updates that?
- Ryan: Mmhmm
- Wayne: That covers what I had. Any other concerns?

Next steps: Clint will send out an email, Tim will send around another draft.

### Addressing previously discussed Bylaws issues 

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Wayne Thayer (Mozilla)

Dimitris – we discussed issues related to the Bylaws at a previous meeting. Took that feedback and proposed changes. Circulated proposal on mailing list a few weeks ago[1].

The proposed changes are:

1. Change is a clarification of the term Member. Made distinction of Full Members very clear.
1. Added term “Voting Representative”. Each Member can designate Voting Representatives and only those votes are considered.
1. Replaced “Forum wiki” with the properly defined term “Member Web Site”.
1. Removed references for Webmaster in the definition of “Public Web Site” since it is repeated in section 5.2.
1. Added Photography policy in Exhibit D

A redline is available on Google drive [2]. Planning to take this to a ballot soon.

Second proposal allows the Chair or Vice Chair to make informative changes to Forum documents.

Changes to the cover page, table of contents, copyright, and footers with page numbers are permitted.

This is allowed UNLESS the ballot explicitly sets this information.

Robin – this allows changes to non-normative parts. What about changes to normative parts?

Dimitris – this only covers informative parts.

Robin – does this leave us open to a ‘default deny’ situation?

Dimitris – are you asking if this forbids changes to other informative parts?

Robin – Assuming “default deny”, the implication is that no other informative parts may be changed without a ballot.

Dimitris – should we make it clear that this is not an all-inclusive list of informative sections?

Robin – yes [1]

[2]

### Bylaws open issues 

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Wayne Thayer (Mozilla)

We have a [doc listing open Bylaws issues][1]

- Organizations that qualify as Certificate Issuer and Certificate Consumer
- Who must sign the IPR agreement if a CA delegates operations to another organization? We have addressed this issue – both operator and owner should sign.
- Associate members who are CAs must be removed after a specific period of time. This needs a procedure, not a bylaws change
- Removing the need to read the antitrust statement before each meeting. First discussed this in Thessaloniki. One solution is a procedure for providing a copy of the antitrust statement to each F2F meeting attendee. They would sign to agree. Would that work for F2F?

Dean – it’s easier to read it multiple times than to sign a document

Trev – what about signing the antitrust agreement prior to granting wiki access?

Robin – we’d still benefit from a reminder at the start of each meeting

Devon – like an IETF ‘note well’ approach where a slide reminder is displayed.

Dean – good idea

Robin – how would that work for audio calls?

Dimitris – a slide would work for F2F meetings. It could be read at the start of phone calls.

- Set some minimum expectations for the formation of subcommittees in the Bylaws. We currently create them via ballot. There was no discussion on this topic. Dimitris said it’s easier not to modify the Bylaws.
- Consider adding minimum days for members to review draft minutes. How about 2 weeks for F2F meetings?

Robin – yes, 2 weeks would be good

Dustin – how long does it take for the minutes to be drafted?

Dimitris – there is no deadline

Dustin – we won’t add a deadline?

Dimitris – correct

Corey – suggest we define this in terms of actual days, not working days as those vary around the world

- Define a versioning scheme for our documents with major and minor versions. Major versions happen when normative requirements change. Should we spend time defining such a scheme?

Robin – against it. To gain benefits, users would need to understand the framework. To get there it would be hard, and the benefit doesn’t exceed the cost.

Doug – agree with Robin on major and minor versions. Versioning based on the date might be helpful.

Dimitris – this adding of the year would be confusing

Devon – software does major/minor versioning to signify the type of change. Difficult to distinguish here, so it will be difficult to resolve this.

Dimitris – Glad to hear that there is not much interest in pursuing this.

- Allow editorial change to guidelines – this is addressed in a current proposal
- Consider allowing partial approval of F2F meeting minutes. In the past we’ve seen delays getting minutes out because the final few sections take a long time to receive. One argument was to approve what has been submitted after a period of time. Counter argument was that members only want to review the minutes once.

Trev – for reviewing minutes in parts, are the minutes already divided into sections by WG and SC?

Dimitris – WG minutes are separate. Delays are in the SCWG. Proposal was to allow partial approvals for minutes for a WG. I can just create a ballot to find out how people feel about this.

- Currently have an IPR agreement document that binds members, but there is no membership agreement binding members to the bylaws. Has this already been resolved? Let’s table this until Ryan returns.

Wayne – suggested a new issue: update the Bylaws to require Certificate Issuers to be trusted in a **current version** of a Certificate Consumer’s software. The current language seems to have a loophole in that a root may be trusted in some versions of software and not others.

Mike – agree, we have active CAs and those in the process of being deprecated (but still in the Windows root store).

Dean – Is version the correct term?

Mike – yes

Dean – what about Mozilla?

Wayne – roots are added and removed in new versions of NSS and thus Firefox. However, if distrusted via OneCRL, then the Firefox version won’t change.

Dean – what about Apple?

Mike – for Microsoft, “no longer active” equates to distrusted

Clint – for Apple, the OS version would update. Version number might not be the best language to use, but agree in principle.

Jos – concur with “current iteration” language alternative. Ultimately, these decisions should be made by the Certificate Consumers.

Devon – bad idea to be binding to a software version. Dynamically updating trust stores is a thing.

Wayne – sounds like this is an acceptable idea and we just need to work out the details. We should include language that assigns the determination to the Certificate Consumers.

### Code Signing Formats – an overview of some of the different code signing formats used in the wild 

_Presenters:_ Tomas Gustavsson (PrimeKey)
_Presentation:_ [Code Signing Formats][2]

## Server Certificate WG Plenary 

**Attendees:** _List identical to CA/B Forum Plenary above_

### Approval of SCWG Minutes from last teleconference 

The minutes were approved.

### Apple Root Program Update 

_Presenter:_ Clint Wilson (Apple)
_Note Taker:_ Enrico Entschew (D-Trust)

#### Root Program 

- Clint Wilson introduced himself as new contact person at Apple Root Store Program
- Started at Apple in November 2019, previously worked at DigiCert for 6 years
- Will be processing and managing all the root inclusion requests or updates to roots and this kind of issues
- Are planning on more heavily using the CCADB for tracking the root store part of the apple program
- Similar like Mozilla and Microsoft there will be some Apple specific fields in the CCADB in the future
- Program priorities: Priority is on managing the roots that are already present in the root store; root inclusion requests coming after that

#### Certificate Transparency 

- Apple has a certificate transparency policy. It’s pretty stable and been working well.
- Most of the work in the last year is been lifecycle operations (monitoring CT policy, mailing list, onboarding new logs etc.)
- Apple does have a call for those interested being log operator. Apple is interested in expanding the CT ecosystem. Feedback around from the CT policy participation would be welcomed.

#### Extended Validation 

- Pretty near feature release: Change to the UI around EV certificates.
- OV and DV certificates will stay the same
- Basically the Base Domain Name is displayed. By clicking you see the rest of the URL. There is a little lock. Right now both are in green. Apple is changing those to be white.
- The place of showing the company name will remain unchanged.

#### Certificate Lifecycle 

- History of certificate lifetimes changes: Ballot 185 –> first attempt to reduce lifetime to 1 year (from 3 years); failed, Ballot SC22 –> second attempt to reduce the lifetime to 1 year (from 2 years)
- Ballot SC22 failed.
- Apple feels the need to protect their users and will basically enforce that change by its root program directly.
- Apple is moving to enforce a policy change capping the lifetime of certificates to 398 days.
- It will affect public TLS certificates.
- The change will not affect private PKI or administrator or user added roots.
- Going into effect: September 1, 2020 –> Certificates issued on or after this date will have to meet this requirement.
- Enforcement date: Later 2020
- Apple is going to be publishing a KB article later that has these details and a little bit more.

#### Summary 

- Clint is now part of the Apple root program
- If you have feedback or questions: ClintW@apple.com
- CT lifecycle is going well.
- Apple is going to have an update on the UI.
- Apple is going to have an update around certificate lifetimes

#### Questions 

1. Doug, Globalsign: What are you planning to do to change the UI for certificates issued after the September, 1st 2020 that have a 2-year validity period? What’s your intent?

Answer: I believe it’s the same as if you encountered an 866-day certificate today. I believe the indent is the same kind of change. But I’m not actual positive. So I’ll double check on this specific change that we plan to make happen.

2. Doug, Globalsign: So you plan to block access to sites that don’t apply with that.

Answer: I assume. I believe that’s the intend but I need to double check to confirm. It’s our policy, so an 866-day certificate are the same.

3. Mike, Microsoft: There is going to be a UI change from green to the white. Do you have some rational to make that decision to share?

Answer: Just simplifying and consolidating our UI components. It was the only case of changing the color there and just simplifying the UI.

4. Tim, Sectigo: And so you said soon. Can you be clear on soon like when do you thing that change is coming or what can you tell us?

Answer: I can’t tell you much of that. It’s gonna hit a new seed here, relatively shortly.

5. Robin, Sectigo: It this change 1st of September sort of transition is that just for certificate from that date?

Answer: Yes.

Robin, Sectigo: So certificates issued the day before for two years would still remain mutable.

Answer: Yes, we just key off the notBefore value, September, 1st midnight UTC.

6. Trevoli, Amazon: Amazon wishes to have also the UI change being included in the KB article.

_Presentation:_ [Apple Root Program Update][3]

### Google Root Program Update 

_Presenter:_ Devon O’Brien (Google)
_Note Taker:_ Mads Henriksveen (Buypass)
_Presentation:_ [Google Root Program Update][4]

TLS 1.0 and 1.1 deprecation from stable Chrome release early 2020.

Deprecating mixed content ensures that https:\_ pages can only load https:\_ subresources.

Announcements on CT policy forum in January includes improving CT monitoring infrastructure to increase the reliability for CAs. Policy language cleanup – minor changes – share those in advance. CT days tentatively scheduled for fall 2020. Changes in the CT log ecosystem; Let’s Encrypt are added as a CT log operator. 2019 shards are removed.

Mike: Location for the CT days?
Devon: New York in September has been suggested

Wayne: Comments regarding the Apple announcement regarding shorter lifetime?
Devon: Google supports Apple’s initiative, will give an update as soon as we have a firm stand on this matter.

### Microsoft Root Program Update 

_Presenter:_ Mike Reilly (Microsoft)
_Note Taker:_ Eva Van Steenberge (Globalsign)
_Presentation:_ [Microsoft Root Program Update][5]

**Notes other than presentation:**

- Over 60+ changes go live on the 25th of February.
- No significant changes that require immediate action. Better to ask than to find out through enforcement.

Dimitris: Reason codes: just for EE or intermediates?
Karina: Focus on intermediates. Contacted about revocations, but couldn’t provide more information – e.g. was the intermediate revoked following a security incident?

Corey: Reason code requirement – immediate or phase-in?
Mike: Haven’t really discussed this. Requirements are posted immediately.
Corey: This update requires changes in the back-end.
Mike: Will provide feedback on the effective date.

Dimitris: CRLs and OCSP?
Mike: All.
Dimitris: Expectations of which reason codes are linked to which scenario?
Mike: Can provide more specific information.

Srinivasan: Intermediate and EE?
Mike: Intermediate only.

Mike: Many questions about this topic, can use more detail, there is already more detail on the page, but can provide more feedback.

Devon: Redlines were previously provided and the documents versioned. Can this be provided?
Mike: Is available, and will be shared. Some changes may be significant to CAs, although internally vetted.

Wayne: What’s the EV treatment in Anaheim?
Mike: This is pulled from Chromium. Still looking at it internally.

Voted to reduce lifespans. Take a look at what Apple is doing. More updates to follow. Happy to answer any questions.

### Cisco Root Program Update 

No update this time! 🙂 No questions for Cisco either.

### Mozilla Root Program Update 

_Presenter:_ Wayne Thayer (Mozilla)
_Note Taker:_ Neil Dunbar (Trustcor)
_Presentation:_ [Mozilla Root Program Update][6]

Participants:

- Wayne Thayer (Mozilla)
- Dimitris Zacharopolous (HARICA)
- Chris Bailey (Entrust Datacard)

**Wayne**: _Program Manager_: Wayne has left Mozilla, and is working for another company now. However, he will continue to volunteer for Mozilla in the CA/B Forum for foreseeable future. He will remain as CA Certificate module owner until a replacement is found. Mozilla is currently posting a job opening. Wayne recommends that questions are referred to Kathleen Wilson.

_Inclusion Requests_: Kathleen (Wilson) is currently 2 months behind in processing inclusion requests. Mozilla urges CAs to be patient – it is likely that backlog may get worse until a replacement for Wayne is found.

_Root Store Policy_: Policy 2.7 is now published and was effective as of January 1, 2020. A [Blog post][7] is available which summarises the pertinent changes. The GitHub repository is recommended for suggestions for changes or any comments.

_CA Communication Survey Results_: For this survey, all CAs responded. This is greatly appreciated by Mozilla. Only 2 CAs needed following up, which is better than last year. All CAs have committed to getting their relevant CP/CPS documents updated by April 1, 2020. This differs from the previous CA Communication Survey, where annual CP/CPS review was more generally stated as the deadline for compliance.

All CAs have noted in the communication that they are complying with EKUs in end-entity cert. This has been the cause of mis-issuance in the past, so adherence to this rule represents a welcome improvement.

Audit Letter Validation (ALV) has been the biggest source of comments. There were a number of CAs had audit statements which did not have all of their intermediates. If ALV is \_correctly\_ noting a missing intermediate certificate, the affected CA **must** file an incident report. There are several paths to remediation: a revised audit statement, revoking the intermediate CA or listing the intermediate CA in OneCRL are all possible responses. Mozilla hopes that all CAs are taking care of these issues promptly. In the future, ALV will be run more and more with each CA submission to CCADB, or when the ALV command is invoked.

_Update Incident Reporting Guidance_: The F2F in Guangzhou prompted additional guidance regarding incident reporting. Firstly, if a misissued certificate is not going to be revoked within normal timescales (BR/CPS stated), then a second incident report of why the appropriate revocation deadline was missed is required. Mozilla tries to understand the root cause of problems in order to prevent them reoccuring. This is why a second incident report is needed: to explain the CA’s lack of agility. Similarly if a different incident is uncovered while reporting another, a second incident is report is required – the two incidents should not be combined into a single report. Similarly, if a reoccurrence of a previously remediated issue is discovered, a second incident report is required – the CA should **not** just add details of the reoccurrence to the Bugzilla report on the previous issue.

_Distrust-After_: Mozilla has added the Distrust-After capability to NSS, which can allow Mozilla to perform finer-grained distrust. Kathleen Wilson will be posting a lists of certificates which will be distrusted with their distrust dates. This can be used in the case where a CA is no longer issuing TLS certificates from a given root.

_CRLite_: Initially announced in London, CRLite is now working in Firefox Nightly (and Beta) in data gathering mode. The module is actively checking revocation CRLs results rather than OCSP. CRLite pulling information into large Bloom filter to (probabilistically) discover which certificates are revoked. There is no date as yet as to when it will go into active checking/enforcement mode.

Firefox Nightly has Intermediate Preloading (which is required for CRLite to function), using CCADB disclosure to preload intermediate certificates rather than AIA chasing, if the chain is not sent during the TLS handshake. This is expected to go live in April with the release of Firefox 75.

**Dimitris**: Is the intention of CRLite to replace Firefox directly checking CRLs and/or OCSP?

**Wayne**: CRLite is targeted at end-entity certificates, and the intention is to replace OCSP checking. Intermediate CA certificate revocation is still performed via OneCRL.

**Chris**: Does CRLite use reason codes to determine inclusion or exclusion in the CRLite Bloom filter?

**Wayne**: No – it’s everything that’s in the CRL.

_TLS Deprecation_: TLS versions 1.0 and 1.1 are being deprecated. Firefox 74, expected on March 10th, 2020 will have an error message if deprecated TLS is detected. Eventually this will be a hard failure. Users can override the error via a configuration setting if so desired.

### CCADB Update 

_Presenter:_ Karina Sirota (Microsoft)
_Note Taker:_ Devon O’Brien (Google)
_Presentation:_ [CCADB Update][8]

#### Presentation 

Section 5.1 added to CCADB policy to include what information must appear in audit statements. CAs and Auditors both need to be aware of this. [1]

#### ALV for intermediate CA certificates 

- CCADB started implementing ALV for intermediate CAs recently
- ALV is an automated tool to read audit letters & attestations and extract certain information from them
- ALV was previously just for root CA certificates
- Mozilla implemented it first, Microsoft to follow soon after some testing
- An audit letter or attestation will pass if finds both the SHA-256 fingerprint and the name/version of the applicable ETSI or WebTrust standard in the Audit Statement
- You can check for successful or failed ALV results

CCADB is working on adding support for multiple CP/CPS urls for CAs, whereas only one CP URL and one CPS URL are supported today per Root CA certificate.

- Soliciting volunteers from CAs to test this functionality in CCADB Sandbox to provide feedback on this

#### Discussion 

**Dimitris Zacharopoulos (Harica):** If we have an audit report that includes all the CAs that are in scope for various root programs, but also CAs for private PKIs, will this cause a problem with ALV?

**Karina Sirota (Microsoft):** No, ALV looks for positive indicators, so if it detects what’s in scope, it passes. If there is additional information, it does not cause a failure

**Neil Dunbar (TrustCor):** It seems that ALV is trying to apply machine learning to something that is intended for human consumption. Why not use YAML that’s specifically designed for machine consumption?

**Devon O’Brien (Google):** There is far, far too much content for a human to consume and reasonably interpret, which is why they’re trying to tackle semi-automatable parts. It is far easier to roll this out incrementally than to impose a YAML schema that’s consistently implemented across all auditors and CAs (even though as a user agent consuming these, we’d love to live in that world)

**Clemens Wanko (ACAB’c):** In order to do a pre-check, could we get access to the ALV tool to make sure it successfully retrieves the information from the documents? This would be helpful to ensure that our letters are more useful before we deliver them to the CA

**Mike Reilly (Microsoft):** ALV was created by Mike’s predecessor due to the volume of audits and we have a thousand audits with one person reading them. There are still the manual checks, but the desire is to give a tool that aids this one person in performing this job. CCADB has a list of plans to implement, and we can add to that over time. [1]

### Report from SCWG Network Security Subcommittee 

_Presenter:_ Neil Dunbar (Trustcor)
_Minute Taker:_ Mariusz Kondratowicz (Opera) _Presentation:_ [Network Subcommittee Update][9]

Presentation notes: Slides available

Three main efforts:

- Pain Points group – immediate issues, short, medium term
- Threat Modelinng – medium/long term initiatives
- Document Restructurizing – long term strategy

Authentication and Access Control group is suspended because of lack of resources.

Main important points from Pain Points group which are in the scope of current work of the subgroup:

- NSR language is too prescriptive
- NSR language is too vague
- NSR text is overlapping/redundant
- NSRs allow reliance on manual review processes
- Log retention periods too long
- Timing requirements for remediation not clear

Current ballots:

- SC21 – passed
- SC20 – in discussion
- SCXY (1) – not enough endorses, it is postponed
- SCXY (2) –

#### Threat Modeling group 

Currently we are continuing Threat Modeling process, we are in the Phase “Threat Analysis” after preparing DFDs and decomposition of them. Detailed statistics regarding TM was showed on the slide. Plans for future:

- Discuss and evaluate “NSR Checklist” in NetSec Subcommittee
- Analyze use-cases
- Identify threats and risks
- Build new checklists
- Provide ballots for NSR based on findings

#### Document Structuring 

Looking to make NSRs a more logical in the matter of structure by analyzing other framework and good practices e.g. NIST Cybersecurity Core Framework

#### Other matters 

There was a heads-up about definition of CVSS. There is an prepared ballot which we change a definition to one proposed by NVD.

2. Discussion:

_Participants:_

- (N)eil Dunbar – TrustCor
- (M)ike Riley – Microsoft
- (D)imitris Zacharopoulos – HARICA

_Content:_

M: Did you already build a template for the ballots and guidelines?

N: Yes, it is ready and can be used. M: It’s good. It can be very useful, espiecially for other working group. And it can be consider aa best practice.

D: Did you already use proposed structure for any ballot?

N: Yes, SG20 and SC20 has basically the same structure which proposed.

D: Any updates regarding the discussion about Change Management which we had yesterday?

N: Yes, there is one update. The answer for the question about whether the Patch Management will be a part of ballot or not, is yes. It is consider as change. As Ryan brought up a topic about blindly accepting patches, we agree that it is rather not proper approach to accept all the changes without looking into that. So in fact, there is a process of change management in context of Patch Management. However, it is not an intention to make it granular and accept all the changes one by one like Patch 1, Patch 2 and acceptance process for all of them. But it has to be some rules which we follow in this context.

### Report from SCWG Validation Subcommittee 

_Presenter:_ Wayne Thayer (Mozilla)
_Minute Taker:_ Doug Beattie (Globalsign)
_Presentation:_ [Validation Subcommittee Update][10]

#### Recent accomplishments 

- Ballot SC25 passed and will become effective around June 1
- Ballot SC27, Onion certificates is in voting periods. It looks like it will pass.

#### Defining the source for state and province standard name formats 

- Use of ISO3166-2 as source, not easy for all regions
- We need to look into local language and representations of regions and take that into account

#### Discloser of validation sources 

- All sources? QGIS, QIIS?
- The focus has evolved this week to being focused on listing Jurisdiction of Incorporation registration agencies, and not necessarily the systems which CAs used to get the information that was created by those Registration Agencies.
- Do CAs make comprehensive lists? Seems like it might not be the case since only one CA has released it, but maybe the type of sources was not clear (it should be now).
- Open questions: How would we use it? How would we keep an allowed list updated? Need to have flexibility for some period while waiting for update to happen.
- Made progress on understanding what the problem is and what data is being requested. We’ll work on this more in Validation Subcommittee

#### OU field discussions 

- Is the OU field allowed in DV?
- Are OU values in OV required to be consistent with rest of subject, or can they just not be misleading
- The action is to re-write that section

#### EV Improvement 

- Include LEIs: Did not discuss. Tim is working on ballot
- We discussed two possible enhancements to CAA:
- Standardize CAA record definition to specify which type of cert the domain owner wants to use (DV/EV/EV). Don’t want to force CAs to check, but it makes sense to define a standard set for those CAs that want to provide this feature for their customers
- Domain validation method specification: Permit domain owner to 1) specify email/DNS/HTTP higher level validation methods, or 2) let customer specify a specific method
- The second option will be harder to update with new methods similar to existing ones are added because it means lots of DNS updates which may reduce the incentive to create new methods. Did not rule it out, but it’s a hard problem.

#### Future work items for Validation Subcommittee 

- Default Deny interpretation. Do we want to tackle as new WG, or in Validation Subcommittee.
- We could take to ballot, or we can have group update document and comment. Action was to come up with a way to break down the work.
- We could start by looking at enumerated lists: Are they interpreted correctly?
- This will be a priority for Validation Subcommittee over the next few months.

# Thursday, 20 February 2020 – Plenary Meeting (Day 2) 

**Attendees:** Peter Miškovič, Dean Coclin, Nick France, Arvid Vermote, Dimitris Zacharopoulos, Jeff Ward, Don Sheehy, Clemens Wanko, Tadahiko Ito, Trevoli Ponds-White, Atsushi Inaba, Chris Bailey, Kirk Hall, Jos Purvis, Clint Wilson, Mike Reilly, Karina Sirota, Arno Fiedler, Mads Henriksveen, Sissel Hoel, Vijay Kumar M, Srinivasan V, Tomas Gustavsson, Mike Kushner, Matthias Wiedenhorst, Dustin Hollenback, Doug Beattie, Wayne Thayer, Corey Bonnell, Enrico Entschew, Tobias Josefowitz, Robin Alden Mariusz Kondratowicz, Neil Dunbar, Jeremy Rowley, Tim Callan, Leo Grove, Thanos Vrachnos, Pedro Fuentes, Anna Sikorska, Paulina Karwowska, Eva Van Steenberge, Nikolaos Soumelidis, J.P. Hamilton, Arnold Essing, Derek Bronson, Alesandra Kapinos

## Server Certificate Working Group 

### Report from Quantum Cryptography liaisons 

_Presenter:_ Tadahiko Ito (Secom)
_Note Taker:_ Tobias Josefowitz (Opera)
_Presentation:_ [Report on Quantum Cryptography – keyUsage values][11]

Liaison work with Bank of Japan, may be published in English in the future. (Note that this is not an official opinion of Bank of Japan)

Xday being the day when quantum computers can attack traditional crypto systems. However, traditionally encrypted data usually has a “protection period”, beyond which the traditional crypto has to be expected to be attacked by traditional means. Right now the estimate is that we’d need 10^9 qubits to decrypt RSA-2048; right now we have 100. This means we’d have to grow enormously in order to exceed the current protection period for RSA-2048.

The first available quantum computers will not be able to decrypt traditional crypto, e.g. RSA2048, because the systems will not be powerful enough. A very optimistic estimation for quantum computers that can break RSA2048 would be around ~2048.

Crypto systems need to be rolled over to quantum-safe schemes only one data-protection period before quantum attacks become possible in practice.

Question and Answer on Quantum:

Dean: If I am recording a TLS session today and a Quantum computer with sufficient q-bits becomes available tomorrow, doesn’t that put the session at risk?

A: Technically it would. However, It will need a major change of quantum computer architecture, and it will take a long period of time to become available.

Dean: Just postulating hypothetically, but if I am recording a session today, and if a quantum computer becomes available in 20 years, would I not be able to decrypt the session. That is what I am asking, why do you say it is not at risk today? I think in fact it is at risk because when and if a quantum computer becomes available, then those sessions can be decrypted…

A: There will be some time before we can expect quantum computers, maybe 20 years, maybe 10 years, there will be enough time for switching to quantum-safe schemes. It is OK in terms of Data Integrity and Web Authentication, but it in term of data preservation with secrecy, it might be a problem.

Dimitris: Dean you are right, somebody could decrypt, it’s a different threat, though. Most people are, I mean, the current risks are for authentication and what Tadahiko said that there would be more interest to somebody to hijack and break current cryptography rather than some archives 20 years back. It would be a different interest.

Chris Bailey: It obviously depends on what is being transmitted, and different people are going to have a different mix of information. You can imagine some data may be expired in the future, for example credit card numbers, however government secrets will still be problematic 20 years into the future.

A: My opinion is: We need to differentiate those.

Dimitris: Change your password every 10 years!

ECC and ECDSA in Certificates: Mozilla policy: ECDSA P-256/P-384, but we do not have an id for ECDSA, unrestricted ECC public key would be able to use other ECC algorithms. There is no document prohibiting key usage of Key encipherment or data encipherment. Secom and others have issued certificates with ECDSA and kU keyEncipherment/dataEncipherment enabled, but this does appear to be RFC compliant. They intended to revoke these certificates but found there is no revocation “reason” code that applies to this case.

Question and Answer:

Dimitris: Just to try to summarize and recap what he said, I understood that there was an RFC that described some restrictions for the keyUsage values for ECDSA keys.

Dimitris: I understood that there was an RFC that described some restrictions for the keyUsage values for ECDSA keys.

A: There isn’t any ECDSA identifier

Dimitris: That is a subtle detail that people overlooked. The original interpretation was that key Encipherment and data encipherment were not allowed for ECDSA keys. And you have proposed an RFC or Internet Draft to make clear that key encipherment and data encipherment are explicitely prohibited in End-Entity certificates using ECDSA keys. CA’s should not do this, and if they did, they need to revoke.

A: If it were comply with RFC, I do not know what will be reason to revoke. In addition, if it were very minor RFC non-compliant certificates, I am not sure if we need to revoke such certificate.

Doug: Dimitris: What do you mean by ECDSA key

Dimitris: If your End-Entity certificate is using one of the p-384 curves or p-256

Doug: It’s an ECC key that can be used for ECDSA, this makes the Mozilla requirements a bit confusing as there is no such thing as an ECDSA key in my view.

Robin: There is not an RFC which prohibits the use or inclusion of data encipherment, for example, but it is problematic, if they use the key for it once that’s fine, but if they use it a second time it leads to compromise of the key, so the bit in itself is not a problem, but using it in that way is.

Dimitris: The part of the RFC that describes it so if you are using an ECC public key … curve public key it only said having three keyUsage bits keyEncipherment, nonRepudiation and keyEncipherment are allowed, others according to the RFC is not allowed.

A: It says MAY.

Dimitris: But in the RFC it is an enumeration.

A: It seems RFC is not default deny. It was just not defined, depends on interpretation.

### Jurisdiction Of Incorporation in Private Organizations (e.g. Germany), definitions and expectations 

_Presenter:_ Robin Alden (Sectigo)
_Note Taker:_ Wayne Thayer (Mozilla)
_Presentation:_ [Jurisdiction Of Incorporation in Private Organizations][12]

Robin began his presentation with the example of registering a company in Germany. He picked an example company of Autohaus Spathelf GmbH in Baden-Wurttemburg (District court Stuttgart) with registration number 103055.

In what context is that number unique? Robin looked it up in the online Handelsregister and found 8 companies, each in a different place. None in the same city.

Robin clarified that this is not a criticism of the scheme. It is reality that he is trying to understand.

What value should go into the JOI fields?

What is the meaning of Jurisdiction of Incorporation in the EV Guidelines? Sectigo counsel said that JOI is not a legal term – it’s from the EV Guidelines. So based in the definition in the EVGLs, Robin interprets it to mean ‘the state or province or locality whose laws enable the formation of the Private Organization’

If a Gmbh is registered at a local court, the JOI isn’t the court because no set of laws are associated with the court. JOI is the Federal Republic of Germany. Is that correct?

Jurisdiction of Registration is not defined for business entities, so it is irrelevant here.

Incorporating Agency is defined as the JOI under whose authority the legal existence of the entity is registered

Registration Number is defined as being unique in the EVGLs. Otherwise nowhere is this number described as being unique

Going back to the example, the Registration Number is not unique at the JOI level. Might be unique at the state level

Toby pointed out that two of the registrations in the example are in the same state

Registration Number could be unique at the courthouse level. But a courthouse doesn’t sound like it could be a government agency

But documents filed electronically don’t go to a courthouse. It’s just a point of access to the Incorporating Agency.

But if filing is at the courthouse, then it could be the Incorporating Agency because that is the entity the filing was made with.

Toby pointed out that the courts maintain the register of companies within their jurisdiction.

Kirk asked if the courthouse is part of the city? No, the courthouse is separate in Germany. Kirk said that we’re just looking for the right combination of JOI information to uniquely identify the company

Robin said that he agrees, but only if we accept the premise that there must be a unique identifier

Arno referenced implementing act 1502 which defines a unique numbering system across Europe

Robin said that he is trying to determine how that maps to the EVGLs so that everyone interprets them the same way

The EVGL definition of Subject:JOI fields references using the jurisdiction of the Incorporating Agency

This leads to supplying the country and state in the original example. What says it needs to be unique?

Kirk said that the intent was for the information to reference a unique company. Need to add the City to the example to provide that uniqueness.

Jeremy said that registration number is not always unique, such as when using a date because there is no number

Robin said that the implicit assumption we’ve made is that we’re trying to uniquely identify a company

Kirk asked why we wouldn’t want to add locality in this specific example

Robin said that we could do that. His desire is to eliminate ambiguity

EVGL section 9.2.5 says that the date of incorporation can be supplied if there is not registration number, as Jeremy pointed out.

So one could argue that Germany doesn’t assign Registration Numbers as defined in the EVGLs because they are not unique. What if all CAs shared their Incorporating Agency list and the CA/B Forum published a list?

Tadahiko said that the situation in Japan is similar.

Arno described his company’s unique European registration number. There are different registration schemes such as LEI, VAT, and national trade registers. Each scheme result in a unique registration number within the EU.

Robin said that the CAB Forum could define the EU scheme as the correct JOI approach for European companies

Dimitris said that the question is whether or not the EVGLs permit the use of the EU scheme. When there are multiple numbers, which should be used? Can the VAT number be used? It is unique. If the intent is for the number to be unique, then we need to fix the EVGLs to meet that intent.

Dimitris asked for next steps

Robin said that the desirable end point is to have an appendix in the EVGLs that describes JOI and registration number for every country in the world.

Dimitris said that either the Validation SC will find this interesting and take on the work, or individual companies will make proposals to improve the situation Wayne asked if this is the same conversation from Tuesday where it was decided to define a list of Incorporating Agencies used by CAs

Robin said yes, this is the root of the problem. But different CAs have different views and we want consistency

Eva said that it is important to distinguish between the Agency of Incorporation and the source of the data

Wayne said that on Tuesday the decision was to focus specifically on gathering a list of Incorporating Agencies, and the Validation SC agreed to take on this work.

Dimitris said that we should still create the list, but here we are challenging the EVGLs to uniquely identify an entity. Do we want to capture the birth of the company?

Robin said that not all companies get a VAT number.

### Guest Speaker – Analysis and use of RSA keypair generation bias 

_Presenter:_ Assistant Prof. Marek Sys (Department of Computer Systems and Communications, Brno University)
_Presentation:_ [Analysis and use of RSA keypair generation bias][13]

### ETSI Update 

_Presenter:_ Arno Fiedler (ETSI ESI)
_Note Taker:_ Matthias Wiedenhorst (ACAB’c / TÜViT)
_Presentation:_ [ETSI-ESI_Standardisation_Update][14]

The complete set of slides will be provided. In this set of slides, updates since last F2F are marked in yellow. Important topics are:

- Updates on ETSI EN 319 411 under way, due for agreement in 2020/06
- Short term certificates will be defined
- Updates on certificate profile standards
- Clarifications on qualified certificates under PSD2
- Plugtest for document signing and validation resulted in much better interoperability through Europe
- Signature algorithm
- ETSI defined hybrid certificates with 2 different hashes some years ago, one hash could be a quantum resistant one
- Work underway to link non-EU TSL’s to the European “List of the trust lists” (LOTL)
- Currently there is work starting on standards for remote identification of individuals

Questions:

Chris Bailey: In case of ETSI Standadrs on identification: Would those standards override national regulations on that topic?

Arno: No it won’t.

Dimitris : Its not an implementing act or law.

Chris Bailey: Is there a list of countries that allow remote identification at the moment

Arno: Not at the moment, will be outcome of the study

Chris: Is there a requirement to accept identification system from one country in any other country?

Arno: Only if it is a notified eID system

### ACAB’c Update 

_Presenter:_ Matthias Wiedenhorst (TÜViT), Clemens Wanko (TÜV Trust IT)
_Note Taker:_ Aleksandra Kapinos (Asseco Data Systems S.A.)
_Presentation:_ [ACABc Update][15]

#### Agenda 

1. The Accredited Conformity Assessment Bodies Council
1. ETSI qualified certificate policies and EV treatment

#### Questions 

**Dimitris:** If the audit attestation lists except for EVCP it also includes NCP. It’s that a problem? So the auditor decision will say the audit included QCP-w with the scope of EVCP, OVCP, DVCP, NCP, whatever, all of these. More specific scopes, would that be a problem? For being accepted?

Well, I think it will not be a problem, but certificate only issued according to NCP cannot be EV certificate, so the auditor must take care they are not using this NCP certificates with some EV identificators.

**Dimitrs:** So my argument is that the audit certifies the CA had ability of issuing certificates with this profiles. it that not state that this certificates are for EV treatment or not. This is a decision from the browsers. So, if I have an audit certification on attestation letter that say are my CA has been audited for a 411-2 QCP-w, EVCP, and that it’s conformant to 411-1 NCP, OVCP, etc. That should not be a problem, I can issue all of these types according to the profiles. Right?

Yes, if you are looking at the root CA and of course you can have different intermediate CAs, one intermediate CA according to EVCP issuing EV certificates and another issue NCP certificates. If I remember correctly you can not doing one intermediate CA issuing EV certificates and other certificates. So I think the EV CA has to be a distinct one. Isn’t it?

**Dimitris:** I’m not so sure about that.

To be clear is there are two general things to distinguish. One is the claim of CA with regard to the types of certificates they issue and the other is the statement of the auditor how they audited that type of certificates in a sufficient way. We are saying if they only say “we didn’t eIDAS audit and the results is a QCP-w and that’s not enough”. So they need to add additional information and that’s our statement because exactly that happened in the past.

**Chris:** let’s say that a someone has pass ETSI audit and also WebTrust audit and a WebTrust audit is handles the EVCP and the ETSi audit is handling the QWAC certificate. Can it be combined to issue the certificates? If you have a WebTrust for EV audit then alone should be enough for the EV regarded to the browser root stores. But for the QWAC you need of course eIDAS conformity assessment reported that has to be handled to supervisory body.

**Chris:** Have to EVCP specify en report such regard WebTrust for EV?

No, not in general. Only if the auditor audited against ETSI 319 411-1 for the QWACs and for the EV certificates.

**Chris:** I think what you saying is that auditor has to be very specific when they actually this conforming assessment report and what i’m asking is: if you have an WebTrust audit and on the other side ETSI which of them is sufficient?

**Wayne:** So form Mozilla side, if you read Mozilla policy, Mozilla policy basically says that you need to have Webtrust audit or an ETSi audit. So in you situation you would give us your WebTrust EV audit and Mozilla will say fine.

**Chris:** I just wanna for clarification, Am I a bit confusing person looking at the audit from the ETSI side. An our statement is, if you looked at QWACs, from the QWACs perspective then you need to have both. You need to have a statement QCP-w ETSI 411-2 that support QWACs and then you need to have a specific statement that EVCP or ETSI 319 411-1 is follow as well.

**Dimitris:** I understood to mean that if you have an WebTrust for EV would that be considered by an ETSI auditor to fulfill some of the requirements of 411-1 EVCP.

**Chris:** This is a problem that we try to harmonize regard this each cases. So the EVCP is not a European issue and you actually just refer send back to the Guidelines and a CA/B.

It’s a European thing and behind that is the question if you like to use the European ETSI requirement standard framework to show that you are compliant, then to EV the EV Guidelines then a this is exactly what the ETSI does. You use some generic ETSI requirements as a framework and we are referring you the baseline requirements out of ETSi and they referring to the EV guidelines and audit to make it complete. So you can fully audit that regarding to ETSI with refers to baseline requirements and to EV without the requirements of WebTrust.

**Kirk:** I think basically if you want to offer regular EV certs and also wanna offer qualified certs then you are double audited. I mean you will have a WebTrust for EV and thats sufficient for to sell EV certificates but then when you have an ETSI audit look at your operations you can offer QWAC’s if you are audited a second time on the EV standards and I don’t think that the ETSI auditor can rely on the WebTrust work and the WebTrust auditor can’t really an ETSI auditor work. I think you are a double audited over EV guidelines.

**Chris:** To be very clear, my only issue is QWACs certificates guidelines is greater then the EV guidelines. You explicitly said that the auditor has to send the report. For the QWACs certificates and also EVCP in the same conforming assessment report. That’s are correct?

It’s under the same report.

**Chris:** So I can do the QCP-w audit and I would exactly automatic include the EVCP in the same audit.

**Dean:** Do you think is it a problem? Or just a feature?

We expect that it’s a feature and not a problem. Even it’s a problem we shall we happy to explain the idea behind that. What we are saying it’s if you have an ETSI audit and the auditor write a report take care that he mentions underline standards properly and claims that they have been audited and that’s you are say they are required to do so but some just don’t mention them and then we are in trouble do they follow up and some also may not really follow the standards and you don’t have an evidence if it’s not said in the audit attestation. That’s important.

**Dimitris:** this is been discussion about a scope in down problem. CA can say i wanna QCP-w but only for natural persons – you can do that. And you will get a certification that says QCP-w but you have never not check anything about EVCP. Is that make sense?

**Dean:** So QWAC could be an EV certificate, could be an OV certificate?

**Dimitris:** No.

**Dean:** They can not be an OV certificate? It’s interesting because I seen some there are.

**Dimitris:** But not is a QWAC.

### WebTrust Update 

_Presenters:_ Jeff Ward (BDO), Don Sheehy (CPA Canada)
_Minute Taker:_ Corey Bonnell (SecureTrust)
_Presentation:_ [WebTrust Update][16]
_Sample detailed report:_ [Sample detailed report][17]

#### WebTrust Update 

There’s not much of an update vs. November update

#### WETSI 

- How can we work together?
- Better mutual understanding of the frameworks and rules

#### Detailed Controls Reporting 

- Revealed at Greece last year
- Draft made available to interested parties last fall. A few companies wanted to develop the report for internal purposes. Was worried there was too much detail, but companies wanted more. Modified based on feedback.
- Table of concordance added to harmonize terminology in draft (SHOULD, MAY, etc).
- Detailed controls report is not public; only given to trusted parties.
- 5 main sections to the report
- 205 pages long in template form
- WTCA + WTBR only; WTEVSSL is separate
- Closer to SOC audit report rather than WT report
- Same style Management Assertion letter
- Added system description
- Influenced by cyber-security work and SOC description criteria
- Description of components of the CA system
- infrastructure
- software
- Risk assessment
- CPS is first reference, then additional controls will be enumerated on the report.
- The template is available for review.

**Q: Chris Bailey:** You made this report such that it can be publicly consumed, or is it a limited audience?
A: Don: It’s not something that’s publicly available.

**Q: Chris, to Wayne:** Mozilla is public, will this be distributed to the community?
A: Don: It’s intended for a knowledgeable community.
A: Jeff, to Chris: This is not a new concept. SOC3 is public; SOC2 is trusted consumption only.
A: Wayne: the Mozilla security policy community is a subset of knowledgeable users. It’s not designed to be published on a CA website, but it might be distributed on Bugzilla or MDSP because those users are knowledgeable.
A: Don: That (Wayne’s) is the rationale given.
A: Wayne: We would expect to publish this to the community.

Section 4 is the main one users will be looking at. The exceptions are listed here and the auditor will judge whether they impact the opinion.

This report does not affect the general report.

**Q: Chris:** With this report format, there’s a list of auditors that offer WT audits. Who can offer these reports?
A: Jeff: We can’t make the call. It’s a change in the risk profile, so it’s a per \*company call.

Management should assert problems discovered over the past year in the Management Assertion letter.

We update WT criteria generally once a year, but will do more often if exceptional No major changes are in the WT criteria update. Auditors can adopt new version earlier.

These slides of changes were pulled directly from the repository on CPA Canada

**Q: Jos:** Can the customer dictate what version can be used for audit?
A: Jeff: we do any more testing for the detailed report.
A: Don: The browsers have indicated that they might require the detailed report. The CA might want to have the detailed report to show to key clients.
A: Wayne: Looking further ahead, the browsers might make this detailed report required.
A: Jeff: The summarized report is needed for the Seal (a Microsoft root program requirement).

The list of auditors may not be complete, as auditors in other countries may be able to perform audits if they are licensed as a CPA in that country. Establishment of stronger enrollment licensing and agreements with practitioners.

### Proposal for potential changes to QWACs 

_Presenters:_ Mike Reilly (Microsoft)
_Minute Taker:_ Sissel Hoel (Buypass)
_Presentation:_ [QWAC Presentation][18]

#### Notes other than the presentation 

**Purpose and agenda:
** An email has been sent on Server Cert Working Group public list ran on Microsoft’s and the EC working group’s behalf on Jan. 15th. It is pretty well documented, what the working group put together -pretty self- explanatory. There’s a Q&A section at the end so I encourage everyone to take a look at that.

The main purpose to ask for some time here is to let you know what we are doing with the European Commission working group. I don’t want any actions out of this, just giving information and want to draw attention to that paper, and the European Commission is looking for feedback amongst other EC stakeholders and also the community here.

I will just quickly go through the background. The ECWG proposal, some examples, non TLS type of mechanisms and some of the next steps.

**Background:
** The DG CONNECT, the EC commission, ENISA is involved and ETSI as well and has been involved in these conversations.

From the browser side Microsoft, Google, Opera, Apple and Mozilla have been involved. And the European Commission also has some technical advisors that met with us as well.

Some of this started before my time, in 2015. I think Ryan was a part of that in the beginning. I joined in late 2017. Wayne has been with Mozilla and Clint just got on board and has been involved a little bit as well.

Servida have given a brief to the CABForum in 2015, telling what was going on with QWAC and he has been replaced by Norbert Sagstetter. The last couple of meetings we have met with Norbert and he has been good to work with.

I got involved when the European Commission sent a letter to our CEO and invited him to Brussels and I went to Brussels. Initially we went through different attempts to try to solve some of the challenges – how to recognize the QWACs in the different browsers that are deployed globally.

We started out with the task-group to look at and try to put together best practices. Some of them looking like the BR’s and also looking at all the different root programs and how to incorporate that in some of the regulations so that the trusted service providers could pretty easily get into the different root programs.

We went through some discussions around – even if we did that there’s around a 180 or so trusted service providers in the EU. It wasn’t like browsers were going to pull all those in in an automatic fashion – we still want to make our own trust decisions.

We started to look into different frameworks – eIDAS is a legal framework. Each of us, Microsoft for example, are private companies and we make our own trust-based decisions on who we want to trust. It is not a legal framework, it is us making business decisions based on security risks vs operational risks and things like that.

We worked through a matrix of how can we get these frameworks aligned.

We started to look at how do we look at tech neutral proposals. Because sometimes a legal framework is less agile than, you know this forum is based on requirements and even the root programs and some of that can move a lot quicker than sometimes the legal framework can change.

So this came to the proposal; let’s look at how do we reduce the interoperability challenges that the service providers face and somehow disconnect their use from TLS and look at some technology neutral capability.

This is still a proposal phase and the paper kind of aligns a lot of the details.

**ECWG proposal:
** There’s two parts. One is a slight change and it talks to the section for the regulation to where you can allow QWACs to be used outside of the TLS. By removing this restriction, it opens up other technologies that can be used to consume this for the benefit of EU consumers.

**Enabling Non-TLS Delivery Mechanisms (Potential Examples):
** Within the working group we played around with what this could look like. This isn’t a complete list. These are just examples that the working group looked at. They are detailed in the paper. These are examples on how it might be outside of TLS. How to recognize the QWACs, so that they could be consumed and displayed in the browsers needed. We are still working through this.

**Next steps:
** We were trying to have a meeting this week, but it didn’t work out. We are trying to meet face to face around the CAB/Forum. We’re going to have a teleconference early March.

The browsers are currently working in partnership with the European Commission on a mockup. We are going to take the expression of a well-known URI to look at how we might have a format, just mockup how it displays, how user experience would look and then have some more discussions.

We’re looking into some kind of prototyping – ‘hey – you can do this using this one technology and it doesn’t limit you ..’

This summarize what we saw.

We want to share this for transparency – where we came from, background, motivations and what kind of discussions that we had, where we are at today and where we are going.

The paper is pretty detailed and all the members of the European Commission contributed to that and ENISA has done some good papers and so has the different stakeholders and we have different motivations in the ecosystem.

The slides will be available too. The paper has all the details.

—

Mike: any questions?

Dimitris: is anything expected from the forum?

Mike: no actions specifically, but the ask is to take a look at that, provide feedback. I mentioned to the member of the European Commission that there is maybe 68 of us in the room at a time. Norbert was gonna share with other stakeholders across European Commission. I know ETSI and ENISA are looking at it. So the ask was; ‘hey – there is a lot of experts who are living and breathing in this eco system and also in the CAB Forum, so it is great that we can share this paper with them and get any feedback that they might have. So that is what they ask. We sent the mail out and there wasn’t a ton of feedback. That’s fine too but the intent for the EC was to get some feedback from the community.

Dimitris: I will make my question a little clearer. I didn’t understand what kind of feedback was expected.

Mike: Any feedback is fine. They are not very specific to today’s CA operations – and some of this would operate outside of TLS. Just wanted to share and give transparency from the EC Working Group.

### Creating a more intuitive method of displaying secure sites to internet users 

_Presenter:_ Chris Bailey (Entrust Datacard)
_Note Taker:_ Trevoli Ponds-White (Amazon)
_Presentation:_ [Intuitive UI][19]

What’s the purpose of the Forum? Bylaws 1.1 – Purpose of the Forum “Members of the CA/Browser Forum have worked closely together in defining the guidelines and means of implementation for best practices as a way of * [1] providing a heightened security for Internet transactions and * [2] creating a more intuitive method of displaying secure sites to Internet users.” We’ve done a lot on #1, but nothing on #2

What is the purpose of website security indicators “Browsers use security indicators to communicate connection [1] security states, [2] website trustworthiness, or a combination of the two.” How can we make this easy and intuitive for users?

Recap – Extended Validation UI on or after (Chrome 77) –Organization identity found on second page after user clicks the lock symbol This is not an intuitive way to display secure sites with EV to Internet users * No EV information in the URL Bar and no standardized way to show EV information in the URL Bar. All website look the same. * No intuitive or standard way to look up EV identity data

**Q and A:**

Mariusz (Opera) – Opera decided to go in the opposite direction using colors of theme instead of green/black. Based on internal discussion and input from users, it’s beneficial to users to remove positive indicators. There are two main reasons: – phishing websites with valid certificates – since up to 8% of population are color blind that different colors don’t make much sense. They also changed their warning sign to be more visible for users. Opera said that it’s interesting to take for example like credit card information and discuss how that could be used. Although given Opera’s recent changes they don’t see it being a direction they could take in the near future. However, they are open for discussion.

Chris (Entrust) – Yes, color blindness study definitely shows that that needs to be taken into account as improvements are made. EV sites are found to generally be indicative of site operators that practice good operational hygiene.

Wayne (Mozilla) – Is this intended for EV and OV?

Chris (Entrust) – No, just EV because OV is more about vetting the infrastructure of the site.

Wayne (Mozilla) – Is this for every site?

Chris (Entrust) – No just for sites that are collecting information. This wouldn’t necessarily be suitable for something like a blog that is just conveying information.

Wayne (Mozilla) – So a site like Amazon.com would need to run an EV site.

Chris (Entrust) – This would be something that is rolled out and as it does that would determine what site operators need to do.

Dimitris (HARICA) – Utilitizing GDPR…

Chris (Entrust) – There are number of OV sites such as CDNs that include many customer URLs in the SANs where the organization shown in the O field of the OV certificate does not control the content of the customer URLs in the SANs, and some of the customer URLs are flagged for phishing. This is the main reason why some OV certificates are flagged for phishing. We think the BRs should be amended so that a CA may not issue an OV certificate to an organization unless the organization controls the content of all the URLs in the SANs – so that OV certificates could not be issued to CDNs that simply list their customer URLs. That should greatly reduce the number of OV phishing sites.

### Special Challenges and concerns for Certification Authorities located in Europe 

_This topic was cancelled._

### Better Alignment of Remedies with BR Violations 

_Presenters:_ Tim Callan (Sectigo)
_Minute Taker:_ Jos Purvis (Cisco)
_Presentation:_ [Better Alignment of Remedies with BR Violations][20]

We’re discussing discrepancies and remedies. We (Sectigo) see a lot of discrepancies between certs and the BRs/EVGs. We believe that subscribers are important to our ecosystems, and that we should see to avoid unnecessary harm. We must have rules that can occasionally harm individual subscribers, harm that is disproportionately large compared to trust benefit it brings can and should be eschewed. We should also follow the rules we set for ourselves, and when we create rules that fail our ecosystem, we should change them until they meet our objectives. BRs contain broad language for when leaf certificate revocation is required (BR 1.6.7 S4.9.1.1, focusing on items 7 & 8). The language in this section prescribes the same remedy (revocation within 5 days) for any misalignment of certificate information regardless of severity or risk. So a name mismatch is given the same remedy as an error that carries no risk or harm. Forced revocation can have negative consequences for subscribers: it causes outages, security breaches, sudden realignment of resources, distraction, reduction in service quality. There is thus also a ‘tax’ on relying parties: they suffer when a party has an outage. The Equifax data breach, for instance, occurred because a certificate expired, but had it occurred because of cert revocation, the effects would have been the same. The O2 outage had the same cause and the same results. The result is that breaking certificates has measurable harm to subscribers and to relying parties. This is also bad for CAs; it creates resource realignments, distraction, and poor customer experience. Posit: Our rules should not create forced revocation events that create more harm than good. Sectigo believes that often they do. IN 2019, \[s\] began to see a pattern of behavior. An individual would discover a set of certs with misalignments in crt.sh, and then mass-reports them at any time. The result is that CAs and subscribers scramble to meet a sudden revocation deadline imposed by the BRs, but there is no consideration in the rules about whether there is any security risk (in particular, Mozilla forbids using “no harm” as a reason for slowing down response). In the past, this was less of an issue because reports were onesie-twosie, but now they’re being reported en masse, creating a lot of harm to the ecosystem. \[s\] proposes a fix to this by altering the rules for revocation, to help minimize the damage from forced revocations. Proposal: Divide revocation timelines into two groups (meaningful risk, no meaningful risk). Agree on definitions for each category, then assign 5-day period for things that have risk, and a longer period (e.g. 30 days) for things that have no risk. Everything still has to be revoked, but things can be revoked on a longer timeline when they’re not carrying risk. This would include a “white list” enshrined in the BRs as allowed in a 30-day period, with everything else in default-deny for the 5-day period, no exceptions “because it’s not on the list”. Examples of candidates for white-list elements:

- Misspellings of place names where the meaning is obvious
- JOI fields that are too precise
- Purely syntactic mistakes (e.g. 65 chars in an OU field)

Tim suggests a series of litmus tests:

1. Is security meaningfully weakened?
1. Is identity meaningfully weakened?

He used the example of a cert that contained a state abbreviation instead of state name, or “New Yrok” instead of “New York” or a JOI field containing local names in Dutch certs as 30-day examples. He then considered things like “Requester name in City field”, “2040-bit key cert”, and “Serial number entropy falls below prescribed threshold” as things that would /remain/ as 5-day revocations, as these weaken either security or identity meaningfully. Tim presented some objections based on old threads:

- “Don’t issue certs with errors” – Tim likens this to “just don’t ship software with bugs”, and pointed out that in the earlier discussion on EV certs in Germany, every CA in the room had admitted doing and agreeing on information differently.
- “Solve it through automation” – Tim agreed that automation is important and everyone’s trying to do it as much as possible. However, these are complicated systems, often with legacy code-bases: we’re doing our best, but things creep through. And as far as subscribers, they’re also motivated, but they’re not there yet and have complex, massive systems that can be difficult to automate. Finally, automation does not mean “bug-free”–automation can still produce bugs.
- “CAs would be demotivated to revoke certificates or improve quality” – Forced revocation still sucks at 30 days just as it does at 5 days, and this system still requires revocation. CAs are thus still motivated to avoid revocation events. By enshrining the decision for the timeline in the BRs, CAs do not get to arbitrarily decide whether or not to revoke or what the timeline is–this eliminates the potential conflict of interest between CA and CABF and subscriber.
- “We can’t handle unknown cases” – Yes, that’s unfortunate; let’s not let perfect be the enemy of good. This proposal, Tim feels, improves things significantly over where they are, so it’s better than not-doing.

Dean: What are next steps?
Tim: We’d have to agree on the whitelist before taking to a ballot.
D: Working group?
Tim: Yep. Could go to Validation subcommittee, or a different WG, but I think we first go off and discuss and then bring it back in MPLS.
Dean: What if we create the framework for the ballot, then enumerate items in the WG?
Tim: Sure, that might work. I was also very interested in the discussion on Tuesday about adding sources without having to ballot, which might be useful here because adding things to the list with ballots could be painfully slow. If we can add a source to the whitelist that we all agree on without having to ballot it, that might be useful.

Wayne: I think you’re focusing on the wrong problem here. If you’re going to do this, the approach is good, but the items defined as allowing more time need very precise definition, otherwise you get back towards allowing CAs to decide what isn’t a risk, which transfers that risk back to the browser and the users. So this would require that the 30-day items be excruciatingly clear and specific.
Tim: I totally agree. How clear and specific?
W: I thought the examples you gave were good, but anything generalizable by the CA would have to be avoided.
Tim: That’s exactly how we got here, was CAs deciding for themselves, and then we decided the BRs should make those decisions to be consistent. My intuition is that it can be clearly defined, to a degree the org would agree on.
W: I’d much rather see that energy go into improving agility, but if you’re going to do it, that would be my comment.

Neil Dunbar: I noticed you had boundary issues in examples, but those can harm security.
Tim: That would be the exercise, those would be candidates rather than specific items to definitely add.

Dimitris: As HARICA, I think this is a good approach. We should definitely take this through the ballot process, but perhaps should define things in the Bylaws so that changes to this list would not require a 30-day IPR period. With a 7-day discussion and 7-day balloting, this would likely suffice for adding/removing exceptions without requiring the IPRs.
Tim: That’s an important point, that we would need the ability to remove things from the list as well as add them.

Wayne: Were you discussing taking things off the list?
Tim: To clarify, there is no grandfathering here: if it comes up and it’s not on the whitelist, too bad. You don’t get to extend the list.
Wayne: I worry that this creates an incentive for CAs not to admit they have the same problem as another CA, and to wait until it’s added.
Tim: Rules state that as soon as you have a problem and know it, you must report and deal with it.
Wayne: But what Dimitris is proposing would disincentivize CAs to be the first to report problems, in the hopes of reporting it after the problem is added to the whitelist.
Tim: If that’s your concern, it’s already present with the current rules.

Toby: What is the specificity of these? If specific enough to add, then wouldn’t they be specific enough to add to linters?
Tim: Hadn’t thought about that, it’s possible.

Robin: I think they could be added to linters, why wouldn’t we? We always_want\_ to do the right thing.
Tim: Feeding on that, we’d definitely want it fed to the linters.

Mike @ MSFT: For our root program, we’re as strong as our weakest CA that usually doesn’t show up at these forums. That’s why we have contracts with individual CAs, that allow us to mandate revocation sooner when we see it’s appropriate.
Tim: Would there be the possibility for this working, with you enforcing deadlines selectively?
Mike: Absolutely. We think this is a good thing to be working toward.

### Any Other Business 

#### Questions on Apple’s 398 Day Max Validity Policy change 

_Presenter:_ Chris Bailey (Entrust)
_Minute Taker:_ Wayne Thayer (Mozilla)

Chris – there is concern and I want to provide context. Ryan mentioned eventually wanting to move to 90 days. CAs polled their customers and asked if they could do that. Found only 8% of Entrust customers are automated. Only 11% of respondents said they were ready to move to 1-year durations. That is why we had the 1-year ballot. It was presented as “you need to do this or browsers will mandate”. I remember that the CAB Forum was originally created to set these policies and Apple’s move undermines this. Concerned with the direction being taken.

Devon – Google is broadly supportive and doesn’t intend to fracture the rules. May even implement on a similar timeline as Apple.

Chris – This situation is combative. Would like this organization to be productive and able to maintain consistency of requirements. There is no precedent for this.

Wayne – Microsoft did this back in 2014 with SHA-1. They tried to get the Forum to adopt an aggressive timeline for deprecation.

Mike – I saw the same concerns from customers back with SHA-1. There wasn’t much movement from CAs after the ballot failed. We will act to protect our users.

Chris – we’re trying to communicate with our customers. They feel real pain. We asked for a security analysis and it was never received. We need that information so we can work together. Need to be able to give customers a reason for doing this. Want to make sure this doesn’t happen in the future.

Mike – some parts of the Forum are less willing or able to be agile. Sometimes there needs to be a forcing function.

Chris – with SHA-1 the threat was clear and we needed a forcing function.

Tadahiko – with SHA-1 there was a lot of notice for weakness of SHA-1. We haven’t tried enough to explain the importance of agility to customers.

Dimitris – in the SHA-1 example or 2-year cert example, there was always a phase-out period. This is a fully-enforceable requirement coming from outside the Forum. CAs are making efforts to encourage subscribers to implement automation. HARICA would support a ballot that provided adequate time to prepare the tools.

Doug – we need more time, and need something to point to. Ryan Hurst writes great blogs that CAs can link to. We need something to point Subscribers to that explains security issue driving us to 1-year certs. 2 or 1 year doesn’t matter all that much to us, but we need to explain it to our customers.

Jeremy – Doug is spot on. With SHA-1 there was a lot of material explaining the problem. That’s not the case here. Customers see that CAs can and will revoke a lot of certs.

Devon – on point of who is asking for this, every browser member who voted for this. This is not the same as SHA-1 in terms of a security problem. But the reason SHA-1 was so difficult was the lifetime of the certs that needed to be replaced. Maybe someone can explain that.

Chris – that’s not how SHA-1 happened. Some infrastructure just could not be upgraded.

Devon – okay, then replace SHA-1 with an equally scary situation like a CA key compromise.

Jeremy – customers understand key compromise. The education isn’t there.

Devon – I do appreciate the lack of education. But there is a difference between the internet being insecure and people understanding it. The long tail of sites will ignore security problems.

Trev – Clint said that there would be a blog post?

Jeremy – if a CA doesn’t care about Apple recognition, can they continue to issue >398 day validity certs?

Clint – CT is a policy for Subscribers. This is a policy for CAs. They can’t remain compliant with Apple policy and issue publicly-trusted certs with a validity period >398 days.

#### Questions on maintaining SCWG Membership 

_Presenter:_ Dean Coclin (Digicert)
_Minute Taker:_ Dimitris Zacharopoulos (HARICA)

Dean received some questions related to membership in the Server Certificate Working Group and what happens if a Member no longer meets its membership criteria.

He stated that this information along with the procedure is included in the SCWG charter and read some of the procedures described in the charter. He suggested people review it for further information.

### Arrangements for Next Meeting 

Next F2F meeting is taking place June 9-11 in Mineapolis, hosted by OATI.

[1]: https://docs.google.com/document/d/1EtrIy3F5cPge0_M-C8J6fe72KcVI8H5Q_2S6S31ynU0/edit#heading=h.3mspyi76isma
[2]: /uploads/7-code-signing-formats.pdf
[3]: /uploads/11-Apple-Root-Program-Update.pdf
[4]: /uploads/12-Chrome-Browser-Update.pdf
[5]: /uploads/13-Microsoft-Update.pdf
[6]: /uploads/14-Mozilla-Update.pdf
[7]: https://blog.mozilla.org/security/2019/12/11/announcing-version-2-7-of-the-mozilla-root-store-policy/
[8]: /uploads/15-CCADB-Update.pdf
[9]: /uploads/16-NetSec-SC-Report.pdf
[10]: /uploads/17-Validation-SC-Report.pdf
[11]: /uploads/18-quantum-Cryptography-KU.pdf
[12]: /uploads/19-Jurisdiction-Of-Incorporation.pdf
[13]: /uploads/20-Analysis-and-use-of-RSA-keypair-generation-bias.pdf
[14]: /uploads/21-ETSI-ESI_Standardisation_Update.pdf
[15]: /uploads/22-ACABc-Update.pdf
[16]: /uploads/23-Webtrust-update.pdf
[17]: /uploads/23-Sample-detailed-report.pdf
[18]: /uploads/24-QWAC-Presentation.pdf
[19]: /uploads/25-Intuitive-UI.pdf
[20]: /uploads/27-Better-Alignment-of-Remedies-with-BR-Violations.pdf