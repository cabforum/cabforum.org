---
aliases:
- /2022-08-30-2022-08-30-minutes-of-the-network-security-working-group/
author: Clint Wilson
date: 2022-08-30 12:00:00
tags:
- Network Security
title: 2022-08-30 Minutes of the Network Security Working Group
type: post
---

**Network Security Working Group  –  August 30, 2022**

**Antitrust Statement** was read by Clint.

**Roll Call:**  Clint Wilson; Ben Wilson; Jozef Nigut – Disig; Tim Hollebeek; Adam Jones – Microsoft; Christophe Bonjean – GlobalSign; Joanna Fox – TrustCor; Corey Bonnell; Corey Rasmussen – OATI; Dustin Hollenback – Microsoft; Ruben Annemans – GlobalSign; Tobias Josefowitz – Opera; Aaron Poulsen – Amazon Trust Services; Jillian Karner – Let’s Encrypt / ISRG; Tobias Josefowitz; Paul van Brouwershaven – Entrust; Rebecca Kelley; Prachi Jain – Fastly; Tim Crawford – BDO; Daryn Wright – GoDaddy; David Kluge; Trevoli – Amazon Trust Services; Wendy Brown – FPKI; Iñigo Barreira – Sectigo; Kiran Tummala – Microsoft; Bruce Morton – Entrust; Pedro Fuentes – OISTE.

**Minutes of Last Meeting**:  Minutes of August 16, 2022 were approved.

**Update from Threat Modeling Subcommittee:**

Clint: There’s been a fair bit of work on the threat modeling.

David: During the recent threat modeling meeting we specifically discussed identification of mitigations for OCSP responder logging, certificate storage, and privacy impacts. We talked a bit about the role of privacy generally and whether we’re preserving user privacy and the NCSSRs and concluded that while it doesn’t mention privacy, it is of course, an important goal, while not the primary goal of the NCSSRs – to protect data privacy in the CA environment because there are other regulatory frameworks that do that. So we agreed to leave it that way for the moment. We discussed log data specifically. One of the concerns that was raised was log data that is potentially recorded.  It could create a privacy risk if user OCSP requests are being logged on a large scale and then whether they are being retained for a long time. While user requests to responders are not something that have to be logged today, there might be some CAs that log that anyway just to be overly cautious. We decided that it would be a good idea to update the log data retention requirements in the Baseline Requirements to clarify that.

Trev: We’re concerned that people would be overly cautious because there are specific logging requirements in the requirements. Wendy suggested that we might add something specifically that relying party queries to certificate revocation services are exempt from such logging requirements and they’re exempt from the 2-year retention.

Clint and Ben responded that they would support it.

Paul: Google announced that they won’t longer rely on OCSP especially for EV. The issue is that OCSP is done over http so every ISP can observe requests, so even if the privacy threat from logging is handled directly on the side of the CA, the bigger risk is potentially that an ISP or VPN service provider or anyone who sits in the middle could use the request to determine which serial numbers are being queried and then determine websites visited.

Conversely, relying parties might not have the certainty on the certificate status validation of a specific certificate or comply with the EU regulation regarding certificate status checking.

Tim H.: We’re very much in agreement with you that that’s a discussion that needs to happen. We’ve been thinking through the same sort of concerns internally and we do think that there needs to be a more holistic discussion about the privacy threat. Then, maybe we should remove the requirement to do this. If that’s the direction certificate consumers want to go.

Ben: I think the issue is the timeframe or horizon that accomplish this and see it taking place. I think that we would be in support of it, but I don’t know about Microsoft because they’ve relied heavily on OCSP and OCSP stapling. I don’t want to put words in Microsoft’s mouth, of course.

Tim:  You are right in that we would need to get Microsoft on board because Microsoft’s policy might need to be amended, but I don’t know that they’re necessarily against doing that. So it’d be a discussion we need to have with them.

Paul:  The question I think is, even if we say that OCSP is deprecated, there are mechanisms, such as OCSP stapling that must be on the table that preserve privacy while increasing security as it could serve as a hard fail and can we, as the CA/Browser Forum and certificate consumers get better support within the server community so that this isn’t problematic.  Even if we would consider deprecating OCSP as a protocol, that doesn’t solve the problem because then we go back to a need for requirements, e.g. on partitioning CRLs so that they are kept small.

Tim H.: I think that compressed CRLs work and the work of Firefox on CRLite and the work of Apple as well, that they’ve been experimenting with, I think, is probably the most plausible path forward for providing revocation information. I’m not particularly optimistic about the ability of stapling to solve the problems in part due to the fact that servers are involved. In the most common use cases, where you want to signal that service is compromised, stapling has some obvious drawbacks. Stapling support has not been historically great, and I don’t know that it’s improved in the last 10 years, so I think we do want to be very careful about making sure that we don’t make revocation worse than it is, but I think we have a lot of evidence that there are new ideas like these compressed CRLs and partitioning and providing better support through all of the ways that we’re putting it in the Common CA Database that provides a lot of ground work that we can build on in order to provide better revocation information without having to use OCSP.

Paul: That’s a good consideration, as long as we keep in mind that currently, we only have soft-fail mechanisms and that for OCSP stapling I think it is now used by 45% of the Internet, according to Netcraft. … So, I think the question around privacy belongs in the Server Certificate Working Group.

Trev:  The reason that I didn’t think it belongs here is because the specifications of what data to keep doesn’t live in the NetSec requirements. It lives in the Baseline Requirements.

Ben:  Does someone need to write up a thought piece? After my notes here are circulated, maybe somebody could take those notes and construct something that is useful for the Server Certificate Working Group?

David:  I had already made a mental note that I would prepare a draft ballot for the data retention matter, and I have already announced in the last Server Certificate Working Group call that we would like to make some broader changes to, or do a more holistic review of, the section 4.9 Baseline Requirements. And I’m also going over the wording of section 4.9 that outlines revocation and the processes for handling certificate problem reports, and there are several aspects in that wider section that could use some attention.

Clint:  Okay, thank you for volunteering to write that up. It should be a good discussion.

**Group Review of NCSSRs:**

Ben: So, you know, we had an out-of-cycle call on this document last week. First, we focused on the word “ensure” because it was mentioned that it was not auditable or difficult to audit. So, we tried to work that out of the document, but then we focused on trying to tighten up some of the language about Trusted Roles.

Trev: I had made a comment about how I think trusted roles are an unnecessary second layer of abstraction that you don’t see present in other compliance programs. We crossed out and changed the order of some of the provisions so that it flows a little more logically into the things that people do.

Bruce: I think I’m understanding your issue with trusted roles, but I think it’s really tough to back out, or I think that we need a plan to back out, because you find it in the Webtrust documents and it’s called up in all of our documents. It’s just the way we’ve been doing it for 20 years.

Trev: I’m confident that if we manage to purge it from the CABF requirements that the auditors could easily update Webtrust.

Ben: When you say a layer of abstraction, if we take away that layer, what are we left with? You have people that are assigned to do certain things, and you have to have multi-party requirements, etc.

Trev: We want people who are authorized to do those jobs. We want to have separation of duties, and we want least-privileged access. People should understand the job they’re doing and so, my thing with trusted roles is it creates a situation where whatever these people are trusted to do they can do, like it doesn’t matter, because they’re trusted. Whereas I think that we should be moving towards a network security model where we’re saying people should only have access for what they need to do when they need to do it—not just because we trust them.

Ben:  Well, I think maybe it’s the word “trusted” that you’re concerned about? What happens is that when you’re working on standards documents, or legal documents, or whatever you have, you get to a point where you don’t want to have to spell it all out over and over.  You want to be able to abbreviate the concept with an acronym or a placeholder or something, because it’s a concept that you don’t want to have to explain every single time, and you put in the definitions and other shorthand.

Trev: Take for example, “assign tasks to trusted roles and follow a documented procedure for appointing authorized individuals to the role”. That’s all an entire step that you do that doesn’t really do anything for the processes as the CA. It’s a step where you’re just assigning people.  Or, “implement processes, such that an individual only acts within the scope of their trusted role”. We’re just talking about least privilege there. We could just say that “when interacting with Air-Gapped systems, the individual’s access to those systems should be limited to the scope of the job that they’re performing.”

So, anyway, I’ll get off my soapbox about this because there is other stuff in here, but I just think that that’s something that maybe we should think about that might be easier getting rid of.

Ben: Do we really want to try and tackle it? Or is it easier just to let sleeping dogs lie?

Trev: Like I said, I think people should just think about it, but there’s other stuff in the air-gap discussion that I think is important.

Ben: Trusted role is a concept that you have certain things that certain individuals have to go through that other people don’t have to go through for qualifications, and you want them to be educated in security concepts and know what they’re doing.

Trev:  Yes, but you can do that with other software by having a run book. For an air-gapped system you really care about are you following a documented procedure. Or how you’re interacting with the systems, and you really care about making sure that everything people are doing is logged and you really care about being very critical about the things that are happening–if you’re following all your steps, if you’re logging everything, if you’re only approving, authorized individual’s access, if you’re doing all those things.  What is a trusted role adding?

Paul: You say that one of the basics of the trusted role is that you do background checks and that the individual has no history of abuse, etc., but it sounds like you’re stating that as long as it is logged, then you know if they’re doing something wrong.  But they might have had the intention when they were hired to do this wrong at some point. But, yeah, we didn’t check their backgrounds because we were going to log it anyway.

Trev: This could just be a gap for me, because we background-check everyone–we don’t just background-check trusted roles. There’s often different levels of background checks and performed differently, but I don’t think that you have to have a named term to say that–you should have vetted someone before they have access.

David: I understand where you’re coming from Trev. I think you have a valid point when you’re saying that the concept of trusted rules shouldn’t redirect attention away from implementing good controls, but to me, the concept of a trusted role, you don’t have to call it that, but I think it makes sense to have some control in your control framework that relates to this overall topic of people management–the topic of who you are, and how we monitor what they are doing, that you may make sure you have the people that you want to in your business, and you could, of course, call it something different.  You don’t have to call it trusted roles, but I personally don’t see this concept as very restrictive so it ultimately depends on how you define it in your context, whether your circle of trusted roles is a small group of people or a large group of people. If you lay that out the right way, you could extend it to comprise everyone you want it to.

Tim H.: I’ve seen different approaches being used in practice where there are 2 or 3 trusted roles, and I’ve also seen where they’ve literally defined every single person at the company to be a trusted role, and they get around it that way. I like keeping the trusted role because the other component in addition to the background checks is that there has been appropriate amount of training and that people know what they’re responsible for, and things like that.

One of the key things that having a trusted role process provides is it prevents just ad hoc assignments of duties to just whoever happens to be closest and convenient, which is something I think you want to avoid. You want some degree of rigor around who is actually assigned to a role and what their responsibilities are, and did they have adequate training and background checks to fulfill that.

The trusted roles as they’re currently defined vaguely give you the opportunity to have a good trusted role process. The current requirements do not require anything even close to what you would have to require if you wanted to insist that everybody has to have that process.

And I think that’s one of the reasons why you can get away with a lot of these ways of circumventing the trusted role requirements just by declaring everybody to be in a trusted role because if you look at what requirements we actually have around trusted roles, they’re very vague and weak to the point that they can pretty much just implement whatever they want and then claim that it’s compliant, which, if we’re going to fix anything, we should probably fix the trusted roles to have some teeth and actually,  you know, protect the things that we actually want protected. Currently. I don’t think the requirements as written, provide much value at all.

Paul: I think one reason that you can in one company define everyone as a trusted role and in another company not, has to do with regulations. In many countries there are regulations on what type of background checks you can do, but they depend on what type of role that person is fulfilling and the impact it could have to the business. So, having the definition of a trusted role with an actual description for why that role is important and needs to have a background check helps those organizations fulfill their legal requirements.

Tobias: Where is this background check coming from anyway?

Trev: It’s not in the Baseline Requirements because it’s a blank section.

Ben: It’s in other CA industry requirements.

Tobias: But in our framework, I would say that trusted roles seems to be everyone who interacts with CA systems on more than an auxiliary level.

Ben: I have 2 comments. When you have a trusted role, you further define them as CA administrator, RA officer, auditor, etc., and they can serve in one role, but they can’t serve in the other, and then it becomes difficult to manage those persons and what they do. Along the lines of what Trev is saying, maybe it complicates things. And your ability to do the work that needs to be done because, you know, this person, you know, can do this, but they can’t do that, etc. And many CAs have different definitions of trusted roles, but these different models are based on the original CA security profile from back in the 1970s. The other comment I’ll mention is that in the US federal PKI there was a requirement that   only a U.S. citizen could be in a trusted role. And that really created a lot of problems because then you have different PKIs run by the same CA operator, and then how does that person that is from India or Australia or wherever, interoperate with the rest of the company. You’d have to put up a Chinese wall.

Tim: That’s an issue for CAs that operate with staffs that are relatively small. In some there’s only so many people–a number that you can count on 1 or 2 fingers as the number of individuals that can actually successfully accomplish a particular role. So the role definitions aren’t so much roles. They’re just identifying the handful of employees who are actually capable of handling these highly trusted, highly technical roles and the people define themselves, right? Whereas at larger organizations, you have completely different problems.

Clint: I am going to add the trusted roles topic to the backlog, just so we have some of the conversation captured and can revisit it when we’re looking for stuff to do.

Ben: Section 5.1.9 – Review logical access control list at least annually and deactivate any accounts that are no longer necessary for operations.

Tim: When I read “review logical access control list at least annually”, I read that as review all logical access control lists, because otherwise it’s nonsensical. That leads to the question of how do I know what is or isn’t a logical access control list?

Ben: That’s a good point. We’re talking about offline CAs here, so you might have a universal password in an envelope, or something similar. So, it’s not like you’re going to be changing it or deactivating it. Does this make sense?

Trev: We should be implementing for the thing that we’re trying to accomplish. Do we want people to review who has access instead of reviewing the mechanisms?

Tim H.: What we’re really trying to say is review all personnel who are technically capable of accessing systems and deactivate their access if it’s no longer necessary.

Wendy: I would get rid of the term “access control list” and just make it access because if you’ve got an offline CA, there may be accounts on that offline CA, maybe individual accounts for individual trusted roles. Maybe you don’t bring the system up when somebody leaves, but the next time you bring it up and at least on an annual basis, you want to make sure that anybody has left has had their accounts removed.

Ben: What does it mean to review a user though? Isn’t it user accounts?

Wendy: Keep it separated between physical and logical. The logical would be probably accounts on the system. Whereas you’ve got already got it under physical because those may be the only people who can get into the environment in the first place.

Trev: Should we make a distinction because I imagine that some might do this purely physically and some might do it logically? It seems like you should review physical access more frequently than logical access. So I’m also fine with it being separate, but I think we deleted physical. I don’t know why we deleted 5.2.3 though.

Wendy: You get rid of their access within 24 hours.

Trev: That’s if someone leaves, but maybe they’re still there, but they don’t do that job, like if you promote someone and they’re too important to touch your CA anymore.  For section 5.2.3, to include someone who’s still working there, but is no longer authorized, I would create a separate section. I don’t see a hurry. You are eliminating access for someone that’s trained to do the job and was trusted to do the job, and their access could be removed on some schedule. You could replace termination, and I don’t think that you need to do that within 24 hours.

Paul: When their responsibility changes that doesn’t mean that they would no longer have access.

Trev: Last time Tobias brought up MFA.

Tobias:  Yes. My point is that I’m happy about MFA, but I’m not sure if it’s actually realistic in all cases, like system BIOS on the laptop that you connect to your HSM in an air-gapped system.

Ben: What if we say administer access to those components capable of MFA?

Paul: We also don’t want to downgrade it for someone to purchase a system that is not capable of multi factor authentication so that they don’t have to implement this. You could have a BIOS password and then a password to log into the laptop and then another MFA system to actually activate that machine. Also, I get the point that there is a potential risk here where you can’t implement this, but is that directly linked to the air gapped system because everything that is directly linked to the CA system? Maybe it comes down to the definition of what makes the CA system. I think it should have some form of multi factor authentication and we should not exclude that if that system would not be capable of MFA, then it is not the right system.

Tim H.: There’s another possibility here as an alternative to multi factor access. How do you prevent people from flashing the BIOS? Nobody can be left unattended in these rooms. We’ve already passed through three biometric authentication systems, and the multi factor control is the room itself. You don’t have to do it for every device in the room. So, the better way of handling these threats is instead of trying to figure out how to retroactively put multi factor authentication on every component in the room, just make sure that these offline systems are in an area where you’re not allowed to have single person access to anything.

Clint: Let’s give this some consideration and come back in 2 weeks to continue the conversation on this and some of these other topics.

Meeting adjourned.