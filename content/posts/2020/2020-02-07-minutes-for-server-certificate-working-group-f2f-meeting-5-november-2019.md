---
aliases:
- /2020/02/07/minutes-for-server-certificate-working-group-f2f-meeting-5-november-2019/
author: Jos Purvis
date: 2020-02-07 19:41:40
tags:
- Face-to-Face
- Minutes
- Server Certificates
title: Minutes for Server Certificate Working Group F2F Meeting, 5 November 2019
type: post
---

**Attendees:** An Yin (iTrusChina), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST/ ETSI ESI), Atsushi Inaba (GlobalSign), Ben Wilson (DigiCert), Bi XinLong (CFCA), Chris Bailey (Entrust Datacard), Clemens Wanko (ACAB’c/TÜV AUSTRIA), David Moeller (Sectigo), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Du Zhiqiang (GDCA), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eva Van Steenberge (GMO GlobalSign LTD), George Chew (PrimeKey), Hongquan Yin (Microsoft), Jack Zhang (DigiCert), Jeff Ward (WebTrust / BDO), Jinta Nakamura (SECOM), Kirk Hall (Entrust Datacard), Leo Grove (SSL.com), Liu Lei (GDCA), Mariko Kusakabe (GlobalSign), Mike Reilly (Microsoft), Miwa Yoshida (GlobalSign), Nick France (Sectigo), Nik Khairul (eMudhra), Ning Yu (iTrusChina), Qiu DaWei (CFCA), Ralph Zeng (TrustAsia), Robin Alden (Sectigo), Rollin Yiu (TrustAsia), Scott Rea (DarkMatter), Sun Luwen (iTrusChina), Sun ShengNan (CFCA), Sunny Qiu (iTrusChina), Tadahiko Ito (SECOM), Tim Hollebeek (DigiCert), Timo Schmitt (SwissSign), Tomas Gustavsson (PrimeKey), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo (Chunghwa Telecom), Wei YiCai (iFutureCA), Zhang Yi (CFCA), Zheng Huitao (SZCA), Sissi Lok (Trust Asia), Curt Spann (Apple), Devon O’Brien (Google), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Ryan Sleevi (Google), Tim Callan (Sectigo), Vijay Kumar (eMudhra), Wayne Thayer (Mozilla).

The Antitrust statement was read.

### Network Security Subcommittee

_Presenter:_ Ben Wilson (Digicert)
_Note Taker:_ Mike Reilly

Ben: Pulled up Ballot 20 (System Configuration Management) draft to review it as a group. Discussed the use of subgroups to the committee in order to work on specific items. One is the “pain points” such a subgroup could look at might include 1) changes to the current language and 2) how does our proposal improve the situation or not and 3) what are the effects when it’s incorporated into audit requirements. The goal is to have the language less open ended so CAs don’t circumvent controls. On the last call they discussed section 1H and came to a consensus that this section is really about configuration management and that a CA should know what configurations are approved and actionable for a particular change. Changes should be monitored, and a CA should be able to detect problems/security issues. Section 1H is not only about simple change management but also about CA ability to monitor and respond to issues. Language of the two sections is the language is very common and some folks saw 1H as only change control. Group wants to make this section language clearer to meet the intent that a CA review change impact prior to the change vs. monitoring the change weekly for issues. Moving to change the language to be continuous monitoring vs. weekly monitoring. Goal was to have continuous monitoring to better detect issues. Current ballot would remove the language from section 1(h) and move it to section 3(a) which covers review period of configuration changes. New language would include that a CA should continuously monitor, detect and report problems from a change. If, while monitoring, CA personnel determined changes violated the CA’s security policies they would then be able to take appropriate corrective action in a timely manner

Dimitris: Has the subgroup discussed how this would be accomplished and provided a good example of it in practice?

Ben: Talked to members of the subgroup but none were present on the call/meeting to answer this specifically.

Dimitris: We need to add a specific example to make it easier to understand the requirement.

Robin: This should dictate some automated system to detect/respond to the change.

Dimitris: We would need to define what we mean by a system e.g. DNS config, any Linux box in the system, any software in the system.

Robin stated system was meant to be security systems but that could include all systems in theory

Ryan: From previous discussion of SC20 what is an example of something that was forbidden before and is now allowed? He gave an example of someone who changes the username/password forDNS and redirects the OCSP responder and a CA would not be able to respond for three days.

Ben: We tried to address this by talking to preplanning requirements vs. post deployment response.

Ryan: Waiting for three days while things are down would not be acceptable.

Dimitris: Ryan’s example may not be a good example as a password change would be planned prior to change.

Ben: We looked at adding a new section to cover process of change controls and approvals.

Ryan: This language makes the BRs more permissive and clearer. He wants to clearly see an example to illustrate how the change would take place under the current language and how it would take place after this change of language. We have a potential where section 3A and section 3G language may conflict and cause confusion.

Ben: Dimitris, did we answer your question?

Dimitris: Not quite. With current language the DNS interface could or could not be in scope with the CA’s issuing service but it could be in scope for CA operations. Not sure the language is designed well enough so that any CA reading it would include the DNS interface in the monitoring system.

Ben: One of the thoughts from the discussions was that with all the systems you could potentially have 1000’s of data points to monitor and would it be too much to manage.

Robin: Is the language/change making things better or worse? Certainly not worse.

Ben: Ryan sees 3 days to respond as unacceptable.

Ryan: We’re eally trying to look at what this change really means and is internally consistent. Section 3a has timeline conflicts potentially with other sections. He doesn’t have strong evidence if 24 hours or 3 days is best and the goal here is to make in unambiguous as to what is expected. Currently some timelines conflict with each other.

Ben: Should we add another section on governance of change control?

Ryan: Do we have language on changes outside of the change control window?

Robin: Yes, that’s what we are talking about here. How to have continuous monitoring to manage changes.

Ben: It’s obvious we need to do some more work on this as there are challenges in terms of scope and implementation.

Robin: Is that correct? Ryan is asking for clarification and examples so it may not be necessary to go back to the drawing board. He wants to understand what we get with the changes so he can understand it as well as others.

Ben: At high level the changes don’t seem problematic but as you dig into it you begin to see challenges in the practical implementation. For example, what are the effects when it’s incorporated into audit requirements?

Robin: Thinks this is auditable and walked through how you would see evidence of a good change control process with monitoring, detection and response practices.

Ben: Proposed as next steps to look to make Section 3A more consistent with Section 3G. There may be a way to take what we are working on in Section 3A and improve Section 3G.

### Validation Subcommittee

_Presenters:_ Tim Hollebeek (Digicert), Wayne Thayer (Mozilla)

_Note Taker:_ Eva Van Steenberge (GlobalSign)

4 topics that have taken up all of the time since the Greece meeting. Summary for those who don’t follow the subcommittee on a regular basis – Tim went back over all the emails

**_Spring cleanup ballot_** (one of the very first emails after Greece – recently came back up again): don’t want to spend too much time. From time to time for various reasons, minor errors sneak into BRs, things like spelling mistakes, bad references, other minor errors. Not worth the entire ballot process to fix a bunch of them. For a long time this was preventing them from being addressed. A year and a half ago, we had a spring cleanup ballot that fixed a bunch of them. There’s been a bunch more spotted since then. Running a Github branch with a list of these. Various people have stepped in to keep that moving recently, for which Tim was grateful. Draft ballot – Tim recommended people reading it. It should be ridiculously non-controversial. It is not supposed to change anything, not changing what the BRs mean, it is just supposed to fix stuff that is either accidentally put in there or erronious. There is one other change that we discussed at the Greece F2F: lots of old compliance statements and obsolete text that is being removed. Examples: compliance dates that have passed and therefore the requirements are not operative anymore. You can simplify it by removing the compliance date and the original requirement. As per Wayne: Intend on starting to vote on the ballot today. Hopefully it is in good shape. Be aware that this is going on.

**\_Finishing the work of the Validation Summit \_**– specifically the two methods that remain, method 6 and method 10. In March 2018 there was a suggestion to do a complete review of all of the domain validation methods to make security improvements. When we removed “any other method”, the goal was to document what the existing pracitces were. There was less focus on the detailed description of the existing validation methods. It was thought that these needed another review to look at security improvements over existing practices. That process is coming to an end now, another thing that is a good thing. There’s two that remain: Method 6 and method 10.

**Method 10** – has been waiting for the TLS ALPN draft to get through the IETF process. IETF process is not fast. IETF draft has been submitted to ISP for publication – this is the very last step before becoming an RFC. Should be out in RFC “soon” – usually measured in months. We may as well wait for the RFC number with all the finialized text, it will be easier to just refer to that version. So this is on hold until that happens.

**Method 6** – DNS based validation. A little bit quiet over the last two months or so as other topics were taking over the group’s time. Doug recently submitted anohter draft of the method 6 ballot. Tim would encourage members to pay attention to this draft. Some very good discussion on the list in the last couple of days about potential changes to this ballot.

- Required website content is no longer a defined term. And a couple of other notes. Will be more of a formal ballot once the discussion finishes.
- So it is not accidentally mirrored in 404 messages.
- Successful http response – one of the new things that were added. Another defense mechanism against 404 messages.
- There is a philosophical discussion about whether it is “an authorization domain name” or the authorization domain name“. The general consensus it that it should be “the” authorization domain name, meaning the domain that you are actually validating at the time. There is a bunch of options which it could be, but during the process of validating a domain you pick one and validate it.
- PKI Validation vs ACME (bit of a complicated one):

1. Under well known or ACME. This is another one that causes a bit more discussion. There have been some discussions about the ACME challenge and the PKI Validation. Some people have implementation of PKI validation that are not based on ACME, so we should keep that at this time. There is a potential security problem if you have an ACME client talking to a non-ACME server or vice-versa, since they are not intended to work with each other. The best result that they could get is that they would just blow up and not work together successfully. There is a potential that they could work together in an interesting and surprising way. Since there is no upside in allowing the two to attempt to inter operate when they shouldn’t, it is a general good security practice to make sure that client and server pairs that are using different protocols can;t talk to each other, just to make sure that bad things can’t happen.
1. Trying to get rid of the language that says “or any other URL as designated by IANA”. An alternative, instead of saying use these two URLs, if you’re using the well-known ACME challenge URL, you are actually following the RFC 8555 ACME protocol. And if you’re using the well-known pki validation URL, then that indicates that you’re using some other method 6 compliant DNSvalidation method. That causes
1. Does RFC 8555 have all the goodness that is included in the current method 6 requirement? It was pointed out that there are a couple of things that are missing there, so it looks like there is a little bit more work to do on specifying what it means to do method 6 using ACME and keep all of the goodness that we had from the improvements from the validation summit.
1. What that does mean is that if anybody is doing the ACME validation on the validation URL or if they are doing traditional method 6 validation on the ACME challenge URL (which Tim hoped nobody is doing), we are going to have to look and make sure that that isn’t going to cause any problems. Just noticed a couple of days ago and might still cause a bit more traffic. It may catch some people’s implementation out.

- Access via http or https. Accessing a file via http is fairly straightforward. You get a response back, that’s it. Via https: there are other concerns you might have, for example: what set of certificates do you use, what https options do you negotiate. https is a lot more complicated. Since we allow http, the general feeling is that most of those things don’t matter. But we should at least think about it and see if that it true. If that’s what we want to say, we should say it so we won’t have a discussion about it later. Dimitri: as far as the validation is concerned, it doesn’t really matter. There are challenges, but if it is a successful connection, then it should be okay. Tim: that seems right. Intuitively, yes, but it is worth thinking about.
- Authorised ports – that’s another important one.
- What should we do about following redirects? There are some concerns. Rich redirects (that involve java script) – requires that validation system uses a java script engine. This is a bad idea and we tried to outlaw that. There’s a bunch of requirements: follow only server-side redirects (300 ones). Just for the purpose of not having validation engines go off and deep loops and potentially have a denial of service: follow 10 or fewer redirects. Follow only http/https redirects. Follow only redirects via authorised ports. So redirects cannot break the other requirements. Previouslre requirements weren’t clear.
- Random values: relates to lifetimes and things like that. For ACME the requirements aren’t actually in the RFC.
- Method 6 might have two little baby methods: one to cover the traditional method 6, and one to cover ACME.
- Standard note about wildcards (we should probably have a discussion about this one, a lot of people are not happy about it) – it is in method 6 for consistency since it is in all the other ones.

**_LEIs in certificates_**: Mr Wolf participated in the discussions. Tim thanked him for his participation, which was very useful for getting his perspective. Fundamental disagreement, and it doesn’t look like either side is going to move on this issue. if someone wants to review and sees a path that could be productive, please bring it up. Right now, there’s two camps, and both had the opportunity to state their case. We may just need to have a ballot. Dean: According to one side, Gleif has not made a case of why these are needed. According to the other party, having LEIs in certificates causes harm to certificates/ecosystem. it seems like everybody is talking over each other. No concrete assessment on either of both issues. There’s those two pieces of disagreement, which are holding this up. Is that a fair assessment? Kirk: Not a fair assessment. It’s not just GLEIF, there are also CAs who want it as well. Tim (to Dean): Not an unfair summary. Dean: Given that status, maybe it is worth one more round of emails, here’s the two disagreements. To have each party substantiate their position. If they can’t get past that, than maybe Tim’s right and a vote is where this goes.

### Default Allow/Deny Discussion

_Presenters:_ Wayne Thayer (Mozilla)

_Note Taker:_ Ben Wilson (Digicert)

Wayne presented five slides to introduce the topic.

Slide 1 – Is the Default Allow or Deny? The discussion started on the Server Certificate email list with Subject Name for CA certificates with someone pointing out that there are CA certificates with subject names with contents not set forth in the BRs. Slide 2 – When something isn’t specified, is it allowed, prohibited or something in the middle? Wayne argued that when the BRs and Guidelines were drafted, the level of attention to this issue wasn’t there with specificity. CAs argue that anything not expressly prohibited is allowed because it allows for flexibility. Browsers argue that anything not expressly permitted is forbidden. Slide 3 – One example is BR 7.1.4.2.2, which permits additional subject attributes in subscriber certificates, whereas EV 9.2 limits the list of subject attributes in EV subscriber certificates. The section on root CA certificates doesn’t say anything on whether additional fields can be added. This was not addressed in Ballot 199. Many CAs have interpreted this to allow additional fields.

Slide 4 – Another example, taking this to the extreme, is that the BRs don’t talk about cross certificates, so there is an argument that they are distinct from subordinate certificates, but are cross certificates a form of Subordinate CA? Yes.

Slide 5 – Potential Solutions – One idea is to look for ambiguities in the guidelines, resolve them, and then apply default deny. For example, Adriano asked earlier today about the audit requirements for delegated third parties and discussion revealed there are different sections of the BRs that seem to contradict each other.

Another idea is to live with ambiguities and change them as they arise. As Tim has said, requirements are requirements and we have to interpret them as best we can. This approach would be to not apply a default-deny rule across the board.

Wayne opened the floor for discussion.

Ryan said that when we have a list of enumerated items, that requires clarifications. Some of the lists are enumerated in paragraphs and can be ambiguously read and some of those need to be cleaned up. This occurs in Section 7 in certificate profiles. Ambiguities need to be addressed. And when we have an enumerated list, can it be added to? That one deserves some resolution.

Wayne said the examples he presented are amenable to fixing with an enumerated list approach. We could go through the BRs and make it clear either that anything else is allowed or anything else is prohibited.

Tim said that trying to deal with this through rules for things like enumerated lists are going to run into problems and unintended consequences. Typically, people have something in mind when they write lists like this and whether you can do anything else. For example, the work we did on elimination of “any other method” – that was the validation requirements, where we have said CAs can do this or not. We went through the consequences of removing it and it took time to fix everything up. Those included steps of things that CAs do, but nowhere in there does it say that CAs must document how things are done for the benefit of auditors-that is something that is just assumed. So, some things are often left out of the BRs. There are places in the BRs that were not intended to be exhaustive lists. There are other places where they were intended to be exhaustive lists, but they vary. The solution is to put in the BRs what the intent was, but it’s not a good approach to come up with new ways of interpreting the BRs in a way that they were not intended to be interpreted. There are ambiguities and places not written as tightly as we would like to have. So, we should work together to fix up some of these holes and put tighter default-deny rules in place where they make sense, but I don’t think it can be done by adopting a new strategy for interpreting the BRs.

Tim and Ryan disagreed on whether enumerated lists could be treated across the board as default-deny.

Ryan said he didn’t see any other approach than to treat enumerated lists as default deny. We cannot say that when it’s convenient an enumerated list allows anything that holds, and when it’s inconvenient it’s because it says it’s explicitly allowed. Ambiguities are things that are difficult, which we should set aside for a second. If there is an enumerated list of things you are expected to do, and you do something else, that should be a trivial answer. Otherwise, we have defeated the need to have any requirements whatsoever because we have no assurance what a CA is actually going to do. So, we have to read enumerated lists as requiring everything that is enumerated. So, we need to look through enumerated lists and see if there are areas where CA discretion is permitted and how do we want to resolve that discretion, such as, do they need to disclose in their CP/CPS how they exercise that discretion. When we generated the transparency requirement for local laws, we said you have to say how you do it. With an enumerated list of steps you must take, if you don’t do it, you must be out of compliance or there is no point in having a list. And we should look for ambiguities, which should be brought forward.

Ben – it depends on how we define what an enumerated list is. What do we mean when we say “an enumerated list”? For example, we might have places where it says, “CAs can do the following” or it might say, “These things include: ….” When those forms are used, it doesn’t mean the list is exclusive. It’s a general rule that you don’t have say “including, but not limited to” because the latter part is redundant, unless we’re saying now that we have to go through the BRs and do that.

Wayne – we’re essentially saying the same things. We need to go through and look at all of the lists in the document to determine whether it is ambiguous and whether it allows other things or not. It maybe that doing that on every list becomes ridiculous, and that we need to have some overarching statement in the document, but the preference would be for every list to stand on its own.

Dimitris – In reference to this discussion I looked at section 1.1 in the BRs and noted it says they describe a “subset of requirements” that a CA must do. From a CA’s perspective, I thought this means that we would add requirements in our CP/CPS or add regulatory requirements that we need to follow unless there is a specific prohibition in the BRs, but I can see the perspective of browsers.

Mike – I look at the BRs as setting a rule of “default deny” and prefer whitelists as opposed to blacklists, and the more the guidelines and enumerated lists can stand on their own, the better, (so we don’t have to explore the history behind them, etc.).

Ryan – Reading the BRs and taking a default assumption for whatever profile we’re dealing with – and then working to build … Adriano’s email is a great example. It mentioned something that was not clearly permitted. So, it is desirable to start with an assumption that there are restrictions, then good, if you want to make things more restrictive as Dimitris mentioned. Then there is the example of one CA that issued a man-in-the-middle certificate because they didn’t see an express prohibition, despite the requirement to validate the domain name. So reading the requirements as default deny aligns with how WebTrust treats things, assume that it isn’t being done, and then build evidence that it is being done, or assume that it isn’t permitted by the BRs, and then build evidence that the BRs allow it. It also helps to double check by discussions with the CAB Forum to make sure your conclusions are correct.

Robin – I agree that ambiguity is bad, and we should narrow it down, but the fear is that given that the lists of requirements work in slightly different ways because they’ve been drafted by different people and that they’ve been understood differently over the years, the danger is that if we now introduce a presumption of default-allow or default-deny without also looking at the language around it we change the requirements by introducing that assumption. So we should go through these lists and make sure we understand them and then crystallize and clarify them so they cannot be misunderstood in the future and so that we have removed the ambiguity. I’m in favor of removing ambiguity but not by adopting a presumption.

Dimitris – I agree with Robin

Trev – I think we all agree that the guidelines should stand on their own and that eventually there should be an interpretation of default deny, but the issue is whether they should be done in one fell swoop or take them on one by one. Since we’re in agreement we should just pick one of Wayne’s proposals.

Tim – The biggest concern I hear from other people is that you do have to go through all of this. The sections are different. Certificate profiles should be handled one way, whereas other sections talk about other things and should be handled other ways. It’s a false choice to treat everything as either default allow or default deny. Take the introduction section, for example, which is explanatory text. Both interpretations lead to a false choice and non-sensical interpretations. For example, that every QWAC has to be revoked within the next 24 hours because it includes a QC statements extension which isn’t allowed by the BRs. A philosophical change about how to interpret the BRs is fine, and cleaning up ambiguities is fine, and we can prohibit freedom where freedom is dangerous.

Ryan – QC statements are permitted, so that is not a good example. We are saying the same thing, but there are two parts – how do we move forward, Robin seemed to warn us to be careful. We should be moving forward. There is a dangerous default to the status quo – if we’re not seeing resolution, then we’d need to work out one-on-one with each CA, and that doesn’t scale. I want to see us making more progress.

Wayne – The concern that I’m hearing is that if we suddenly say everything is denied if not it’s not expressly allowed, then the same sorts of problems we’re concerned about with creative interpretations causing things that shouldn’t happen. With ambiguities and applying a rule of default-deny it could be that we prohibit the issuance of certificates to individuals, because it could be read a certain way. Or, on the other hand, as we saw with serial number entropy, we saw a large number of certificates or CAs who have done something that is prohibited. That’s the hesitation.

Ryan – There is weird stuff, and we need to make progress with the weird stuff. We’re not wanting to turn off the lights and give everyone candles. We should look at the pile of ambiguities. We should read the BRs as if they are default deny-either now or as an end state.

Curt – I recommended that CAs look through what they are doing, identify ambiguities or things that might not be permitted, and bring forward their list of ambiguities.

Trev – CAs should read the guidelines and identify them, but it needs an owner and no one is volunteering. So, it seems like we zeroing in on option 2.

Dimitris – what about sections that are entirely empty, does that mean that those things are prohibited? Also, where is it clear that QC extensions are allowed?

Ryan – It’s in section 7.1.2.4. It seems like approach number 2 is a path forward, but how do we measure progress? Do we have a summit at the next face-to-face? How do we move forward without leaving the status quo of ambiguity?

Wayne – We can’t wait to address things as they unfold. We need to move forward. We need some structure and a subcommittee working on it, and we need a summit meeting.

Trev – Agrees with Wayne. Not sure what committee should be responsible. I question whether a summit has rigor and structure to get this done.

Ryan – Agree. But when things are presented as a ballot, people pay attention. Not suggesting that, but would like to know what are the reasonable timeframes. We have subcommittees that live on for two years, etc., but we need have CAs come forward with a list of issues. We need something to incentivize people to do the work.

Mike – We need a subcommittee. We as browsers look at it as default-deny today.

Tim – Not the validation committee. For instance, Section 9.7 (disclaimer of warranties) is not within scope of our expertise.

Robin – Respectively disagreed with Mike that correct approach is default deny.

Mike – That’s how we look at them.

Trev – What I heard from Mike is that when he read them, he assumed that they were default-deny, and that is where he was going. He wasn’t saying that from now on he expected all audits and progress in the future without changes to be.

Mike – nodded in agreement

Dimitris – The question could be for all root store operators. We do not expect a default-deny interpretation with regard to the current BRs. What are the other root store positions? What is your interpretation from now on?

Wayne – Conceptually, default-deny is correct. I’m not willing to say that everything I read in the BRs, from Mozilla’s perspective, are default-deny because we know that it won’t be reasonable to interpret it that way. I think I’ve heard a reasonable path forward, but someone needs to charter a subcommittee. I’m sure someone in each CA has sufficient familiarity with the BRs to participate and contribute. We ought to start going through the BRs methodically.

Dimitris – So is it the consensus of the Server Certificate Working Group to create a subcommittee and/or have a summit to discuss this topic?

Trev – Do both.

Mike – Holding a summit meeting and creating a subcommittee would be important.

Dimitris – Should we send out an invitation for additional interested parties?

Tim – I think we don’t need interested parties-we will have the right persons in the room. The summit would be all of one day of the F2F meeting.

Ryan – My idea of a summit would be that folks do their homework and come prepared to discuss things that need to be done. I don’t think we need to wait for February, but practically February seems right. We need to do this work sooner rather than later and not spend summit time figuring things out, but people should come more ready.

Dimitris – Any other discussion?

Dean – Who has action items?

Dimitris – Do we need a subcommittee?

Group – Yes.

Dimitris – I will send an email to the list to charter the subcommittee.