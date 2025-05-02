---
author: Dimitris Zacharopoulos
date: 2025-03-27 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 64 Meeting in Tokyo, Japan - SCWG, March 26, 27, 2025
type: post
---

# THESE ARE DRAFT MINUTES THAT HAVE NOT BEEN APPROVED OR FINALIZED YET

## Attendance

Aaron Gable (Let's Encrypt), Adrian Mueller (SwissSign), Alison Wang (TrustAsia), Alvin (SHECA), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Arno Fiedler (ETSI ESI), Arnold Essing (Telekom Security, invited guest), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla, Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Chya-Hung Tsai (TWCA), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dmitry Sharkov (Sectigo), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco Systems), Fumiaki Ono (SECOM), Han Yong Park (NAVER Cloud Trust Services), Hans Metsoja (Opera), Hao-Chun Li (TWCA), Hazhar Ismail (MSC Trustgate Sdn Bhd), Henry Birge-Lee (Henry Birge-Lee (Private person)), Hideki Kobayashi (KPMG Japan), Hiroki Katsube (JPRS), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Iori Kondo (Cybertrust Japan), JP Hamilton (Cisco), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Aprio), Jeremy Rowley (DigiCert), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Jinhwan Shin (Deloitte Korea), Joanna Zhu (TrustAsia), Jun Okura (Cybertrust Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Karina Goodley (Microsoft), Kate Xu (TrustAsia), Kenji Nakada (JPRS), Kenji Urushima (GlobalSign), Lila Dubko (CPA Canada/WebTrust), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Michael Malinowski (Certum), Michael Slaughter (Amazon), Mitsuyoshi Tamura (Cybertrust Japan), Nate Smith (GoDaddy), Naveen Kumar (eMudhra), Nick France (Sectigo), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Puja Sehgal (Microsoft), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Russ Housley (Vigil Security), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sooyoung Eo (NAVER Cloud Trust Services), Stefan Kirch (Telekom Security, invited guest), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Takashi Sawada (Secom), Taro Momosaki (Toyota Tsusho, invited guest), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vinay Kumar (OATI), Wayne Thayer (Fastly), Xiu Lei (GDCA), Yamian Quintero (Microsoft), Yannick Thomassier (Certinomis), YeongHo Lee (Deloitte Korea), Yumo Makino (Toyota Tsusho, invited guest), Zurina Zolkaffly (MSC Trustgate)

## Review Agenda


## Approval of minutes

Draft Minutes from the March 13, 2025 Teleconference were not distributed due to an error.

## Membership

Membership applications from KPMG Taiwan and Sergey Pavlovsky were approved

## Summary of the quarter

**Presenter:** Dimitris Zacharopoulos (HARICA)  
**Presentation link:** [SCWG Update for F2F64](SCWG-Update-for-F2F64.pdf)  
**Discussion outside the presentation:**

Ballot SC-70 went through IPR but the current status is unknown

Aaron Gable, the ballot's author said that we should consider the ballot to have failed. Dimitris will mark it as such in the Ballot tracking tool and update the information on the public website.

## Discussion of topics 

### Clarify scope of TLS Baseline Requirements

(Browser vs non-Browser use cases, websites accessible to the Internet vs websites accessible to specific networks, relationship with "WebPKI")

**Presenter:** Dimitris Zacharopoulos (HARICA)  
**Minute taker:** Wayne Thayer (Fastly)  
**Presentation link:** [Clarify the scope of TLS BRs](Clarify-the-scope-of-TLS-Baseline-Requirements.pdf)  

**Discussion outside the presentation:**

Ben Wilson asked if it would be better to have a new WG for non-publicly trusted TLS certificates?

Dimitris said that Chrome's decision to remove clientAuthentication from their program rather than the BRs was because they didn't want to disrupt non-Chrome users of the TLS BRs.

Dimitris said that the definition of Application Software Supplier is confusing because it includes more than just browsers. We should separate browser use cases.

Nick France asked what the problem is with Application Software Vendors using TLS certs, as long as they are agile enough to keep up with the changes we are making? If an ASV wants to meet those requirements, why do we care?

Wayne Thayer said that the problem is that they are not agile enough.

Nick said that ASVs won't read our charter, the only way to make them change is to force them to adapt to changes or break their use case.

Dimitris said CAs pay attention to the charter. Even CAs aren't clear that these certs are only to be used by browsers.

Dustin Hollenback said that operating systems are also consumers (Microsoft, Apple, Android)

Trevoli Ponds-White said that she thought the proposal was to tether the BRs to the reality that our roots only work when they comply with browser policies, so support for anything else in the BRs is pointless. It would be good for CAs to be able to point their customers to a clear statement from the Forum.

Dimitris said that operating systems can be consumers, but in the SCWG consumers are defined as browsers. If we make that clear then we might have services that aren't needed. It is impossible to be agile and backwards compatible.

Scott Rea said that people in this room don't represent non-browsers use cases, but there is a lot of PKI knowledge here. We can't discount other use cases.

Tim Callan said that 'browser' is an arcane term. If we assume that our scope is people using a piece of software interpreting HTML then we have missed the point. If the word browser is the issue, then remove the word browser.

Dimitris said that we should have a clear use case in mind. You want to support non-browser use cases.

Karina Sirota-Goodley said that certificate consumer is server-to-server to Microsoft, not just Edge. Microsoft still relies on clientAuth for server-to-server. Server-to-server requirements will fragment unless we have a new working group..

Tadahiko Ito said that non-browser use cases migrated to web PKI, and now we are suddenly rejecting them. It would be good to signal to them that we are not going to support them in the future.

Dimitris said that CAs would not prevent or reject anyone willing to follow our requirements.

Trev said that Dimitris is not proposing banning other use cases. How do browsers envision this working today? Since Chrome banned clientAuth, publicly-trusted roots can't include it, even if other root stores want it. We need to avoid requiring different certificates for different browsers. We could have clientAuth BRs from another WG, but it doesn't change reality of the Chrome requirements.

Dimitris said that we started with a broader scope, but the consumer members are browsers so we're focusing more on their requirements (as ETSI is trying to do), so we can have a WG that is focused on browsers and if needed create other WGs for other use cases.

Nicol So said that TLS is not just browsers. For example mobile apps that must connect to devices in the home. Let's not cut out those applications - there is no alternative today.

Dustin said that he can envision use cases where a CA may have roots only trusted by a subset of root stores. Some browser representatives are representing more use cases for their companies.

Rich Smith said that TLS certs are for browsers - this is not a question. The problem for CAs is that browser root stores are what there is - no other use cases are represented by root stores.

Ryan Dickson said that earlier comments misrepresented the Chrome Root Program policy and the views of the Chrome Root Program. Ryan described that web browsers are fundamentally the same in that they rely on TLS server authentication certificates to establish secure connections to websites. He said it is also true that operating systems extend this to also consider other TLS use cases like client authentication. It is possible to accomplish both of these things. Chrome has not made a blanket prohibition against use of clientAuth in roots that are not included in the Chrome Root Store - and that can be handled in a number of ways. It’s inaccurate to say things are broken now because of the future policy, which will offer 1000 days of transition time from the time it was announced. 

Clint Wilson said that Apple approaches the TLS root program as supporting more than browser use cases - most are applications and it's working fine. Clint said that Apple would be happy to ban clientAuth if that would help - it wouldn't affect their program - and they added clientAuth only root support to allow for separattion

Jeremy Rowley said that membership is not limited to browsers. The CAB Forum controls the serverAuth EKU. for all server use cases. Hope we don't require a different root store for OS and browser. Be careful not to let Chrome requirement impact all consumers.

Dimitris said that the charter is clear that it's for a product for browsing the internet

Trev said that the serverAuth EKU is functionally a browser EKU because the combination of publicly trusted and serverAuth are controlled by the browser root stores. There is value to us being more clear about what it means to use a publicly-trusted certificate.

Dimitris summarized two perspectives:

* The SCWG and TLS BRs are the only option for use cases that are not browser specific, and that is how it has been; or,
* We continue to introduce more requirements that are browser-specific

We could separate requirements for general and browser-specific use cases. It's not good to continue with this confusion. We didn't even touch on folks using publicly-trusted certs for servers not accessible to the internet

### Ballot SC081: Introduce Schedule of Reducing Validity and Data Reuse Periods

**Presenter:** Clint Wilson (Apple)  
**Minute taker:** Kateryna Aleksieieva (Certum by Asseco Data Systems S.A.)  

**Discussion:**

**Clint Wilson (Apple):** An update on the ballot was sent on 25.03.2025. It included a reduction in domain validation data reuse, dropping from 100 to 10 days between 2028 and 2029. Additionally, the preamble (background description of the ballot) was updated with additional text explaining the benefits and the reasons why this ballot does not focus on revocation.
The discussion has been ongoing for a week, starting today, and will continue until April 1, 2025. If there is anything people would like to discuss, we can do so here or on the mailing list.

**Dimitris Zacharopoulos (HARICA):** There was a request for you to elaborate a bit on the 10-day reuse period and the 45-day validity period, and why these are not considered close to each other. Is your argument that these two are different things—reuse of domain validation evidence and certificate validity—that should not be combined? Have you addressed this distinction in the updated preamble?

**Clint Wilson (Apple):** I don’t believe there is exact language on this in the preamble. However, there was a discussion in one of the prior email threads before the current discussion period, which I can copy and paste here to provide some of that background.

**Dimitris Zacharopoulos (HARICA):** Why can't we have 45 days in both cases?

**Clint Wilson (Apple):** We can do that. This was part of the discussion that occurred before the official discussion period, which led to the current proposal. Ultimately, the reason is that DCV is intended to be highly automated, and it represents the core identity presented in the certificate—the identity used by any relying party or certificate consumer. The goal is to keep this information as fresh as possible. As mentioned in the preamble, the certificate represents what was true at the point in time it was issued. Currently, it represents what was true at some point in the preceding 796 days. After this ballot, we will know that the information was accurate within the last 20 days, which is meaningful for certificate consumers in terms of understanding the reliability of the information certified by the CA.
Addressing the validity period of the certificate is a larger step, and I didn't want to take that on in this ballot. Certificate rotation is a different process involving different systems and could potentially impact on the availability of sites on the web. On the other hand, domain validation is a separate process that involves DNS records or files on a site, which is distinct from certificate replacement. This difference is substantial enough to treat them differently. 
If we could have ten-day certificates, that would be great, but there are other concerns that need to be addressed first. As a result, I limited the reduction of the domain validity period to 47 days. However, I’m not aware of the same concerns applying to domain validation, so I reduced that period to ten days. That’s my answer.

**Trevoli Ponds-White (Amazon):** I noticed your question in the email about the new ballot version and whether we should start a new discussion thread, since the old one is quite long, maybe we should discuss that here too?

**Clint Wilson (Apple):** Technically, the ballot is now SC081-v3. There’s a fairly long discussion in the thread, and I kept it in to preserve the context. However, if people prefer to move it to a separate discussion thread, I’m fine with either option.

**Dimitris Zacharopoulos (HARICA):** My argument regarding the reuse period is that, first of all, I agree with you. The issues of certificate and domain validation are a point-in-time check, and this applies to any system that verifies information—it is verified at the moment of verification.
The period for how long you can reuse that information is typically a risk evaluation issue. How frequently does this information change? What are the risks of using falsified information, and so on? In domain validation, we’re checking base domain names, and the change of ownership in domain validation is very minimal. I don’t recall the exact statistics, but it’s less than 0.1% of domain names in ICANN TLDs, like .com and .int.
If we require domain validation to be renewed every 10 days, it needs to be automated. Is it reasonable to re-validate so frequently for something that changes so rarely?

**Clint Wilson (Apple):** Part of a risk assessment also involves a benefit analysis. Ideally, the cost of performing domain validation will be low enough that the benefits will more than justify it. But that’s only one aspect of the situation.

**Andrew Chen (Netflix):** Hi, I’m Andrew from Netflix, and we're an interested party here. I’d like to discuss the whole process of domain ownership change and validation.
One of our common use cases involves delegating a subdomain to a third-party vendor, which has a contract with us for a certain period of time. At the end of the contract, we remove all delegations. However, because the domain validation continues, the vendor can still issue certificates for any subdomain we delegated to them during that period. This won’t be reflected in ICANN records or anything that can be easily scanned across the internet.
My point is that these changes in control are likely happening much more frequently than can be recognized by, for example, ICANN domain scans.

**Ryan Dickson (Google):** Dimitris, you mentioned that some subscribers would be revalidating DCV every 10 days, and I understand that this is a practice some subscribers follow so that at any point in time, when they need a new certificate, they’re eligible to get one instantly.
If we imagine a world with reduced validity and increased automation, prevalidation really isn’t necessary, it could even be seen as wasteful. If clients can reliably get new certificates and, as part of that process, demonstrate control over the domain in real time, in a matter of seconds, performing the same validation step every 10 days doesn't offer much additional value. It might demonstrate that automation is still working, which could be valuable, but ultimately, I don’t see it as essential in a world with such automation.

**Dimitris Zacharopoulos (HARICA):** I'm not even going to mention technically constrained subCAs, but what would they need to do? Normally, the CA relies on the reuse of domain validation information to keep those certificates alive. Without this, they would need to stop issuance.
Like you said, it could be wasteful, but I’ve seen that some subscribers are concerned. They don’t want to wait until the last minute to issue the certificate because there could be a technical glitch or some other unexpected situation that prevents them from issuing it. They prefer to have that part validated and ready in advance, as it depends on other systems they don’t always control.

**Aaron Gable (ISRG):** Ryan covered most of what I was going to say, but in general, subscribers should not rely on having a valid domain control validation (DCV) document at any given time. It’s possible that the CA could discover a failure in DCV and have to perform a mass revocation. In that case, they would need to deactivate all validation documents to prevent them from being reused, as the validation was performed incorrectly. Any validation that a subscriber thinks they can rely on might vanish at any time.
Any subscriber issuing certificates frequently must be prepared to reperform validation instantly whenever a certificate issuance request arises. The flow should be like this: attempt to issue the certificate, and if you’re told validation is missing, conduct the validation and then continue issuing the certificate. With this approach in mind, the idea of validating every 10 days on a cron job becomes irrelevant. Issue certificates until you can’t, then perform validation and continue issuing until you can’t. This is the mode used by ACME, and I think it's a valuable approach that increases resilience.
The fewer assumptions a subscriber makes about the state of their validations, the better. The more agility they have to react to changes in the state of their validations, the better. In my view, the concept of constantly revalidating isn’t doing subscribers any favors. Reducing validation document reuse to 10 days won’t have any meaningful impact on subscribers who are using best practices and reacting swiftly as they should be.

**Nick France (Sectigo):** I completely agree with what Aaron said, and I want to add to Andrew’s earlier point as well.
To your point, Dimitris, domain verification is about verifying an FQDN, it’s tied to DNS records, not domain ownership, and has nothing to do with ICANN. Many certificates are issued for subdomains or domains that the requester doesn’t technically “own.” For example, someone could obtain a certificate for an S3 bucket on AWS, which has no real connection to the root domain.
I’d like to explore how domain validation reuse periods could be scoped based on the type of subscriber.
If you’re an Enterprise RA and validate your domain every 10 days, that’s generally fine. You can issue certificates as needed for your own domains, and the BRs already contain language allowing issuance for affiliates or legal subsidiaries.
But if you’re a reseller, someone who’s just signed up with a CA to offer certificates alongside other services, then it doesn’t make sense for you to benefit from extended domain validation reuse. There shouldn’t be a situation where I, as a reseller, validate a domain on behalf of someone else (say, Tim), and then get to issue certificates for tim.com for the next year. That’s clearly inappropriate.
Martijn and I have been discussing internally the idea of scoping domain validation reuse specifically to Enterprise RAs, since the BRs don’t currently define “reseller” as a concept. Rather than trying to introduce a new concept into the BRs, it would make more sense to limit reuse of domain validation to entities that are clearly defined, like Enterprise RAs.
As Aaron said, all subscribers should ideally validate each SAN entry and DNS name at the time of the request. A 10-day reuse period might be a reasonable concession for some of the practical issues we've discussed, but only in contexts where it's appropriate and secure to allow that reuse.

**Andrew Chen (Netflix):** I completely agree with everything Aaron said, and I want to clarify my position regarding domain validation reuse.
I do think reuse is valuable, I wouldn't want to end up in a situation where validation has to be redone for every single certificate issuance, with no reuse allowed at all. That model just wouldn't work well at scale.
As we move toward shorter-lived certificates, the volume of issuances increases. In my case, I’m likely issuing around 40,000 certificates per day using the same set of SANs. Ideally, I want to be able to reuse the validation data at least within that one-day window, so I don’t have to revalidate the same SANs for each of those 40,000 certificates.
As Aaron mentioned, automation helps here, once things are running, I’ll just be continually refreshing the validation data, say, once per day. Even if I get challenged to revalidate at some point, it’s just a small bump that I can handle in a matter of minutes.

**Dimitris Zacharopoulos (HARICA):** In response to Nick, in most cases, the reseller issue is an entirely different matter. We've seen numerous incidents involving delegated authority to resellers, who then reused that information for compromised websites or other problematic behavior. It's a difficult issue that hasn’t been fully addressed, and I acknowledge the concerns you're raising.
My original comment was primarily focused on enterprise cases, where organizations validate the base domain and then want to issue certificates for any subdomains under their control. These entities often prefer not to repeat the same validation daily. Some level of efficiency is important, and a 10-day reuse period feels like a reasonable upper limit. I understand and respect the general sentiment and emerging consensus around that being acceptable.

**Nick France (Sectigo):** I think that if enterprises had their way, they’d prefer to go back to the model we had 15 years ago—issuing certificates with 10–20-year validity and only having to go through validation once every couple of decades. But we need to move forward. A 10-day domain control validation (DCV) reuse period is a reasonable step in that direction, rather than requiring fresh DCV for every single issuance.

**Trevoli Ponds-White (Amazon):** The only caution I want to raise is that I feel we sometimes stray into the territory of what some of us call “shared responsibility.” I think trying to over-solve the problem, where someone delegates control of a domain to someone else, falls into that category. I don’t necessarily think it’s a problem we should be solving through the BRs.
This is like earlier discussions we’ve had about trying to police the internet, debates around what constitutes “misuse” of a certificate, or whether we should create extra rules to guess at user intent. I don’t have a strong opinion about the exact reuse timeframe, but I don’t think it's appropriate for us to step in when someone delegates control of their domain for a long period. We simply don’t know how long they intend that delegation to last. Some use cases might only require 10 days, others might involve contracts with service providers lasting years, and that should be up to them.
That said, I’m looking forward to wrapping up this discussion. I think we should move on to other important topics we’ve touched on previously—like the ability to rekey a certificate without redoing validation. A big concern that keeps coming up in these discussions is how to respond to incidents, especially when you need to quickly replace a certificate. In my view, key compromise is the primary incident we’re trying to address.
So, one of the next things we should consider is the proposal Ryan raised, which I believe Slaughter will discuss later, about allowing multiple validations to support rekeying without revalidation. Especially in a world of shorter-lived certs, like the proposed 47-day certificates, that would be a very useful tool to address many of the concerns we're discussing now.

**Dimitris Zacharopoulos (HARICA):** We have at least 2 years to get CA assisted validation ready.

**Aaron Gable (ISRG):** I was just looking at some of our metrics, we’re performing a large number of DCV each day. At the 75th percentile, the time to complete a validation is approximately 1 second for HTTP and 0.5 seconds for DNS. So, domain validation via automation is incredibly fast, easy, and cheap. I have no concerns about having to do it every 10 days. It consumes virtually no CPU or network resources. Those timings—even 0.5 and 1 second—include full multi-perspective validation from four global perspectives. In an automated environment, the cost of redoing validation isn’t a meaningful burden.

**Adrian Mueller (SwissSign):** I see how ACME validation can be easily automated. But I don’t understand how DNS validation can be fully automated. When I look at our customers, in many cases the certificate administrator is not the same person responsible for DNS. Often someone has to manually email the validation token to someone else who can update DNS.

**Dimitris Zacharopoulos (HARICA):** Only if you do the automation, it works like that.

**Aaron Gable (ISRG):** Exactly. For DNS validation, many people use CNAME delegation for the _well-known or _acme-challenge subdomain to a separate DNS server they directly control. So instead of emailing a token to a DNS provider that controls example.com, they ask that provider once to delegate something like _acme-challenge.subdomain.example.com to a lightweight DNS server under their control, which supports fast updates and no caching. After that, all DCV requests are routed to this delegated DNS, enabling full automation.
This approach doesn’t require ACME, you can use it for method 3.2.2.4.7 under any protocol. So even in cases where customers use DNS providers with slow update processes, there are ways to automate DNS validation effectively.


### Certificate Revocation: Is it effective at Internet scale? Browser requirements related to ongoing support of OCSP

**Presenter:** Dimitris Zacharopoulos (HARICA)  
**Minute taker:** Marco Schambach (IdenTrust)  

**Discussion:**

Dimitris: 
-	Determine the effectiveness of certificate revocation at scale and its relevance to browser requirements for OCSP support.
-	Discussed the agenda item related to scope and current requirements for CRL and OCSP in the last two teleconferences.
-	Uncertainty about whether these services are used by browsers, but they are heavily utilized by operating systems and other non-browser applications.
-	Repeatedly heard in chats and comments on GitHub and elsewhere that revocation doesn't work effectively at Internet scale.
-	OCSP services have been unstable, sometimes functioning well and other times not, depending on the region.
-	Potential delays in responses from Certificate Authorities (CAs).
-	If the group agrees that OCSP is a necessary service, consider adding more requirements and controls.
-	If we decide to leave it as a best-effort service, no changes are needed.
-	Opening this issue for discussion.

Scott R.:
-	I don't agree with the notion that OCSP doesn't work.
-	With the right resources, it functions well for me.
-	The real issue has always been the potential leakage of information when using OCSP, and whether we want to encourage its use given this concern.
stable & have privacy issues. should consider deprecation

Dimitris Z.:
- We do not allow issuance without OCSP

Ben W.:
-	Disagree with the notion that OCSP doesn't work.
-	Believe revocation can be effective at scale, especially with solutions like CRL Lite, which efficiently handle large amounts of data using algorithms that condense information with filters.
-	Having revocation information directly in the browser means we wouldn't need to rely on OCSP or download large CRLs, as the browser can check it.
-	With Signed Certificate Timestamps (SCTs), we can scan certificates for misissuances and other issues.
-	Is the topic of discussion around phasing out OCSP?

Dimitris Z.:
-	The topic of discussion is whether OCSP is broken, as there is disagreement despite its widespread use.
-	I believe that revocation can be effective at scale, and some browsers have demonstrated technologies that do this efficiently.
-	We have a browser member that is not implementing revocation at all, so I wanted to hear opinions on whether we should make any changes to the BR in this area.
-	If CRL is the future for effective revocation at scale, I’m unsure if other IT protocols are being discussed or designed without considering it.
-	We should explore other solutions for effective revocation.
-	OCSP is not very stable and has privacy issues; we should probably work on and plan its deprecation.
-	OCSP is optional today, but maybe we need to consider additional factors.

Trev.: 
-	Thinking that revocation is dead is interesting – it depends.
-	Privacy concerns also depend on the use case.
-	For people who check status, revocation is clearly very important.
-	We offer both CRL and OCSP because we recognize different infrastructures and these two services meet different needs, so we may want to keep both.
-	Regardless of agreement or disagreement, the fact is that there’s a set of relying parties that don’t care.
-	For privacy, it is confusing that some people check revocation status for certificates they don’t control.
-	Also confusing in the case of enterprise customers; not sure if that’s the same privacy concern as they have the same domain/set of domains.
-	People should be able to use an OCSP service to check certificate status if they want as an important security control.
-	If we are going to keep it, we should put more controls in place, like SLA requirements for OCSP.
-	Agree with Scott: you get out what you put in, so the OCSP service will be as stable as the service offered

Aaron G.: 
-	Disagree with the statement that revocation is dead.
- Believe that revocation has been broken for many years.
-	Many relying parties either don’t check OCSP or fail to contact the OCSP server, preventing anyone from realizing that the certificate has been revoked.
-	Think OCSP has real privacy problems.
-	Not excited about maintaining OCSP services and looking forward to shutting them down.
-	Recent efforts like CRL Lite and One CRL are changing the situation.
-	These efforts are making it possible for revocation information to reach relying parties quickly and efficiently, which is very important.
-	The single biggest improvement for supporting revocation would be to build support for receiving CRL Lite updates into the Linux CA Certificate package.

Clint W.:
-	Also agree that we should not deprecate or disallow OCSP.
-	OK with the current state of OCSP being optional.
-	The reason is that we still opportunistically query OCSP and don’t have the same privacy concerns because we use private relay, which works for us.
-	Very supportive of and continue to invest in shifting away from OCSP and CRLs towards CRL Lite, as the bloom function filters lack certificate transparency availability for other certificate types.

Wayne T.:
-	Asking if people notice the time it takes to deliver a revoked status; is this something we should try to improve?
-	Considering the perceived timing for an OCSP response showing a revoked status – not immediately but within hours – versus publishing a CRL, having that CRL downloaded, processed, and pushed to the browser via that browser's out-of-band mechanism (e.g. CRLite, CRLSets, Valid).
-	Unsure how long that takes, but the impression is that it's quite a bit longer. Is there an opportunity for us to improve the timing when using these more modern out-of-band revocation systems? Are there opportunities for improvement?

Dimitris Z.:
-	There are limitations on how quickly the revocation status becomes available.

Clint W.:
-	This is an area where we can improve.
-	We need to implement improvements in our infrastructure that processes all CRLs, which aligns with our brainstorming efforts.
-	We have a revocation feed for the next generation of revocation.
-	We will want to focus more on this in the coming years.

Trev.: 
-	When giving opinions on how people check revocation status, I'm sometimes amazed because people check more than once a minute. They don't update that often, so don't do that.
-	There are limitations on how soon the revocation status is available.

Dimitris Z.:
-	The "next update" field in the CRL is currently set to 7 days.
-	Propose reducing this period if most browsers are utilizing it.

Ben W.:
-	The understanding is that this field is used as an indicator, as browsers cache the information for that period.
-	There may be a two-way approach involving both the browser side and the CA side.

Dimitris Z.:
-	The check decision is on the CRL side; the caching decision is on the browser or consumer side.
-	Uncertainty about server-to-server communications and revocation checks.
-	Manual configuration of service check verification through CRL or OCSP in some cases.
-	Subscribers using the certificate are both subscribers and relying parties, as they check each other's server communication.
-	This is the scoping problem.
-	How should we treat our document?
-	Should we consider server-to-server communication or just server-to-browser communication?
-	We have browser representatives here; we can ask them their preferences for caching and get their feedback.
-	For other cases, the CA needs to represent these scenarios. It's challenging to focus on this problem

A good outcome is that we have to:
-	Increase focus on CRLs.
-	OCSP has many privacy issues and other challenges, but is still required by some relying parties.
-	Emphasize the quality of OCSP services.

Trev.: 
-	Discussed clarifying in the logging section that CAs should not retain IP addresses.
-	Net benefit and easy solutions.
-	IP addresses related to certificate status queries: both OCSP and CRL.

Nick, Sectigo 
-	Do not disagree.
-	We are not alone in using a CDN; we use Cloudflare and do not have any logging.
-	We do not keep any logs and do not think we could ask Subscribers not to do it; the CA does not do it.

Scott R.:
-	Bit of a tangled web.
-	Beneficial to the community to have discussions that are made public, including the reasons and efficiencies discussed here.
-	As Ryan mentioned, if we revoke a certificate, a CA must publish a CRL within 24 hours. This information should be published to advise relying parties. For the most up-to-date information, even if a certificate is cached for seven days, it should be pulled every 24 hours.
-	Implementing OCSP could help mitigate some privacy issues. It's beneficial for relying parties to have this information conveyed to them. This is a good practice.

Dimitris Z., Harica
-	Relying parties have access to the CRL distribution point.
-	They can query the CRL multiple times a day if desired.
-	There may be a more efficient way to solve these problems.

### Removal of id-kp-clientAuth KeyPurposeId from TLS server authentication certificates

**Presenter:** Dimitris Zacharopoulos (HARICA)  
**Minute taker:** Adrian Mueller (SwissSign)  

**Discussion:**

Dimitris Zacharopulos started a discussion about the topic of removal of id-kp-clientAuth KeyPurposeId from TLS server authentication certificates. As the Chrome rootstore program is banning the clientAuth for webserver certificates in 2026 and we strive for as few as possible differences between TLS BR and the rootstore programs, the question arises if this ban should be included in the TLS BR.

Summary of discussion:

Karina Sirota stated that MS needs to evaluate if clientAuth might be needed for OS use cases.

Aaron Gable stated that the clientAuth should not be banned entirely, but that the usage together with serverAuth might be forbidden.

Several participants agreed that a separate workgroup for mTLS client certificates is not appropriate at the moment.

Nick France stated that Sectigo is still learning about the specific clientAuth use cases, but stressed that private certificates should be used for this purpose. If customers want to use public certificates, S/MIME multipurpose certificates might be used.

Martijn Katerbarg added that the CABF as standards body could give guidance on when to use private and when public certificates.

### Classify GitHub open issues as "non-controversial" and seek volunteers

Dimitris stated that there was no time to dig into each open issue but reached out to individuals that want to engage and learn how to write simple ballots. Dimitris and other WG Members are willing to assist new folks in learning how to draft ballots and can walk people through the process.

## Any Other Business

None

## Next Teleconference

The next Teleconference is scheduled for April 10, 2025.

Meeting adjourned

