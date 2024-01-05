---
aliases:
- /2015-10-07-2015-10-07-face-to-face-meeting-minutes-meeting-36-istanbul/
author: Ben Wilson
date: 2015-10-07 16:58:46
tags:
- Minutes
- Face-to-Face
title: Minutes of the F2F 36 Meeting in Istanbul, Turkey, 7-8 October 2015
type: post
---

# Day 1 – Wednesday, October 7 {#Day_1\_-\_Wednesday.2C_October_7}

## Working Group Reports {#Working_Group_Reports}

### Validation Working Group {#Validation_Working_Group}

*Note Taker: Doug*

The Validation WG is working on 3 items:

The Domain Validation proposal is in-process and is ready to move ahead with the goal of removing option 7 (any other method) and adding all supported domain validation methods. The one blocking factor is to obtain and understand any patents in this area, and the Patent Advisory WG is working on this. The ballot will be submitted once this is completed, likely in early November.

Business Entity other: Allow the issuance of EV certificates when government records of legal existence are not available. In this case, the certificate will include the individual’s name vs. the Company name. Ballot to be submitted soon.

Updates to IV certificates: OV certificates can be issued to individuals in certain cases as defined in the BRs. When this happens today the person’s name must appear in the Organization field. There is work towards a ballot to allow CAs to optionally put first/given names and last/surnames in the name fields and leave the Organization field blank.

### Policy Working Group {#Policy_Working_Group}

*Note Taker: Tim*

Policy Working Group works on overall high level view of baseline requirements, ways to improve, compare with other industry standards.

We converted BRs to 3647, looking for what to do next.

Need to decide whether to convert EV guidelines to 3647.

Also moving towards providing both documents in markdown format on GitHub instead of Microsoft Word.

Also need to decide to convert Network and System Security Requirements to 3647/markdown. Can create merged versions of multiple documents and compare them side by side (BRs, EV, NetSec, internal CPS, etc).

Met as a working group in Washington DC in September, went through entire document, made some suggestions.

Ballots forthcoming on converting EV and NetSec to 3647 / markdown.

Policy WG will propose subject matter based blocks of updates to BRs.

Kirk: if we’re going to use github, a link to the PDF version must be readily available.

Ben: it will be

Process remains the same (Ballots propose changing X to Y in whatever form the proposer prefers; the text of the BRs is what is important regardless of what format it is in)

### Code Signing Working Group {#Code_Signing_Working_Group}

*Note Taker: Cecilia*

We have finished reviewing the most recent comments from Sig. The final document will be posted to the public list and ready for a ballot. What we haven’t decided is the actual timeline for implementation. Some thoughts a while back was a year from ballot but maybe next Summer or Fall – need to discuss during the next WG call.

### Information Sharing Working Group {#Information_Sharing_Working_Group}

*Note Taker: Dimitris*

The idea behind this working group, which was created from the Code Signing Working Group, is to exchange information between members of the CA/B Forum about problematic subscribers (rejected applications, revoked certificates) that have mis-used a Code Signing certificate. It might look like a black list or an “under investigation” list. The goal is to minimize the risk for certificates that sign malware and risk to CAs that reject certificate applications.

Issues to resolve:

- Privacy of the subscriber and the CA that issued the problematic certificate. Are CAs allowed to disclose information of subscribers to other CAs? Or which CA was tricked into issuing the problematic certificate.
- Liability. Who is responsible if a CA trusts information exchanged by other CAs / Browsers
- Who will run the information sharing repository/server/code?
- Need to anonymize information with a low cost solution.

## Guest Speaker Session: Andreas from eIDAs {#Guest_Speaker_Session:\_Andreas_from_eIDAs}

*Note Taker: Sigbjorn*

Update on new EU website SSL regulations Andrea Servida (invited guest)

Slides also available, minutes reference slides in some part. See [eIDAS-Istanbul-Servida](/uploads/eIDAS-Istanbul-Servida.pdf)

Andrea has done network management security in the EU until 2012, now working on the new eIDAS Regulation on electronic identification and trust services, including website authentication.

EU Regulation on website authentication services. These are regulation (laws), not directives. The goal is to reuse existing nearly compatible national frameworks, and to create cross national, seamless trust framework.

The regulations are applicable for trust services, including web site certificates. Applies to businesses established in Europe. “Established” is a legal term, depends on the legal setup, but has no clear definition.

Scope: Provide legal framework to support the use of services. Electronic identification – e.g. to access public sector services online – this makes obligations on member states Trust services

- e-seals
- time stamping
- certificates
- electronic signatures
- electronic registered delivery services

Electronic identification is about reciprocity, what is a valid ID in one country is also valid in another. Trust services is about making the market be cross-border, that services can be used anywhere, buying from one country is valid to use in another. The same laws and liability should apply.

Trust services are about risk management. Not based on rules, but on principles. Transparency and accountability Trustworthiness Monitoring Neutrality Standardisation

The new rules will be valid from 1st of July 2016, will supersede previous regulations

Question: What happens if trust companies’ own trust rules conflict with the EU rules?
Andrea:

EU legislation applies first, then companies’ rules where compatible. Each country will have a list of approved TSPs

The regulation should lay down minimal security and liability obligations for the providers of website authentication services. It should hold for a long time, so not about technical implementations, but about principles.

To be a EU QTSP, the country must have agreements with the EU. Any foreign TSP can be recognized as fully qualified in Europe. Any EU QTSP will have the same legal standing, regardless of the originating country.

If a country enters, that country will make an international agreement. That country will provide a list of TSPs in that country.

What is meant by trust services: See slide 8

The regulation introduces liability regulations, including reverse burden of proof for QTSPs. 3rd party countries will have reciprocity agreements. (slide 9)

Sigbjørn: trust service means validation of certs – does that include browsers, and how does that work since they don’t get paid?
A: Includes browsers established in Europe, as long as they make any kind of remuneration from their services. Doesn’t have to be cash.
Question: Does this mean that browsers are not free to choose their own roots?
There will be one list of lists, for qualified services.

Q: Let’s take a step back. What is the value proposition of qualified web site certificates. E-id and code signing might make sense, but for identifying a server, what is the permanent item we are establishing?
A:

eIDAS provides the minimum set of rules for providers of web site authentication services. In this regard, it establishes the minimum security, accountability and transparency rules for the providers of such services. In addition, Q-certs reinforce the security and trustworthiness of the link between the server and the entity owning the site by establishing clear rules for the identification of the requester of the qualified website authentication certificate.

Q: So we establish a connection to an identity, which then establishes an encrypted connection. This connection might still include other data from other identities. Liability frameworks, and reciprocity make sense, but what is the value proposition of the certificates.
A: Think of the color change in browsers: As a user you get trust that you are connecting to the right place.

Q: CA/B Forum already has a standard for binding identities, and showing trust UI. What additional user value is gained by this regulation?
A: Users consider the connection secure, based on there being some checks. Regulation draws from CA/B Forum. The regulation wants to ensure that if something goes wrong, that the right stakeholders are notified. E.g. with DigiNotar. Transparency is a benefit. We might need greater accountability than just to users, to the digital market at large. If users follows all the rules, and something goes wrong, we want him to be able to rely on CAs work.

Gerv: Mozilla runs their root program as a public program, with select CAs. Several programs use it. CA/B Forum have together been trying to raise the bar. Mozilla’s ability to positively affect the market relies on the ability to control the trusted list. If trusting all EU TSPs, Mozilla would give up the option to control individual CAs which are not trustworthy, which removes the option of forcing positive change.
A: Conformity assessment bodies will make these decisions. Regulation does not say what “trustworthy” is. Can choose if they want to be part of the program, but if wanting to reach the EU market, these are the regulations. The supervisory body has to act when something is wrong. EU thinks this is public safety. If TSPs are qualified, they are audited. As long as humans are involved, failures will happen. If CAs want to be qualified, they need to do all things, and will need an audit, and need the supervisory body to check this. Everything that is part of CA/B Forum guidelines is also part of the regulation. CAs have the legal obligation to report issues. The regulation is the legal implications if something is amiss.

Q: Are browser obligated to recognize the trust lists?
A: The market is free to decide if it wants to integrate the trusted list. If no browsers want to integrate, then that is OK. It is up to the market.

Q: What is the statement being made by a subscriber of QTSP to users?
A: We can’t afford another DigiNotar. That is the background. This will improve that, because of the obligation to notify after a breach.

Q: Browsers have been focusing on systems which work in the absence of notifications. What are the value propositions to browsers for recognizing this, and what is the value proposition for the end user?
A: These requirements are not to replace trust lists in browsers, but there will be a new trust list in addition. Hopefully this will map well to what the CA/B Forum does.

Attila: How does this affect the market in Europe and Turkey? We have EV and Qualified certs, which are very similar. Will these become equivalent and converge? If something happens, browsers need to be able to blacklist immediately. EU trusted lists should be a common base, which browsers can override. So would this become similar to basic common lists, and otherwise work as EV today?
A: No, Qualified and EV are not the same. Ensuring the trustworthiness of QTSPs adds extra value to Qualified certs. The regulators decide who will be on the lists. One has to audit, then present the audit to both browsers and supervisory bodies. To be visible in browsers, need to be trusted by browsers. If browsers don’t integrate the lists, that is problem between browsers and users. Browsers have the market decision to override the list. They can also trust that CAs are bound by stricter regulations. Browsers may override, but should not discriminate.

Ryan: How would a browser acting in users’ interest accept third parties lists? E.g. browsers require 12 month audits, while QTSPs only need this every 24 months. Browsers have root programs, with contractual requirements. In order to be recognized within a browser, we need assurances that the same requirements are followed. Browsers also have stronger requirements than just ETSI.
A: Regulations are minimum, and valid for more than SSL. eIDAS might adopt other existing standards. Being on the trusted list is an opportunity, not an obligation.

Ryan: These requirements exist already.
A: Regulation requires audits to be publicly available.

Gerv: If EU regulations are weaker than CA/B Forum regulations, browsers wouldn’t want it. If they are the same, browsers don’t care. If EU is stronger, Mozilla can update its root programs quickly to add any improvements. These regulations add many extra steps, removing control and transparency. Mozilla handles this already. Handing over control of root programs to the EU doesn’t make any sense. Mozilla is open already.
A: It is a business decision to use the trusted lists. The product directive is to ensure manufacturers of products are liable. eIDAS is grateful to CA/B Forum for their work. The weak link in the chain is to be accountable to a third party.

Gerv: Browser makers are accountable to their users.
A: These are market rules. All are responsible to their users. Volkswagen failed, even based on auditing.

Gerv: Yet more auditing is not the solution. We want technical controls. We have implemented technical controls since DigiNotar.
A: This is a framework that governs the provision of services. If browsers don’t want it, that is fine. We are not trying to tell browsers what to do. This is a business proposition.

Ryan: This is civic oversight. Browsers’ concerns is not about liability, it is about technical controls. Not about blaming, but about protecting before something happens. Browsers will ensure not just trustworthiness, but also confidentiality, integrity and more. Liability is not important, it is not a value proposition for users. Ensuring security is. Auditing is about legal obligations, not so much about security.
A: How to define if a TSP is trustworthiness is not in the regulation. It refers to standards to define what it means. EU doesn’t know what the CA/B Forum does.

Arno: ETSI is working on the mapping. There is no clear standard for how to write up audits until know.

Ryan: I think we can reach agreement on the technical requirements. There might be different objectives. The regulation does not say what trustworthiness is. The business and audit and supervisory body will pick it up. Different companies definitely have different definitions of being trustworthy. CA/B Forum is important in deciding this.

Sigbjørn: Setting minimum requirements is fine. Not allowing browsers to set additional requirements on top is not.
A: There are no such limitations. Browsers may add more. E.g. if SSL says 12 months is required for audits, then that is what is required, even if the regulation says at most 24 months. Browsers have their own determination of what is important.

Ryan: Browsers have different standards, or not reach consensus.
Sigbjørn: Or cater to different users.
Ryan: So setting standards for all is hard. The audit framework does not represent all of the work going into approving CAs, it is just one part. This does not save us work, nor does it address our primary concerns. Audits are good, but there are issues outside of the audits are not addressed by a new type of legal framework. We have problems understanding the value proposition for our users.
Gerv: When suggesting that browsers implement the trusted lists, are you suggesting that we should change the UI too? Adding another UI state is too complex. If we are not going to change the browser UI to incorporate this, then what is the end user value proposition?
Ryan: In order to incorporate all standards, the new regulation would have to be a superset.
A: We fully acknowledge browsers’ right to do as they want, and to be accountable to their users. We think TSPs should be liable also to a third party. We want to have a list that TSPs have followed minimal standards. For users to see the trust icon would be good. The decision to use trusted lists is up to browsers. If browsers use them, fine, otherwise users won’t be able to recognize Qualified certificates. We are not imposing this. Engaging in a discussion on opportunities and challenges would be wise.

Ryan: The technical value of such a system is unsure. There is a lot of scientific research on UI. Some objectives might be at odds with the research. Browsers respond to this. This regulation might be at odds with both. Website certificates is very different from other certification services. We have concerns that this regulation doesn’t align with what browsers need to do. Introducing a new profile risks not adding value, and also undermining other browser objectives. A: Again, I agree. We don’t do anything technical. Not even standards. We set the objective, which is having trustworthy systems. We ask you what make such systems. The new icon is optional to use.

Dimitris: We are repeating ourselves. I don’t see a conflict. EU has a definition of security A. CA/B Forum has definition B. EU does not want to enforce definition A to browsers. It is a complementary “service”. If a CA is “SSL Qualified” against eIDAS and wishes to have a proper display in the browsers, it is mandatory for that CA to also be part of the browser/OS Root Program. This means the CA MUST comply with security definitions B + A. Then, perhaps the browsers could display an additional information for CAs that are also listed in the EU TSL. This could be supported either natively of through a plugin. If a CA is only listed in the TSL and does not participate in a ROOT program, there is no way their certificates will ever get a “valid certificate” status in the browsers/os. Companies in the EU might be forced by law to acquire Qualified SSL certificates.

Lunch Break

Covered slide 13 through 30 in order, please refer to slides. Additional notes to the slides:
Slide 14:

New trusted lists will apply from next year replacing older lists while ensuring continuity with them.

-

If a CA provides web certs, they are only qualified for issuing web certs. The lists will keep this information.
Slide 19: The logo is voluntary to use, and may only be used in association with the services that are qualified, even if a TSP offers more.
Slide 27: Iñigo is working on this, and welcomes feedback.
Slide 30: This has been good, I hope we can interact more in the future.

Dean: This blocks international players from the market, in favour of small players with small assets and little insurance. If another DigiNotar incident were to happen with e.g. a small player, the ability to collect damages might be smaller.
A: DigiNotar was owned by other companies with lots of money. If Symantec is not established in Europe, they are not providing qualified certs, and are not bound to this.

Dean: There are not requirements to use or buy these certificates. Some countries are considering such?
A: This happens also in the US. A country might quote things like national security, and create their own rules. E.g. the French might say “it must be qualified”, but not “it must be French”.

Kirk: How would this have changed the DigiNotar incident? What if the CA didn’t notify?
A: We know who is in charge. Who should be notified, who is empowered to follow up on notifications. If not notifying, they should be liable for that. DigiNotar went bankrupt because nobody wanted their certificates. They might not have notified, but would then have been responsible for that. It wouldn’t protect against another incident, but would have worked better.

Kirk: Why not just have a regime of disclosure to authorities?
A: What are the details? Need to identify the role of the authorities.

Kirk: Whatever it says in the new regulation. What is the additional value of it?
A: This is not imposed on anyone. What is the value of a US signature in Europe? Qualified certs make this legal in Europe.

Arno: 15th of December there will be a CA day meeting in Berlin, all members are invited.

## Short-Lived Certificates {#Short_Lived_Certificates}

*Note Taker: Bruce*

Jeremy would like to propose a new ballot for short-lived certificates, where a short-lived certificate would not be subject to OCSP validation.

The use case is a short-lived certificate will 1) address privacy concerns as it does not call back for OCSP, 2) allow subscriber to abandon a server which they have lost control, 3) provide performance advantages as time will not be taken to check validity, and 4) security advantages as a compromised key can stop being used and the certificate will expire in a short time frame.

There has been opposition to having certificates with no revocation, so the proposal requires a CRL identifier to be included in the certificates. This supports Microsoft’s policy which requires every certificates to have either/or CRL or OCSP information. However, there were questions as to the Windows policy for CRLs.

Short-lived certificates would be defined as having a validity period 24 hours before the time they were issued and 72 hours after the time they were issued.

It was further stated that the benefit of short-lived certificates is expiry works, but revocation does not.

There is also benefit if HSTS is used as all errors are fatal such as expiry, so there would be no soft fail.

The difference between short-lived certificates and OCSP Must Staple is that you do not need to generate OCSP and the server can be locked down and not look for the OCSP response. Also, Must Staple is an issue to develop/deploy.

It was asked why not just program the browsers to not check certificate validity for certificates which expire within a short time frame. Mozilla has developed code to not check validity for short-lived certificates, but will not implement until the validity period of a short-lived certificate has been determined. However, the issue is this proposal would only work for new browsers and would not work for old versions or other applications.

There was also concern about logging to CT? Can the logs scale? Ryan stated that Google logs can scale; however there were concerns about others. Could CT be limited to DV/OV which are not logged. There was some opposition to this proposal as CT is not in the Baseline Requirements.

Gerv and Ryan stated that they will endorse the ballot.

## Certificate Validity Periods {#Certificate_Validity_Periods}

*Note Taker: Atilla*

- Kirk: Maximum cert validity period is not examined for a long time. A matrix is created for this purpose. Browsers generally would like cert validity periods to be shorter. CAs like longer for customer management issue.

* Jeremy: May be 27 months was a problem for EV.

* Kirk: Also we need to consider how long a validation data may be used. Today we can use 3 year old validation info.

* Kirk: If it’s a security consideration, we can shorten the validity periods.

* Gerv: Divergence of the validity periods of DV or OV is very unlikely – browsers don’t want OV > DV, and CAs don’t want DV > OV. For EV, the distinction may be discussed. Browsers will only support 2-2-2. If there is a consensus among CAs that EV being different is a big enough problem, 2-2-2 is your option. If not, we can stay with the current condition 3-3-2, but definitely not 3-3-3.

* Jeremy: 2-2-2 is supported by Digicert as well.

* Gerv: A suggestion: out-of-date information in certs is inevitable. Anyway, if a client info has not been changed, whenever you need validation, you may just ask the client whether their info is changed or not, and revalidate if and only if there are changes in their info as stated by them. Otherwise, don’t do revalidation, just validate the domain and go. Worst thing is that info which used to be true but is now not, remains. Hardly seems like the basis for an attack.

* Ryan: Even the domain owner info may be outdated.

* Jeremy: I don’t see any difficulty in revalidating via the QIIS when we need a new validation for renewal or so.

* Bruce: Actually, revalidation is an expensive issue. Kirk agrees.

* As a result, Kirk will not propose any change in cert validity periods.

## Ballot 152 Discussion {#Ballot_152_Discussion}

*Note Taker: Robin*

Rick Andrews (Symantec) lead discussion:
The current SHA-1 requirements say CAs must stop issuing SHA-1 end entity certificates by Jan 1st 2016. The vast majority of customers had no problem migrating to the use of SHA-2 certificates, but a small number of large customers are having big problems. They have made big efforts but are not getting to the end of their migration tasks in time for the cutoff date.

This ballot is asking to be able to issue SHA-1 certificates through 2016 although keeping the mandated expiry date at the end of 2016 as it is for SHA-1 certificates issued today.

Extending the cutoff date for the issuance of SHA-1 certificates increases the risk of collision attacks, but the BR mandated entropy in certificates mitigates this. The Ballot also proposes only issuing these certificates from issuing CAs with pathLen=0 – so there is no chance of CA certificates being created inadvertently because of a collision attack.

A customer of Symantec’s, AT&T, posted comments/questions to the public list. Symantec have received other input from Fortune 50 companies. Initially they requested that exception be granted to them to give them more time to come into compliance – but there is no mechanism for exceptions to be granted. What could they do? – write to questions list.

Jody said that Microsoft were getting similar requests from some of their enterprise customers and for that reason Microsoft would endorse the ballot. Some of their large customers have the same pain. They want SHA-1 to die – but letting them issue through 2016 may help. Perhaps include a limitation that only customers with SHA-1 certificates in place may get further SHA-1 certificates.

Bruce said that Entrust is also an endorser because he has customers similarly affected.

Kirk said that Trend Micro expects such requests on Jan-1 – but haven’t had them yet.

Ryan Sleevi asked when these large customers gained awareness of the issue or began their migration?

Rick reported that AT&T said they’d been at this for 2 years.

Ryan: we discussed soft/hard sunsets at Mountain View (February 2014). Given the notice provided following that meeting, and aggressively so by Chrome, what happens on Dec 30 2016 when they say we’ve gone from several thousand to 750 but these still affect tens of millions of users. Will there be a request for a further year? and another?

Bruce: We moved from 2048 to 1024 bit RSA keys over a 3 yr period.
Ryan: Microsoft started 2012
Bruce (&Rik) Microsoft’s policy came out in 2013.

Ryan: In the past I depracted MD5 from the browser stack in chrome. It was an incredibly painful experience for Google’s enterprise customers. I would have significant concern that if browsers failed to stick to their own removal guidelines, I do not believe we will be able to make the 2017 deadline without significant disruption to users. There will be disruption from changing the dates. I know of vendors who will not supply security updates without payment. Making any change in requirement may cost enterprises money because they have to pay back-support for old platforms. That’s why we supported the current soft phase-in provision.

Jeremy: Doesn’t the Google interstitials incentivise people to move to SHA-2?

Ryan: Should the CABF go soft on the issuance restriction for SHA-1, it will be seen as a signal that SHA-1 is safe to use for a longer period. A Chrome insterstitial page is not a good option.

Rik: AT&T said they have some internal systems that need updating. These don’t involve browsers, but the CABF requirements mean they can’t get a SHA-1 certificate. I can’t tell you what will happen at the end of 2015, but if we can get the ballot passed I will encourage my large customers to prioritize the sites used with browsers first – because those will be affected by interstitials or other browser cut-offs. I have 1024 bit roots which have been removed from browsers root stores but are still trusted by the MQ series and I can continue to issue from those – but that’s a last resort.
Gerv: Why is that not a solution to this?
Rik: Because these roots are still in some browsers. We haven’t yet pulled them from all platforms.

Ryan: if you cut an intermediate from your existing roots and by some process if the ballot were to be restructured so particular sub-CAs could be blacklisted so they wouldn’t be trusted in modern browsers/platforms. Does that work?

Rik: I’d have to think it through. It sounds workable. It’s engineering work on our side

Ryan: It’s engineering work our side too!

Gerv: worth noting that we have already checked in code for FireFox to implement the current rules. If rules changed we’d have to write new code and check in. (leaf certificates issued after 2016-01-01 with SHA-1 are treated as an untrusted signature) This is in Beta and will come out in Nov release.

Bruce: (nicely) My customers don’t care about your browsers. They’re dealing with backend systems/platforms/servers/appliances.

Gerv: We would support a mechanism whereby SHA-1 to be continued but somehow or other would not be trusted in our browser. It could be a new intermediate which is explicitly distrusted in some way.
Jody: That doesn’t work for us (Microsoft).

Gerv (to bruce) do you have roots you can remove too?

Tim: to Gerv and Ryan S: Why not just let the CA issue and you block them at the browsers?

Ryan: That puts doubt on the ability of the CABF to set guidelines.
Gerv: Kathleen said the same
Sigi (Opera) : we think the same

Rik: are you saying the customers who did move to SHA2 will be upset?
Ryan: Absolutely. If there was another year they would have used it.

Bruce: The problem is that the deadline is in a blackout period. Many organizations don’t make system changes over the year-end holiday period.
Ryan: Your problem – you should have brought it up at the ballot time
Rik: I did! Tom (Microsoft) ignored it in his policy. I also brought up that customers should have been able to get shorter and shorter duration certificates so the deadline loomed visibly for the customers.
Gerv: True

Atilla (TurkTrust): Explain the problem, please.
Rik: They have thousands of servers they still need to migrate. For each server they schedule download and install and test – it takes time for thousands of servers.

IBM MQ server series they’re using doesn’t use SHA-2.

Dean: I’ve had calls from customers saying ‘I heard you were proposing changing a deadline on SHA-2. Thank God. We’ve been struggling to get thousands of systems/customers updated.’

Atilla: How will they adapt these through 2016.

Rik: Customer said they will have time over 2016. They have assured me they will be able toupdate them in 2016.

Inigo: We have similar problem with SSL accelerators.

Don: What are the audit expectations? (inaudible)

Rik: the customers don’t get to put input into the process. Had AT&T brought it up at the start of the year there would still have been delay and resistance.

Ryan: window of change – why does your motion not say aim for 6 months so not hitting same issue?

Dean: We just assumed this was an immutable date (end of 2016)

Ryan: Why not 6 months?

Bruce: the point is the issuance period – not validity period.

Ryan: We believe the security risk is real today for nation states
Bruce: This is undocumented Tell us more.

Ryan: MD5 became trivial to attack because it too is a Merkel-Damgaard structure. There were approx 15 places known which could flip bits in MD5. In the flame attack there were 11 pllaces that no academic literature had discovered at that point. (so really high profile) SHA-1 already at 6 places you can flip. Believe there might be additional. Look at moores law, exponentiation. SHA-1 collisions based around a compute cost of 1 to 1.5 million compute units. Predicted to drop to a few hundred thousand in 2016/17

Ryan: So its the point at which its issued. I mentioned these numbers on the chromium dev list. We are very strongly opposed to going soft.

Dean: Would you support allowing issuance through Oct 1, 2016?
Ryan: probably not

gerv: Are you saying that if the ballot passes there would be no expectation that the browsers would change their plans to block them?

Rik: AT&T has said they don’t care about Mozilla or Google.
Dean: Other customers say different.

Ryan: If the ballot and communications to the customer were to be unambiguously clear that you shouldn’t do this, maybe a disclosure text within the certificate itself? regardless what the CAs say, the browsers will get customers coming to them saying – you (Google) are wrong in rejecting the certificates?

Rik: I object to the tone that we reject the customers because they’re naughty.

Ryan: I meant about the dates being pushed back. The CABF is flexible – and the flexibility is a weakness.

Rik: I dont see that as a failure to set a date. You talked earlier about the ideal and the real world.
Ryan: Look how long this ballot took to come through.
Dean: We’ve stood fast on local names.
Ryan: We discussed going soft.

Bruce: This date was driven by MS policy, not ballot.

Ryan: Mozilla (draft?) policy play for SHA-1 was 2014 initially in the first version. It’s now slid to 2017.

Ryan: If MS changes policy this would be changing the date. We have other policy requirements.

## Browser News {#Browser_News}

### Google {#Google}

*Note Taker: Rick*

RC4 is being deprecated. Chrome defaults to not offering RC4-based ciphersuites, but will still fall back to using it when the web server doesn’t support non-RC4 suites. A date for its final deprecation has been set with Microsoft, Mozilla and Apple, but Ryan didn’t know the exact date.

Diffie-Hellman has had a number of issues (for example, Logjam), so Chrome now requires a minimum DH key size of 1024 bits. The IIS team shipped out a bad patch, and after several attempts to patch it, IIS still causes negotiation failures. Between the weaknesses exposed by logjam and a large number of failures negotiating DH with IIS, the SSL connection often fails. So Google is looking to remove support for DHE altogether.

Changes are being made to Chrome’s user interface, and Ryan expects to have a blog post to explain the changes. Google is getting rid of the mixed-content icon (yellow triangle with exclamation point) in Chrome 46. Mixed-content will then look like HTTP does today (no lock icon), although “https” would still show in the address bar.

Google is continuing to experiment with inverting the state of the lock (moving to a negative indicator for http, no indicator for HTTPS, extra indications for EV).

Today, users can click the lock and see connection info. That’s going away. Through user studies, Google learned that users are confused by these messages. They will be moved into the Developer Console instead. This may happen in Chrome 48. Once the info is in the developer-focused interface, Google will remove it from the user-focused interface. Google is also overhauling Chrome’s SSL error messages. Ryan doesn’t expect to do a blog post each time these change.

On CT, Chrome will begin enforcing its log diversity requirements (see the May 2015 policy at ). The diversity requirement is that a certificate needs SCTs from at least one Google log, and from at least one non-Google log.

Google is continuing to develop its Security Panel in Chrome’s Developer Console.

Google is moving forward with deprecating the HTML tag. First they will add user interaction requirements, with complete removal perhaps within 12 months. Chrome will also remove automatic installation of certificates downloaded from the net into the OS Store. Chrome will allow certificates to be downloaded and saved in a file on disk, but won’t automatically put them into the OS certificate store. Chrome finally implemented the ability to remember exceptions granted to certain SSL errors, like when a user chooses to trust a self-signed certificate. Chrome will remember these exceptions for about a week. Ryan said that as a result, they have significantly reduced the click-through rate for SSL errors, because users are seeing them less frequently.

Google launched a new feature in Chrome 44 or 45 that when a user gets a certificate error page, there’s an option for the user to report that back to Google (opt-in for each error). They’re looking for trends like clock skew, malware, etc. Three common cases have already appeared: web sites aren’t installing Entrust L1K, Comodo and Digicert cross-certificates correctly. Ryan said that any CAs who want to do cross-certificates are welcome to reach out to him for help in implementing them properly. Ryan was asked if Chrome distinguishes cross-certificates and subordinate CAs, and he said that they do not.

Chrome now supports the collection of info related to HPKP. Ryan explained that HPKP has two modes: enforce and report-only. Chrome has supported enforce for some time, now it supports report-only also. Google’s goal is to continue to encourage developers to experiment with HPKP. He also encouraged CAs to inform customers about how to pin their roots and intermediates.

In Zurich, Ryan mentioned that Chrome was transitioning from NSS to Boring SSL. The ASN.1 parsing module in Boring SSL is more strict than that of NSS, and they’re finding issues with certificates issued by some CAs. He mentioned that Mozilla has published “CA problematic practices” for some time, including ASN.1 violations. Google is reaching out to CAs and auditors when issues are found. Ryan was asked if there was any documentation on how to check our certificates with BoringSSL, but Ryan said that there was no documentation. His guidance was that CAs should be compliant with specifications like RFC 5280s and the BRs. Boring SSL will become more strict over time. Ryan said that the issues they’ve found so far seem to be mostly around qualified client certs, not SSL certs.

### Mozilla {#Mozilla}

*Note Taker: Jeremy*

1. 1024-bit Roots and Other Root Removals

Nearing the end of 1024 bit root removal process: Other root changes include:

- 1156844 – Turn off the Websites and Code Signing trust bits for the “Equifax Secure Certificate Authority” 1024-bit root certificate.
-

1190946 – Remove VeriSign Class 4 PCA G3 root

-

1204962 – Remove TC TrustCenter and UTN-UserFirst per Symantec’s request

- 1204997 – Remove expired A-Trust-nQual-03 and USERTrust Legacy roots
-

1205108 – Remove DSTCA roots as per IdenTrust’s request

- 1208461 – Remove UTN – DATACorp SGC root as per Comodo’s request
-

1193476 — Add WoSign roots

2. RC4 Support

The browsers are deprecating RC4 completely. Firefox 44, due for release on 26th January, will disable RC4 entirely by default. We expect to have some UI in place by then that will allow users to whitelist specific hosts. The whitelist will be empty by default. Any host that has not been whitelisted by the user will get a NO_CYPHER_OVERLAP error in the browser.

3. Short-lived Certs

We have implemented the ability for Firefox to skip revocation checks for certificates with lifetimes below a user-specified threshold. This ability shipped in Firefox 41 on 22nd September. But for now, that threshold is still zero, so revocation is never skipped. We are currently collecting telemetry to see what the real-world impact would be of setting the threshold at various points. Ultimately we expect to set it somewhere on the order of an OCSP lifetime.

4. Must Staple

We have work ongoing on an implementation of PHB’s Must-Staple spec. It has taken a while because it has been a low-priority item, since we’re not aware of any CAs that are planning to issue certificates with this extension. Any CA planning on using mustStaple should email Richard Barnes right away to voice their support.

5. SHA-1 Download Support for Firefox

Despite the SHA-1 deprecation, we currently hope and plan to continue providing downloads of and updates to Firefox for XP SP2 and below users. We thought the group might be interested in a brief overview of how we are planning to do it. This is not yet a confirmed plan, but it is what we are working towards.

There are two aspects of the SHA-1 deprecation which affect us. The first is that users of IE on XP SP2 can’t access SHA-2 sites, and SHA-1 certs are becoming effectively unavailable at the end of the year. The second is that Windows XP SP2 can’t validate SHA-2 signatures on code, and SHA-1 signatures are becoming unavailable at the end of the year.

We plan to switch www.mozilla.org to being fronted by a CDN from a vendor (name undisclosed as yet) who are able to do cert switching based on SSL client HELLO fingerprinting. This will allow anyone to still connect to www.mozilla.org on the initial connection, without anyone seeing warnings or cert errors.

The exact logic is that we will serve SHA-1 to all clients that don’t negotiate TLS1.2, because prior to 1.2 the client didn’t advertise its signature algorithm support, so there’s no way to be sure that a particular client supports SHA-256.

Links to our download service are never rendered in the browser address bar and so do not cause warnings. So we can continue using SHA-1 on the download service until the end of 2016. In 2017, when browsers will refuse such connections entirely, we would either need to move it to a similar system, or make www.mozilla.org direct to two different download servers.

6. Salesforce

Instructions for using the CA Community are available on the Mozilla wiki. Three CAs volunteered to be guinea pigs in using sales force to disclose intermediates (DigiCert, Symantec, D-TRUST). If all goes well, Kathleen will issue the CA Community licenses to the Primary Point of Contact for each CA in Q4. If any other CAs would like to be early adopters, please send email to Kathleen.

7. Policy Revision Process: version 2.3

Discussion began in September. Will be using Github to track changes resulting from the discussions. There’s a lot to get through. CAs are encouraged to take advantage of the fact that our root program is open, and join in.

8. Email and Code Signing Trust Bits

The two big initial discussions we are having relate to the proposed removal of the code-signing trust bit and removal of the email trust bit from the records kept about each root in the trust store. These have strong implications for the rest of the policy, so we are addressing them first. It looks like we will be removing the code-signing bit. The email bit is still under discussion. We would like to hear CA’s opinions on these two proposed removals. The discussion has been deliberately left open until after this meeting to allow you time to give your view.

On the matter of the Code Signing bit, we are particularly interested in hearing from anyone who is actually using that bit to make trust decisions, and in what context.

### Opera {#Opera}

*Note Taker: Ben*

Opera is downstream from Chromium, so it will be inheriting changes made in Chromium, whether it’s RC4 deprecation or SHA-1 deprecation, which will occur automatically. Others will not be implemented automatically, like CT, which Opera is working on implementing and working on the UI. They will probably use the same whitelist as Google. Opera does not plan to publish a CT policy, so reference Google’s.

Support for RC4 will be removed from all other Opera products that have their own TLS stack, following the same timeframe as Mozilla. The code has been implemented and it is being pushed down with a switch that will be flipped at the same time.

Another item coming in Opera from Chromium is that certificates will be remembered for one week, but a user option is needed to allow forgetting it as well. Opera is continuing discussion with Symantec to obtain additional details about the certificates that were issued for google.com and other high-profile websites. Opera would like to have more information made public. Opera may come to the CA/Browser Forum in the future with a request for more public disclosure policies.

Opera has been reviewing some telemetry data on Man-in-the-Middle interference with TLS connections. Interest in this arose out of SuperFish, which allowed the software to act as a proxy. The problem with MITM certificates is that other security checks that help secure the connection between client and server, such as CT, public key pinning, and validity periods, cannot be performed. Opera would like users to know when they are using a local root certificate. So, Opera collected telemetry data for when users were connecting to a public domain where the root was not publicly known according to a list that Google had made last year, and collected name and hash of the root. It found that there were more than 5% of connections being intercepted, and more than 4.5 % was due to one AV vendor – Avast! Web/Mail Shield was responsible for approximately 89%; ContentDefender malware, 2%; Kaspersky \<1%; BitDefender 1+%; etc. They also noticed that Adgard was causing a lot of TLS restarts, so its percentage of the number of sessions affected was higher than actual.

So in order to show users the warning, it wants to reduce the number of false positives. Some of the data represent anti-virus while other represent malware.

# Day 2 – Thursday, October 8 {#Day_2\_-\_Thursday.2C_October_8}

## Browser News (cont. from Day 1) {#Browser_News\_.28cont.\_from_Day_1.29}

### Microsoft {#Microsoft}

*Note Taker: Ryan*

#### General Update {#General_Update}

- Two releases for root program (third Tuesday of November; third Tuesday of January)
- 29 companies (~63 roots) subject to removal due to not executing the new contract, not having a current audit, or some intersection
- 9 are completely non-responsive
- 9 for fail to sign
- 3 for a combo
- 8 for audit issues
- Planning an outreach/PR campaign related to this, including making information available for customers to see what’s going on
- November Root Program agreement is going out. Circulated on the list three weeks ago, didn’t get much feedback, may circulate one last time.
- Microsoft is in progress of planning engineering changes for the next program update
- Focus of resources is not on browser messaging
- it’s about improving the tools and options they have to deal with CA issues on a go forward basis (not affecting current customers)
- The goal is to switch the pain for dealing with CA incidents and issues from the customer/subscriber/relying party to the CA
- The initial goal is for Windows 10, but the changes and infrastructure should be viable to backport through to Windows 7
-

The SHA-1 plan is published, canonically, at \[ it will be updated as questions come in

#### Root Program Requirements Update {#Root_Program_Requirements_Update}

##### Audit Requirements {#Audit_Requirements}

- Attestation letters are required to be available in English, as translated/made available/signed off by the auditor (e.g. not the CA’s translation w/o any auditor feedback)
- Auditors are now required to include a cover letter in addition to the attestation letter, to make it easier for Microsoft to evaluate program and audit compliance
- Significantly reformatted the table regarding how the EKU trust bits (SSL, code signing, email) apply to particular audit requirements

##### Program Requirements {#Program_Requirements}

- Section 3 had terminology to rename ‘subroot’ to ‘subca’, aligning the language with the program contract
- Section 4 clarified some of the expiration policies with respect to existing intermediates vs newly-issued intermediates
-

Item 14 in Section 4 (dealing with SHA-1 policies) will likely be replaced with simply a forward reference to \[\] rather than trying to rewrite the section

- Currently, a minimum revocation period is set at 8 hours; feedback from some CAs indicated that they use a shorter minimum. In the next update (so not the November update), Microsoft anticipates removing this minimum validity period requirement, leaving just a maximum validity. CAs can determine their minimum validities based on the risk/compatability profiles they desire.

##### Q & A {#Q\_.26_A}

Q (Rick): If we want to remove a root, is the proper step to email \[ trustcert @ microsoft.com \]? A (Jody): Yes; that’s presently in the contract, can add it to the program requirements to clarify this.

Q (Doug): There was some discussion on the list regarding the policies of SHA-1 and OCSP signing certificates. Could you provide some clarification on the distinction between the policy/program requirements and the technical implementation? A (Jody): Yes, it’s a bit ambiguous, because some of the exact technical implementation details are TBD as they begin being implemented. More clarity will be provided as Microsoft works through the technical implementation.

Q (Tim): One thing we’re seeing is challenging for customers is understanding how to use signtool to produce signatures that are both SHA-1 (for Vista/2008 systems) and SHA-256 (for newer systems). Could you add some guidance and tooling documentation on the Microsoft-sanctioned way to do this. A (Jody): Send me an email, and I’ll work to add that to the FAQ.

## EV Wildcards {#EV_Wildcards}

*Note Taker: Billy*

EV WC not allowed now. Should it be?

Dean summarized: Arguments for. WC for DV and OV is allowed today. Seen where DV is used in fraud (70% DV – Netcraft). Proponents view stronger vetting on EV WC as a counter to WC being used for fraud. (Gerv: Even more valuable if DVWC were banned). Argument against EVWC is EV is the gold standard and WC more likely used for fraud, thus it might lower the value of EV.

Gerv proposed each side write a document so that we all know all arguments at one time because we seem to forget between meetings.

Kirk not for EVWC. Example of kirk.shopping.com where shopping.com has the EVWC. Could be bad or good. Bad if kirk doing the fraud, good if shopping held accountable. But in the end, EV is for strong identity and kirk in this example is not being identified.

Ryan used appspot.com as an example. Each person has full control of the page, but not the appspot domain, which is Google. Issue is what info to show in EV for foo.appspot.com; foo info or Google? What if they use 3rd party for payment as yet another subdomain? Google has appspot and Google info should be shown. DV will allow foo to get a cert today. Google can get EV certs for each subdomain and show google info. Not different.

Tim H: Some uses may not be appropriate, but it isn’t our job to police it. OVWC existence means EV is OK too. Would conversely revisit allowing WC at all. Also sees the argument that if WC is more prone to fraud, then EVWC could hurt EV. Netcraft had DVWC example with user accounts where an HTML account can be upload display a page with https url (that represents the cert) and paypal looking content. Similar attacks with html string in a data uri possible.

Ryan argues these attacks can be done EV today without wildcard. Sigbjorn backed that with EV would highlight a different name so that increases the chance a bit that the user might notice. Ryan also said this is up to the domain owner not CA’s

Dean showed an EV site that was compromised. This didn’t have a connection to WC but Ryan used it to show that CA’s can’t be accountable for the content.

Gerv wanted foo to be accountable in foo.appspot.com.

Ryan: Sometimes content operator and server operator are different as we have discussed, but sometimes also same. Facebook operates many subdomains EV would allow them to cover all, so EV WC makes it much more likely they would use a https at all.

Ryan said none of DV, OV, EV address phishing. Users are not conditioned to look at the URL so the cert doesn’t help. FIDO working on that methods for that using a token that only allows to simplify.

Dean: Big customers have asked Symantec for EV WC. FB has EVWC for .onion. That was allowed due to limits on .onion but shows good use case.

## CT Update {#CT_Update}

*Note Taker: Rick*

CT is still required for EV, no change. As of yesterday, enforcement of the log diversity requirements (one Google log, one non-Google log that changed in the May policy at ) has landed in Chrome for certificates issued after 1 July 2015. “Landed” means that it’s in the trunk of the code repository, and will take 12 weeks or so to get out to the stable release (which will probably mean Chrome 48).

Dean mentioned that he had read a good description of CT (at www.certificate-transparency.org). Ryan said that site documented the protocol and concepts, but not Google’s CT Policy. That’s kept at .

Google is continuing to monitor CT logs, and not just for Google domains. They are also checking for BR and EVGL compliance, and things that other root programs might be interested in. Some of the monitoring and compliance tools are open sourced.

Google is now focusing on detecting CT log misbehavior, for example, logs that are not compliant with the append-only requirement. This is done by fetching and checking of Signed Tree Heads (STH). Google isn’t close to requiring CT for DV. They want greater assurance on log operation before they scale up to DV/OV certificates. The Infrastructure to support CT is being added to Firefox too. On the IETF Trans list, Google announced that they will operate mirrors of all logs. The idea is that they want CT to be robust even if a catastrophe happens. CAs may not build systems as scalable as Google does. in case someone’s log can’t handle the volume and becomes inoperable, Google’s mirrors will provide a backup. If you’re embedding SCTs and all logs get revoked, your certificate will not be trusted. A frozen read-only mirror might be useful in this case. If CA has a security incident, what happens to existing and new customers? Ryan said that mirroring CT logs would allow more flexibility on policy.

Dean asked if there were any new CT logs. Ryan said that WoSign is working on two, one in China and one in an external data center. He said that Akamai had created a log, but their policies were somewhat unclear. Google asked for more clarification but they never provided it. So the request was closed.

Ryan said that someone needs to be watching each log server, and clients need to know about it. Google is beginning to explore the impact of a large number of log servers (for example, if each CA stood up their own server). Will there be an upper cap on number of logs? Ryan said that there may be a limit of how many log servers would be known and trusted by Chrome (maybe 20). The way they choose may be to pick the ones that are most inclusive of policy or are operating more in the public interest (for example, open to all CAs’ roots). Those will be given preference. The more inclusive a log server is, the less likely there will be challenges. This is a long term discussion, and will probably only affect those starting to think about logs.

Ryan said that he had sent out email to CAs on Google’s CT policy change regarding diversity of logs. Kirk asked for the URL to the policy document; it’s .

Jeremy asked about Tom Ritter’s proposal to send Must-Staple and CT preferences in HTTP Headers, like HPKP and HSTS. The Must-Staple flag requires the CA to change, but Tom’s proposal wouldn’t require CA changes, only web server configuration changes. Ryan expects they’ll have more concrete proposals in Chromium, after working through usability and end user experience issues. It’s a technical discussion right now. Google won’t be standardizing anything in the near future. They want to provide a way for domain owners to say that they always expect to provide CT info, and a client should be cautious if such a site doesn’t provide it. Jeremy said if you’re worried about the user experience, can’t Chrome just report violations instead of warning users and changing browser UI? Ryan said that’s what they’re exploring.

Ryan was asked how someone knows that a log is working properly, not hiding info, etc.? He explained about Signed Certificate Timestamps (SCTs) which are cryptographic promises to log a certificate, not guarantees. The log server typically has 24 hours to fulfill the promise. That’s what the Google client team is focusing on: providing cryptographic continuity.

Bruce asked what’s the plan to extend CT beyond EV? Ryan said that’s an excellent question. Google isn’t requiring CT for DV or OV certificates because Google wants log operators to have experience with operations and scaling. Also, with CT you have to log the full domain name. He knows that for DV, some customers want name redaction (hiding). The current revision to the CT RFC, called RFC 6962-bis allows for name redaction and name-constrained subordinate CAs. Name-constrained subordinate CAs will be logged and end entity certificates sign by the subordinate won’t need to be logged. Dean asked why name redaction isn’t an issue for EV? Ryan said that Google’s position is that wildcards aren’t permitted in EV (a form of name hiding), plus they want Extended Validation to mean that domain names were public and auditable. Ryan said that CAs can start logging DV and OV certificates today. The current CT policy talks about how many SCTs are needed for any type of certificate (not just EV). Then Ryan delivered “potentially scary language”: when there are incidents in the CA ecosystem (like the CNNIC event), Google’s goal is to restore trust in the system. How do we restore trust when a CA misbehaves? One possibility is to require the CA to log all certs, or else face removal of their root. Ryan cautioned CAs that even if they’re not currently issuing EV certificates and logging them, CAs should know how to add CT to certificates. He said that this is not meant to be a punishment, but as a way to restore trust by providing greater transparency. When an incident happens, many people scream “one strike you’re out!”. Google wants to try another way to add public accountability.

Bruce asked if Google has a timeline for requiring all certificates to be logged? Ryan said no; Google wants to understand first how the transition would occur. Bruce asked if Ryan had any dream date? Ryan said that 3 years might be very aggressive and overly optimistic; 5 years is more realistic. Other aspects of policy may come in, like requiring OCSP Stapling. Jeremy asked if Chrome has the capability now to require CT for particular roots? Ryan said it’s close and not complicated; it’d be two hours to add that to Chrome if needed in response to an incident.

Gerv asked what problems would result if every CA decided to log all of their certificates? Could logs handle the load?” Ryan said that it wouldn’t be a problem for Google, but maybe for others. That’s why Google’s not pushing it now. Non-Google logs may not be ready for every CA to log every cert.

Kirk asked if non-logged DV/OV certificates still caused a yellow triangle to appear in Chrome. There appeared to be some confusion about that; the yellow triangle was probably a mixed-content warning. Ryan said that If the user clicked on the lock icon for a DV/OV certificate, there was never any negative UI about the lack of SCTs. (Chrome says “certificate is not publicly audited” but some users interpret that as a warning). Ryan mentioned in Zurich that there was some language change around that Chrome 43, but in yesterday’s update Ryan said that these messages were being moved from the user interface to the developer console. These changes will be in Chrome 48 or later. Kirk asked if the developer console will still say that a DV cert had no public logging records, and Ryan said yes. But he asserted that the statement wasn’t positive or negative.

Dean asked Jody when will we see cert details in the Edge browser? Jody said he had no idea, that it wasn’t even on the roadmap. Ryan asked Jody if the webmaster tools that Anoosh presented in our Cupertino meeting were launched yet? Jody said that he thought that it went live months ago; he’s been using it.

Dean asked what other browsers are implementing CT? Ryan said that Apple (iOS9) added support for name constraints, and in pre-release notes for iOS9 and OSX10.11, Apple said that apps need to use TLS 1.2 and SHA-256, and in their document describing these changes and how applications can opt-out of those requirements, they also documented a way for applications to require that the server’s cert must have CT audit records, so that implies that they’re building support for CT.

Dean asked Gerv about Firefox. Gerv said that Mozilla is adding code to request it, thanks to a code contribution from Google, but Mozilla hasn’t come up with a policy yet (for example, how many SCTs are needed for different certs). And he doesn’t know when they will. What’s added to Firefox is how to detect, parse and validate SCTs. Dean asked Siggy about Opera. Siggy said that they have no policy of their own, but have support for CT by virtue of building on Chromium. But he said that Opera will need to develop their own user interface for CT.

## ETSI Presentations {#ETSI_Presentations}

*Note Taker: Ben*

### Iñigo Barreira {#I.2BAPE-igo_Barreira}

[ETSI TC ETSI STF 458 Oct 2015](/uploads/ETSI-TC-ETSI-STF-458-Oct-2015.pdf)

Currently ETSI audits are 3-year cycles with 1-year surveillance audits. Draft EN 319 411 part 1 and 2 are for TSPs issuing certificates. Part 1 is for all certificates, while Part 2 is for issuers of qualified certificates. All EN standards are currently under review through October by the EU Member States, and responses to comments will be completed in November. Final ENs are to be published during Q1 2016.

**ETSI EN 319 v. 2015-06**

EN 319 403 is in place, but European cooperation for Accreditation (EA) will create a procedure to accredit CABs. The NAB web site indicates accredited CABs. The ACAB Council will make a list of the 403-accredited CABs and a common template for ETSI audit reports. ETSI is not responsible for providing CAB or audit-report status. The TSL only is for qualified TSPs. Ryan said it would be nice to have something like a TSL for all CAs audited under ETSI standards. Moudrick asked why a TSP couldn’t request listing under a special attribute in the TSL. Iñigo and Arno said that is not allowed in Spain and Germany. Atilla asked whether a Turkish company could establish an administrative office in a member state and be supervised by that country’s Supervisory Body. It would depend on what the member state allowed, because they would be the regulator. There was a discussion about where the keys should be stored.

### Matthias Wiedenhorst {#Matthias_Wiedenhorst}

[20151007_CAB-Forum_ETSI_Cert_V1.2][1]

Standards are migrating from TS specifications to EN norms.

TS 119 403 becomes EN 319 403 to regulate how assessments are performed, based on ISO/IEC 17065, with CA specifics. It also incorporates ISO/IEC 2700x for CA-related ISMSs.

EN standards have no significant differences from the TS standards in terms of security controls, procedures, etc.

The average time for a Conformity Assessment Body (CAB) to become accredited by the National Accreditation Body (NAB) is about 1 year. That was the case for TUV in Germany. It was 1 year AFTER the NAB announced the availability of the new EN accreditation scheme.

CABs are accredited by National Accreditation Bodies, and their seals appear on audit letters. For efficiencies in the EU, TUViT and LSTI formed the Accredited CAB Council. If a CA wants to join the ACABC, it should contact Christoph Suitter.

If the Conformity Assessment Report (CAR) has been issued, then the Supervisory Body reviews it and adds the TSP to the TSL (for qualified TSPs) or send a Certificate to a Browser. The Certificate is a public document. Browsers then check the chain of that certificate up to the NAB. At some point in future, browsers might want to request a cover letter or an executive summary, as is being discussed by the Mozilla community.

The accreditation cycle is also a three-year cycle with surveillance audits annually. Smaller countries can delegate their accreditation duties to another EU country’s NAB.

Q: How long should it take a CAB to become accredited, if for instance, it is already 17065-compliant?
A: It can take up to one year, but it depends on the resources dedicated.

Currently only two CABs are accredited. If you are an existing qualified TSP, you have an extra year until 2017 to comply. Then Browsers should determine whether to accept an EN or TS audit that is not as a qualified TSP. Similar to WebTrust, then the browser would accept a letter within the transition timeframe.

CABs are ready to be accredited but the local NABs are not. This means CABs will be accredited approximately 1 year after the NAB announces the EN accreditation criteria. Realistically, this means that most CABs will not be accredited in July 2016 because of NABs’ delay.

Having very few EN-accredited CABs in Europe will tend to create an oligopoly, with higher audit fees than would otherwise exist in an openly competitive market.

Q: Can you do an ETSI audit in China?
A: Yes, TUViT has done it in Japan. It depends on to whom you want to give the Certificate. Yes, if it is to a browser, but if it is for purpose of giving it to the EU or the Chinese government, then it depends on whether they will accept it.

The new audit period under eIDAS is two years, with a one-year surveillance audit. And after relevant changes, a new audit must be performed.

Process is document review (Stage 1), then on-site review/inspection (Stage 2). Then a CAR is issued based on results.

Document review asks whether all necessary measures are described (to meet every single ETSI requirement). Auditor judges the measure for appropriateness and completeness. Stage 2 is verification of security measures, cryptography and communication channels, as well as penetration testing or evidence thereof, as required by CAB/F Network and Certificate System Security Requirements. Evaluation of organization structure, trustworthiness of systems (including patching and version status, etc.) CAR describes scope, what auditing was done, and the results. This is provided with a Certificate to the Supervisory Body (i.e. the Trust Service Status Notification Body).

Q: Are there any significant differences between the new EN and the current TS standards in terms of technical requirements, security controls and procedures?
A: No

The TS standards have no expiration date which means that an organization could continue to be audited against the TS standard as long as their auditors are accredited for it (under the rules of the TS standard). This means that Browsers have no reason to dismiss the TS standards from their Root program requirements. They could add the EN standards as also compatible.

## WebTrust Presentation by Gord Beal of CPA Canada {#WebTrust_Presentation_by_Gord_Beal_of_CPA_Canada}

[Webtrust – CAB Forum – Oct 6-8 2015](/uploads/Webtrust-CAB-Forum-Oct-6-8-2015.pdf)

## WebTrust Update {#WebTrust_Update}

*Note Taker: Kirk*

Don Sheehy presented a WebTrust update. His full update is shown on the pdfs named WebTrust – CAB Forum DES update and WebTrust Audit Matrix – 26 09 2015 – see attached.

[Webtrust – CAB Forum DES update](/uploads/Webtrust-CAB-Forum-DES-update.pdf)

Don stated that the official website for WebTrust is at . There are some older WebTrust pages in the internet that are no longer accurate. WebTrust is updating its website to clarify what the current applicable WebTrust audit criteria are. Older versions of the WebTrust audit criteria may be deleted.

The current audit criteria versions which WebTrust auditors must use are as follows:

1. WebTrust Principles and Criteria for Certification Authorities 2.0 (basic WebTrust for CAs)

1. WebTrust Principles and Criteria for Certification Authorities – SSL Baseline with Network Security – Version 2.0 (BR WebTrust)

A public CA issuing SSL certificates must complete both audits each year, and WebTrust auditors are not permitted to audit to earlier versions of either of these audit criteria.

In addition, a public CA issuing EV SSL certificates must complete an annual WebTrust Principles and Criteria for Certification Authorities – Extended Validation SSL – Version 1.4.5 audit.

In response to a question, Don stated that any readiness audit for a new CA completed today would have to be conducted under the audit versions numbers listed above.

The BR WebTrust audit criteria will be updated from the current v2.0 to a new v2.1 as soon as the CA-Browser Forum converts the BRs to the RFC 3647 format.

WebTrust is considering how to improve its audit criteria for the future, including how to deal with virtualization where some CA systems may be based in the cloud (which may raise separate security issues). He also said that WebTrust is looking at CT and considering the possibility it can be used as a CA and an audit tool for monitoring and for greater audit sampling of certificates and their conformity to requirements. Ryan added that any such CT-related tools would be for internal use by CAs and their auditors, and results would not be disclosed to the public.

Don finished his presentation by displaying the matrix of applicable WebTrust audit criteria for each type of CA and certificate – see pdf.

## Doc merging EV and BRs {#Doc_merging_EV_and_BRs}

*Skipped*

## Next F2F Meeting planning {#Next_F2F_Meeting_planning}

*Note Taker: Neil*

Dean stated that the next meeting has been arranged to take place in Scottsdale, AZ. It will be hosted by GoDaddy, and run from Tuesday 15th February through Thursday 18th February 2016, noting that Monday 14th is a US holiday. The dates are now confirmed for this meeting.

The second F2F meeting for 2016 will be in Europe, hosted by Iñigo via Izenpe. The decisions for exact location and dates have yet to be confirmed, with a target for dates at the end of June, 2016.

Dean asked Iñigo if this would be at site facilities or a hotel. Iñigo replied that they don’t really have facilities for a large meeting.

Dean continued, saying that the third 2016 meeting will be in Redmond, WA, hosted by Jody/Microsoft. Dates are yet to be determined. He has had another European offer, for 2017.

Arno then mentioned that D-TRUST/Bundesdruckerei in Berlin offered to host a meeting in 2017. Dean replied that the chair and vice-chair would discuss all offers for hosting and present further upon consideration.

[1]: /uploads/20151007_CAB-Forum_ETSI_Cert_V1.21.pdf