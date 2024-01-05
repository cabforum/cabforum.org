---
aliases:
- /2019-10-31-2019-10-17-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2019-10-31 15:58:22
title: 2019-10-17 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Arno Fiedler (D-TRUST), Ben Wilson (Digicert), Bruce Morton (Entrust Datacard), Chris Kemmerer (SSL.com), Curt Spann (Apple), Daniela Hood (GoDaddy), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Gordon Bock (Microsoft), Inaba Atsushi (GlobalSign), Jos Purvis (Cisco Systems), Kenneth Myers (US Federal PKI Management Authority), Kirk Hall (Entrust Datacard), Li-Chun Chen (Chunghwa Telecom), Mike Reilly (Microsoft), Niko Carpenter (SecureTrust), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Ryan Sleevi (Google), Scott Rea (Dark Matter), Shelley Brewer (Digicert), Timo Schmitt (SwissSign), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes



### 1. Roll Call



The Chair took attendance.

### 2. Read Antitrust Statement



The Antitrust Statement was read.

### 3. Review Agenda



No changes to the agenda.

### 4. Approval of minutes from previous teleconference 

The minutes from the previous teleconference were approved and will be circulated to the public list.

### 5. Validation Subcommittee Update



Doug gave the update. There was a long meeting discussing about LEI, the pros and cons LEI and usefulness. Draft meeting minutes have been circulated on the validation subcommittee list and Doug will need to listen to conversations and send a final version of the minutes.

There is also a ballot in process for method 6.

Finally, the clean up ballot was discussed and has now been circulated to the public list.

### 6. NetSec Subcommittee Update 

Ben reported that there was a call 2 weeks ago. Some edits were made on log retention and log continuous monitoring.

During the call on doc organization, some definitions like Zones were discussed. The subcommittee thought it would be better to split out secure zone definition “logical and physical security”. More specific wording will be in future revisions of the NSRs. They considered defining “physical security” as a physical secure facility or secure room. For “secure network” they discussed about secure segments to incorporate the notion of VLANs. Ben asked if there are experts in this area to assist with the definitions.

The subcommittee will send an email to the larger group for exceptions related to offline keys (there are about 10 provisions that presume the systems are online). Like continuous offline.

Kirk reminded the group that one of the mandate of the subcommittee was to deal with certain portions of the Network Security Requirements for which Members were dissatisfied and that were hard to implement or hard to understand. Ben replied that the subcommittee is working on these items. He also mentioned that these topics come up whenever they try to “touch” sections of the NSRs. For example, when they discussed about network security it was mentioned that this is not limited only to physical segmented networks, it’s also VLANs.

### 7. Ballot Status 

No further discussion.

#### Ballots in Discussion Period



_SC23 Ballot: Precertificates and OCSP_ (Wayne)

Wayne explained that there are two outstanding issues for SC23 v2

1. There could be compliance concerns if this ballot doesn’t have an effective date. If the rest of the ballot language as is, it seems reasonable to add an effective date.
1. different approach quite a bit more comprehensive and a little bit more difficult to get right. Rob Stradling as one of the endorsers will need to discuss more about the alternative approach. Wayne will send another version in a week or so.

Mike mentioned that they are having some internal conversations in Microsoft for the definition of precert vs cert and noted some challenges from MS’s end.

Wayne replied that there was a very nuanced discussion at the m.d.s.p mailing list. The expectations from a Root Store Program’s perspective are that if a precert exists, then a certificate is assumed to exist and a valid OCSP response must exist for that cert. The language in the BRs at this point are contradictory. A pre-certificate is not a certificate. The purpose for this statements was to avoid the RFC 5280 restrictions for duplicate Certificate serial numbers. If this is combined with language from 4.9.10, it says that a CA cannot issue good OCSP response for a certificate that has not been issued.

Curt added that we might have similar language for “test certificates” because the are not considered “Certificates” and asked if we could use similar language for the precertificates. Ryan replied that the only definition we have for “test certificates” was in relation with a Domain Validation method which has been forbidden. He also mentioned that part of the “cleanup” ballot is related to the definition of “test certificates” and there is some confusion because we have a definition of a “test certificate” without a corresponding validation method for which it was created, and CAs think that they can issue these Test Certificates outside this validation method. We actually don’t have a definition for “test certificates” and they are currently seen as Certificates. Ryan explained the OCSP pre-certificate issue further and that there is an attempt to remove the definition of “test certificate” completely so that there is no confusion.

Kirk asked why can’t we fix only the OCSP section to allow for CAs to issue good responses for precertificates. Wayne explained that depending on the perspective of the reader, there is one valid interpretation that does not allow a CA to issue a “good” response for a precertificate if a corresponding certificate has not been issued. The original ballot was pretty simple, trying to make the minimum changes to the BRs to make it clear that what is required by the Root programs and by RFC 6962 is permitted by the BRs.

There was more discussion describing the issues related to the two proposals (allow for “good” OCSP responses for precertificates, or treat precertificates as certificates). Ryan suggested that we try to solve both but they can be treated separately. He suggested we try to solve the first problem (allow for “good” OCSP responses for precertificates) and defer the other (treat pre-certificates as certificates). He recommended working on 4.9.10 to fix the first issue without “touching” 7.1.2.5 and work on the “holistic” issue later. He will work on some draft language to send to the list. Mike seconded that this approach would be useful. Wayne was indifferent but mentioned that the discussion about what a precertificate is would take longer. Ryan said he would send a more “targeted” change to the OCSP issue and Wayne said he would need to discuss with the other endorsers as this is a different approach than the original one.

#### Ballots in Voting Period 

None

#### Ballots in Review Period 

_SC21: NSR section 3 (Log Integrity Controls)(Review until Nov 3, 2019)_

#### Draft Ballots under Consideration



_Improvements for Method 6, website control_ (Tim H.)
No additional comments
\_
SC20 Ballot (NSR 2): System Configuration Management\_
Tobi reported discussing this topic in SC and subgroup meetings and the motivation as described on the mailing list is not enough for what they are trying to do. The subgroup has an important question to ask which is addressed to Ryan. They would like his interpretation of what the “vision” actually is. You could interpret this as actual configuration changes intentionally made at the CA that needs to be reviewed, in order to have something like 4-eyes principle, or say that the change was as good as it seemed when it was made? Or does it mean to review every week every configuration on your system and check if nobody (including the admins) has changed it.

Ryan was a bit unclear about the question. He mentioned sending an email on Oct 3rd to the list to describe what he was trying to understand. He repeated that it would be helpful to follow:
– What the CAs want
– Why it’s not permitted
– Why it should be permitted
– How the proposed change tries to address this issue.

He mentioned an example about the requirement to use an antivirus where a CA was running their software on a read-only media. So, in that case running an antivirus weekly made no sense to run on a read-only media. There should be a way to allow a CA to not having to run an antivirus on a read-only media. That was the process.

That description is missing from SC20. We may need to avoid a silly requirement or prevent a smart requirement, and here is what we’re trying to do to fix that.

The group re-iterated the examples of good ballots. Knowing upfront what we are trying to solve will avoid unexpected ambiguities.

_LEI Ballot_ (Tim H.)
No additional comments.

\_Cleanups \_(Ryan)Ryan has everything on GitHub, all changes are in the rationale of the ballot so he is looking for someone to run the ballot process. Wayne volunteered to do that so we should expect a cleanup ballot to be on the public list soon.

\_Aligning the BRs with existing Browser Requirements \_(Ryan)
Ryan went through the Root Programs of Microsoft and Mozilla and identified some differences. This is not a topic that is ready for extensive discussion, at least on this call, as Microsoft is currently working on some updates to their Root Program requirements. At this time, there is a GitHub branch that lists the differences that have been identified from the Mozilla and Microsoft root policies and try to map to BR related changes. He is not pushing to make a ballot with these changes but he encourages members to at least review the proposed changes to see if they match people’s understanding. Worse case it will be useful for folks that have not been paying so much attention to Root program requirements and understand the issues. It is very possible that not everything on this list is correct so Ryan encourages the review and feedback. It is a list of things that have either resulted in a list of non-compliance or normative requirements where the baseline requirements have otherwise been more permissible. Mike also encouraged members to look at the draft language regardless of their internal work at Microsoft.

Dimitris asked if Ryan thought of adding some cases where the BRs were misunderstood or misinterpreted, and highlight them so we could hopefully make them more clear.

Ryan agreed that we should do that but that was not part of this attempt. We need to find opportunities to provide more clear language. He debated about how much of the RFC 5280 language are we going to replicate in the BRs, one example being the subjectKeyIdentifier and authorityKeyIdentifier. In any case, this attempt is about adding some hard and unambiguous requirements that already exist today. He would use separate and targeted ballots for clarifications and interpretations of ambiguous requirements.

For the previous discussion about OCSP and precerts, one of the ballots should add expectations about precerts. The same about “Test Certificates”, improving validation methods that have resulted in different interpretations. This long list of such issues will be tackled in the future.

Ryan also brought up the non-critical Name Constraints issue which is currently allowed in the BRs as an exception to RFC 5280. He cares about removing that ambiguity, so there is a discussion on the public list about making this extension critical. Some feedback from Apple is expected about the implications.

Finally, Ryan mentioned about another discussion on the mailing list regarding the “Default-deny”, “default-allow” on how to read the BRs. How should that be read in the requirements. Ryan wants to get feedback from members so he can see a different perspective about how some of the requirements in the BRs are read so to establish the “default state”. He would also like some feedback about the critical/non-critical Name Constraints issue.

### 8. F2F 48 Agenda



The draft agenda is up on the wiki. Dimitris already announced the guest speakers. Any changes should be communicated by the next meeting so we can approve the agenda. There was no further feedback from participants.

### 9. Any Other Business 

None.

### 10. Next call 

October 31, 2019 at 11:00 am Eastern Time.

### Adjourned