---
author: Dimitris Zacharopoulos
date: 2025-06-11 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 65 Meeting in Toronto, Canada - SCWG, June 11, 2025
type: post
---

# SCWG Minutes on Day 2 Wednesday, 11 June 2025, of the F2F 64 Meeting in Toronto, Canada

## Attendance
Wayne Thayer (Fastly), Dean Coclin (DigiCert), Tim Callan (Sectigo), Enrico Entschew (D-Trust), Andreas Henschel (D-Trust), JinHwan Shin (Deloitte KOREA), Masatoshi Shigaki (KPMG Japan),, Brian Hsiung (Sunrise CPA), Adam Frock (BDO), Yannick Thomassier (Certinomis), Tadahiko Ito (Secoom), Fumiaki Ono (Secom), Chris Clements (Chrome), Ryan Dickson (Chrome), David Adrian (Chrome), Josselin Allemandou (Certigna), Romain Delval (Certigna), Chad Dandar (Cisco), Ben Wilson (Mozilla), Tim Crawford (WebTrust/BDO), Chris Czajczyc (Deloitte), Scott Rea (wMudhra), Rebecca Kelley (SSL.com), Leo Grove (SSL.com), Luis Cervantes (SSL.com), Eric Cramer (Sectigo), Martijn Katerbarg (Sectigo), Nick France (Sectigo), Henry Lam (Sectigo),  Tsung-Min Kuo (Chunghwa Telecom), Jay Wilson (Sectigo), Rob Stradling (Sectigo), Karina Goodley (Microsoft), Lora Randolph (Microsoft), Matthre McPherrin (Let’s Encrypt), Arnold Essing (Telekom Security), David Hsiu (KPMG Taiwan), Christophe Bonjean (Globalsign), Eva Van Steenberge (Globalsign), Gregory Tomko (GlobalSign),, Tim Hollebeek (DigiCert), Brianca Martin (Amazon Trust Services), Trevoli Ponds-White (Amazon Trust Services), Michael Slaughter (Amazon Trust Services), Aaron Poulsen (Amazon Trust Serivices), Jeremy Rowley (DigiCert), John Sarapeta (Google Trust Services),Nicol So (CommScope), Sandy Balzer (SwissSign), Jaime Hablutzel (WISeKey), Atsushi Inaba (Globalsign), Llew Curran (GoDaddy), Rollin Yu (TrustAsia), Jieun Seong (MOIS), Jozef Nigut (Disig), Kateryna Aleksieieva (Certum), Corey Rasmussen (OATI), Michelle Coon (OATI), Kate Xu (TrustAsia), Eric Hampshire (Cisco), Hisashi Kamo (Secom), Steven Diette (GoDaddy), John Mason (Microsoft), Pekka Lahtiharju (Telia), Tobias Josefowitz (Opera), Xiu Lei (GDCA), Aaron Gable (ISRG), Nate Smith (GoDaddy), Quan Nham (Fastly), Huang Nome (TrustAsia), Masaru Sakamoto (Cybertrust Japan), Renne Rodriguez (Apple), Rich Smith (DigiCert), Li-Chun Chen (Chunghwa Telecom), Masaru Sakamoto (CyberTrust Japan), Roman Fischer (SwissSign), Wendy Brown (FPKIMA), Hogeun Yoo (NAVER Cloud), Zurina Zolkaffly (MSC Trustgate), Clemens Wanko (ACAB'c / TUV AUSTRIA), Paul van Brouwershaven (SSL.com), Jos Purvis (Fastly), Eamon Zhang (TrustAsia), Peter Miskovic (Disig), Marco Schambach (IdenTrust), uis Osses (Amazon Trust Services), Matthias Wiedenhorst (ACAB’c), Jun Okura (CyberTrust), Nargis Mannan (VikingCloud), Adrian Mueller (SwissSign), Thanos Vrachnos (SSL.com), Hazhar Ismail  (MSC Trustgate), Adriano Santoni (Actalis).

Dimitris kicked of the meeting, read the anti-trust statement and assigned minute takers for the main discussion topics in the agenda.

Regarding Minutes and membership:

 * the minutes of the April 10, 2025 Teleconference are still pending
 * the minutes of the May 22, 2025 Teleconference were approved.


Dimitris provided a summary of WG work since the previous F2F meeting.
    
Ballot overview:

 * SC081 passed

 * In discussion:

    * DNSSEC for CAA and DCV Lookups. Clint confirmed no further discussion during discussion period. Voting will be opened.

    * Sunset for address and routing parameter area names. Currently in discussion period. Feedback from ICANN (interested party). Concern about of scope of ballot. Result: modified ballot with smaller scope. Re-evaluate once there's a new RFC. Not voting on 

 * Under consideration

    * CA assisted domain validation

    * Validation method in TLS certificates. Bring to more active discussion, relatively soon.

    * No updates

    * Registration number improvements for EV Certificates. Waiting on the other ballots.

Other updates:

 * Effective dates:

    * July 15th, restriction on validation methods

    * September 15th: enforcement MPIC requirements

New TLS BRs Version (2.1.5), no new EVGs version

87 Open Issues

 * Call for volunteers to clean up and triage

 * Corey Bonnell (Digicert): the validation working group uses the Github issues to track progress.

Slaughter: is the progress documented?
Dimitris Zacharopoulos: Couple of pages that aren't verified completed.
Slaughter: Any work on this front would be

Ryan: Could put their notes on the Wiki.
Dimitris: Review of the specific documented flows. 
Ryan: Could be useful for future proofing.
Wayne: There's a working doc, working to get it published

The WG started discussing the main topics.
    
# OCSP deprecation: Is there any noticeable impact in removing OCSP locator URI in subscriber certificates?
## Presenter: Wayne Thayer
## Minute taker: Eva
## Minutes: 
    
Wayne Thayer (Fastly) shares his experience, that they removed the OCSP AIA extension, but circumstances triggered an incident were rather specific to Fastly (relating to the automating of the test websites - there was a dependency on OCSP). No other noticeable effects, but narrow sample of base.

Trev (Amazon Trust Services) shares that the feedback from Subscribers is that they are adamant about not removing it. The reason seems to be that NIST has a requirement to check the certificate status prior to use. NIST base programs often have a requirement to check revocation status, and use either CRL or OCSP. Sometimes it's not a program requirement: for example, some Subscribers want to check the certificate status to check for key compromise. She points out that OCSP related requirements don't need to be in the BRs, could just be a customer incentive. 

Matthew McPherrin (Let's encrypt) explains that they removed OCSP from certificates about a month ago. They've seen a big spike in CRL traffic and a matching drop in OCSP traffic. They haven't heard of outages - some questions did come up following some error messages. Some tests and monitoring scripts were impacted, but nothing beyond that. Interest in Mozilla's CRL light approach to check revocation status, rather than checking CRLs.

Aaron Gable (Let's encrypt) shares that they received two kinds of feedback: 

 * Preference based: OCSP stapling is best revocation checking method. However, no feedback that systems failed to work, just complaint about degraded revocation notification.
 * Second group: some people use cURL on the linux command line and were wondering how they could receive revocation information without downloading the CRL. These people would really like to have a CRL light approach to be built in.

Participant shares that Subscribers request to slow down OCSP removal,  to ensure support for end-clients is sent out.

Dimitris asks if there are any regulatory challenges? Confirmed that there are none for eIDAS or ETSI, as it is currently an either or.

Wayne summarizes that the fundamental concern doesn't seem to be about breaking customers, but about changing assumptions about OCSP being available. In that light, Dimitris poses that stapling is going to cause a soft fail, rather than throw up a hard error so no immediate concern if that's what the subscriber does.

Trev asks what the next steps are.

Dimitris says that the feedback has been useful and that CAs can decide if they should move away from OCSP. Reminds the audience that OCSP is already optional today. 

Jeremy Rowley (DigiCert) expresses that OCSP is optional, but if implemented incorrectly, there's an incident. Asks what the added value is of having OCSP, especially since the browsers don't use it?
Clint Wilson (Apple) confirms that Apple checks OCSP in addition to other mechanisms. It is therefore still very much used today, but there's a desire to look to transition away. He also specified that OCSP is not a required revocation status check.
Trev asks if it's not required, then why have requirements.
Clint states that the requirements are on how to do it, if you're doing it.
Trev asks if this needs to be enforced in the BRs. She wonders if customers want working OCSP, then wouldn't the rules on how to operate an OCSP responder be a functional customer demand thing?
Clint explains that since the OCSPs are being operated, they still need to be operated correctly. Consistent behavior is important, and if not enforced via the BRs, it can be enforced via Root Program as well. 
Aaron expresses that if customer demand would then dictate OCSP's shape and behavior. For example under this premise, if the customer wants a response validity of more than 398 days, if there are no BRs, what would stop the CAs from doing that?
Trev clarifies that he complaint from customers is usually the opposite. Customers that care about OCSP think that the requirements specified are not strict enough.
Martijn Katerbarg (Sectigo) highlights that the Baseline Requirements are exactly that, Baseline, so CAs can always do better. 

Wayne wonders if removing the OCSP option could impact other areas. Asks if there is something in the EV Guidelines, a revocation checking requirement, this needs to be revisited as well.

Ryan Dickson (Google Chrome) confirms that Chrome stopped relying on OCSP for this.
Participant (Microsoft) confirmed that Microsoft uses OCSP first, CRL after.

Final comment: See if other CAs are going to continue the trend of deprecating OCSP. If there's many CAs that no longer have it, that can drive changes to BRs as well. It would be good to have some telemetry. But for now, keep things as they are.

# Discussion about removal of clientAuth KeyPurposeId
## Presenter: Dimitris Zacharopoulos
## Minute taker: Nick France
## Minutes: 

Dimitris introduced the topic saying that he originally did not plan to have this topic at this F2F because it was covered at the last one. We’ve received recent feedback from the public, subscribers, and relying parties that created issued #599 on our GitHub repository. 

They brought up several use cases where clientAuth is still being used and it would have an impact if it was banned or forbidden from the TLS BRs. We don’t have a ballot, but it’s Dimitri's preference to have this change in the BRs so that there are less exceptions. He asked if anyone has feedback for the comments received.

Ryan prefaced the Chrome Root Program perspective as its sole responsibility being the protection of billions of users who rely on Chrome to browse the web. Our only PKI use case when serving that need is serverAuth. The GitHub issue was opened a few days ago, but a few weeks ago the conversation originated in the Let’s Encrypt community. The high level summary is that there are a few very vocal individuals who are concerned about clientAuth deprecation. As we stated in the last F2F meeting, we purposefully did not move forward with adopting the requirements in the TLS BRs b/c we know there are PKI use cases currently being served by the TLS BRs and despite the fact that we might have agreement that the name of the working group could be confusing or that the name of the TLS BRs could be misleading - people are using these certificates and they are relying upon them actively. There is no intent to harm those users from our perspective. 

We discussed at the last F2F that there is an absence of a working group that is intended to serve this use case. It sounds like Jeremy has some homework to think more about what we might do for the TLS BRs to solve this.

It also seemed like past discussions surrounding SC-081 we had consensus for how we interact with members of the community. It seems like for the most part the opinions provided are pretty rigid and the main concern that was identified is that by sunsetting clientAuth, Jabber or XMPP use cases could break. Not reliably, but could break. Some members in the discussion were quick to call out that there are alternative solutions and that they are not using Let’s Encrypt services in ways that were not intended. We’ll make no comment on whether that is right or wrong, but simply that this feedback was presented. We do want to thank Matthew and Aaron for engaging and pointing the community in the right direction. When it comes to Jabber and IM services, these are use cases that are exclusively and expressly defined in the start of the TLS BRs as not being in scope of the document. 

Beyond all of that, it's still not clear why this use case cannot be supported by members of this community. We believe there is an opportunity to do that. We understand that root programs have different requirements and different use cases that they support. Apple for example has unique requirements just for clientAuth.

We think it's important for everyone to be heard and we understand that when we make changes to our policy there is a very real impact. We’re empathetic to that. We feel it. This helps guide our response to future issues. But in this case, the views seem very rigid, and suggest that anything other than the status quo where we have mixed use certificates is unacceptable. It’s not clear how we move forward from that perspective with the security goals we have for our users. Ultimately, this group does not exist to keep security at the same level. We exist to move things forward. CAs can still serve their customers. It might require an evolution but it doesn't have to be the breakage that's described. It’s not clear where we intend to take this conversation, but we need to move forward. We need to commit to a direction and take action because just talking about these things over a period of 10 years - when we know there is a problem we should solve it. 

Aaron, thanked Ryan for the succinct summary. He would characterize the discussions that have been happening on #599 and the Let’s Encrypt forum as arising from the intersection of three different issues:

1- the people making these complaints are somewhat inflexible in their views into how authentication between server services can happen. As Ryan said, the Jabber protocol has alternatives other than mTLS with a clientAuth certificate. There is a thing called dialback that many Jabber servers do have configured already. So they could adopt these other authentication mechanisms that already exist but they don’t want to for a variety of reasons, whose validity he cannot speak on.

2- although the changes to the Chrome Root Program do not forbid CAs from issuing clientAuth certificates, Let’s Encrypt does not feel like they have the bandwidth to operate a separate clientAuth hierarchy. They made the decision to remove clientAuth from all of their issuance. This was not a requirement. It was a decision they made. The consequences of that decision are reflecting back on Let’s Encrypt, Chrome, and the CA/Browser Forum because not everyone has a complete understanding of how these decisions are made.

3- theres not really a separate trust store specifically for clientAuth. This dovetails with the other discussions we’ve been having like - does there need to be another set of BRs for non webPKI use cases for servers that need to do TLS that are part of the internet but not part of the web. One of the complaints that keeps coming up in these discussions is - well we can’t use a private PKI because we’re out in the public - this is a bunch of random Jabber servers that need to federate with each other - we all need to trust something and the root programs have already done all of the necessary vetting to decide who we should trust and so we want to piggyback on top of that. This is a perfectly reasonable stance. Piggybacking of the good work that root programs do, makes sense.

Because of this set of three things, there's not a well established ecosystem of these are the roots you trust specifically for clientAuth, some people are inflexible about not being able to move away from mTLS with clientAuth EKU, and Let’s Encrypt in this particular case (and other CAs that have announced the depreciation of clientAuth from their hierarchies) does not feel like they have the bandwidth to operator parallel hierarchies. Fixing any one of these three problems would resolve the comment thread. Fixing all three of these would be great. 

Jeremy suggested there is no dedicated root store for clientAuth, which is leading to the confusion. 

Dimitris stated that Microsoft and Apple do have clientAuth key usage that they use, but people have been used to the Mozilla process. Mozilla doesn’t have a separate clientAuth usage. 

Jeremy suggested that people are familiar with TLS, email, and code signing root stores and now there is a fourth for clientAuth that needs to be accounted for. 

Aaron clarified that per the Chrome Root Program Policy it would be perfectly acceptable for Let’s Encrypt to issue new serverAuth only roots, submit those roots to the Chrome Root Program and continue using their existing server and clientAuth roots in the Mozilla, Apple, and Microsoft programs. They would have two hierarchies, one that is serverAuth only and included in Chrome and one that is server and clientAuth and trusted everywhere else. The subsequent required operational dependencies is what Let’s Encrypt felt like they don’t have the resourcing to perform.

Trev suggested that people shouldn’t be using these certificates in these ways. Their preference would be to submit new roots and pull the old ones out but there isn’t enough time. You have to choose what you can do with the time that is allowed. The problem is ubiquity and we don’t have enough time to establish ubiquity for new roots if you want to go that route. This is like when you ship something and you say “We should add these things but we didn’t. Maybe we’ll fast follow or add these things later.” That’s less likely to happen because if you didn’t do it at launch you're less likely to do it because your impetus has gone down. 

Dimitris suggested a proposal outside of the Chrome Root Program Policy, having a serverAuth hierarchy and allowing a technically constrained sub CA that is only issuing clientAuth certificates under that root. Would that be an acceptable solution to this issue? It would only issue clientAuth certificates but it would assist all the different use cases that are embedding these roots with the same mechanism that they have today. 

Ryan stated the immediate reaction is that we’re not interested in this. We’ve debated whether or not the idea of a technically constrained CA through the application of name constraints or EKU and while the BRs note the concept today I think we have an open GitHub issue to define it better. Technically constrained CAs today have a potential loophole with checking CAA, where contracts can exist where CAA does not have to be checked and that feels awkward. We can think about it some more but not all clients relying on these certificates possibly understand name constraints. 

Dimitris clarified that he is only suggesting EKU as the technical constraints. 

Ryan stated that today, the BRs prohibit issuing a certificate that only contains clientAuth. It’s odd that we have a prohibition on clientAuth, yet we would then still allow it to be issued and allow certificates under the guise of being TLS server authentication certificates to include clientAuth. Earlier comments suggested there should be a root store for client authentication. What would actually be put in there and what enterprise that is looking to use reasonable security controls, like the principle of least privilege would add. Adding every CA possible does not make sense. This is just an odd paradigm that we want a root store that is an open net of every possible CA. 

Trev stated Mozilla wrote a blog post about the intended use of its root store. 

Dimitris suggested that the BRs allow a technically constrained non-TLS sub CA, so you can have a clientAuth sub CA. You just can’t add the serverAuth EKU. 

Ryan countered that those CAs would be out of scope of the TLS BRs and sounded complex. 

Dimitris recalled the history, where before the profiles ballot, section 7.1.5 was very confusing because it did include EKU restrictions but also name constraint restrictions. It is okay to have a clientAuth only sub CA under the current BRs. Dimitris wants to find a solution for the folks that are using the root stores of Mozilla and the server capable roots to use it in different non-browser use cases including the clientAuth EKU. 

Ryan suggested this is still problematic because in the TLS BRs we describe the profiles that are relevant to these sets of requirements and then we say every certificate the CA issues has to conform with one of these profiles. It’s not clear where this clientAuth only certificate would fit in or what OIDs it would assert and it might not be as simple as being described.

Martijn stated that yes, currently, the TLS BRs allow it but the Chrome Root Program Policy does not allow the issuance of this sub CA. 

Dimitris is trying to find a way to merge the two. We could pass a ballot that all of the TLS sub CAs must not have clientAuth under them and then we’ll be uniform. 

Nick wanted to echo what Ryan said and go a bit further. You should not do clientAuth in public roots. It’s a bad idea. Trying to find some kind of workaround to how we do it is just encouraging people to continue to do bad things. Speaking from fairly recent experience having acquired another CA, fixing problematic practices at scale is horrible. There are huge things that will break and again Ryan, I don’t understand why we're trying to find a workaround to something people should not be doing. What are you authenticating with a public service / clientAuth certificate - that someone's got a credit card and $50? If you have a separate trust store for clientAuth, you’re going to have to go and tell your system to trust these. Why not just use a private CA where you have full control? If you’re not really authenticating anything and you’re then using a public CA, then you’re beholden to these types of changing requirements that you don't have a say in forming. Instead of trying to find workarounds, sometimes you have to break things to encourage people to do better. We’ve tried the carrot for 22 years and failed. 

Trev asked what is the definition of a public root? Nick suggested it's anything that you don’t create yourself as an organization relying on certificates for client authentication. There are inbetween's like X9, but he would call it an ecosystem CA. If people want to rely on something like X9 great, you still have to do something to trust it. 

Dimitris pointed out the last comment in #599 where there are some cloud providers that are using these certificates for API gateway access. It sounds like a legitimate use case. It’s not like it's bad all over. 

Slaughter responded to that particular comment stating they followed up with that team and it's a documentation error. It is not indicative of a clientAuth package. A separate email was sent to Dimitris with details.

Bruce stated that one of their solutions to solve the problem was to create new clientAuth roots. They never really had any pushback from customers for having a non-embedded, non-trusted root. The one thing is that when an organization is allowing clientAuth into their services, and this other company is getting certificates, they would like to see that the root is “trusted” and the only way they know it is trusted is if it's embedded in an OS or a browser. This is a flag for them, but it doesn’t need to be there. How do we make sure that someone indicates that somehow this root is trusted? Making your own CA is a problem when you have a collective of Subscribers because then you want an RA. That’s what CAs do. When the community is more than one you need that RA to cover that. It depends on what your customer wants. If all of the CAs had a WebTrust CA and the equivalent ETSI and had a clientAuth profile then you’re probably 95% there. This doesn’t add much to what we’re already doing. 

Aaron stated that in the Let’s Encrypt community forums:

1- for reasons that are still slightly unclear, some of the people that are upset are specifically unwilling or unable to work with clientAuth only certificates. For reasons that are unclear, they say that they require certificates that act as both server and client certificates. 

2- one of the things said multiple times was “but we already trust Let’s Encrypt, we just want to keep using Let’s Encrypt”. The barrier to their entry is that they don’t want to set up new private PKIs. They want to piggyback on preexisting trust. But, they also don’t appear to understand that if Let’s Encrypt did create a new clientAuth only hierarchy, no root program is going to accept that. 

Clint responded that Apple would trust it. 

Dimitris suggested Microsoft would too. 

Ryan suggested that a lot of different individuals from multiple organizations have responded on thread with a variety of solutions, but none seem to be good enough for a small number of very vocal individuals. 

Tim H. stated that there is a fundamental misunderstanding by people not in this room, that if something is trusted for X and you want to use it for Y, a really good shortcut is to just use the thing that’s trusted for X and you get the same governance and oversight. You don’t. People have been trying to make these arguments for a decade. We have to go forward, we can’t go backwards. We can’t do the same thing. 

Karina pointed out that Let’s Encrypt is free and a lot of the commenters might be concerned with having to pay for certificates. It’s easy to complain about a free product being less than what you want it to be. There are CAs in this room that offer clientAuth certificates. There are products within Microsoft that use clientAuth and we can get more clear on this. From a browser perspective we’re still aligned.

Ben suggested that one way of closing out #599 is to say that it's not really the CA/Browser Forum that’s done anything. That these are the minimum requirements and other policies exist. 

Dimitris suggested that he’s attempting to balance the root store policies with the BRs. If it is an important issue for the Chrome team, his approach is to try and accommodate it in the BRs so that we don’t have deviations. We can easily respond and say that this is not a CA/B Forum issue, it's a Chrome issue. 

Trev said the other thing witnessed is that when you talk about cost - there’s trust and cost. We see a lot of people that functionally want 1-5 clientAuth certificates a year. Trying to move these people from “you were getting a certificate for free” to “we would like you to stand up your own private PKI” so that you can issue 1-5 certificates a year is less desired. A lot of this is driven by cost and convenience. 

Wayne asked the other root programs - as CAs try to adapt to this environment, is there any thought to requiring separate clientAuth and serverAuth hierarchies in the future? If there is, that would be a good thing for CAs that are going down this road of creating new roots to know in advance so that they can plan accordingly. 

Clint said that currently, the Apple Root Program allows for a clientAuth hierarchy that only allows clientAuth. If you’re doing serverAuth then they do currently allow for the clientAuth to be included in those certificates issued under a serverAuth hierarchy (similar to S/MIME). For years, Apple’s intended path has been to eventually drop clientAuth from being allowed in that serverAuth hierarchy. It’s been a bandwidth issue in getting that change in place. This has been the intent for a long time. At some point, this change will occur. 

Ben said similar to Apple, with the deprecation of clientAuth, Mozilla is in the same boat. Regarding a separate hierarchy, Mozilla is only interested in the serverAuth and emailProtection EKUs. 

Jeremy asked if Apple and Mozilla will follow Chrome and ban clientAuth from hierarchies in their programs. Ben suggested that it's not clear over time. 

Karina suggested that Microsoft is undecided. They’re okay with clientAuth remaining. There’s no plans right now in either direction for Microsoft. 

Tobias communicated that he just tested with openssl to see if it checks the EKU by default and he’s not convinced that it does. If openssl doesn’t check this by default, then any software that uses openssl, unless in the verified callback it checks the EKU specifically on its own, you can simply use a serverAuth only certificate for clientAuth. The Jabber server to server use case might not even be affected by this at all. This might be something to look into.
    
# Modifying the revocation requirements with an exception for CP/CPS discrepancies
## Presenter: Tim Callan
## Minute taker: Ben
## Minutes: 
 
### Remedies for CPS Errors
### Introduction and Session Focus
Tim Callan began by clarifying the scope of the session. He noted that while there had recently been community conversations around automating CPS monitoring and exploring the broader scope of CPS documents, those were not the topics he intended to address during the session. Instead, the purpose was to explore the recurring problem of large-scale certificate revocation events triggered by Certification Practice Statement (CPS) discrepancies—particularly where the practices followed by a Certification Authority (CA) were otherwise compliant with Baseline Requirements (BRs) and root program policies but were not accurately reflected in the CPS.

### Baseline Assumptions
Tim’s presentation outlined several foundational beliefs underlying the discussion. First, CAs must follow the established rules reliably and predictably, regardless of whether those rules are currently optimal. It is not acceptable for CAs to reinterpret or selectively apply rules, even when they believe an exception would lead to a better outcome. Second, proactive improvement of the rules is needed when flaws are identified, but until changes are formally adopted, the existing rules must be enforced. Third, difficulty doing something is not an inherent virtue when there is an easier way of doing it--while some challenges may be justified when necessary to achieve specific goals, unnecessary complexity should be avoided. Lastly, revocation should not be viewed as an end in itself. Rather, it is a powerful tool to accomplish specific goals, such as ensuring certificate quality or protecting end users.

### Understanding the Purpose of CPS and Mandatory Revocation
Tim reiterated that a CPS is meant to define the potential practices a CA may use, not necessarily to reflect every practice used in each individual case. CPSes serve as transparency and accountability tools, allowing external parties such as auditors and relying parties to monitor CA behavior. Importantly, CPSes should not be designed to make it harder for CAs to operate. Similarly, mandatory revocation for misissuance exists to preserve the quality of the certificate ecosystem and to ensure that certificates in circulation match declared and accepted practices. Revocation is not meant to punish CAs or subscribers, nor is it intended to coerce subscribers into adopting automation.

Several participants added to this understanding. One noted that the ultimate purpose of maintaining quality and compliance is to protect consumers. Another raised a concern that the slides omitted the role of security in revocation, citing scenarios where misissuance could result in impersonation of high-value domains, representing clear security threats. Tim acknowledged that such cases may not fall under the narrow definition of CPS errors but agreed that they deserve separate consideration.

### The Risk and Complexity of CPS Errors
Participants widely agreed that CPS errors represent a serious risk. A minor error—such as the accidental omission of a word like “not”—in a lengthy CPS can trigger mass revocation events, potentially affecting thousands or even millions of certificates. Unlike technical outages, CPS-related revocations lack straightforward rollback mechanisms. Multiple attendees emphasized that CPSes are written and reviewed by humans, making them prone to undetected mistakes despite best efforts. Further compounding the issue, frequent updates to the BRs increase the likelihood of introducing inconsistencies in CPSes.

The group reflected on incidents involving large-scale revocations, such as those impacting millions of certificates. There was consensus that these events are disruptive not only for CAs but also for subscribers and relying parties, many of whom suffer significant operational and reputational harm when revocations are triggered. There was a suggestion that CPSes be generated directly from CA system configurations and written and maintained on GitHub, reducing the risk of human error and misalignment between documented and actual practices.

### Proposal for an Errata-Based Remedy System
To address the problem, it was suggested that a formal approach be adopted for recording errata to CPSes. This system would apply in cases where CA practices were compliant with the BRs and root program requirements, but issuance did not align with what was described in the CPS. Under the proposal, a CA could document the misalignment publicly, transparently, and in a standardized format, without being forced to revoke affected certificates. Revocation would still remain an available alternative remedy.
This approach would improve continuity and service levels by reducing disruption for subscribers and relying parties. It would also retain the same level of operational transparency and accountability that current policies require. One participant likened the current practice of mass revocation for minor CPS errors to “burning down the right house” to correct a news report that gave a wrong street address for a house, and endorsed the errata process as a more reasonable and accurate alternative.

### Community Feedback and Concerns
Several community members supported the concept in principle but raised important implementation considerations. One concern was that relying parties may have relied on the CPS contents when using a certificate, in particular, the validation methods used and the CAA records checked. If the CA later corrects its CPS through an errata mechanism, a relying party wouldn't necessarily know, and there would be a gap in transparency because usually revocations serve as a form of notification, but without it, relying parties might not ever become aware of such discrepancies. Others also voiced concerns that relying parties might remain unaware of the errata, having relied on the certificate before the discrepancy was corrected. Suggestions included implementing a notification mechanism or other safeguards to ensure that relying parties are properly informed.

Others highlighted the need for objective, clearly defined criteria governing when the errata process can be used. Aaron warned that if such process is left to interpretation, CAs might delay revocation under a mistaken belief that their situation qualified, only to later learn it did not—resulting in both an untimely revocation and an incident report. Another participant echoed this concern, proposing that predefined criteria be codified and publicly posted in the form of a table or matrix, much like certificate profiles.
Wayne suggested that a simpler and more concrete criterion could be used instead and that it doesn't make sense to revoke a certificate if a nearly identical certificate (e.g. differing in serial number, SCts, and validity period) is going to replace it. He argued this framing would preserve security while reducing unnecessary disruption. Others, including Clint, expressed support for the errata approach but cautioned against the broader trend where CPSes include excessive detail. He questioned whether such granularity is useful or appropriate and suggested that the CA/B Forum, not individual CPSes, should be the place for documenting best practices.
 
Several participants acknowledged the need to distinguish between violations of the Baseline Requirements and deviations from a CA’s own Certificate Policy or Certification Practice Statement. This distinction was raised in the context of CPS errors and revocation timelines, with general agreement that not all nonconformities should be treated equally.  Consensus generally emerged in favor of splitting the structure of Item 12 in TLS BR section 4.9.1.1  and creating two separate revocation triggers—one for noncompliance with the Baseline Requirements, and another for misalignment with a CA’s CP or CPS. This would provide clearer guidance and allow more appropriate responses to self-imposed rule deviations.

### Alternative Interim Proposal
During the session, Dimitris offered an alternative interim proposal for consideration. He proposed that until a more complex and formal errata mechanism is developed—one that would involve CPS/CP attachments and structured updates—the CA/Browser Forum should consider introducing a third 90-day revocation timeline in the Baseline Requirements for deviations that result from self-imposed CPS rules stricter than the BRs.
This approach, he explained, responds directly to ongoing criticism from relying parties and security researchers who have expressed concern that CAs frequently fail to follow their own documented practices. The criticism centers on the idea that if the CA/Browser Forum believes certain rules are unreasonable, those rules should be formally revised rather than informally ignored or over-enforced. Dimitris noted that requiring revocation within 24 hours or five days due to a CPS deviation—when the actual practice was stricter than the BRs—is overly harsh and unreasonable.

As supporting evidence, he referenced prior in-person and online discussions, including a widely cited example involving Let’s Encrypt, in which a certificate was revoked due to a deviation of only one second beyond a 90-day validity period. Such cases, he argued, highlight the disproportionate impact of rigid revocation rules when they are applied to errors involving standards that exceed the BRs.

Under his proposal, a CPS deviation would still be treated as a public incident requiring disclosure, but CAs would have up to 90 days to complete revocation if the deviation stems from voluntarily stricter practices. This proposal does not eliminate revocation, but it offers a more measured and practical window to respond to certain types of nonconformance. The 90-day revocation timeline for CP/CPS deviations would be explicitly defined in the Baseline Requirements and reflected in the CA’s CP/CPS, and Relying Parties would have this information before choosing to rely on a certificate. This reduces the risk that they might later argue that the trustworthiness of a certificate was altered after the fact through a retroactive correction, as could potentially occur in the errata-based remedy system

While there was brief discussion about how often such incidents occur, it was felt that the number of cases affected would be small. However, Dimitris emphasized that even if only a few incidents are impacted, the policy change would send a positive signal and offer a “low-hanging fruit” improvement in how the Forum balances transparency, accountability, and operational flexibility."

### Broader Reflections on Automation and Ecosystem Burden
Throughout the discussion, many participants emphasized that revocation events should not be seen as normal or acceptable occurrences, but others said that revocation should not be seen as an “event”--the fact that subscribers see revocation as a major disruption signals a problem, but others said that while automation is a key part of solving this, it is not the whole solution. Others noted that simply threatening revocation does not necessarily encourage automation; predictable and scheduled timelines (such as shorter certificate lifetimes) are more effective incentives.

Concerns were also raised about potentially shifting burdens to relying parties, especially if the proposed errata process is complex or poorly communicated. While the group agreed the problem was solvable, they emphasized the importance of avoiding unintended consequences, such as undermining relying party confidence or creating parallel systems that are difficult to track.

### Conclusion and Next Steps
Tim concluded the session by inviting participants to speak candidly if they fundamentally opposed the errata remedy concept. The overall sentiment was that the problem is real, the current remedy (revocation) is too disruptive in many cases, and a better solution is both possible and worth working on.

The group did not finalize a course of action, but generally agreed that further work is needed. Several members expressed interest in forming a working group to draft and define objective criteria for using an errata-based remedy instead of revocation, creating process documentation and integration with the Bugzilla incident-reporting process, and proposing a CABF ballot to amend the TLS Baseline Requirements. 

Additional coordination with auditors (on audit criteria) and relying parties (on notification and transparency mechanisms) will be necessary to ensure broad stakeholder support.
   
    
# GitHub Issues Triage
## Presenter: Wayne Thayer
## Minute taker: Dimitris
## Minutes: 
    
Dimitris said that since the WG did a complete pass on all the open issues, things have been relatively "static". He suggested we work in reverse and use the remaining time of the F2F WG meeting as much as possible to make some progress.

Wayne pulled up the GitHub issues page, sorted by "last updated" with "oldest" shown first. Decided to skip the issued flagged as "validation-sc".

The following issues were discussed:
    

 * #252: Discussed about the various events in the revocation process (changes in the CA database, issuance of a CRL, publishing of a CRL, updating CDNs to serve the new CRL, etc) and need to make this information clearer in the BRs. Martijn said that there is some draft language he can dig up and we can clarify. Ryan and Chris had worked on it. Assigned to Martijn.
 * #438: Marked for clean-up. If Aaron's ballot for the Bylaws update is supposed to allow the Chair to fix incorrect references without the need for a ballot. Closed.
 * #181: Decided to close and Tim agreed. The industry is used to the QTIS and has survived for 5 years.
 * #187: The Qualified Auditor opinion described in 6.1.1.1 should be required for technically constrained subCAs just as it applies for unconstrained ones. Perhaps clarify this at the beginning of 6.1.1.1. A question was raised if that would have an effect on cross-certificates. Ben will check against the Mozilla Root Store Policy for constrains.
 * #254: Probably already addressed. Aaron will do another check and close if all concerns have been addressed.
