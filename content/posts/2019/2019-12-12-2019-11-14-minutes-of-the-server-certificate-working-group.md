---
aliases:
- /2019-12-12-2019-11-14-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2019-12-12 15:15:27
tags:
- Minutes
- Server Certificates
title: 2019-11-14 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Adam Clark (Visa), Ben Wilson (Digicert), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Eva Vansteenberge (GlobalSign), Huo Haitao (Halton) (360 Browser), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Jos Purvis (Cisco Systems), Kirk Hall (Entrust Datacard), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Scott Rea (Dark Matter), Shelley Brewer (Digicert), Tim Hollebeek (Digicert), Timo Schmitt (SwissSign), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vincent Lynch (Digicert), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes



### 1. Roll Call



The Chair took attendance.

### 2. Read Antitrust Statement



The Antitrust Statement was read.

### 3. Review Agenda



Ben Wilson proposed to add the default-deny discussion to the agenda.

### 4. Discuss Action Items from the recent F2F 48 meeting 

The following action items were identified from the currently-submitted session minutes. This list will be more comprehensive as more minutes are being submitted.

### Default allow-deny discussion 

- Ben has drafted the minutes and will post them to the wiki.
-

### ETSI presentation 

- Arno to follow-up with the IETF liaison from ETSI to ask about possible incompatibilities with RFC 5280 for removing subjectDN attribute limits in EN 319 412-2&3.

### More intuitive method of displaying secure sites to internet users 

- Ryan was to provide details on which SDOs are working on organization identity and organization identity presentation issues. Ryan has already provided this information to the public list so this action item is complete. Further discussion is expected to take place on the public list.
-

### 5. Ballot Status 

No further discussion.

#### Ballots in Discussion Period



None

#### Ballots in Voting Period 

None

#### Ballots in Review Period 

None\_
\_

#### Draft Ballots under Consideration



_SC20 Ballot (NSR 2): System Configuration Management_
No additional comments.

\_SC25: Define New HTTP Domain Validation Methods \_(Doug)
Tim mentioned that this is a topic for the next validation subcommittee call. He expects to address any potential issue about this ballot during that call.

_LEI Ballot_ (Tim H.)
Tim expects to prepare this for a vote in the near future to see where it stands.

\_Aligning the BRs with existing Browser Requirements \_(Ryan)
Ryan is still accumulating information from other Browsers. Most recently, Apple raised some expectations about compliance to RFC 5280 and this was timely because a CA recently filed an incident report describing violations to RFC 5280. These areas of concern are related to various implementations that are reported or expectations captured in Browser’s Root Program requirements. He will wait for the formatting changes ballot to go first and then re-base to the latest BRs so the proposed changes are clear against the latest version of the BRs. Further feedback from Root Programs is welcomed. Ryan mentioned that Microsoft is going through an update that started in October and Wayne is working on Mozilla policy 2.7. There are a lot of factors that make this task hard to maintain and keep up-to-date and will wait until some things settle down (_editor’s note: I assume in terms of changes in Root Program requirements_) and put to a ballot.

\_Formatting changes to Guidelines \_(Jos)
Jos will update the pull request as soon as ballots SC23 and SC24 are merged to the master branch and then put to a ballot.

Dimitris reminded Ben and Wayne to review the merge request for SC21 for the Network Security Requirements so it can be merged to master. Ryan mentioned that he has already created pull requests for SC23 and SC24 which would make things easier, should the ballots pass.

### 6. Any Other Business 

Dimitris asked Ben if he wanted to discuss anything more specific to the default allow/deny topic.

Ben mentioned that this is a time-sensitive issue and the WG should move forward because it creates a lot of doubt and uncertainty in the industry.

Ryan replied that in terms of next steps that came out of the F2F was that CAs should be looking through their practices, taking a pessimistic view. Whether the WG will create a subcommittee or not, it doesn’t block a CA from raising issues for discussion. So, for anything that a CA considers that there is uncertainty or doubt as to whether the BRs permit certain things, it could be raised sooner than later. One of Ryan’s take-aways from the big part of that particular F2F discussion was that a number of Browsers are reading the Baseline Requirements with this pessimistic expectation that things that are not listed there are prohibited. The opportunity is for CAs to look through their practices and identify things that are challenging or problematic. Nothing blocks the CAs from discussing these issues in the WG. The idea is if and when we have a subcommittee we will have a good starting point.

Mike mentioned that there is no intent to “block everything”, but as things come up, let’s discuss and address them.

Ben reminded that there was a proposal by Doug about the subject name of Intermediate CAs and if we need to do a ballot for that, let’s proceed and make it clear. This goes back to what we discussed at the F2F about whether we should tackle each of the pain points that comes up or go through the whole document review. He thinks it’s a combination of both. At this point, it feels like we are in the Kindergarden where we need to “raise our hand to go to the bathroom”.

Wayne agreed with Ben and mentioned that for the Intermediate CA attributes there is clearly and ambiguity in the BRs so there is no reason why we should not try to fix that in parallel to proceeding with a larger review.

Ryan also agreed to working in parallel and further mentioned that one of the reasons he proposed CAs to go through the holistic review was to raise problem areas and ambiguities. The goal is to be understanding to these problems, identify ambiguities and discuss options to resolve them. He also agrees to tackle individual issues that come up. He pointed out that each issue needs to go though the proper thoughtful analysis as we do with any other change to the guidelines. For this particular topic, it is to articulate the case why we need to add these fields into the CA Certificate and what might go wrong. We should discuss and try to resolve this issue and not wait for other ambiguities to be discovered before we tackle that.

Ryan replied that he wasn’t sure about Ben’s suggestions but he hopes it’s not to advocate that CAs can issue whatever Intermediate CA names based on CA’s determination even though we have identified the ambiguity and expectations. Flagging issues like this and sharing CA’s interpretations is helpful to make progress. Transparency is good and a CA could bring an issue to the WG saying that when we read the BRs as “default allow” we did X and if we read it as “default deny” it might be denied, we should resolve this so that the BRs are clear and unambiguous. That would be a really positive sign forward. To Ben’s previous paradigm about the Kindergarder where a child needs to raise hand to get permission to go to the bathroom, Ryan confirmed and explained that there is a degree to make sure that the broader community is clear on what’s going on and making sure the CA’s risk assessment aligns with the community’s risk assessment. He gave an example about how a number of Root Programs handle CAs that delay the BR mandated revocation timelines. So, even though the BRs mandate 5 days for revocation, a number of CAs deliberately ignore and violate this requirement. Then the expectation is for the CA to file an incident report because it is treated as a BR violation, and they have to explain and discuss the factors that lead to this violation they are discussing the long term mitigations to prevent this. The desired output is the same concept of being transparent, sharing these factors that determined certain actions, not the CA going on its own, making a determination, and the community and the Forum having no visibility that there is ambiguity or that the CA made this determination to go forward in spite of that ambiguity. He then reiterated that he would like for CAs to come forward and say “This may not be allowed, we’ve noticed this ambiguity in the BRs, here’s our analysis, here’s why we are going forward with this and here’s what we propose to make the BRs clear”. That’s how a “model citizen” from a CA’s behavior would look like.

Kirk commented that he has a different take on this. For the last 14 years no one interpreted that these documents are “default deny”. He said that we agreed on creating a subcommittee to examine this topic and he recalled some browsers stating that they didn’t mean every section to be interpreted as default-deny but certain parts. He thought that a subcommittee would determine which parts would be identified that should be treated as default-deny and once identified and clarified in the text that they are should be read as default-deny. He thought that it would be a better approach to identify the parts of the guidelines that need to be read as “default deny” and added that it would be very helpful if the Browsers identified which parts of the BRs and the EVGs they think is important to be read as default-deny. For the Issuing CA names, Kirk mentioned that for years CAs have added information according to RFC 5280 and no Browser ever complained before. If the Browsers want to limit this information to 3 fields, it would be very helpful if the Browsers explained why, and if they are good reasons then we can add that to the BRs.

Wayne stated that his understanding of why we are having this conversation was that Ben has the concern that forming a subcommittee and working through the BRs and deciding on the recommendations would take time. In the meantime, CAs would be “stuck” with a lack of guidance on some areas that are ambiguous. He re-iterated that nothing forbids us from working in parallel and try to resolve ambiguities that are identified. He thinks that the ambiguity in the subject field of intermediate CAs is not about how this ambiguity should be clarified but the fact that it should be clarified because there is a lack of agreement on what it means.

Ryan clarified that this is not a change into how we read the BRs that when we see a list of requirements, we are reading a list of requirements. For the particular issue related to the intermediate CA subject field, there was a corresponding discussion on the servercert-wg public list and recommended members to review this discussion. From a number of browsers there is a desire to provide clarity for CAs but CAs need to step up and highlight things that are ambiguous. Then, Browsers can clarify how they are looking at these things. We need the perspective of CAs. Ryan re-iterated that it is the CAs that have the “deliverable” at looking into their practices and highlighting areas where they think there is some ambiguity. This is how we can move forward and work through this information in a subcommittee to take a holistic collaborative look.

Dimitris added that Ben has taken detailed and careful notes from the corresponding F2F discussion and the minutes should be posted soon. To Kirk’s point, Dimitris mentioned that we did say at the F2F that we should look at specific and more “critical” sections to read as default-deny and put our efforts there, following the process that Ryan suggested, and not the entire BRs. He also thinks no one disagrees with fixing ambiguities as we have always been doing.

### 7. Next call 

December 12, 2019 at 11:00 am Eastern Time.

### Adjourned