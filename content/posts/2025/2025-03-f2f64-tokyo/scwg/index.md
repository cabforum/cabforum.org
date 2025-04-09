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

...

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

Dimitris: current requirements for CRL & OCSP services are not as reliable

If team think these are necessary we should enhance the BRs, otherwise leave them untouched

Scott: does not agree they are as reliable

Ben: Does not agree... revocation information is in browser so may not need a CRL

Certificate Transparency is also available to validate certificate status

Dimitris: some browser support it, others not

OCSP not stable & have privacy issues. should consider deprecation

Trev: for cert status, revocation is very important - For enterprise, not sure if it is the same privacy concern; if user wants to check the revocation status, it should be available.

Aaron Gable: disagree w/statement that revocation is dead; it is broken; it has privacy issues; recent efforts such CRL lite are good. should keep revocation for all TLS clients

Clint: Agree should keep it; support investing in keeping CRL lite and other cert types

Wayne: timing for OCSP is not immediate; impression timing is longer and it should be improve to revoke certificates

Dimitris: Browser should have improvement in signaling revoked certificates

Clint; agree this needs improvement in upcoming years

Trev: When asked about opinion on how to check revocation status, surprised on answer to check CRLs as they are not as reliable. Not enough information there to confirm true revocation status; should keep both

Dimitris: next update field in CRL is 7 days... should reduce

Ben: Maybe the issue is with cache... may need to be fined tuned

Dimitris: caching happening at the other side; how to approach the issue: CA/ or Caching. Should focus more on CRL but require several parties to enhance the revocation process

Trev: agree.

...

Scott: discuss the reasons behind revocation timing... if want the more up to date from CA's maybe check every 24 hours  or enhance OCSP implementations. 

Dimitris: Relaying parties can check CRL more frequently

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

