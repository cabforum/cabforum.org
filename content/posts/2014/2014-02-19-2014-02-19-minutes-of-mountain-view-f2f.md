---
aliases:
- /2014/02/19/2014-02-19-minutes-of-mountain-view-f2f/
author: Ben Wilson
date: 2014-02-19 18:14:10
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 31 Meeting in Mountain View, California, 18-20 February
  2014
type: post
---

**Meeting 31 Minutes – Mountain View Face-to-Face**

The antitrust statement was read.

Present: Eneli Kirme, Robin Alden, Don Sheehy, Jeremy Rowley, Ben Wilson, Arno Fielder, Doug Beattie, Wayne Thayer, Joanna Fox, Ryan Sleevi, (Ben Laurie and Eran Messeri by phone), Francisco Arias, Tomofumi Okubo, Iñigo Barreira, Tom Albertson, Sid Stamm, Stephen Davidson (by phone), Moudrick Dadashov, Cornelia Enke, Rick Andrews, Dean Coclin, Kirk Hall, Chris Bailey, Imren Altepe, Jeffrey Ward, Richard Wang, Robert Relyea, Brian Smith, (working group meeting – Cecilia Kam, Tony Penta, Wan-Teh Chang)

## Day 1

## Wednesday, 19 February 2014

### Browser News

#### Mozilla (Brian Smith)

1. Mozilla is working on changing to a new certificate verification library for Firefox 30 which will be released in 16 weeks with “path building for certificate chains in a more sensible way”. This will help increase compatibility and will allow them to add new features for certificates, like Certificate Transparency.

1. Mozilla is half-way done in implementing the “must staple” extension. They are working to revise Phil Baker’s IETF draft and getting it published. Overall goal: make OCSP staple secure. This will help promote OCSP stapling as a good solution against key compromise. There is an OCSP-fetching discussion going on now, and it looks like about 7% of handshakes use OCSP stapling. We would like it to increase to 100%.

1. The new path building logic will be an option in Firefox 29. They will recommend that each CA test pathbuilding against their own certificate chains.

1. Firefox 29 will remove most or all of 1024-bit roots. CAs will need to get back to Mozilla with any significant impact CAs that have legacy roots that have been cross-signed that would be affected. Mozilla will accept requests from CAs to build in intermediates into Mozilla if that will help prevent web sites from breaking (contact Brian).

1. Timeline for Firefox 29: April 29th (remove 1024 roots and make new path building code optional). Firefox 30: June 10th (new path building code enabled for all)

1. No decision made yet on SHA-1 deprecation. Awaiting feedback from CAs and the CA/Browser Forum on Microsoft’s proposal.

#### Google Chrome (Ryan Sleevi)

1. Google is transitioning away from NSS to an OpenSSL stack except on Windows and Android. Chrome on Windows will continue with CryptoAPI. The effect of moving to OpenSSL for certificates will be the use of the OpenSSL parsing rules. There is no special UI for bridge certificates, but the chain building engine supports them.

1. Google will be improving programmatic enforcement of the Baseline Requirements.

1. CT requirements will be discussed later

1. Chrome does not support internal server names from public roots (this has been true for some time now), in which case, Chrome will not show a lock icon.

#### Microsoft (Tom Albertson)

1. Microsoft published its SHA-1 announcement.

1. The first step will be removal of 1024-bit certificates in March with a Windows update. Another update to be issued in June will remove more roots. One criterion in moving forward will be how quickly CAs respond to Microsoft’s notice. By the end of 2014 there will be no more 1024 roots.

1. Microsoft will also begin to programmatically enforce the Baseline Requirements in 2014. Tom is contacting CAs directly. After 2014, MS will rule out the exceptions and “throw the switch”.

1. By April 2015, Windows will no longer accept non-BR-compliant certificates.

1. Microsoft will be focusing on certificate hygiene and checking things, like making sure no end entity certificates are issued from roots.

### SHA1 Sunsetting / Grandfathering Strategy

Ben: We should work on a path forward to make sure everyone is aware of the current plan to eliminate SHA-1. We might want to see if there is a way to allow exceptions for an initial grandfather period, along with the sunset period when everything gets turned off, because there are likely to be some that will object to a hard deadline.

Tom: Removal of roots may have some affect.

Richard: Four million users in China are relying on Windows XP, SP2, which cannot use SHA2.

Brian: If browsers enforced SHA2, then end users would stop approaching CAs asking for SHA1 certificates.

When large, popular websites start using SHA2, then everyone will want to upgrade their browsers.

Brian: With TLS 1.2, the client can send the server a list of algorithms it supports, and maybe we could get server vendors to start adding an ability to select SHA1 vs. SHA2 based on what the TLS 1.2 client sends, like what has been done for EC certificates vs. RSA certificates. This might work with markets with localized issues like China and Japan. Also, large ecommerce sites have economies of scale to create customized code to serve SHA1 to SHA1 clients and SHA2 to SHA2 clients, so maybe we should make them aware of this possibility. They would be willing to do more work than the general population of server administrators.

Robin: We cannot, however, partition the Internet into different zones – SHA1 vs. SHA2.

Dean: How does this work on the browser side?

Brian: In Firefox, the user gets a warning that says, “we cannot verify that this was issued by a trusted issuer.” Then we let users click through it – we basically treat it as an invalid signature.

Dean: What about Chrome?

Ryan: You will get an invalid certificate, based on whether it uses CryptoAPI. Whether it is over-rideable depends on whether it is an invalid server certificate, then no, but if it is an untrusted server certificate, then yes, it is over-rideable.

Dean: What about Internet Explorer?

Tom: You will not be able to have an https connection.

Ben: Regardless of whether all of the browsers implement SHA1 sunsetting, there will still be users who do not upgrade their browsers, so the issue is how do we gracefully transition, because regardless of the cutoff date, there will be a tail that follows after that date. We should be looking for statistics – who has moved, why haven’t people moved to SHA2, etc., and based on that we could see whether any grandfathering rule makes sense, because no CA wants to violate a rule.

Chris: As a general rule, we seem to have a double sunset. We take a date to our customers, and they start to implement it. Then our customers come back to us with news about their problems, or their customers’ problems. And then through an organic process we come up with a grandfather policy.

Wayne: I wonder if we should be setting deadlines at this point. Microsoft has a date and a time next year at which to re-evaluate the policy, and then we have our users and a security policy we’re trying to implement without breaking things, so that is when we should evaluate between breaking things and the sunset.

Brian: If we wait too long, then we’ll have some CAs who have the situation under control and those that don’t. Then, if things change, those CAs who have handled the transition responsibly will feel they are being treated unfairly. For instance, a CA issuing a certificate without OCSP could sell certificates more cheaply in violation of the rules. By June 2015, we need to be able to say that we have identified all of the potential issues.

Chris: We need to have a process for future migrations. So, if Microsoft says, “we need to move over to this specification, but until customers begin to feel the pain, we don’t know what all of the issues are. Then, when they complain, we give them a temporary, 1-year reprieve while a better solution is developed.

Brian: We should definitely consider shortening the lifetimes of SHA1 certificates-they shouldn’t be longer than a year. So, we need to put into the Baseline Requirements a maximum lifetime for a certificate with a SHA1 signature.

Bob: We’re trying to reduce our risk, because we want to reduce the number of certificates with SHA1 and the negative impact that will occur when it is known that SHA1 is insecure.

Richard: We should issue the user two certificates. That way, at the appropriate time, the user can just switch over from their SHA1 certificate to their SHA2 certificate.

Rick: I like that idea, and we’re also considering that approach. It’s easier for us and for the customer, so we’d prefer that strategy rather than shortening lifetime.

Bob: We need to have the customer experience pain with a SHA1 certificate, or it won’t work.

Brian: What is the problem with limiting SHA1 to one year?

Rick: We have a number of platforms for selling certificates, and let’s say a customer buys a three-year certificate, and we deliver a SHA2 certificate, and they tell us that a SHA2 certificate doesn’t work. It’s much easier just to say, here are your two certificates. There is no longer a need to refund because we’ve at least given them what they’ll need over that three-year period.

Brian: It still doesn’t make sense to be selling and giving customers something that you know will not work two years from now.

Rick: If Microsoft re-evaluates in June 2015, it could push the date out.

Tom: It is most likely that the date will stay right where it is.

Rick: It is possible, so that’s why.

Tom: It’s not really a date that we’re going to be looking at the fragility of SHA1. Because we know SHA1 is already fragile. We are looking at the actual exposure to customers. We are trying to figure out who gets harmed by using SHA1. Right now, we don’t see enough harm to justify pushing out the date. I recommend getting your customers started on SHA2 now, that way, it will reduce your refunds.

Rick: We are pushing SHA2.

Brian: What do you think about my idea that changing server software to recognize that the server supports SHA2 and then serving up one certificate or another based on that?

Tom: Anything we can do to promote SHA2 is a good thing, like TLS 1.2.

Ryan Sleevi: It’s tricky. It requires action by both people on the server side and client side. With Chrome, we’ve seen some issues. For instance with ECDSA certificates, on OSX 8 verification of certificates was broken but TLS worked, so you have to engage in snipping to try and figure out what is going on. Is the TLS handshake issue coming from a Safari configuration or from Chrome? And there are other issues with certificate verification and relying on the OS. It goes back to attempting what we believe is a balanced approach for the user experience by telling the user that we don’t have full confidence in this site but allowing the user to proceed, but this may become more serious over time. So we’ll transition the user by not giving an EV indication. We’re also not going to require users to click through warnings.

Brian: I can understand the ECC issue because Chrome has to support Windows XP that doesn’t have ECC, but as far as I know, Chrome doesn’t run on any platform that doesn’t support SHA2. So, when you’re running on SP 2, what do you do with the supported signature algorithms field of the TLS handshake for TLS 1.2?

Ryan: Probably the wrong thing.

Brian: Presumably, you could fix that, too.

Ryan: Yes, we can, and we hope to resolve that in TLS 1.3, although supporting TLS 1.2 has been messy enough.

Ben: Assuming the Microsoft date is not going to change, can we take that as a given and work around the variables that we can change and identify what is not going to change?

Kirk: As Chris noted, there are two sunsets–the stated one and the panic one. The one thing to think about is whether Microsoft is really going to just turn SHA1 off so it doesn’t work. The sunset is January 2017. We could say that we couldn’t sell any SHA1 cert after July1 of the previous year so people try to get into panic mode and then give them 30-day certificates.

Ryan: We have had discussions with cryptographers about this, “oh crap, panic mode” and probable collisions and without giving CAs false hope, there might be things that browsers could do to pre-identify potential collisions based on certain characteristics and that might provide a little bit more of a transition phase. We might be able to look at those in SHA1 and block those certificates.

Ben: Whatever we do should not allow customers or other CAs wiggle out by not having to do it. It should be above board and strict and programmatically enforced, and just start people toward that pain point without CAs having to be the police on it, because there would be chances of undercutting it.

Wayne: What I’ve heard here today has changed my opinion, instead of assuming that all CAs are smart enough not to issue SHA1 certificates that expire after January 1, 2017, we should have a policy that says starting January 1, 2015, you’re not allowed to issue a certificate with a SHA1 algorithm that expires after January 1, 2017. When I read Microsoft policy, that’s what I get, but that’s not really what it says. Maybe that is a way to move it forward.

Brian: That’s almost exactly what I recommended that Firefox do, except I said 2014. I don’t see why we should keep accepting certificates after there has been time for CAs to adjust, that have a validity period that ends after January 1, 2017. If CAs say they need 6 months, to implement some changes before they are ready to do that, then that type of policy is very reasonable, not just for CA/B Forum to put in the BRs, but for browsers to start enforcing that on January 1, 2015.

Doug: I prefer to not set a certain date because when you’re selling certificates, it is hard to set the price for an 18-month or 20-month certificate. I think that we set maximum validity periods on certain dates. For instance, say April 2014 is a 2-year max validity SHA1 certificate, but not an end date-it’s easier to program for a 2-year or a 1-year certificate.

Wayne: My interpretation the way I hear what you are saying is after January 1, 2015, with my system is that I will no longer be able to sell a SHA1 Certificate to a customer for more than 1 year. But at the same time, other CAs might have different systems, but they are stuck with that.

Brian: I understand what you’re saying.

Chris: There’s a pro and con to what you’re saying, we want to be careful, but we can actually communicate this to our customers all at the same time in terms of policy. We could just pick a hard date.

Brian: It makes a lot of sense for the software developers to look at the cryptographic concerns that have been raised and determine that based on these concerns, as far as securing our products goes, we stop accepting these certificates after this date, based on what we know, and create some kind of document for it. IETF is already working on that anyway, and then say, here is an open standard that we are going to implement. For CAs selling certificates to customers, then you have an open, public recommendation that you can point people to. Put the blame on the software companies.

Rick: I agree with Doug and I disagree with Wayne. We can tell customers that we can sell them a SHA1 certificate that goes beyond January 1, 2017, but on that date your Windows box will stop trusting it. We are already giving that warning to customers, so it is superfluous to tell customers also that before then the browsers will stop trusting it. There is already a built in sunset date. I’d like to have the flexibility to issue beyond that date with the understanding that I’ll communicate with my customers. It just makes it a lot easier to comply.

Ryan: It is possible that the certificate will work well beyond the sunset date if they are not on a system with Windows update.

Kirk: What about a requirement that you tell a customer if you sell them a SHA1 certificate with an expiration date beyond 2017 it probably will not work on a certain applications? That sounds like it would cover what Symantec is already doing and it should reduce the number of customer support calls if we give that notice.

Ben: What if with that motion we included some type of endorsement or recognition of Microsoft’s date? Then we’re self-regulating without having to enforce a requirement.

Ryan: We’ve seen examples in the Forum of exceptions, but here we have an opportunity to work with root programs and state what has been determined as best practice. This could be folded into audit requirements and if you can’t meet the requirement then you can work with the root program for additional time in which to comply.

Bob: CAs should not be selling three-year SHA1 certificates at this point. We shouldn’t leave a policy that allows CAs to pre-sell SHA1 certificates.

Dean: It’s not because we are trying to sell SHA1 certificates, it is that customers want to buy them. Customers want to buy three-year certificates; they do not want to buy one-year certificates.

Bob: The point is that you have to stop selling three-year SHA1 certificates.

Doug: Not necessarily. They can get a replacement certificate for free, only it’s a SHA2. At their leisure, they can upgrade to a SHA256.

Rick: Clearly, after January 1, 2017, we cannot sell a SHA1 certificate of any duration. Our current path is best. We sell them a three-year SHA2 certificate. If they come back and say they need a SHA1 certificate, we give them a three-year SHA1 certificate, and we tell them, at some point, you’ll probably need to switch back to the SHA2 certificate.

Ryan: I understand where Bob is coming from on a policy perspective, but wouldn’t it be better to provide a warning to customers.

Rick: That’s what we’re doing.

Dean: Even NIST didn’t have a SHA2 certificate.

Brian: If we cannot agree within the Forum, then individual root programs should announce what they intend to do. The advantage of doing it within the Forum is that there is consistency and everyone knows what to expect. As I understand the reason for the Baseline Requirements, they were to give CAs more consistency across browser root program policies.

Ben: We could follow the Symantec approach and then just revoke certificates at that date, and it isn’t that auditable, but at least it gives people a date to look at, or on the other hand, maybe people want SHA1 certificates beyond that date, and we just leave it up to the browsers to turn SHA1 support off on January 1, 2017, and then who would want one of those certificates.

Kirk: I see Rick’s point, why not allow people to use it past 2017.

Rick: That’s not my point.

Kirk: Well, I see the reasoning behind warning the user and giving them both a SHA1 and SHA2 certificate.

Ryan: This pushes support to the browsers because when a site operator does not switch over to SHA2 people will say the browser doesn’t work. So, regardless of the sunset date, we’ll have to start taking away your security benefits soon, but it would be better to find a solution based on policy. If we cannot come to agreement on policy, like Brian said, then we are going to have different approaches, but we cannot have a situation where we’re going to allow CAs to run SHA1 certificates up the wire and pass the cost on to the browsers. The reality is that when a site breaks, it is not the site operator that suffers, it’s the users, and users don’t contact the site operator, they contact the browser or they go on social media and complain.

Moudrick: We need a date for not issuing them and we need a date for not recognizing them.

Ryan: That’s why we need these dates-to balance these burdens.

Dean: The Microsoft policy has two dates. It says stop issuing SHA1 on 1 January 2016 and that on 1 January 2017 it will stop recognizing SHA1 certificates.

Rick: That’s why I’m saying we need flexibility.

Chris: The two certificates solves the refund-revenue-recognition problem. There is no return policy because they have something they can move over to.

Ben: Why can’t we just adopt the Microsoft policy as the Baseline Requirements rule?

Chris: Don’t we have to go with that? I was hoping we could coordinate a unified voice. The meeting in 2015 is not going to result in any change.

Ryan: It is all fine that we as a CA/Browser Forum can agree on something, but we need to get the attention of site operators and users on this. If January 2016 is the date that CAs cease issuing SHA1 certificates, but site operators are installing 3-year certificates until then, we’re going to see problems when they have forgotten about it. If we cannot resolve this in the CA/Browser Forum, it will be something the browsers will start working on to get that messaging out.

Chris: Rick, could you start putting a pain point out to customers starting January 2015?

Rick: I don’t know. On one of our retail platforms, the customer buys the certificate based on lifetime first and then they have to choose whether it is SHA1 or SHA2.

Chris: It would be great if we can all come to consensus on this together.

Doug: I agree with Rick, because it confuses the customer because they want to buy a three-year certificate and they fear anything but SHA1.

Ryan: We have known about concern with SHA1 since 2009.

Bob: So we should be experimenting now, not in 2016.

Ben: It sounds like most of us have some hybrid solution in place already.

Brian: One of the reasons we should work on this now is to reduce our support costs in 2017. Our goal isn’t to cause anyone pain or inconvenience now, but to ensure that in 2017 any inconvenience or pain is as close to zero as possible and to make this fair to every CA, because if it is coded in the browser, then there are no exceptions, and everyone can plan accordingly. Whatever way, some CAs are going to experience some pain in transitioning to whatever the migration plan is implemented.

Rick: We need to lead by example, and all CA/Browser Forum members should lead by example by installing SHA2 on our own websites.

Brian: I’m not saying we all move to SHA2, I’m saying we shouldn’t have certificates valid into 2017 with SHA1.

Ryan: There are market realities for why we’re all still using SHA1, but we need to find ways to ratchet up SHA2 so that other software vendors, site operators, and industry players see the move to SHA2.

Brian: Browser checks will be implemented regardless of what the Forum decides, but I think the purpose of this discussion is come up with a unified policy statement about this issue. I believe that if we adopt language similar to what Microsoft has said, then CAs will have something to point customers to as an industry-wide standard as background for explaining one way or another

Dean: I agree, but I don’t think we need to go beyond with additional requirements. We can’t have additional, different browser requirements.

Iñigo: Is this for just SSL?

Tom: No. All certificates.

Richard: In China, the big challenge is that online trade is in the billions of dollars and end users will have a problem.

Brian: But these big sites that do large amounts of business will be able to come up with solutions for their end users that are still on SHA1.

Bob: Ryan has said that in Chrome they will implement a countdown meter that tells end users that in X days the website will stop working because the server has not migrated from SHA1.

Richard: But maybe government support in China will help.

Chris: If we can decide something here, then that will be of help with that.

Ben: For a ballot, is there anything more we need to say?

Dean: Let’s put the Microsoft language into a draft ballot and circulate it for discussion and comment.

Kirk: Let’s prepare a nice PDF white paper like what we have for the deprecation of internal server names for the Forum that explains what is going to happen. Microsoft has a list of devices that don’t support SHA2, which we can include in the white paper as appendix. The white paper would say, check the list now and if you’re device is on the list, switch that device out now because it won’t work with SHA2.

Ben: Good idea, because we have to remember to do outreach on this.

### SSL Performance WG report

The charter was agreed upon yesterday at the Working Group day as follows: “To find ways to improve the performance of SSL while maintaining an acceptable level of security.”

Brian and Wayne lead the initial discussions.

We want to limit our work to issues that the CABF can have most impact on.

We will work on the low-hanging fruit – where we can get agreement on.

We discussed issues around the size of the certificate.

The Initial Congestion Window (initcwnd) is set to 3 (~4.5kb) or 10 (~14k) on newer systems. What do we assume, what do we aim for? No conclusion so far. Getting the entire handshake under 4.5kb would be ideal – even though that may be smaller than absolutely necessary.

We discussed items to prioritize.

1. Number of certificates in chains. There are a number of cases where servers send more certificates than we’d like. Multiple intermediates and/or unnecessary roots.
1. Support for multi-stapling. How to optimize for this. Mozilla (Brian) would like to offset the increased payload size of multi-stapling by reducing the size of some other fields.
1. CT – adding SCTs (and the number of them) will impact the bytes on the wire.
1. Algorithms: ECC smaller.
1. Compression – any use? (Wan Teh, Bob Relyea) There is a notable benefit to the use of compression, especially when a chain of multiple certificates is compressed because there is repeated information. E.g. the Issuer of an end entity certificate is always repeated exactly in the Subject of its issuing CA.
1. Rick Andrews suggested we get some tools (metrics) to measure performance.

The WG Mailing list exists. If you didn’t get the notes, please let Wayne Thayer know. The issue tracker is on the website at </performance-working-group>

### RFC 3647 Working Group report

Jeremy: we have the format, but there are certain members who question whether it’s worth pursuing due to already having our established format. CABF guidelines traditionally focused on validation (nothing else) - 90% validation.

It was suggested that we use sections 4-5-6 from the NIST document and put that into our guideline documents.

A mapping table was suggested, converting NIST and other guidance into the CABF’s current language was suggested as an alternative.

Much of it is security related.

**Two main takeaways:** 1. Find out from broad group if we want to convert to 3647 or give up and leave alone (convert, map, or do nothing) 2. Should we create a group like the security practices group and take a look at NIST document, find things that we haven’t addressed, and put those items into the CABF’s format?

Tom: Yes. It would be good to have a mapping between ETSI and RFC 3647. Then we go back to the NIST document and just lift out what we want (would meet requirement).

Ben: That’s where we left it. What does the big group think?

One idea is that if we want to follow some sort of framework, it’s an option. RFC 3647 is not a perfect tool, but may work well for some areas. There is consistency across ETSI and NIST documents since they have a common genesis. Another approach is to take things from 3647 but try to follow mapping between Webtrust/ETSI.

Kirk: Are there things in 3647 we aren’t doing, because Jeremy says we’re trying to decide if we want to form a WG to answer that as well as for other industry standards like the NIST document.

Ben: If browsers want to go through a CA’s CP/CPS, it helps them to have a common framework. Commonality would reduce workload.

Jeremy: A good argument for conversion is that it would be easier to compare CP/CPS for compliance to the BRs. There may be mistakes in CP/CPS due to oversight or mistaken interpretations.

Ryan Sleevi: +1 to that.

### Code Signing Working Group report

Dean: The CS WG reviewed the current draft and the comments received from Microsoft. A big item remaining is deciding on the High-Risk Database, which would be accessible to all CAs, containing information about high-risk applicants, which CAs would be required to check. There are issues such as: how should it be populated with data, who should run/operate the database, how would blacklisted applicants be able to dispute blacklisting?

The CS BRs also have a concept of three strikes. On each strike, a subscriber’s key storage requirements are elevated – after the first strike, the user must store keys in a FIPS/Common-Criteria-certified cryptomodule, after the second strike, there would be additional requirements, etc.

The current draft requires storage in a separate hardware device, not necessarily a FIPS module. Eventually we might migrate to a requirement for Trusted Platform Module (TPM). Anthony Penta presented what Microsoft is doing with a TPM model. A TPM is cryptographically able to attest that a key has been generated and stored in a TPM, and that might be the gold standard at some point in the future.

Also, Microsoft recently had a Technet blog on fake anti-virus software that was signed with a code signing certificate. (http://blogs.technet.com/b/mmpc/archive/2013/12/15/be-a-real-security-pro-keep-your-private-keys-private.aspx)

Tom: There is an issue of what the CA should do when the subscriber comes back and says, “my key has been stolen.” After the first time, you would have to make sure it is in FIPS/CC-certified module.

Dean: The second major threat that these code signing baseline requirements seek to address is different vetting standards among CAs, which should be homogenized.

The third necessary component is information sharing. So that CAs share information, like suggested by the high-risk database.

Jeremy: The software publisher would create a publisher ID for continuity – a unique identifier.

Brian: What will happen after a subscriber loses its private key three times?

Rick: If it is a company like HP, then after three strikes, they might have to have someone else hold their keys.

There might be escrow or bonding requirements.

Tom: Hopefully, we’ll not have to implement a 3-strikes measure, but it might include security audit requirements, etc.

Dean: We want to get this out for public review, because we need feedback from software publishers. We anticipate criticisms and comments, but we need to do something as illustrated by the blog post mentioned previously.

### EV Guideline Working Group report

Jeremy Rowley presented the report for the EV Guidelines (EVGL) Working Group. The group is addressing roughly ten areas in the EVGL for clarification or improvements, none of which is ready yet for action by the Forum. These include the following issues:

• For EV Code Signing – clarification is needed as to whether an EV Code Signing certificate must have or can’t have domains in the SANs field. A ballot for this issue is almost ready.

• Rewriting EVGL 11.13 concerning the age of data and how long it can be used before revetting.

• Finding alternatives to confirmation of a business’s telephone number now that more and more businesses are dropping land lines, but there are no reliable directories for VOIP or mobile numbers. (In Norway, all land lines may be eliminated over the next five years.)

• Reexamining the three roles of Contract Signer, Certificate Requester, and Certificate Approver to avoid confusion, and possibly combining certain roles.

• Possible modification to the current insurance requirements for CAs, which do not always translate well outside North America.

• Restoring the ability under the EVGL to authorize use of domains by parents, subsidiaries, and affiliates of a company to which the domain is registered in [WhoIs][1]. (This explicit permission used to be in EVGL 11.6, but was inadvertently dropped by the ballot which allowed use of the automatic domain control method for EV – by cross-referencing to the BRs, certain previous EVGL language was dropped by accident.)

• Possible addition to the EVGL of the BR rule that allows reissue of a previously vetted certificate with the same expiration date as the original certificate to apply to EV certificates as well.

The EV Guidelines Working Group will continue to meet every other week, and will present additional ballots to the Forum soon.

### Review and discuss technical constraints for ‘Delegated Third Parties’

We clarified that there is no specific problem to be solved now; this was put on the agenda by Ben who proposed we revisit the language in the BRs about this. This topic first came up in the Paris meeting. Can we move further towards implementing something to compartmentalize risk caused when tasks are delegated to third parties?

Some browser policies keep the CA ultimately responsible if it delegates any of its duties to third parties. We can do what we can to prevent things from happening, or we can figure out ways to limit damage.

Dean asked if this is mainly about registration agents? Ben said no, it’s about how to compartmentalize risk. Parts of Diginotar might have been able to survive if risks had been compartmentalized. For instance, an attack coming out of Iran harmed users in Netherlands. At the NIST meeting in Gaithersburg in 2013, people proposed geographic constraints, but most CAs issue outside their own ccTLD, so we need to keep looking for a solution.

Tom said that recently, the Gov’t of France treasury agency had one of its Subordinate CA misused. They were willing to accept a local-based solution. MSFT is going to implement specific controls to mitigate problems. The CA said they’re going to continue to issue MITM certificates, but from a private root. Some of the very smallest CAs might find this a good way to reduce their risk and make them less attractive to an attacker. Tom says the French CA is rather large, but they were willing to accept the constraints. Brian said the US Gov’t was willing to limit certificates to .gov and .mil with name constraints. Brian said Mozilla discussed limiting the French CA to gov.fr so they could only harm their own web sites. Other browsers implemented less strict controls. The CA might have to follow some local law that would force them to issue something that’s not compliant.

Ben asked about Ballot 105 that had some language about technical constraints (whether external third parties, if name constrained, didn’t have to be audited). Ryan said the BRs aren’t very clear on this, especially about whether some percentage of certificates had to be audited; if audited, by whom?

Brian talked about a CA who came to them with an intermediate with a very large set of name constraints. He’d like to hear more from customers who had trouble accepting technical constraints. One other option is moving the intermediate’s private key away from the external party and back to the CA’s premises so that the CA manages it.

Ryan talked about Google Internet Authority, which can’t effectively be name-constrained. Brian is least worried about that; more worried about those who don’t impose as much security. Robin says we have two options, name constraints or external audit. Ryan said CT provides the opportunity for a “public audit”. Brian wants to discuss accelerating some requirements for CT specifically to handle this case (the case without name constraints). Rick said that all customers he’s talked to about name constraints have dismissed them because of too many domains or too-frequent changes (acquisitions, etc.)

Ryan pointed out that name constraints can be positive (example.com) or negative (no IP addresses).

Moudrick suggested that we can be more specific about what can be handed off to external third parties. He mentioned ETSI 102 042 (referenced in EV Guidelines, available at [http://www.etsi.org/deliver/etsi_ts/102000_102099/102042/02.01.01_60/ts_102042v020101p.pdf][2]) “Policy requirements for certification authorities issuing public key certificates:”.

The CA is defined by five components (Section 4.2):

- registration service
- certificate generation (name constraints work here)
- dissemination service (would one have a third party help disseminate your certificates?)
- revocation management
- revocation status service

He said it makes sense to look at these definitions, and see if we can impose technical constraints on each of these components. Ben thought that the first two were most important to try to constrain. Jeremy thought we should still try to prevent mis-issuance. Brian said the French CA isn’t an example of this. Mozilla policy says you have to own all the domains that you’re being constrained to. Brian gave an example – a CA that’s country-specific, and they also control a ccTLD. If they pass laws that say they’re the only CA that can issue certificates to that ccTLD, then the government is fully in control of security. Ryan is less concerned about a hostile government doing harm, but more about the external parties we deal with today.

Ben suggested we think about these things again when we discuss the Network Security document. Perhaps some of the physical or logical security controls that are applied to CAs might also be appropriate to apply to Delegated Third Parties.

### WebTrust and Review ‘Network and Certificate System Security’

• We reviewed Don’s auditor comments on the Network and Certificate System Security Requirements NCSSR) document

• Dean asked what Don’s comments will be used for – will the guidance be used by the auditor? Don – yes

• Ben presented his responses to Don’s comments. He gave an example of the requirement that all accounts, applications, services, protocols, and port that are not in use should be disabled. Ben proposed a blacklist instead.

• Don agreed with Ben

• Ryan said that “default deny’ whitelists are better at dealing with threats that constantly adapt

• Ben moved on to the weekly change review. Don’s comment is that a week skipped would be an audit finding.

• Robin – do we need a more general requirement – less prescriptive?

• Wayne asked Don if a qualified NCSSR audit would mean a failed Webtrust audit. Don said the NCSSR audit will be part of baseline, so a problem with an NCSSR requirement would qualify a baseline audit, but not necessarily a regular Webtrust audit.

• Wayne said that missing a minor prescriptive requirement would cause a qualified audit, which is essentially failing, from my perspective. And even if a qualification did not remove you from the root store, you would have to go around and explain the qualification to each of the browsers.

• Robin said it’s not a failure, it’s just a qualification.

• Don said his concern is about the time-sensitive requirements. An example of alternative language might be something like, “on a timely basis, normally within 24 hours.” Auditors wouldn’t normally create new prescriptive requirements in audit requirements, but we are relying on you as users of the audit.

• Robin said that less prescriptive requirements lead to the use of “weasel words” like “normally”

• Don – For example, you have a requirement for the CA to terminate all administrative access within 24 hours of termination, where 48 hours might be just as good.

• Ben said that there was a debate about this when the NCSSRs were balloted and the more prescriptive language was chosen

• Don – another example is where you say “lockout account access to Certificate Systems after no more than five (5) failed access attempts”

• Dean said that we should keep the prescriptive language and let the CA explain it to root programs

• Ryan agreed, stating that he’d rather see more audit findings

• Ben moved on to a discussion of the requirement for patching every 6 months.

• Robin gave the example of an air-gapped offline CA system that is only touched once per year as a cause for an audit finding.

• Jeremy said that the requirement was for a record of the decision not to install an update to be recorded. That would not generate an audit finding even for an untouched offline system as long as the decision is made for each update.

• Doug asked what constitutes a vulnerability? Ryan said that the MITRE database is the industry standard.

• Ben moved on to the requirement that passwords ‘are not a dictionary word’ that Don commented on being non-auditable. Ben said that’s fine because the NIST document is actually stricter and the current wording allows the CA to create a password policy that is at least equivalent. The CA security document is similar to the NIST proposal in this, except the NIST proposal just states begins this section by saying that organizations should have a password policy. So, we could adopt the NIST approach of saying, all CAs should have a password policy, and good policies consist of the following…

• Ben moved to discussion of the requirement to restrict remote administration or access. Don said that this requirement eliminates the use of floating IP addresses. Ben said that he didn’t think we wanted people running CAs from coffee shops. IP addresses can be in a set range or specified. Or if a VPN or other product doesn’t provide functionality, then maybe that should be looked at. If it results in a qualified audit, then the CA can explain it. Don said that the CA would have to document exceptions with evidence.

• Ryan asked why have the external IP address requirement. Dean read the provision out loud about multifactor authentication. Ryan said that from the perspective of a global company like Google, that it does not appear to be an effective mitigation technique against state-sponsored attacks-but they have everything else in place-device certificates, authentication and encryption, tunneling, and audit logging, etc. but the external IP doesn’t seem to matter as much. Google is moving away from it.

• Ben moved to discussion of ‘Security Support System under the control of CA…’ and said that Don is interpreting it more broadly than intended. Don says that the people running the monitoring systems need to be in trusted roles. Ben thought the language was reducing the scope.

• Ben reviewed the requirement that minimizes the scope of changes to things the CA determines to be “significant”. Don stated that the burden of proof is on CAs for what is “significant.”

• Ryan said that what constitutes a “security patch” is generally designated as part of the vulnerability announcement. “Recommended” presumes that it is by the application vendor. Microsoft, Chrome and Mozilla are usually clear about when they designate a patch as “security relevant” and Mozilla gets a CVE assignment from Mitre.

• Bob said that critical security patch requirements come out for Mozilla at least every 14 days, and DOD says you have to get it patched within 30 days or CyberCom will shut you down.

• Ryan said this section could benefit from additional clarity that it refers to Mitre, which is who maintains the CVE database.

• Don said that CAs need to document all of these compliance explanations as they occur before the auditor shows up.

• Dean asked if Don’s comments and/or audit guidance would be shared with CAs to help them comply with the audit requirements, and Don said, “yes.”

• Ben said that he had written an article for ISSA Journal that people will read and hopefully we’ll receive more input from information security professionals on this.

### EV Verification Tasks performed by attorneys, accountants, local registration authorities, site visit companies, etc.

Richard Wang of WoSign stated that in China it is sometimes difficult to EV-vet customers in distant cities, as WoSign does not have its own satellite offices in those cities and some EV vetting tasks require local action. However, there are other CAs in those cities, and he asked for the views of the group as to whether it would be possible for an issuing CA to rely on the EV vetting of those other CAs when issuing EV certificates to a customer. He said this was preferable to getting an attorney or accountant opinion letter from the customer, as Chinese attorneys and accountants are not used to issuing such letters and so the letters are expensive and difficult to get.

The consensus of the other CAs was that some EV-vetting tasks could be outsourced to third parties with proper documentation and a report back to the issuing CA (and the third party could also be a CA, or some other responsible agent), while other vetting requirements could not. For example, using a third party agent to make a site visit and take a photograph of the exterior and interior of the customer’s offices to confirm its address and existence would be permitted, so long as the CA included the report and photos in the vetting file and made it available for an auditor’s review. Generally, third party agents can be delegated to perform functions related to collecting and reporting on facts and specific steps taken (e.g., taking a photograph of the customer’s offices and confirmed existence at a street address, or visiting a local government license to get an official certified copy of the customer’s business license which is then sent to the issuing CA with a report on how the license was obtained), the same as if the CA collected those same facts itself.

On the other hand, the consensus was that it would not be proper to use other CAs as third party agents to report conclusions to the issuing CA similar to the conclusions reported in an attorney or accountant opinion letter (such as an opinion on the legal existence of the customer, the employment of a customer representative by the customer or his or her title, the ownership or control of a domain by the customer, etc.). Instead, these conclusions should only be confirmed by the CA itself directly using facts and documents that it–or a third party–collects, or by reference to an attorney or accountant letter.

It was recommended that Richard provide the Forum with more explanation of the specific issues that are trying to be confirmed, and that might be of assistance in understanding the questions better.

### Current status of WPKOPS, client and server capabilities

Rick asked for anyone who has not yet responded to the WPKOPS survey to please do so if they had not already.

Rick and Ben provided an overview of WPKOPS–the IETF group formed to understand how web PKI works (browsers, servers, appliances, OCSP/CRL processing, etc.). They have produced a number of documents including descriptions of trust models, client behavior during client certificate validation and others. They have a placeholder for mobile devices but that has not been started yet.

The primary purpose of the group is to discover what areas we need to address in the future. All standards are not being embraced, so which way should we head?

- Ryan mentioned that the IETF and general community make a lot of assumptions about how things work, but is inaccurate.
- Can we make common statements about how things work consistently, in reality?
- For example, Name constraints: not all follow the same process/logic/enforcement
- Need to understand how the market operates

Rick sent a survey based on the December 2013 snapshot in time and is soliciting input from browsers, servers, appliance vendors, OCSP vendors and CAs. He has received only a few responses (One browser, one server and a couple of CAs) and he asks that you take a little time to complete the survey and send it back.

They will meet next at the IETF meeting in London, but with the limited survey data the future is in doubt. This is one of the only PKI related groups since PKIX was dissolved.

There is little technical status to report.

### Discuss F2F Meeting 33 in Beijing, China

Richard Wang presented several options to consider for the fall face-to-face meeting in China either the week of Sept. 14 or 21. The hotel would either be the Beijing or the China World Hotel. Meetings would be followed by a visit to the Palace Museum and the Great Wall. A straw poll on these choices will be sent out following this meeting.

### Coordinating certificate standards with other organizations

Dean Coclin read a summary of the agenda item saying that there are some other organizations that have their own requirements and policy OIDs, which we should discuss.

Ben Wilson: When going forward with the Guidelines sometimes we need to be aware of other organizations-for instance, with the domain component provision, if we say it one way, and then it’s contradictory, then we have to go back and change it. These organizations include the government, the IETF, and grid federations that may have different policies, and there are conflicting layers, and we need to try to move something forward to agree something in this regard.

Rick Andrews: The CABF was the group dictating the policies and formats for SSL certificates, but a customer might show up with a need to interoperate with the Federal Bridge, asking “I need an SSL certificate and it has to work in the Federal Bridge” so, now, which set of guidelines do I need to follow? It is possible conflict. As a practical point at the profile level, I have to create an intermediate and end entity to follow the BR policy and also the Federal Bridge. Or, the other option, I can have just one that fits both specifications and at some point in the chain you can insert a new policy OID. Then what about the browsers? Will they complain?

Ryan Sleevi: If the policies don´t follow the specification, then the certificate will fail automated validation. With EV there are some checks, including the OID and a check of the entire chain. For the BRs, there will be different checks on meeting the requirements.

Robert Relyea: As background, the Federal Bridge was going to have third party validators (client plugins), and these have been doing RFC 5280 processing and PKI for a long time. The separate plugins validate policy mappings per RFC 5280, etc…

Rick Andrews: It sounds like people don´t see a problem when CAs try to satisfy multiple policies, from a technical point of view there’s no problem?

Ryan Sleevi: There is no need to violate any BR. You have to figure that is important to support it. you have to support EKU for example.

Ben Wilson: When the BRs were written, we wanted to make sure the requirements were as common as possible. We want to keep the baseline and support functionality. In other words, we should be able to add the federal requirements and be able to comply with both policies. When using policy OIDs, the SSL certificate can add additional policy OIDs for compliance with both policies.

Ryan Sleevi: A policy OID in an intermediate level certificate restricts the certificates that are issued under that policy.

Robert Relyea: In the certificate you have your policy OID and the bridge OID.

Ryan Sleevi: Browser to enforce the requirements of the BRs.

Rick Andrews: How does the browser check the chain? You can block some certificates that are crossed to the bridge?

Doug Beattie: What is going to happen in 2017 with certificates that have been issued under the BRs or under the Federal Bridge regarding the changes coming up?

Ryan Sleevi: The certificates have to be BR compliant. If Symantec has a root that has been cross-signed with the Federal Bridge, then it still has to comply with the BRs.

Robin Alden: This consideration (policy OID processing) appears to be very much from the bridge CA point of view, whereas the web PKI does not care about the policy OIDs. If a web PKI Trusted Root cross-signs bi-directionally with the Federal Bridge, this makes all the certificates chaining up through the Federal Bridge to the trusted root potentially trusted as SSL certificates. How can these all be BR compliant?

Ryan Sleevi: If the public root cross signed, for example, Symantec, then they have to follow BR. I don´t want to see roots that are publicly trusted cross certified.

Robert Relyea: This is not new in bridge CAs. The DOD has the same issue. For years, DOD did not sign into the bridge. Now, however, if the requirements of the Federal Bridge don´t match, then it´s an issue.

Ben Wilson: We have concerns on the audit, external CAs, delegated parties. The bridge CA is just another trust model. It is similar to when you have 2 CAs that are part of the same root program, and one has cross-signed the other one.

Ryan Sleevi: This is in the Mozilla requirements

Ben Wilson: How can we work toward consensus on requirements in this area? The benefit on a cross certificate in a bridge CAs is global, so, when a certificate chains across a bridge, then how do we know for instance whether the Dutch government is the following the BRs?

Ryan Sleevi: In the cross certificate policy, each party has one way trust. We will recognize this. The bridge will cross certify you; you won’t cross certify the bridge. The root programs include the public trusted roots. Each of those has its own policies. How do we resolve those conflicts? The BRs can support that issue.

Ben Wilson: On the technical side, there’s a conflict, someday in the future we will have to address this topic - the cross certificate model.

Ryan Sleevi: I am not concerned about it, but for the public internet I have to raise my hand.

Ben Wilson: It might be that CAs that are not specifically following the BRs don’t because they see themselves operating at a higher assurance level.

Ryan Sleevi: I´m concerned for the public internet. If they have higher requirements, then they should have no problem if they follow the BRs.

Rick Andrews: Do we have to use a different root for federal bridge?

Ryan Sleevi: Yes, sort of.

Rick Andrews: The federal PKI wants roots that are freely available. They said they distributed the Symantec software.

Iñigo: are you referring to all type of certificates or just SSL?

Ryan Sleevi: SSL.

Rick Andrews: One practical question: do we have to issue an EV OID and the bridge OID assuming there are 2 policy OIDs, are you checking both?

Ryan Sleevi: yes. Check the EV OID that is validated. Section 9.1 for domain validation you still need the bridge policy to do that vetting. If not, you need to do that in addition.

**(The discussion of processing newly delegated gTLDs and the use of the Public Suffix List was postponed and not discussed during the face-to-face.)**

## Day 2

## Thursday, 20 February 2014

### CT and Google Requirements Discussion

Rick Andrews: A question for Ben Laurie: You sent out a survey. Have you got results, are you going to publish results?

Ben Laurie: Yes. A fair number of people objected to having the exact version of software included in the results that come back, so we want to anonymize the software version, but we’ll publish what we’ve got when my travel schedule slows down in a few weeks.

Ryan: CT is implemented within Chrome today and is capable of validating SCTs today. So the plan for rolling out this requirement for CAs ready to meet this requirement.

Arno: There are CAs already deploying it?

Ryan: Yes. There are already CAs that are logging certificates to the transparency log operated by Google. The implementation within Chrome will allow you to validate against the Google log, and then as other logs come online, as discussed in the CT plan within the CABF mailing list, those additional CTs can be validated. But right now the Google log can be trusted and there are additional command line flags for testing and debugging if the CA wishes to operate its own CT log or test against a different CT log instead. So, you can provide the public key of a different CT log and have that validated as a trusted log.

Arno: So, can you explain what a CA has to do to be part of this program? So if D-Trust is part of a program, what does it have to do?

Ryan: The CA has to send its certificate to a participating log. Google operates two CT logs (a third one is planned), and a participating CA can send its certificates there and get three signed certificate timestamps (SCT). There are three methods to get and provide an SCT- by sending a pre-certificate, by sending an OCSP response, or by configuring a server to send the SCT as a TLS extension. So, in those it is possible to log the certificate after issuance. However, in order for such certificates to be seen as valid, as far as Chrome is concerned, the site operator of such a server would need to be stapling the response or providing the data through the TLS extension. So, when we talk about issued EV certificates, the site operator would need to be doing OCSP stapling or the TLS extension.

Ben Wilson: Isn’t CT still somewhat experimental? Some members of the CA Browser Forum have concerns about their ability to submit to the logs. We had presentation or discussion by Eddy Nigg a couple of weeks ago where he was very concerned about the ability to do that. He said that with the EV certificates, he could interject CT into to a manual process. Also, the only currently practical method appears to be the pre-certificate. There are also questions about whether it should be a pre-certificate or something else not called a certificate.

Ben Laurie: The experience of CAs who have already tried to implement CT is that it has not been particularly difficult. I’ve only heard this from those who haven’t tried, so I don’t know how to evaluate that. The people who have done it have not had any particular issue. The other point on pre-certificates, if you want all of your customers to be able to use CT, EV with Chrome, then currently you have to go down the pre-certificate route because servers don’t necessarily do OCSP stapling and they certainly don’t yet do the TLS extension. I am open to something other than a pre-certificate, but the reason that format was chosen is because you’re encoding all of the same stuff. There are a few things that stop it from being a real certificate. First, there is a critical extension that no processing software should understand. So that should break anything that tries to use it. The other is issuing through an intermediate that also has a poison extension. It looks like a certificate, but you can’t actually use it as a certificate. But if people are hung up on that, we can look at a different format, but it looks like extra effort for no particularly good reason.

Wayne Thayer from Go Daddy: My questions really have to do with the EV plan. The first has to do with point number five, which states that by July 2014 all EV certificates beyond, and then in brackets “\[by July 2014 all certificates should be logged in at least one qualifying log\]”. It’s a little unclear to me how that relates to the January 1, 2015, whitelist period, and what is the July 2014 validity period? In other words, what are the specific rules for EV certificates that need to be logged and by when?

Ben Laurie: Right. The motivation behind that is that any certificates that are valid after the go-live date and that were issued before and that were issued before logging was mandatory will have to be whitelisted. We’re concerned about the size of the whitelist, so the reasoning behind that date is that we would only whitelist things that were issued before July 2014. And the purpose of the square brackets is certificates not whitelisted will not meet program requirements at the beginning of February 2015 when we go live. That was written before we knew how many certificates we would have to deal with. There is a possibility that we could whitelist certificates issued after that, but the plan is that certificates not logged after that date will stop working.

Wayne: So number five should actually read, “by July 1, 2014, all EV certificates with validity periods beyond February 1, 2015 must be logged if they want to retain their EV indication in Chrome,” if that’s the interpretation.

Ben Laurie: Yes.

Wayne: Okay, thank you. My second question has to do with some statements down below about the number of logs and the operator of each log. I don’t see it at the moment, but there is a statement that indicates the logs have to be controlled by two separate entities. Can you explain that further? Is the interpretation there that if a CA wanted to, for instance, log a certificate with three Google logs that it would not be sufficient, that we would have to find some other entity running a log to obtain another timestamp?

Ben Laurie: That is still a to-be-decided criterion, but the reasoning behind that is to improve security. If a log gets pwned, that will compromise everything, and so the whole point of using multiple SCTs is to avoid ending up in a position where all of your SCTs are invalid at the same time. But if we’re the only entity running a log, then we can’t currently apply that rule, so we’ll have to see how that pans out in time, but in the long run we’ll get to where they are run by different entities.

Wayne: That makes sense. The concern is the timing of that, so is the interpretation that if a CA were to log a certificate that requires three SCTs with three different Google logs that it would be acceptable until some future date when other logs are available? Or is the interpretation at this time that the CA should have to put up their own log in order to be able to log with two other entities, assuming that Google has its log and the CA’s log is the only other one.

Ben Laurie: Our position for now is that you can use just our logs, and that would be fine.

Ben Wilson: One member has asked whether there is a timeline available for Google’s plans to rollout CT, and what is expected of CAs, etc.

Ben Laurie: Obviously the only immediate plan is for EV, but we intend to extend beyond EV. The plan will be informed by these experiences, it’s a little difficult right now, but I’m happy to attempt some timeline for certificates on the basis that it might completely change.

Rick Andrews: In my opinion, EV was created by the CAB Forum, and I was wondering if you’re going to bring your idea to require CT for EV to a vote in the CAB Forum?

Ryan: So while I recognize that EV was created within the CAB Forum, what has been established in the CAB Forum is a set of auditing requirements and governing principles that govern EV, including Webtrust for EV and equivalent auditing standards to determine compliance with that. But if you approach a root program and say you have a Webtrust audit, that fact in itself is not going to get you into a root program. There are a series of other checks. For example, if you approach Mozilla with that, you are going to go through a public review, and you’re going to go through a series of document checks by Mozilla staff and later go to public review and discussion. If you approach Microsoft, you’ll have their program requirements. While EV Guidelines set the auditing framework, there is an additional set that goes on to enable EV. As I mentioned on a call previously, CT represents an auditable framework. So existing audit criteria essentially have a Webtrust or ETSI-accredited auditor go into your organization, examining your certificate practices, your CPS, ensuring that your CPS aligns with the stated EV policies, and if so, signs an attestation to an assertion. It is clear that while it is helpful, we’ve seen that such a point-in-time audit does not address the sorts of issues that affect trust online. We’ve had multiple incidents, and we’ve all seen how it comes about-for example, sometimes it’s well-intentioned, but mistakes will occur in a change configuration system. We want to provide the capability for the public who relies on these certificates to actually be able to audit these certificates, to be deserving of that trust. So that is why in our view CT is an additional set of requirements, similar to the EV Guidelines. Whether they are folded into the EV Guidelines, we’re not pressing on this point. We realize that there are deployment hurdles, and that is why we’re working with CAs in the Forum to better understand CA concerns on the technical engineering side, but the overall goal is to provide a publicly auditable detection framework, so that any CA operating in this heightened trust mode can be verified.

Rick: So you gave an explanation of why the current audit also needs this public audit, and I don’t have an argument with that. I was simply asking why not put it to a vote in the CAB Forum before coming up with a unilateral plan to force CAs to do this.

Ryan: Because we’ve seen that when presented to the CAB Forum, while we can certainly appreciate the multi-stakeholder nature of it, it is certainly not in the interests of some CAs. It is not in their interest-their business interests are not aligned entirely with our security goals for our users. Our first and foremost goal as an application vendor is the security of our users, and we’ll continue to act on that. And we also recognize that the CAB Forum is a very slow-moving organization-e.g., the SHA1 discussion with the CAB Forum and whether the action of an application vendor has been sufficient. So CT is another example of a vendor acting unilaterally, and we can see that some CAs prefer that approach.

So regardless, we’re going to continue to act in the interests of our users and ensure that their needs are met, and we believe CT aligns with that, and we see CT as going forward regardless of a vote, and we want to understand the concerns, and develop something workable for CAs, and later take it to a vote, but as an application vendor we are willing to take that risk and act unilaterally.

Rick: I believe that you’ve received feedback from a number CAs that this is going to be onerous. It is not like moving from SHA1 to SHA2. I’m cautioning you, don’t use the positive experience of a couple of CAs as the evidence that it is easy for all CAs to do, because everyone’s systems are different. I think you have had feedback on the various lists, that this will be difficult to do, and fairly difficult to be done within the timeframes that are within the latest document.

Arno: Trust service providing is not a speedy business. There is nothing where you can change procedures in 12 months, unless you do it and do it wrong, and most trust service providers do not understand exactly what to do, and most systems in Europe are not ready and are unaware of what is meant by a pre-certificate. So you should change the course of what CAs are doing over 36 months, but to do it within 12 months, I do not believe it is possible.

Ryan: The benefit is that we’re rolling this out for EV certificates, which is only a segment of the larger population. EV certificates provide no added security for consumers on a technical level, due to the nature of how an HTTP origin works, but we want EV to bring additional technical trust to user security.

Iñigo: I would like to understand the audit aspect of this. Will the audit scheme include CT for CAs to prove that they are compliant?

Ryan: Not really, because applications will just reject certificates that don’t comply. Beginning February 1, 2015, applications will check for CT within the certificate chain. While the long-term goal will be to include CT within an auditing framework, in a CA’s CP and CPS, but it is more importantly a technical control. This is similar to some of the recent cryptographic requirements, like an application that rejects an RSA key size less than 1024 bits, which applications have now moved to do. So audits will catch it, but applications will technically catch it as well.

Iñigo: Are other browsers using this? From the auditor point of view, it has to be clear what is expected for compliance with performance requirements.

Ryan: Before incorporating this into WebTrust or ETSI audit frameworks, this would be something that the CAB Forum would need to look at as to whether it needs to be audited. As for within the IETF, on a technical level CT has a defined set of profiles that can be used to objectively evaluate it. It’s like looking at a certificate and objectively determining whether it is DER-encoded. We’re not looking at incorporating this as an audit requirement, but as a program requirement, in addition to the existing audit and program requirements that already exist, in the same way that Mozilla and Microsoft impose additional requirements.

Iñigo: Every browser has its additional requirements that haven’t been audited.

Ryan: That’s often the case. If you look at Microsoft and Mozilla, you will see that that both have adopted more stringent requirements for the randomization of serial numbers than what is in the Baseline Requirements.

Ben Laurie: And CT is technically auditable, so it is not clear whether including it in your manual audit helps in any particular way, because if you don’t do it, becomes obvious very quickly.

Iñigo: Going back to Rick’s question, if this is going to be somehow included, then checks you can provide to the auditing community … well, if we include the RFC in the EV Guidelines, then it can be done.

Ryan: Just like RFC 5280 and X.509, that is why work is proceeding in the IETF.

Arno: It is like in the ETSI Algo document, we recommend stronger cryptography-that’s state of the art. But you are introducing new techniques of doing PKI, which is a fundamental change for security systems which is a procedural change that we need to be careful with when it is implemented by trust service providers. The 12-month time frame is a problem, and we need security advice – is there a university or external authority that will make a statement about whether the level of security is increased by CT?

Ryan: I point to the IETF, and Ben L. can give you some resources.

Ben Laurie: RFC 6962 is indeed an experimental RFC, but in the security area of IETF, security is taken seriously. There has been substantial peer review in the IETF community by cryptographers. There have been three university studies published. There are also studies on systems that use identical structures, in part. So there has been review.

Ben Wilson: I have three questions. Someone has asked for the URL for the timeline.

Ben Laurie: We’ll send out an email with that URL.

Ben W.: During our discussions of SSL performance, we were asked to reduce certificate size to make room for CT. What do you recommend or what should the SSL performance working group be looking at, or is this something premature?

Ryan: Just to clarify, the goal is not to shrink it for CT. The goal is to shrink it for IW3 systems. Brian’s group is looking at the overall performance of SSL to see how we can improve the performance of SSL to increase the adoption of SSL. So CT is part of overall discussions about the central security properties of a certificate, and what a browser can technically evaluate, and what are the nonessential properties, that perhaps have been motivated either by legal opinion or assumptions about relying parties or end user that are not borne out in the user experience.

Ben L. can comment on the actual size of CT, but as discussed in the SSL performance working group, IW10 is something that can offset some of these costs.

Ben W: Rob Stradling had asked about how many proofs needed to be included, and in what situations might fewer proofs be needed. Oh, I see you already have a chart available. So, I guess we need to understand more about the number of SCTs required and what is the size of the SCT and the overall impact of additional overhead.

Ben L.: It’s around 100 bytes. Rob Stradling has proposed some potential size reductions that I’d be happy to look into that during the revision of the RFC. I suppose we could get it down to about 70 bytes, or something like that. With the TLS extension and OCSP stapling, we only require one SCT because those can be dynamically updated, unlike certificates, obviating the requirement for multiple SCTs initially (so that if a log does go bad, we don’t end up cancelling half the certificates in the world as a result of it). The secondary consideration is that the more SCT you have, or are required to have, the more difficult it is for a bad guy to issue a certificate that looks validate but is not, because the more logs there will be that they will have to subvert-which currently is not a factor, but might be considered in the future

Ryan: I do want to highlight that this is not new. We have announced this requirement previously, and I want to take the opportunity now and in the coming weeks to revisit these program requirements.

Rick: Unlike internal domain names, this something that will require a lot of change for some CAs. There are a number of CAs that use commercial software, and unless that is updated, they cannot deploy CT. I suppose there is a possibility that a number CAs will lose the ability to issue EV certificates because they simply cannot get their vendor to patch their system.

Ryan: You do not lose the ability for issuing EV certificates. What it means, is that in order to present an EV certificate you either need to support OCSP stapling or TLS extensions. It then becomes incumbent upon the server operator to evaluate when looking for a CA to issue EV, based on whether or not their server software supports OCSP stapling or the TLS extension. So any CA currently in the Chrome program has the capability of continuing participating in the Chrome program. It just means that there would need to be a server operator change. So Mozilla has discussed and included on the public list in past requiring OCSP stapling for EV certificates, and so this is conceptually a similar requirement to that. Including SCTs in certificates give CAs the ability to provide EV without support for OCSP stapling.

Wayne: Didn’t Ben Laurie state earlier that embedding SCTs is the only practical way to implement this today?

Ryan: To clarify, it is the only practical way for a server operator that does not support OCSP stapling, so Brian Smith gave 7 percent as the number for those that support OCSP stapling. I don’t know the details of that number. Is it in terms of active connections in which they actively requested OCSP stapling, or not, because in Firefox they don’t always request OCSP stapling. So, for practicality, it is a question about where in the ecosystem improvements exist.

Wayne: Commercial software takes time to be updated, and I don’t understand it well enough to say as a fact, but my thinking is that OCSP servers also need to be updated to be able to serve up this new extension.

Arno: The security regulation of OCSP systems in Germany may require nine months before changes can be made, and that is common.

Ryan: On the matter of OCSP stapling, there are a number of CAs who have pointed out that they are pre-signing OCSP responses, so there is an opportunity to incorporate CT into that pipeline-the OCSP serving infrastructure is already capable of delivering these SCTs.

Rick: Ben L., the IETF is a slow deliberative process where they favor building consensus. It seems to me that this spec has gone from experimental to being required at breathtaking speed, which speaks to Arno’s point, and I think it’s dangerous, but is this within the IETF working model?

Ryan: It is. The IETF model is rough consensus and running code. Many of the successful standards in IETF that have been successful have been deployed through development of the standard.

Rick: But I see really rough consensus because there are many CAs who have said, “we can’t do this on your schedule”.

Arno: They don’t understand exactly what does it mean. What is a pre-certificate that you expect to log? Is there an exact explanation in the RFC?

Ben W.: I have a diagram that might help.

Ben L.: If there is a certificate in the log, you have to identify it, and you identify it by hashing its contents.

Ben W.: Before you create an actual certificate, you create the pre-certificate and you sign it with a CA or sub CA chained to the same CA that you’re going to use, that has a critical extension – a poison extension that because it is critical should cause anything that is trying to use it as a certificate to fail. Then you send it out to however many logs you want to, or that you are required to, for whatever timeframe you need, and you wait, and you run through a logic process where you ask whether you have enough SCTs received to go forward with the process. Then we look and see whether there are log servers that can respond, if not, you fail, otherwise you keep going around until you have enough of those responses. Then you can remove the CT poison extension and put the SCTs into the certificate structure and sign and issue the certificate.

Doug: It looks like the hash of the pre-certificate isn’t actually of the certificate you are issuing. So, when you go to validate it, it looks like you’re looking at one certificate, but you have an SCT for a different certificate. What’s the relationship between those?

Ryan: The way it works on the client side, the client takes the certificate with SCTs and removes the SCT extension. Then it does the DER encoding of it as a TBS certificate to compare the TBS certificate hash and match it against the hash of what was sent to the SCT log. So, the client does not need to reconstruct any signatures, it reconstructs the data that was signed-similar to what it already does when verifying a certificate signature when its checks the TBS certificate. So, the client does a DER encoding of this modified certificate.

Question: Where does the poison extension go?

Ryan: I believe the RFC specifies that.

Moudrick: To me it looks like there needs to be another CA that is independent of the CA issuing the certificate that also has to be audited because the overall result depends on this other CA.

Ryan: There does not need to be another CA, but there could be a delegated pre-certificate signer, like a delegated OCSP responder/signer, or you could use your issuing CA.

Moudrick: So, for a given certificate, would I essentially have to issue two certificates? Are they both “certificates”?

Ryan: Yes. That depends on our discussions later today, in terms of what is an SSL certificate.

Moudrick: In the end, do I have two “duplicate” certificates?

Ryan: You have two certificates with the same name and serial number, but one has a critical poison extension, that should prevent it from being used anywhere. And that relates to the discussion later today on whether the CA/Browser Forum needs to take action on whether the certificate with the poison extension is an SSL certificate according to the Baseline Requirements. That is something for the Forum to determine and that is the discussion that is taking place on the list-it’s a matter of terminology. On the other hand, with a delegated pre-certificate signer, you have two certificates with the same serial number, but they are issued by two different CAs. Also, there is no requirement; you can do it either way.

Doug: So, would the other CA have to have the same key, if you are hashing the issuer’s KeyID and the Issuer’s subject DN?

Ryan: RFC 5280 does not require the Issuer DN to be enforced by the client, so the two can be different. The metadata mechanisms in certificates like DNs and Issuer keys used for chain building, disambiguation, processing cross-certifications, and key rollover are advisory and not mandatory. The pre-certificate issuer can set its key identifier to that of the final issuing CA’s key (or it could be the pre-cert CA’s key), but either way both CAs have to be configured so that the hash of the pre-certificate and the hash of the certificate are not different.

Bob: My concern is that this is the first time that we’d be saying that a duplicate serial number from the CA would be allowed.

Ryan: This is quite common, from what we’ve seen.

Bob: That might be OK on a limited exception basis, but under this spec every certificate is going to have a matching pre-certificate that is not valid.

Ryan: That is where the pre-cert CA comes into play. We’ve been working with Rob Stradling on this profile.

Rick: I suspect that our large enterprise customers will be concerned and will want to stay out of the log, but this issue is still open according to the issue tracker.

Ryan: Processing the policy requirement for an SCT will depend on the browser. It is similar to the processing of name constraints. When a name constraint is encountered, do these need to be logged? As mentioned during our discussions yesterday, if you chain to a CA that is name-constrained, there is less concern about what is in the certificate, because you can only hurt yourself. On the client side, we’ll enforce cryptographic requirements, but requirements like self-auditing of 3% of certificates issued, are separate. With SCT enforcement, if the process determines that the CA is not name-constrained, then it can disallow the certificate. However, yesterday it was mentioned that name constraints do not work for certain organization, but I care about those certificates-because the CA presents risk to the Internet, we expect to see those certificates logged.

Ben L.: We want the Intermediate CA to be logged. Rob Stradling has proposed that for certain pre-certificates the log does not reveal the subject’s name, but it still maps one-to-one to the issued certificate, but I need to look at the security of the proposal some more. Basically it would say, “this is for a private name in this domain,” and the client could just check that, because that would be morally equivalent to a name-constrained CA.

Ryan: So, within the context of the discussion for name constraints, these two methods would both be privacy preserving. In both cases you have a portion of the public name that is logged. However, non-constrained external CAs need to be logged.

Rick: So, do I need to create a new intermediate CA and constrain it?

Ben L.: No, you could issue the pre-certificate and log it as “private.example.com” and then issue the real certificate with the real name.

Ben W.: As we discuss the security and privacy of logs, it seems there may need to be a legal framework developed around the rights, duties and obligations of parties handing the logs, aside from the auditing of log operators that is technical in nature. Does the CAB Forum need to look at these non-technical issues?

Ryan: If you look at Mozilla’s policy concerning repositories, it says that all repositories must be publicly accessible without username/password. That is similar to the approach that we have taken with CT logs-they should be open as a condition of the software that requires and implements them.

Kirk: Ryan, I have one quick question, does Google’s privacy policy, with its Opt Out provisions, apply to CT? Will it apply to CT?

Ryan: Do you mean the privacy policy that applies to end users?

Kirk: No. You are requiring public logging, whereas today there is none for certificates, and the subscriber may not have even used the certificate yet.

Ryan: We are requiring transparency for certificates that are going to be used on the public internet.

Kirk: Does your privacy policy apply, as it affects certificate buyers?

Ben L.: Privacy policies don’t apply to public data in certificates.

Kirk: It’s not public until it’s used in a public setting.

Ryan: Mozilla’s policy is that it’s public data, and that’s our view.

Kirk: So, your policy applies, and there is no opt-out, or the policy does not apply.

Ryan: We’re saying the policy does not apply because it’s public data as defined by our root program.

Rick: If I have customers who buy certificates for use internally, then if they are publicly trusted they have to be logged?

Jeremy: What if you are using Chrome internally on your network, you shouldn’t have to log your certificates because no one outside the network will trust it, but you could inside your network?

Ryan: That is not in the spec or the current Chrome implementation. We don’t have an opt-out setting in Chrome for internal domains, but we support a variety of policy management consoles like active directory, and so in the same way that we’re looking for ways to allow management of HSTS and HPKP for internal names, but this raises a question about auditability of whether names are internal to an organization.

Jeremy: But I don’t see the problem with allowing the certificates not to be trusted outside the internal network. You are giving the customer the option to choose.

Ryan: Right. That’s why I say I’m not advocating that CT be incorporated in an audit framework just now because CT can implement a number of technical checks. So an enterprise can determine how to implement. By not incorporating in CABF requirements we’re also not dictating what server operators must do, just like OCSP stapling, and we might allow the administrator to change the UI so that it shows as EV, just like in Microsoft you can flag a CA so that every certificate issued by it will display as EV.

Kirk: Have you considered European Data Privacy laws and whether CT is in compliance?

Ben L.: We are merely mirroring the public information.

Kirk: Since we have to comply, we need to be concerned, so it would be nice if you could get a legal analysis and confirm that we will not all be violating European Data Privacy laws.

Ben L.: We can ask, but they will say that you cannot rely on any opinion they give.

Ryan: If you are asking, we have involved internal legal counsel in discussions of CT.

Arno: It is not just the data protection law, but it is the competition law you need to look at, too.

Ben L.: We’re open to any suggestions that make this easier to deploy.

Chris: Given the concerns expressed by smaller European CAs and CAs who can do it and CAs who can’t do it, would you be open to adjusting your timeline?

Ben L.: I’ve heard representations about difficulties of meeting timelines, but so far nobody has provided more, which is not telling us much.

Dean: On behalf of Symantec, we’ll tell you now that this will be very difficult for us to implement in this timeframe.

Rick: What do you want to see? Roadmaps we’ll have to re-shuffle?

Ryan: We can look at technical solutions to address technical difficulties, but we cannot help with scheduling work on your systems because they are your systems. So providing details on scheduling is why we requested comments several months ago to better understand where the scheduling and technical difficulties were. Now that the schedule has been published, we can assist with resolving technical difficulties, but on scheduling changes there are policy decisions that need to be addressed by our root program operations and this cannot be extended out in terms of years for participants in our EV program.

Dean: There seems to be too much fluidity in the technical specification, such as the changes in the number of proofs that need to be in the certificate based on the validity period of the certificate. We need this to be more concrete for our planning purposes.

Ryan: CAs without technical concerns have not experienced problems with the fluidity. That is why we’ve focused on resolving the technical problems.

Richard: The CT spec says that it has to make it impossible to issue a certificate without the domain owner knowing about it, so in the domain validation process, you send an email to the domain owner.

Ryan: As you look at the issues we continue to see, the domain validation process is not a perfectly secure system. It is subject to hacking and mis-issuance. Under the current audit framework, mis-issuances are going to escape detection because audit sampling will miss some, whereas CT provides demonstrable proof.

Richard: What about CAA? Google says, “WoSign cannot issue Google.com domain”?

Ryan: We have two methods-pinning and CAA. Public key pinning is already in Google Chrome, but it does not protect any user who does not use Google Chrome. We discussed at a previous CA/Browser Forum face-to-face whether the Forum should mandate CAA by requiring CAs to state their policy concerning CAA in their CP or CPS, but due to misunderstanding by some CAs about CAA or due to differing opinions, did not accept that. However, both of these are inadequate. That is why we have CT-because policy in practice, while good, is not perfect, and CT provides technical means.

Richard: If CT says “anyone can submit a certificate to the log,” what about someone submitting a mis-issued certificate?

Ryan: CT doesn’t differentiate good or bad certificates, it just logs them. Google’s log will accept any certificate that chains to certificates in its trust list. CT provides a way for the legitimate party to identify a mis-issued certificate.

Richard: What if bad guy submits bad certificate to the log?

Ryan: That is what we want – the bad guy has to submit the bad certificate to the log so that everyone can know and contact the CA that allowed the certificate to be issued.

Iñigo: If this is only applicable to EV, what is the user experience with the green bar? Will it just show https?

Ryan: If the certificate does not have valid SCTs, then it will not show EV, but it will show https because EV is a superset of domain validation under the Baseline Requirements. You’ll also be able to click to get more information about the SCT status of the certificate, so if a user wants to know why they don’t see the green bar.

Iñigo: In what older versions would you still see the green bar?

Ryan: We have implemented this in Chrome 33, and or experience shows that users continue to automatically update their version as we update it on a six-week cycle. You’d have to disable automatic updating, but then over time you’d have an insecure product.

Iñigo: Many enterprises don’t update on a timely basis.

Ryan: The UI will evolve and improve over time.

Eran: I am updating the documentation of the UI in Chromium.org.

Chris: It seems like a lot of the comments from the CAs have been brushed off. It would be nice if we could come up with a timeline that we could all agree on.

Ryan: We’ve tried to work with the CAs in our program, and there are CAs, including a very large one, who are not present. Also, we want to see comments that result in action, which is not always the case and is not in line with our goals.

Dean: If we are trying to address fraud on the internet, and address other types of certificates where fraud is more prevalent, I would like to know how this proposal aligns with that goal.

Ryan: Over the past three years we have continued to work on eliminating vulnerabilities and insecure plugins facing our users to protect our users and improve our user experience. We aim to balance security and the user experience.

Dean: If you are not seeing some of the data that we are seeing at Symantec, we’d like to share that with you.

### ETSI Presentation

#### Deliverables from ETSI regarding web site certificates

ETSI’s schedule was explained, as public drafts are published and comments are being taken for second publication, which is going to be published on April of 2014. It is planned to be voted on September of 2014 and will be finalized in the 2nd half of 2015. Documents that will be affected are EN 319 401, EN 319 411-1, EN 319 412-4, EN 319 403, EN 319 413, TS 119 312.

**EN 319 401:** general policy requirements for TSP. TS 102 042 covers Website certificates security requirements. EN 319 401 will be expanded to cover all types of certificates, including qualified ones. There is some concern that people already have something for security requirements and new ones will raise questions of why are we creating some new ones. Also it may cause some changes on documents.

Iñigo: When CAB Forum Network Security Document is composed some of the requirements were taken from WebTrust, some of them were taken from ETSI. So older ones are still on CAB Forum Documents. For new ones, they have been compared to improve consistency with CAB Forum Documents. EN 309 401 : obligatory for all TSPs

**TS 102 042:** is for TSPs that produce qualified certificates. A TS depends on the law of every country which to apply or not. But EN is mandatory in EU level. All the CA in Europe follows EN.

**EN 319 411-1:** policy requirements for TSP that issues web site Certificates EN 319 412-4 : Profiles for TSP; Part 4: Certificate Profiles for web site certificates issued to organizations Iñigo: what we have done for EN319 412-4 is adopt profile from CAB Forum documents. Every change in CAB Forum documents affects ETSI documents. Iñigo: In London it was agreed that OCSP & CRL are mandatory in 2015. Big CA does not want to have huge CRLs. In Vienna it was agreed for natural persons that OCSP is mandatory, but CRLs for individuals it is not necessary. It only affects EN 319 411-1. Iñigo said OCSP – CRL consistency on Baseline Requirements has to be checked.

**EN 319 411-3** can be used for code signing and another TS will be implemented.

**EN 319 403:** Conformity Assessment for TSP. This document indicates how the audits should be performed, who can perform this audit. EN 319 413 : Conformity Assessment for TSP is going to be removed.

**TS 119 312:** Cryptographic suites for secure electronic signatures, “algorithm paper” aka “Algo paper” is going to be implemented this year. SHA-1 will not be used. For SHA-2, in 2020 another change will be done to these documents because of 6-year life cycle of documents.

There´s a requirement for auditing bodies to comply with ISO standards (17065, 27006) in order to audit TSP against the new ENs. They have up to 2 years to comply with this requirement.

Possible work around for migration is to have TS & EN together for 2 years. The idea is to start to migrate in 2014.

Organization of documents is shown. EN 319 401 general policy for all TSPs, EN319 411-1 is policy requirements for CAs issuing web certificates which is following CA/B Forum Web certificate guidelines, EN 319 411-2 for qualified ones, EN 319 411-3 is for public key certificates.

Rick: Can I operate ETSI or Webtrust, what they are doing on ISO is pretty settled down.

Don: ISO-127001, ISO-127002 are general controls and just bit about TSS environment. Also close 127000 127001 and 227000 significant changes. 27188 is standard for financial organizations. Where we stand is 27000. It has physical and logical controls.

Is there an approach to say we are doing both?

Don: No. There is no approach.

Iñigo: There is ongoing work to complete template of auditing. There are no contradictions from US. They contacted the CAB Forum, and have contributions from Germany, Luxemburg, England, and South Korea.

#### Migration Plan

Plan for migrate from TS 102 042 to EN 319 411-1 Significant change in CAB Forum documents that affects EN documents as we agreed in 9 months will applied. Final publish is in October 2015.

#### News on EU Regulation

Requirements will be published on April 2014 and take effect at the end of April. Article 9, 10, 13, 15, 16, 18, 19, 37

There will be discussions between commission parliament and council and then agreement will be done. Final goal is 2017.

Link for TSP standards: http://www.etsi.org/index.php/technologies-clusters/technologies/security/certification-authorities-and-other-trust-service-providers

Link for General e-signature: http://www.e-signatures-standards.eu/

Link for EU Regulation: http://ec.europa.eu/digital-agenda/trust-services-and-eid

### Bylaws Revisions

Dean set out the current position as follows: we have had a number of enquiries from parties wanting to join, such as Visa, Amazon, Oracle, and Cisco.

Visa has applied for membership as a CA. They have their own public trusted roots and issue certificates for their own use on the web. The CABF IPR is going through legal review with Visa legal counsel.

Oracle has expressed interest in joining as a root store provider, but we don’t have this category, we have CAs and Browsers. It feels more like they should be on the browser side. They were told they could apply as that (browser). They are in IPR review.

Dean: Anyone think they should not be considered as a browser?
No objections heard, but the definition seems deficient.

Voting categories currently are:
Issuing CA
Root CA
Browser

Non-voting categories are:

- Interested parties (PayPal , ICANN, ETSI, WebTrust)
- Other parties

Amazon has expressed interest. They have their Silk browser. Gerv had asked via email, what do you do about maintaining a root store? They replied that they use client-side processing on the Kindle. Kindle has a full TLS implementation and uses a certificate store. Kindle uses Android root store, according to Ryan, like Opera.

Dean has handled communications with Cisco. They are interested in becoming part of the process. They operate a root store used within all Cisco products. So far, they have been told they can come in as an interested party. They have not signed IPR yet. They would like to participate in the Forum as a whole, not just some working groups.

A question was raised about Opera under alternative definitions – in transition because using Chromium.

Interested parties – only allowed to take part in working groups. Can only come to Forum meetings by invitation.

Associate member: – exists, but is not defined in the by-laws. This needs formalizing. The historic reason they are in is because we want them in, not because they are an X, Y, or Z.

Let’s do the easy things first. Kirk has written an Associate member definition. Let’s put through a ballot to change the by-laws to define the Associate Member category. Then we could invite Cisco to apply in that category.

Ryan Sleevi: Oracle is in this awkward place. Arguably Android is in the same place.

Dean: We wanted Oracle in the CS group as an interested party, pending their acceptance of the IPR. They are still interested in participating. We think they will want a voting right.

Dean: If we open up the voting category to a ‘root store’ – there are pros and cons. Are there lots of ‘root’ stores?

We could look at producing different documents for different sets of members? BRs for SSL – CAs and OS/relying parties.

For CS, there are CS root stores and CAs.

Qualified Certificates – Adobe is a big player in the QC area now (maybe) because they have adopted the EU TSL.

Bob Relyea: Maybe we add a category of public code-signing root stores. Any other root store would be an associate member.

Ryan: If you have a roots store, but are not using CS and not doing SSL – you’d be an associate member. Setting different rules for different constituencies.

Moudrick: ‘Applicable root store’ Those that apply to CS and SSL. This doesn’t include Qualified Certificates. defines a group – ‘root store operator’ – non-voting in general.

Dean: Where would Chrome fall? Root store provider? Root store operator?

CABF will broaden in scope, with more code signing interest, perhaps, and a different constituency.

Dean suggests we go forward with the associate member ballot. Where’s the distinction between Associate Member and Interested Party? An Associate Member application could be rejected and they could come back as an interested party.

Associate Member has a lot going on. The recent application from a German researcher was not as an Associate Member, but as an interested party.

We must determine that the relationship promotes the work of the Forum for an Associate Member.

Current Approach

Visa: CA (Wells Fargo is in CA category like Visa)
Amazon: Browser
Oracle: Associate or Browser. Probably need to be browser – decide if/when they sign the IPR agreement.
Cisco: they are a CA, but they don’t do SSL for e-commerce, etc. They don’t issue certificates to sites which are publicly visible. If like Affirmtrust, that couldn’t join until they had issued publicly trusted SSL, then Cisco would be an Associate Member for now.

Ben thinks he has a proposed definition for Associate Member that can be used from Draft Ballot 110.

Action: Hold a ballot to define exactly what an Associate Member is.

### What is an SSL Certificate?

This was a lively discussion but with no clear-cut conclusion at this meeting. I expect there to be follow-up on the mail lists and at the next Face-to-face.

The group wanted to clarify the statement: “You fall under the BRs if you **_intend_** your certificate to be used as an SSL certificate.” But, there is a hole here because even those CAs that do not **_intend_** to be used for issuing SSL certificates **_could_** be used to issue SSL certificates (accidental or maliciously). The focus of this discussion was on how to technically constrain non-SSL CAs from being able to issue SSL certificates. If a CA can technically issue SSL certificates, the CA needs to (should/must?) comply with the BRs.

There are several ways to technically constrain CAs:

- **Name Constraints**: this is the desired method because once constrained to a specific set of DNSnames or IP addresses; the CA can only hurt itself. But we acknowledged that this is not possible in many cases.
- **Policy OIDs**: While mentioned, this is not feasible to technical constrain what CAs can issue using Policy OIDs, this is more informational vs. technically enforceable. Some applications perform Policy OID mapping to determine if/how the certificates should be used.
- **EKUs**: This was the only method identified for general use across the board to limit what a CA can do. Options for certificates:

1. _id-kp-serverAuth_: If in the CA or EE certificate, it can be used to issue or be an SSL certificate.
1. _No EKU extension_: If there is no EKU extension at all, generally the CA and/or the End Entity certificate can be used for any purpose. Perhaps browsers and servers should start not accepting SSL certificates without an EKU as a valid SSL Certificate?
1. _anyEKU_: this is basically a wildcard value and allows any EKU value to be issues from this CA (or the end entity certificate to be used for any/all possible EKUs). If present in the CA, it can issue SSL certificates. If present in a certificate, it can be used as an SSL certificate.

General comments:

- Root stores have tried to tighten the language around what certificates can be used for under the hierarchy: All certificates that chain to your root qualify and must be comply with the BRs.
- Need to be compliant to RFC 5280
- Google has scoured the net for SSL certificates and have come across some interesting findings. Generally the CA that issued the “interesting” certificates was notified.
- Roots do not have EKUs, so there is nothing to discuss at that level in the hierarchy.
- Using anyEKU in the CA certificates is bad
- Creating different CAs for different purposes is good.
- Practice least privilege – Only give your CA the EKUs it needs to do its intended job.

**Suggestion**: Over the next 5(?) years, evolve to an architecture where a CA can issue SSL certificates if-and-only-if the CA has the id-kp-serverAuth EKU. Browsers and servers will not treat certificates as valid SSL certificates if the issuing CA does not contain this EKU (it may contain others). Normal EKU validation up the CA hierarchy will still be required. However, this is a longer term approach since CAs will need some tome to create new CA certificates, and all existing SSL certificates need to expire or be replaced.

- Note: Another possible approach to shorten this time-frame is to re-sign the current SSL issuing CAs with a new CA certificate that contains the id-kp-serverAuth EKU and distribute that to all web site owners. This could be done more quickly than the natural SSL certificate replacement cycle; however, this is not a trivial exercise.

### Review implementation status of OSCP stapling and multi-stapling (RFC 6961)

Stapling: There is an RFC for multi-stapling. It allows you to include an OCSP response for the intermediates. Google doesn’t want it. Mozilla uses NSS. It’s not clear whether Mozilla has an interest in multi-stapling.

Ben Wilson: If OCSP stapling is working, and the EE response is there and cached, only limit is bandwidth.

OCSP multi stapling is bad for performance. TLS 1.3 is trying to fix this, since caching stapled responses doesn’t help. Maybe using hashed staple responses.

Since intermediate OCSP responses are more likely to benefit from caching, Google is not interested in multi-stapling.

Google does support must-staple work: allow the CA to put a policy in the EE certificate that requires stapling when it’s used. This helps where hard fail does not work (e.g., when OCSP responses are blocked).

There’s a bootstrapping problem for sites that don’t yet have a must-staple extension in their certificate. It is not a perfect solution, but does help browsers identify when to hard-fail (especially if they can note that future requests to the site require stapling).

But must-staple can help with key loss.

Ben asked if Google won’t do multi stapling or OCSP fetching for intermediates, so you’re going to focus on CRL sets? How will they be updated?

Ryan Sleevi: we update CRL sets regularly (4 times a day).

Right now Mozilla doesn’t support CRL sets, but we will for intermediates.

And the 2.2 version of the Mozilla CA policy requires you to notify Mozilla when intermediates are revoked.

General complaints that it’s not completely transparent what’s in and out of Google’s CRL sets

Regarding private enterprise PKI… If you have an enterprise, you can force hard fail and get checking without the CRL sets.

### Wrap-Up

The group acknowledged Google for its generosity in hosting Meeting 31 of the CA/Browser Forum.

[1]: https://frozen.cabforum.org/WhoIs
[2]: http://www.etsi.org/deliver/etsi_ts/102000_102099/102042/02.01.01_60/ts_102042v020101p.pdf