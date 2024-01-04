---
aliases:
- /2023-07-21-minutes-of-the-f2f-59-meeting-in-redmon-wa-usa-6-8-june-2023-validation-sc-8-june/
author: Iñigo Barreira
date: 2023-07-21 12:20:00
tags:
- Server Certificates
title: Minutes of the F2F 59 Meeting in Redmond, WA, USA, 6-8 June 2023 – Validation
  SC (8 June)
type: post
---

# **Validation Subcommittee**

Date: June 08, 2023

Minute Taker: Michael Slaughter (Amazon Trust Services)

Validation WG Chair: Corey Bonnell (DigiCert)

**Introduction**

****

- Corey proposed not performing another roll-call. **– No Objections**
- Corey proposed approving the minutes from 5/18 Validation Sub-Committee sent by Chris Clements . **– No Objections**
- Corey provided update on progress made since Spring 2023.
- Corey recapped the discussion on issues with current language in EV Guidelines surrounding acceptable registration sources to address concerns raised by Pedro Fuentes about the suitability of QGISs to provide registration/incorporation information . Next step is to draft ballot and the discussion has now moved to server cert working group..
- Corey summarized the analysis of three certificate issuance workflows: “Bring your own host”, CDN Issuance and ACME. The analysis exposed multiple ways the BRs can be improved surrounding the delegation of pre-issuance activities.
- Corey reviewed the agenda for today’s working session.

**Update on Multi-Perspective Domain Validation (Ryan and Chris)**

****

- Ryan explained the origins of the MPDV working group and the progress the 20 participants have made since F2F 58. The current proposal calls for March 15th 2025 to be the point in time when multi-perspective domain validation will be required for all public certificate issuance that utilize specific domain validation methods. The plan is to share the draft ballot more broadly, collect feedback, work with the community and ultimately find a way for all to benefit from the new approach.
- Corey asked for questions. – **No questions.**

**Changes to the Subscriber Agreement requirements (Ben and Dustin)**

- Dustin provided background on the subscriber agreement and the terms of use. The original intent was that the subscriber agreement was not “legally” enforceable within an organization but Terms of Use might be enforceable within an organization depending on corporate rules. Across multiple revisions to the baseline requirements, those concepts started to merge together and now there is language in the BRs that states that both of them must be legally enforceable which is incorrect.
- Dimitris suggested that if you want to provide something equivalent then you would need to have another statement that says the CA MUST implement a process to ensure that each Terms of Use is enforceable against the applicant.
- Jeremy replied that if you make the terms enforceable then you are basically stating that CAs can’t issue their own certs. Jeremy continued to explain that the Terms of Use was added historically to support Wells Fargo and suggested that the terms can be consolidated to make them clearer.
- Ben suggested that you could phrase it as the subscriber has accepted or acknowledged the terms of use which Dimitris agreed with.
- Ben explained that historically, Wells Fargo couldn’t sign a legally enforceable agreement within an organization so the Wells Fargo legal department suggested introducing a concept called the Terms of Use as a path forward.
- Dustin suggested that we consolidate and have some language around enforcement and acceptance . Dustin presented some example language and asked for comment.
- Martijn read the definition of Subscriber Agreement aloud and asked if that definition already describes the terms of use.
- Ben replied that yes cleaning up the definition of Subscriber Agreement may have been missed when Terms of Use was added which has led to the current state.
- Ben provided more examples and suggested that the word “executed” should be replaced with the world “accepted”.. This change in terminology originates with the Validation Working Group discussion on how to better integrate the subscriber agreement into various certificate issuance flow.
- Dustin explained various forms of acceptance with different degrees of automation.
- Ben proposed that “if Terms of “Use aren’t ”legally enforceable“ what do we gain/lose from acceptance via a flag set on an automated certificate request?”
- Dimitris replied that I think we had a very nice discussion about one of these issues and restated that nothing is configured out of thin air and scripts are executed, configured and/or created by humans.
- David agreed and added that someone must have configured the system. David went on to say that is the nature of how software works on the modern web. There is very clear consensus that implicit agreements are legally enforceable as long as someone configures the system and would take the logged consent as valid.
- Dustin replied that if you have automation via a true or false flag, there is no mechanism to force the user to actually read or view the agreement as they would have with a click-through on a website
- David replied that it would depend on if the ACME workflow. was the only place that a subscriber or applicant can view the Subscriber Agreement. As an example, his CA hosts the document on the website.
- Dustin asked if the Subscriber agreement is on a website could the user accept it once when registering an account or is it something that must be done with each request.
- Martijn commented that if it’s done automatically by script then someone has written the script. We have to be careful about accepting the agreement since a developer might say “yes” without understanding what exactly they are agreeing to.
- Tobias added that this sounds like a legal question and we should ask an expert. What we need it is to be binding and whether a human is required is a secondary question
- Trev asked for clarity on what problem we are trying to solve? I don’t think people want to do it for every certificate and frankly that is just not going to happen. As we have discussed in the validation committee, we need to build this for the automation use case who are going to just accept the agreement. When you pick a CA you pick a business so must subscribers will have expected the subscriber agreement to have been agreed upon during account registration or set-up.
- Trev went on to ask why is there even a need for Terms of Use? What is that we are asking the auditors to actually check? Reporting compromise for example is more commonly considered a security policy.
- Jeremy: In my experience, they do check for an agreement for each certificate. Having the consistency and agreement is important.
- Ben: One agreement can serve for multiple certificates but I do see your point Trev. What are we trying to solve by having this requirement? Revocation is a security requirement. How do we know that a different party will follow a security policy that is not your own?
- Jeremy added that one of the reasons that we have this policy is to prevent any CA from using customer expectations as a reason for slowing down progress.
- Dustin: Couple of things: Look and see if we can we merge terms of use and subscriber agreement and modify language to clarify legal enforceability? It is up to the CA to determine how often they want the subscriber agreement to be agreed to.
- Dimitris concurred with Trev that there are some parts of the BRs that make more sense to a subscriber account but also called out that we have section 9.6.3 that has specific clauses for each individual certificate. Dimitris added that we could be ok with one subscriber for a customer that covers multiple certificates but we will need to review and update the entire baseline requirements document for consistency.
- Trev noted that the take-away from today’s discussion is that the conclusion of the meeting is that we believe it is possible that acceptance can be accomplished with automation.
- Jeremy suggested that the topic should be moved to the Server Cert WG instead.
- Dustin and Dimitris agreed that the topic should move to the SCWG.

**Discussion on Applicant Delegation of Domain Validation (Corey) 2:26**

- Corey introduced the topic of application delegation of domain validation. This specifically describes when an applicant wants to assert control of a domain name on a certificate, they have to use an underscore prefixed domain name called an authorization domain name that is delegated to another domain name where the controller has added a TXT record that contains the random token used for domain validation.
- Corey noted that this could be done for HTTP validation using HTTP Redirects but most often applies to DNS validation. The domain owner has a mechanism to opt-out by removing the CNAME record.
- Corey then recapped the history of the topic. (Links are in slides)
- Jeremy added that it looks likes the customer has put the order in. If you go too far in enforcing who is taking an action then the validation action resembles OV more so than DV.
- Corey reviewed the conclusions from the discussion within the Validation Working Group. 1) Clarity is needed. 2) Applicants generally delegate the performance of many aspects of operating a website. 3) If done correctly, delegation of domain validation boosts agility and automation. 4) There are reasonable interpretations of the BRs that such delegation is allowed today.
- Clint suggested that based on the fact that clarity is still need and that there are differing interpretations of the BRs on whether or not the practice is allowed, we should first establish that clarity before implementing an interpretation of the current BRs.
- Tim responded that the ship has sailed on that as there is already wide spread interpretation that the practice of delegating domain validation is allowed and has been adopted by some parties.
- Paul asked if this would allow for a CA to allow applicants to add a record and continuously issue certificates until the record is removed and wondered if that is indeed the case then are we doing any validation at all?
- Corey responded that one thing that was raised in the context of these discussions is that there are numerous service providers that already provide this service for ACME.
- Jeremy added that the problem already exists for dangling CNAMEs and having a fictitious legal entity doesn’t alter that. Unless you are paying very close attention to the Mozilla discussions you would not have thought this was prohibited which is why we need to get it fixed.
- Wayne questioned whether we actually know people are doing this.
- Jeremy responded that we know that something like CNAME based delegation is happening but agreed that we don’t if the exact scenario under discussion is happening.
- Trev responded to Paul that this is still validation and if a subscriber didn’t want certificates issued any further could they not stop paying you and opt-out.
- Corey asked the group for next steps towards addressing the ambiguity.
- Paul suggested that domain delegation would benefit from some rules that bind a certificate request and validation to an account and asked if that needs to be a requirement.
- Martijn agreed with Paul that there should be rules around the practice and suggested that account locking are probably the best ones to consider. Martin also suggested that limiting it to TXT records may be better but conceded that we may need to support both.
- Jeremy brought up Cloudflare as an example explaining that they are not a CA but they have their customers insert a CNAME that points to a location where they have inserted the random value. Cloudflare is not a CA but if they became a CA would they have to change their practice? That is the inconsistency that is being removed through this effort. We have landed in a place where you would need two separate legal entities to implement this in a fully supported way that does not provide any security value.
- Tim recommended that everyone review the validation subcommittee minutes from the Fall of 2021 where account considerations were previously discussed and that we have gone back and forth over the past four years on this topic.
- Paul added that he was less concerned about the Cloudflare scenario but rather a scenario in which a CA with multiple customers is delegating to itself. Paul then offered that having a customer being able to issue a certificate for a domain they do not control is a security concern. Paul continued that account binding may not fully address the problem because the account could be used by a service provider.
- Corey responded to Paul that the security concern he raised has been discussed by committee and relate the type of guard-rails that still need to be written.
- Clint added that he agreed with has been said at a high level but thinks that if we are going to make this a formal practice then we need explicit changes made to the BRs to define this method and establish a reliable security framework around it. Mechanisms such as account locking and MPVD would be a part of that story as well as addressing domain validation reuse or DNS configurations like TTLs. There are also considerations around domain expiry. Clint continued that because this is a fairly large paradigm shift, we should perform a risk analysis and take the time to fully understand the security boundaries.
- Trev reminded the group again that customers can do this today with a 3rd party and are doing this. CAs are audited and have other mechanisms and controls that third parties may not. We can put some security rules but we need to be careful not to put in so many rules that make this practice, that customers are already doing, so burdensome for CA that they consider it not worth implementing.
- Wayne commented that if a CNAME can be delegated to a CA and then the CA can generate a random value and stick it in the CNAME then that would basically be security theater. Wayne then suggested an alternative approach of creating a new domain validation method “21” where an applicant can clearly state that they are allowing issuance from a particular CA and account. That approach would make a lot of the nuance go away and would result in more clarity.
- Paul agreed with Wayne and suggested that CAA records with account URI binding would make sense to use as another mechanism. Paul also added that introducing an account specific CNAME record delegated to the CA would be clearer as another domain validation method.
- Trev disagreed with Wayne that delegation amounts to security theater adding that the subscriber still has to set up the CNAME so they are still opting into it.
- Clint added that there is a difference between an opt-in signal that is explicit for the purpose we’re intending and one where the customer is setting up a CNAME record that they may not understand the implications of. He continued that we need to ensure that the domain owner has full understanding of what they are doing and what they are empowering the CA to do.
- Trev agreed with Clint and added that Wayne clarified to her off of the mic that the security theater part he was referring to was the random value token part.
- Tobias disagreed that the random value is security theater because it ensures that the CA doesn’t have diverging perspectives of which domains are under its control.
- Michael asked if we were still talking about whether DNS validation is allowable under Method 7. Michael then commented that delegated DNS domain validation performed under method 7 would mean that an applicant still has to initiate the request, the domain owner has to take an action to approve the request and a CA cannot arbitrarily create certificates on behalf of applicants.
- Corey agreed with Michael and suggested taking a more surgical approach to improve method 7 and make it explicit that the practice is permitted while adding necessary security constraints. Longer term the group can explore the ideas introduced by Wayne and Paul and work on an alternative method. Corey suggested that bifurcating the conversation would allow us to make progress sooner on the more pressing need to clarify the current practice.
- Tim agreed and posted the ballot text **[1]** that was circulated in December of 2021 related to account locking.
- Corey suggested using that text as the starting point for the ballot to add the clarity that is currently missing.
- Ben added that he was also in favor of that approach. He asked if we need a straw poll to decide if the group should focus on refining method 7 or introducing a new domain validation method.
- Dimitris commented there are multiple ways to signal delegation including CAA, TXT and CNAME if we first agree that we can delegate.
- Michael agreed with Dimitris and added that he thinks a two-track approach makes the most sense.
- Clint added that if we get to the point where we have a well-defined validation method for DNS delegation then we should look at deprecating or removing the less defined mechanism. Clint also asked for more clarity and examples on what CAs are actually doing with the goal of better understanding the risk these third-parties pose to the eco-system.
- Wayne answered that the core risk that is currently unaddressed is if you do the CNAME delegation without binding it to an account then you’ve created a very insecure validation system and the need for that account binding isn’t currently specified.
- Corey concluded the meeting by recapping the next steps. We will be taking a two prong approach by leveraging Tim’s language as the starting point for a short term ballot to clarify the current system. Longer term the group will be exploring different validation methods to further enhance automation capability.
- Tim will be leading the next validation working group call on 6/15.

**Meeting adjourned.**

****

**[1] [https://lists.cabforum.org/pipermail/validation/2021-December/001734.html][1]**

****

[1]: https://lists.cabforum.org/pipermail/validation/2021-December/001734.html