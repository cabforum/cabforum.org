---
author: Iñigo Barreira
date: 2024-10-09 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 63 Meeting in Seattle, WA, USA - SCWG, October 9, 2024
type: post
---

## Attendance

...

## Review Agenda

Minutes were prepared by Tim Callan (Sectigo) and Martijn Katerbarg (Sectigo).

## Approval of minutes

...

## Discussion 

**Inigo Barreira (Sectigo):**  
We have an application from Akamai as an interested party. Any comment?

**Dean Coclin (DigiCert):**  
I reviewed the application when it first came in. I sent it back to be signed by someone with authority. It's a good application.

**Inigo:**  
Approved. We have another one from Mark Gamachin (sp?) a private individual. This also is a good application and is approved.

**Achievements and Goals:**
- 6 ballots passed
- None failed
- Two under discussion
- One under consideration

For me, it's okay to move and update the mailing list since these are not in the voting period, just discussion. We can move ahead.

**Updates done since last F2F:**
- 4 BR updates done. 2.0.9 is under IPR review.
- Two new ones due with application of ballots SC76 and SC79.
- Number of open issues in GitHub reduced but new recent discussions have made them grow.

**Validation SC Summary:**
- Validation methods review
- Cross-certification
- Other topics in the presentation

**Inigo invites Clint to speak on GitHub**

**Clint Wilson (Apple):**  
We had a ballot in 2018 around the same time as the forum reform was going on. This was the last ballot under the old no-WG prefix to the ballot numbers (was maybe ballot 226). Never went for formal discussion or voting. It was ready to do so. The changes to the forum structure and by-laws delayed it long enough that it fell off the radar.

While we were rearranging 3.2.2.4, it added a section that defined two new extensions to TLS certs. The contents were a bit string where the position of each bit was correlated to the method in 3.2.2.4 or 3.2.2.5. That appears to be where it concluded.

Ultimately we landed on this approach to a way for a cert to include the validation methods that were included. That's the approach I have taken in a very draft approach. It seems like a pretty good approach.

The changes are in section 7 for subscriber certificate extensions. I added them. It adds a new section 7.1.2.12, which adds two new subsections, one that describes the domain methods extension and the other that describes the IP address extension.

**[Clint walks through this section]**

I did make some changes from the earlier ballot. You include in this extension any method that is used to validate the DN's name in the certificate. You can only use one method per domain name and you have to use one method.

This is what I came up with based on past and recent discussions.

**[Inigo opens it to discussion]**

**Martijn Katerbarg (Sectigo):**  
Am I correct in understanding that if there's 100 domains, and you use three methods, there is no real correlation. Why not have that?

**Clint:**  
Size. There is a lot of data to store. The majority of certs on the internet do not have large numbers of SANs. I would like to have that level of specificity, but for a first implementation, at least we get more information than we have to date. Perhaps we can revisit it when we see what happens in the real world.

**Martijn:**  
DCV reuse. Would we incorporate it separately or the original method?

**Clint:**  
Put the method that was used originally. We're also not storing extra data like the date validation occurred. I at least wanted to start with this.

**Ben Wilson (Mozilla):**  
Why do you use a bit position and not just a numerical representation?

**Clint:**  
This keeps the size of the representation small. If we are representing in a text field and populating it, that gets much larger just because of how ASN-1 is encoded.

**Ben:**  
When you read it, you're thinking of the binary string, which is taking up a huge string of binary positions.

**Clint:**  
If we can figure out a more efficient way to do it, then certainly. I don't know what that is.

**Mike Shaver**
I'm not sure how observers or external auditors might determine that this bit is set incorrectly. Most of our bigger CPRs have come from external observers. How do we enable that community to be better observers?

**Clint:**  
An individual subscriber would be able to tell if the method they used is in a certificate. So that's useful to some extent. It is limited, but you could, for example, find a method indicated in a certificate that the CPS says they're not allowed to use. At scale, you would also be able to see outliers, which would be useful to broad-scale analysis. You're correct that this doesn't necessarily allow us to validate that the information in the certificate was done that way.

**Mike:**  
It doesn't feel like this is a security-related property. Does this belong in the certificate at all or should it be in pre-cert CT logs? They would not add to the cost to the cert and reduce the surface of potential misissuance. I'm wary of putting a field in that will invoke debates about whether it's important enough for revocation.

**Clint:**  
It would be nice to just put it in SCT, but we can't without updating the RFC. If there is strong consensus, there are alternative approaches, but we can't easily do something else that I'm aware of.

**Mike:**  
It's a shame if we're putting it in the wrong layer for procedural reasons, not architectural ones.

**Clint:**  
I think it's plausible for it to be used in the handshake in real-time, like to block a DCV method that proves to be ridiculously insecure.

**Dimitri:**  
This information seems to be more appropriate outside the final certificate. It is metadata. We can't put it in the current pre-certs, but we have IETF experts in this group. We extended the CAA FRC for S/MIME. I don't think it would be difficult to work in IETF to create an RFC. In parallel, I'm not happy with creating extensions with all this complexity in final certificates. ETSI has a method, but there are only four methods there. We have much more.

**Clint:**  
I don't disagree with taking it to the IETF. I think there is value to continuing with this approach in CABF. People have floated validation metadata transparency logs as an idea. We can't do anything immediately about any of those. Let's keep going with those, but in the meantime, we can move forward with something like this one. We derive value immediately. I think it's appropriate to have in the final certificate, but it's more likely to be used than the country name. I don't think this is so much urgent as there is no line of sight on other options. I would like to continue the exercise of balloting this until we have a line of sight on another.

**Renne Rodrigues (Apple):**  
Would you consider policy OIDs instead?

**Clint:**  
That was my first approach. Put the OV OID and append the method. I didn't because it would be really inefficient with multiple methods or large numbers of SANs. The other reason is you can kind of make it work as a policy but it's not really representing a specific policy so much as an aspect of a broader document. The main reason I didn't do it is that was the original discussion in 2017 and over many months the conclusion is it would be better fit for purpose as a custom extension. If we want to revisit those conclusions, we can do so.

**Emily Stark (Chrome):**  
External verifiability. Clint's point about domain owners is a good one. One could imagine introducing new DCV methods involving some kind of ongoing verifiability or that are externally verifiable. The utility of this would increase with the method in the certificate.

**Aaron Gable (ISRG):**  
Including it in the final cert makes some amount of sense. My CA is dedicated to making certs as small as possible. The BRs could say a certificate corresponds to a pre-certificate, we could augment the allowable transformation from a pre-cert to a final cert. We could append to the pre-cert and not include it in the final cert.

**Clint:**  
I love that idea if it could work. I think we would have to make some changes elsewhere in the BRs to make this work. That's what I wanted originally. If we can find a way to just put it in the SCT, I'm open to that. We would be giving up some value putting it only in the SCT. Likely worth the tradeoff, but I'd want to do an assessment.

**Aaron:**  
If we include it only in the pre-cert, we could get a much more verbose extension.

**Clint:**  
Yes, it opens up the design space.

**Aaron:**  
LE has been interested in validation transparency for a while. We haven't had the bandwidth to figure out what that looks like.

**Tim H:**  
We have a discussion topic for the validation subcommittee to discuss validation transparency. It's the exact same problem. We will discuss it now. You can't just stick it in an SCT. There isn't enough room in a cert. We will have to set up new logs that can do this. The current CT logs we have will never be upgraded to the current versions. This is sorely needed and has been discussed for a long time. We need to start taking seriously that we need logging infrastructure. The problem is we're struggling to have enough log operations just for our existing CT ecosystem. It probably does make sense to efficiently encode this stuff, but if we're putting more work into this area, it has to be something that's the moral equivalent to dumping all your validation logs publicly. Once you have the ability to publicly log information about how validation works, that would be independently auditable. We would have to decide to put in that effort and create a roadmap and work through it. Otherwise, we keep having these discussions with a bunch of small stuff. That has ended up deadly for us in the past. We have to stop trying to do this on the cheap and reusing stuff. If we're serious about validation being double-checked, we are going to have to start asking the hard questions about how to log this and who is going to host that. Setting up CT logs was a huge multi-year effort. This is a very important problem. I do think validation is the next thing we have to take a really close look at. I don't think we're making things better recently. More transparency would help. How CAs do validation is a black box. I look at incident reports and I'm confident some of the reports on how CAs do validation are invented after the fact. I'd love to close loopholes. Perhaps this CT project is the best first step. It wasn't left alone because of the reorg. There were some political concerns behind the scenes that I hope are no longer relevant.

**Trev:**  
Like Aaron, we want smaller certificates. Let's really articulate the real use cases and not invent solutions without exploring use cases. I heard Subscribers would want to know. The only reason people care about the validation methods used is because they want to have only a set of validation methods that can be used. I don't buy that it's an enormous subscriber need. I think we as a community want it for data. If we want it for data, are there mechanisms that we can use. For example, if one use case is we want to know how often certain methods are used, we could make WebTrust and ETSI add into the reports the % of methods (or the count) used by the CA. If we feel like we need to know specifically per certificate right away, that's different. If we were really granular about what we wanted to solve, there might be lower-tech solutions to solve that. Maybe we could take a sample of certificates, like the 3% certificate audit. Maybe we don't need a whole bunch of stuff.

**Dimitris:**  
We're not even required to use CT in the BRs. We need to require that all certificates will be logged for Aaron's proposal.

**Aaron:**  
To Trev, you mentioned that part of the real problem is letting subscribers specify what methods are allowed. There is a tag that solves this already. If we require that CAs validate DNSSEC and understand the validationMethods tag, that will solve the problem.

**Clint:**  
We are solving problems. This is solving a problem that I and others see. If there are other problems we want to solve, let's see some ballots.

[We take a break for half an hour]



## Any Other Business

None

## Next call 

Next call: ...

Meeting adjourned

