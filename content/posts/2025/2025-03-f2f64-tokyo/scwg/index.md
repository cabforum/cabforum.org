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

Adrian Mueller (SwissSign), Alison Wang (TrustAsia), Alvin (SHECA), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Arno Fiedler (ETSI ESI), Arnold Essing (Telekom Security, invited guest), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla, Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Chya-Hung Tsai (TWCA), Clemens Wanko (ACAB Council), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dmitry Sharkov (Sectigo), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco Systems), Fumiaki Ono (SECOM), Han Yong Park (NAVER Cloud Trust Services), Hans Metsoja (Opera), Hao-Chun Li (TWCA), Hazhar Ismail (MSC Trustgate Sdn Bhd), Henry Birge-Lee (Henry Birge-Lee (Private person)), Hideki Kobayashi (KPMG Japan), Hiroki Katsube (JPRS), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Iori Kondo (Cybertrust Japan), JP Hamilton (Cisco), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Aprio), Jeremy Rowley (DigiCert), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Jinhwan Shin (Deloitte Korea), Joanna Zhu (TrustAsia), Jun Okura (Cybertrust Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Karina Goodley (Microsoft), Kate Xu (TrustAsia), Kenji Nakada (JPRS), Kenji Urushima (GlobalSign), Lila Dubko (CPA Canada/WebTrust), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Michael Malinowski (Certum), Michael Slaughter (Amazon), Mitsuyoshi Tamura (Cybertrust Japan), Nate Smith (GoDaddy), Naveen Kumar (eMudhra), Nick France (Sectigo), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Puja Sehgal (Microsoft), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Russ Housley (Vigil Security), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sooyoung Eo (NAVER Cloud Trust Services), Stefan Kirch (Telekom Security, invited guest), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Takashi Sawada (Secom), Taro Momosaki (Toyota Tsusho, invited guest), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vinay Kumar (OATI), Wayne Thayer (Fastly), Xiu Lei (GDCA), Yamian Quintero (Microsoft), Yannick Thomassier (Certinomis), YeongHo Lee (Deloitte Korea), Yumo Makino (Toyota Tsusho, invited guest), Zurina Zolkaffly (MSC Trustgate)

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

Ryan Dickson said that web browsers are fundamentally the same in their reliance on TLS. Operating systems extend this. Ryan said that they did not prohibit roots containing clientAuth and nothing is broken now since there are 1000 days for this transition.

Clint WIlson said that Apple approaches the TLS root program as supporting more than browser use cases - most are applications and it's working fine. Clint said that Apple would be happy to ban clientAuth if that would help - it wouldn't affect their program - and they added clientAuth only root support to allow for separattion

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

Update of the ballot was sent by Clint Wilson on 25.03.2025, which included the ...

update preamble (background description of the ballot).. explained why this ballot doesn't focus on revocation.

Discussion is going on for a week from today, until April 1, 2025.

Dimitris there was a request to elaborate 10-day reuse period and 45 days, is your argument that those a 2 different things, have you addressed that in the preamble?

Why can't we have 45 days in both cases?

Clint: I guess we could, that's part of the discussion, domain validation is certainly attend to be highly automateable and it's core of the certificate. Having that as fresh a possible, should be a goal.

Right now it says that it was verified at some point pretty long time ago, that is something very meaningful to certificate consumers, shows how reliable CA is.

Rotation of certificates is a different process..

Trev: mentioned that there was a question in the new ballot version if we want to start a new discussion thread, because old one is really long, maybe we should discuss that here?

Client confirmed that we can discuss that, he's ok with both options

Dimitris: ... it is verified at the point when you do the verification, data reuse is a risk evaluation.

Change of ownership in the domain validation is very small, we will require to renew domain validation every 10 days, is that reasonable to re-validate it so often for something that changes so rarely?

Clint: part of a risk assessment is a benefit analysis, benefit is more than enough to justify

Andrew from Netflix, Interested party: .. they remove all delegation after the finish of the contract. Change of controls might happen more often than can be recognized

Ryan: ..In a world with reused validity and automation, if clients can reliably ... I

Dimitris: not mentioning technically constrained CAs, normally CAs rely on .. like you said it would be a waste, some subscribers are worried, they want to have that validated part ready

Aaron: Ryan said most of Ryan was about to say, in general subscriber should not count on a domain validation document, it is possible that if CA discovers that they failed to do DCV correctly and have to do mass revocation

.... every validation subscriber needs to be ready to re-perform validation and then finish trying to issue the certificate. You continue issuing certificates until you can't, that's the way it's done in ACME, ...

Nick from Sectigo: agree, ... domain validation reuse period in the terms of how they are scoped ...

Legal subsidiary, ... let's scope domain reuse to enterprise RA, maybe 10 day reuse will be solving..

Andrew from Netflix: agreed to Aaron, ...

Dimitris: most use cases, delegating things to resellers, we haven't really addressed this issue here and it's difficult to address. .... some efficiency, it's good, 10-days is kind of a limit to that, but I understand the

Nick: 10 day is a reasonable way forward that having a new DCV any single time

Trev: the only caution is when we try to solve the problem, where someone delegates the responsibility .... trying to make rules to guess this things.. we also don't know how long they want to do that. Someone is contracting the service and wants to do this for years. Trev is looking for this topic to end and start discussing other ideas, big concerns are biggest incidents like key compromise, ...

Dimitris: we have at least 2 years to get CA assisted validation ready

Aaron Gable: I was looking at our matrix, we are doing a lot of DCV, timing is , domain validation via automation is fast and easy and cheap, so I don't have concerns.

Adrian Miller: doesn't understand how DCV validation can be fully validated, some

Dimitris: only if you do the automation, it works

Aaron: people use CNAME for ..... there are ways to automate even outside of ACME

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
-	Considering the perceived timing for an OCSP response showing a revoked status – not immediately but within hours – versus publishing a CRL, having that CRL in a browser, and processing it.
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

