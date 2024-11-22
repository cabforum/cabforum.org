---
author: Iñigo Barreira
date: 2024-10-09 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-10-09 Minutes of the Server Certificate Working Group at the F2F 63
type: post
---

## Attendance

Aaron Poulsen (Amazon Trust Services), Abhishek Bhat - (eMudhra), Adam Jones (Microsoft), Ameya Chikodi (Amazon), An Yin (iTrusChina), Andrea Holland - (VikingCloud), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google Trust Services), Antti Backman - (Telia Company), Arno Fiedler - (ETSI), Arvid Vermote (GlobalSign), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi - (Microsoft), Brenda Bernal - (DigiCert), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco), Chorus Li (iTrusChina), Chris Clements - (Google), Christophe Bonjean - (GlobalSign), Clemens Wanko - (ACAB Council), Clint Wilson - (Apple), Corey Bonnell (DigiCert), David Karditzas (Google Trust Services), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback (Microsoft Corporation), Emily Stark (Google Chrome), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco), Eva Vansteenberge - (GlobalSign), Georgy Sebastian (Amazon Trust Services), Hannah Sokol (Microsoft), Hans Metsoja (Opera), Henry Lam (Sectigo), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel - (OISTE Foundation), James Bladel (GoDaddy), Janet Hines (VikingCloud), Jay Kistler (Amazon Trust Services), Joanna Brawata (Asseco Data Systems (Certum)), John Okimoto (CommScope), John Sarapata (Google Trust Services), Jos Purvis - (Fastly), Joseph Ramm - (OATI), Jozef Nigut - (Disig), JP Hamilton (Cisco), Justin Baird (Amazon), Karina Sirota - (Microsoft), Kateryna Aleksieieva (Asseco Data Systems (Certum)), Keshava Nagaraju - (eMudhra), Khyati Makim (Amazon), Kiran Tummala (Microsoft), Kyle Schultheiss (Amazon), Lakshmi Ramalingam (Microsoft), Leo Grove (SSL.com), Li-Chun Chen - (Chunghwa Telecom), Lilia Dubko (CPA Canada), Llew Curran (GoDaddy), Lorrie Petersen (Microsoft), Lynn Jeun - (Visa), Mads Henriksveen - (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mats Rosberg (Keyfactor), Matthew McPherrin - (Let's Encrypt), Michael Slaughter (Amazon Trust Services), Michelle Coon - (OATI), Miguel Sanchez (Google Trust Services), Mike Shaver - (Mike Shaver (Private Person)), Mohit Kumar - (GlobalSign), Nargis Mannan - (VikingCloud), Nate Smith (GoDaddy), Naveen Kumar - (eMudhra), Nick France (Sectigo), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes - (OISTE Foundation), Pekka Lahtiharju - (Telia Company), Peter Miskovic (Disig), Prachi Jain - (Fastly), Quan Nham - (Fastly), Raffaela Achermann - (SwissSign), Rebecca Kelley (SSL.com), Renne Rodriguez - (Apple), Rob Stradling - (Sectigo), Rollin Yu - (TrustAsia), Rosemary McGuire (CPA Canada), Ryan Dickson - (Google), Sandy Balzer - (SwissSign), Scott Rea (eMudhra), Sissel Hoel - (Buypass AS), Sooyoung Eo - (NAVER Cloud Trust Services), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Steven Deitte - (GoDaddy), Sven Rajala (Keyfactor), Tadahiko Ito (Secom), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Callan (Sectigo), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Xiao Qiang (GDCA), Xiu Lei (GDCA), Yamian Quintero (Microsoft Corporation), Zane Ma (Oregon State University).

## Roll Call

Inigo started the call.

## Read Antitrust Statement

Iñigo read the anti trust statement.
Tim Callan and Martijn Katerbarg are taking minutes.

## Review Agenda

Agenda approved.

## Approval of minutes

Inigo Barreira: Minutes of sept 12th distributed. No objections. Approved

## Membership

Inigo Barreira: We have an application from Akamai as an interested party.  Any comment?

Dean Coclin: I reviewed the application when it first came in.  I sent it back to be signed by someone with authority.  It's a good application.

Inigo: Approved.  We have another one from Mark Gamache a private individual.  This also is a good application and is approved.

## Summary

[Inigo makes a presentation and go over achievements and goals]
Achievements and goals:

Balloting:

    6 ballots passed 
    None failed
    Two under discussion.
    One under consideration.

Updates done since last F2F
- 4 BR updates done.  
- 2.0.9 is under IPR review.
- Two new ones due with application of ballots SC76 and SC79.

Number of open issues in Github reduced but new recent discussions have made them grow.

Validation SC summary
- validation methods review
- cross-certification
- and other things in the presentation

Achievements and goals
[Inigo presents a slide listing achievements and goals]

## Topics

### 1-	Inigo invites Clint to speak on GitHub issue #459

Clint Wilson: We had a ballot in 2018 around the same time as the forum reform was going on.  This was the last ballot under the old no-WG prefix to the ballot numbers (was maybe ballot 226). Never went for formal discussion or voting.  It was ready to do so.  The changes to the forum structure and by-laws delayed it long enough that it fell off the radar.
While we were rearranging 3.2.2.4, it added a section that defined two new extensions to TLS certs.  The contents were a bit string where the position of each bit was correlated to the method in 3.2.2.4 or 3.2.2.5.  That appears to be where it concluded.
Ultimately, we landed on this approach to a way for a cert to include the validation methods that were included.  That's the approach I have taken in a very draft approach.  It seems like a pretty good approach.

The changes are in section 7 for subscriber certificate extensions. I added them.  It adds a new section 7.1.2.12, which adds two new subsections, one that describes the domain methods extension and the other that describes the IP address extension.

[Clint walks through this section]
I did make some changes from the earlier ballot.  You include in this extension any method that is used to validate the DNs name in the certificate.  You can only use one method per domain name and you have to use one method.

This is what I came up with based on past and recent discussions.

[Inigo opens it to discussion]

Martijn Katerbarg: Am I correct in understanding that if there's 100 domains, and you use three methods, there is no real correlation.  Why not have that?
    
Clint: Size.  There is a lot of data to store.  The majority of certs on the internet do not have large number of SANS.  I would like that have that level of specificity, but for a first implementation, at least we get more information than we have to date.  Perhaps can revisit it when we see what happens in the real world.
    
Martijn: DCV reuse.  Would we incorporate it separately or the original method?
    
Clint: Put the method that was used originally.  We're also not storing extra data like the date validation occurred.  I at least wanted to start with this.
    
Ben Wilson: Why do you use a bit position and not just a numerical representation.
    
Clint: This keeps the size of the representation small.  If we are representing in a text field and populating it, that gets much larger just because of how ASN-1 is encoded.
    
Ben: When you read it, you're thinking of the binary string, which is taking up a huge string of binary positions.
    
Clint: If we can figure out a more efficient way to do it, then certianly. I don't know what that is.
    
Mike Shaver: I’m not sure how observers or external auditors might determine that this bit is set incorrectly.  Most of our bigger CPRs have come from external observers.  How do we enable that community to be better observers?
    
Clint: An individual subscriber would be able to tell if the method they used is in a certificate.  So that's useful to some extent.  It is limited, but you could for example, find a method indicated in a certificate that the CPS says they're not allowed to use.
At scale you would also be able to see outliers, which would be useful to broad scale analysis.
You're correct that this doesn't necessarily allow us to validate that the information in the certificate was done that way.

Mike: It doesn't feel like this is a security related property.  Does this belong in the certificate at all or should it be in pre-cert CT logs.  They would not add to the cost to the cert, and reduce the surface of potential misissuance.  I'm wary of putting a field in that will invoke debates about whether it's important enough for revocation.

Clint: It would be nice to just put in in SCT, but we can't without updating the RFC.  If there is strong consensus, there are alternative approaches, but we can't easily do something else that I'm aware of.
    
Mike: It's a shame if we're putting it in the wrong layer for procedural reasons not architectural ones.
    
Clint: I think it's plausible for it to be used in the handshake in real time, like to block a DCV method that proves to be ridiculously insecure.
    
Dimitris: This information seems to be more appropriate outside the final certificate. It is metadata.  We can't put in in the current precerts, but we have IETF experts in this group.  We extended the CAA FRC for S/MIME.  I don't think it would be difficult to work in IETF to create an RFC.
In parallel, I'm not happy with creating extensions with all this complexity in final certificates.
ETSI has a method, but there are only four methods there. We have much more.
    
Clint: I don't disagree to taking it to the IETEF.  I think there is value to continuing with this approach in CABF.  People have floated validation metadata transparency logs as a idea.
We cant' do anything immediately about any of those.  Let's keep going with those, but in the meantime we can move forward with something like this one.  We derive value immediately.
I think it's appropriate to have in the final certificate, but it's more likely to be used than the country name.
I don't think this is so much urgent as there is no line of sight on other options.  I would like to continue the exercise of balloting this until we have line of site on another. 
    
Renne Rodrigues: Would you consider policy OIDs instead?

Clint: That was my first approach. Put the OV OID and append the method.  I didn’t because it would be really inefficient with multiple methods or large numbers of SANs.  The other reason is you can kind of make it work as a policy but it's not really representing a specific policy so much as an aspect of a broader document.  The main reason I didn't do it is that was the original discussion in 2017 and over many months the conclusion is it would be better fit for purpose as a custom extension. If we want to revisit those conclusions, we can do so.
    
Emily Stark: External verifiability.  Clint's point about domain owners is a good one.  One could imagine introducing new DCV methods involving some kind of ongoing verifiability or that are externally verifiable.  The utility of this would increase with the method in the certificate.
    
Aaron Gable: Including it in the final cert makes some amount of sense.  My CA is dedicated to making certs as small as possible.  The BRs could say a certificate corresponds to a precertificate, we could augment the allowable transformation from a precert to a final cert.  We could append to the precert and not include in the final cert.

Clint: I love that idea if it could work. I think we would have to make some changes elsewhere in the BRs to make this work.  That's what I wanted originally. If we can find a way to just put it in the SCT, I'm open to that.
We would be giving up some value putting it only in the SCT.  Likely worth the tradeoff, but I'd want to do an assessment.
    
Aaron: If we include it only in the precert, we could get a much more verbose extension.
    
Clint: Yes, it opens up the design space.
    
Aaron: LE has been interested in validation transparency for a while.  We haven't had the bandwidth to figure out what that looks like.
    
Tim H: We have a discussion topic for the validation subcommittee to discuss validation transparency.  It's the exact same problem. We will discuss it now.
You can't just stick it in a SCT.  There isn't enough room in a cert.  We will have to set up new logs that can do this.  The current CT logs we have will never be upgraded to the current versions. This is sorely needed and has been discussed for a long time.
We need to start taking seriously that we need logging infrastructure.
The problem is we're struggling to have enough log operations just for our existing CT ecosystem.
It probably does make sense to efficiently encode this stuff, but if we're putting more work into this area, it has to be something that's the moral equivalent to dumping all your validation logs publicly.  Once you have the ability to publicly log information about how validation works, that would be independently auditable.  We would have to decide to put in that effort and create a roadmap and work through it.
otherwise we keep having these discussions with a bunch of small stuff.  That has ended up deadly for us in the past.
We have to stop trying to do this one the cheap and reusing stuff.  If we're serious about validation being double checked, we are going to have to start asking the hard question about how to log this and who is going to host that.  Setting up CT logs was a huge multi-year effort.
this is a very important problem.  I do think validation is the next thing we have to take a really close look at. I don’t think we're making things better recently. More transparency would help.  How CAs do validation is a black box.
I look at incident reports and I'm confident some of the reports on how CAs do validation is invented after the fact.  I'd love to close loopholes.
Perhaps this CT project is the best first step.
It wasn't left alone because of the reorg.  there were some political concerns behind the scenes that I hope are no longer relevant.

Trev: Like Aaron, we want smaller certificates. Let's really articulate the real use cases and not invent solutions without exploring use cases.  I heard Subscribers would want to know.  The only reason people care about the validation methods used are because they want to have only a set of validation methods that can be used.
I don't buy that it's an enormous subscriber need. I think we as a community want it for data.  If we want it for data, are there mechanisms that we can use.
For example, if one use case is we want to know how often certain methods are used, we could make WebTrust and ETSI add into the reports the % of methods (or the count) used by the CA.
If we feel like we need to know specifically per certificate right away, that's different. If we were really granular about what we wanted to solve, there might be lower tech solutions to solve that.
Maybe we could take a sample of certificates, like the 3% certificate audit.  Maybe we don't need a whole bunch of stuff.
    
Dimitris: We're not even required to use CT in the BRs.  We need to require that all certificates will be logged for Aaron's proposal.
    
Aaron: To Trev, you mentioned that part of the real problem is letting subscribers specify what methods are allowed. There is a tag that solves this already.  If we require that CAs validation DNSSEc and understand the validationMethods tag, that will solve the problem.
    
Clint: We are solving problems.  This is solving a problem that I and others see.  If there are other problems we want to solve, let's see some ballots.
    
[We take a break for half an hour]
    
### 2-	Discussion on Delayed Revocation - Overview of Mozilla Draft Interim Policy

Ben presented the proposed Mozilla policy and feedback received. Discussion as part of the presentation:

Ben: We received some comments about how we handle this for mass revocations and delays that are not the fault of the subscriber. We've also received an offer to create a linter-based filter that would make it easier for CAs to check the status of domains. 

Slaughter: Would any domains by the legal entity become part of the restriction, or just the specific domain that got a delayed revocation.
Ben: This would only be for the domain that was affected. 

Tim Callan: From the original message it was somewhat unclear if the sanctions were two alternatives to choose from, or if both would be put on any domain affected by delayed revocation. Can you confirm both would be enforced?

Ben: That is correct, it is not an option of choosing between the two.

Tim Callan: And this is also at that point in force for all CAs as long as the domain name is the same?

Ben: Correct. We don't want to see "CA-shopping" for this.

Tim Callan: And is this sanction in place for-good on the affected domain?

Ben: No. We are currently looking at making the restriction effective for 2 years.

Trev: Do we really feel like we can define what is critical infrastructure, however? I don't think what I feel is critical is the same as what is critical to customers. And I wonder if this is the right way forward for solving this problem, and I'm not sure this will help customers rotate. As an example when we rotated our SubCAs, there was a lot of problems with customers still using pinning, which in the past was part of OWASP. As such, customers create apps which may not be critical infrastructure, but due to pinning, they cannot. Yet, for them it's critical to the operation of their business. Then there's two browsers that don't want to show revocation for two types, so I'm not sure what this really would solve.

Ryan: I agree with Trev on many points, but not all, trying to think of this from like a pragmatic perspective, if we were to estimate the number of time valid TLS certificates that were issued in the last year a low estimate is 900 million, a more realistic estimate is probably 1.6 billion. And maybe 200.000 certificates were revoked due to an incident. It seems we're adding rules for 0.02% of all certificates that exist. We already have a well-defined process as to what happens with delayed revocations, and when it works, it works really well. 
I feel the proposed plan creates overhead for all involved stakeholders, and we feel like a revocation in validity across the board would be more effective. 

Nicol So: Another problem here is devices that may be low risk/criticality. As these devices that could be in a consumer's home, and need to be publicly trusted, but service disruption would be a bigger deal, and service providers may not be able to access these devices after the installation. 

Emily: I'd like to echo Ryan's and Trev's points, especially around a device like a heartrate monitor, if it can't do timely revocation, it probably cannot do 90 days either. 

Ben: This is just part of my outline here is that I was gonna say that in the 1st place critical infrastructure should not be using publicly trusted certificates.

Emily: It does seem to me like we'll have a new class of incidents and subscribers saying that they cannot do 90 day certificates. 

Scott: Appreciated the clarifications given to Tim's answers. I agree with most that Trev said and all that Ryan said. What are we really trying to solve here and what controls subscribers currently have. It does feel like an interesting idea, but there's a lot of overburden on a small portion of issues and revocations. 

Stephen: The problem I see here is that it's very punitive to a subscriber that's not able to do replace a certificate in time. It seems we're then pushing them further down the problem hole since they immediately need to switch to 90 day replacement cycles. 

Ben: I wonder how many subscribers cannot make the 90 days, and I'd like to see data for that. To me it feels like it should be possible.

Brittney: Critical Infrastructure does appear to be defined in several european guidelines, so we could look at that. My concern with CA shopping is that we might see a list of CAs that are more likely to grant an exception, which we wouldn't want to see.

Ben: Part of the 90 day hammer is to increase the agility and ability to do replacements directly when there is an issue.

Andy: We're conflating two issues here. We have a subset of problem users that can actually get more agile and solve this problem. And we have some that have NO business being in the web PKI, and they need to move to private hard. And we're doing ourselves and those users a huge disservice if we don't take a clear public stance and say, if you fall in these buckets, private is the way to go. Here are some great examples, go forth, figure out how to make this work in your ecosystem and actually steer your people to a solution. We can tell them they're holding it wrong as much as we want, but it doesn't fix the problem.

Tadahiko: With this approach, it seems we will be rejecting business for these subscribers in time. But there is some possibility of they need to spend a lot of resource to this to deal with 90 days and this case it might create some legal risk for us. And I'm not sure if we have enough justification like for that situation. But at least in my understanding it is better to have some customer contact like what could be quantitative damage of the change.

Clint: I agree with a lot of what has been said. It likely solves or addresses the issue, but might be an overengineered approach to it, and other more directly applicable solutions might help out more. What I'm driving at is a reduction in validity periods across the board is a still a better solution for this. I have a proposed change for the TLS BRs that would provide a more phased approach to the lifetime reduction which I will be sharing to the list or SC call soon.

Tobias: I just want to chime in and say that, like I'm personally simply not convinced that this is an actual issue. There's at least 1 larger CA that hasn't granted any delayed revocation in the last few years, and it doesn't seem like that CA has a different type of subscriber than other CAs. 

Ben: The question remains however what we do with the next delayed revocation that might come tomorrow.

Tobias: Distrust.

Tim H: We think this is a very interesting proposal Ben and so thanks for bringing it forward for discussion. It is indeed a very complicated topic. We've thought about it for a long time as well. One of the things that we do think is, we're not exactly sure what the timeline should be, but we've decided that we think that if people really do think that 90 day certificates are a useful way of nudging people in the right direction, we should just pick a date and go there for everyone. Setting the date, will give motivation for a lot of companies to raise their priorities.
Organizations like, e.g., the US Federal Reserve, when they're setting up a new PKI, the discussions always go in the direction of, well, we need a trust list. Let's reuse the Mozilla trust list, that's widely respected and well known and it's well managed. So of course that would be a great idea. 
Unless we provide another ecosystem that we can tell them to go to, telling them get off our lawn is not working, it's not it's making our lives better, it is not a viable solution for them. And so one of the things that we could do that would help out a lot is actually have real discussions about what alternative PKIs exist that we can transition webPKI customer to.

Dimitris: Ben how do you intend to solve the CA-hopping issue? Cause that's the last thing we need.

Ben: We'd have a list and CAs should consume that possibly through a linter. 

Dimitris: I don't believe such a setup would work in the end.

Emily: I agree with Clint, I would love to see this implemented as a phase in of a 90 day lifetime across the board. Ben asked a question a few minutes ago as to what happens when the next delayed revocation bug comes in. I think Ryan already gave an answer to that, which is the next delayed revocation bug comes in, it gets evaluated, it gets treated as part of the holistic ongoing evaluation of the CA's trustworthiness, which is working as intended.
It's great to hear support from people in this room for a 90 day certificate deadline, I hope that support gets echoed publicly. If it's helpful to have a deadline, please, allow us to set that, and allow us to move the ecosystem forward without blaming it all on us. 

Ben: We appreciate the feedback. We will take this back and see how we can tweak this. If other things are moving forward, we will consider those as well.

Inigo: We ran out of time to discuss the other topics of the agenda that can be done at one of the next WG calls.


## Current status of ballots

Inigo: we´ve already talked about this during the presentation

## Any Other Business

None.

## Next call

Inigo: Next call will be in 2 weeks, on October 25th. 

## Adjourn

Meeting adjourned.
