---
author: Wayne Thayer
date: 2025-02-27 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-02-27 Minutes of the Server Certificate Working Group
type: post
---

## Attendees:

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Antti Backman (Telia Company), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brittany Randall (GoDaddy), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Gregory Tomko (GlobalSign), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Aprio), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Jos Purvis (Fastly), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Microsoft), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon), Michelle Coon (OATI), Miguel Sanchez (Google), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Puja Sehgal (Microsoft), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft).


## Read Note Well

Dimitris read the note well

## Review Agenda

No changes to the agenda.

## Approval of minutes

The minutes for the teleconference of 13 February 2025 were approved.

## Membership

- Cybertrust Japan: Discussed at the last teleconference. Dean and Dimitris confirmed membership requirements are met. No objections for the approval of Cybertrust Japan as a Certificate Issuser Voting Member (pending the six month probationary period described in the bylaws).
- Dean and Dimitris discussed potential procedural updates for tracking the authority of individuals signing IPR agreements. Discussion can continue in the Infrastructure Subcommittee.
- Ryan Dickson mentioned he believed he saw an inquiry from Ryan Hurst related to becoming an Interested Party. He will follow-up offline. 

## F2F#64 SCWG agenda Planning:

- Dimitris introduced a set of agenda topics that he proposes for the F2F:
    - Clarifying the scope of the TLS BRs, and discussing the applicability of browser and non-browser use cases. 
        - Dimitris indicated that perhaps it’s time to make it clear that the scope of the TLS BRs are focused on modern browser use cases, or not, depending on how discussion goes.
        - Scott Rea agreed and expressed interest. He described how browsers are used for both private and public PKI use cases. Understanding how they support those trust models is important.
    - Continue discussion on Ballot SC-081: Emails on list indicated interest in further discussion on the ballot. 
        - Karina mentioned her interest was continuing ongoing on-list discussions and hearing presentations to allow more synchronous discussion. 
        - Chad expressed his message was intended to help serve as a baseline for discussion related to the effective dates included in the ballot and how organizations might need to prepare for the changes described therein.
        - Dimitris highlighted ongoing discussion on GitHub, and emphasized challenges related to organizing those views. An additional discussion at the F2F might be nice.
        - Clint is very open to additional discussion and wants to make sure there is sufficient time and space for that discussion. 
                - He’s unsure what remains unaddressed, or what folks see as needing continued discussion. 
                - There are a lot of comments that generally boil down to disagreement with the ballot, and those are difficult to address in a meaningful way. 
                - Chad’s email was very helpful. 
                - Clint expressed he’s happy to describe how and where he came up with the existing timelines, which included discussions with industry members. The timelines were also focused on the security outcomes we want to have and the timelines we hope to achieve them in. 
                - From Clint’s view, the most beneficial way of going about this is establishing a realistic timeline, and pursuing it with all intent to achieve that timeline, with an openness to change that timeline if it becomes clear it's not achievable. That is what he tried to accomplish with SC-081. Nothing yet has indicated the timeline is not achievable.
        - On aligning DCV reuse reduction and certificate validity period effective dates, Clint described this separation was intentional. It seemed folks wanted more time to allow for systems to be updated to rely on automation to contend with the validity reduction. Asking subscribers and CAs to implement a reduction of validity and DCV reuse at the same time, could be more difficult than allowing them to be addressed separately. That is why the dates are staggered. Clint is happy to consider alternatives. 
        - Dimitris described automation is essential for both the reduction of DCV reuse and validity - he’s not convinced the timelines need to be separated.
        - Trev agreed and expressed that more dates and timelines could result in more confusion for customers and a more complicated communications strategy. Fewer dates could be simpler. 
        - Dimitris described the interplay between the proposed 10-day DCV reuse period and how this might affect CAs and subscribers pre-validating domain ownership such that new certificates can be issued whenever they are needed.
        - Clint identified an opportunity to clarify why reducing DCV reuse is important. 
        - Tadahiko asked about examples of attacks that would be prevented by shortening reuse periods.
            - Clint agreed, evidence of widespread attacks would make it easier to convince people these changes are necessary. Unfortunately, if those scenarios existed, it would be too late. We need to be more proactive about the understood risks of such attacks, rather than waiting for them to occur. Clint can describe this further in the ballot preamble.
            - Tadahiko also encouraged us to think about alternative approaches.
        - Trev expressed we should be clear about the problems DCV reuse and validity reductions are solving. We should separate these considerations in the ballot preamble.
        - Mahua also expressed more detail related to the DCV reuse reduction would be helpful (i.e., “Why 10-days?”). 
        - Trev highlighted that we should discuss other proposals related to CAs being allowed to issue certificates without revalidating, if they have to revoke, while replacing a certificate. We can discuss this in the Validation call. Clint mentioned Slaughter’s work with SC-82 Redux is aligned with that goal. He hoped we can ensure there are domain validation methods that are both highly automatable and highly scalable to support the use cases the TLS BRs apply to. He supports that effort.
    - Certificate Revocation: Discussion surrounding SC-081 claims revocation does not work at the scale of the Web PKI. Dimitris wondered about possible interaction between SC-081 and new revocation mechanisms introduced by browsers. For example, do we need to keep maintaining OCSP services given cited concerns with instability and privacy?
        - Trev suggested this fits in more closely with the scope discussion.
        - Aaron G. highlighted that SC-063 made OCSP optional. How is OCSP related to SC-81?
        - Dimitris said the concern was revocation, in general. Should we focus on the traditional revocation solutions described in RFC 5280, or are there more modern options?
        - Dimitis suggested if we agree the TLS BRs focus on browser use cases, perhaps we come up with a future plan that comes up with a more scalable revocation solution.
        - The group again went back to this being related to the scope of the TLS BRs.
        - Trev expressed it’d be helpful to understand browser requirements related to ongoing support of OCSP.
    - Removal of clientAuth from TLS certificates: Related to Chrome’s updated root store policy. Dimitris wanted to add this to the agenda to raise awareness related to these changes for relying parties and subscribers, and to discuss impact to the Web PKI.
        - Trev asked for the goal of the discussion. Is this just an airing of grievances? It feels related to the scoping discussion. Ryan agreed.
        - Ryan emphasized that when Chrome establishes TLS connections to websites, it does not rely on the clientAuth EKU, and he understands the same is true for the other browsers represented in the community. He said if there’s a need or interest in further discussion, it’s welcome. He also clarified Chrome’s policy does not prohibit CAs from offering clientAuth certificates, they just must be issued from CAs not validating to roots included in the Chrome Root Store. He highlighted past F2F discussion surrounding Chrome’s views on this matter. Ryan also dug up slides from F2F#52 describing solutions of a multi-purpose Root on top and more specific lower-level Roots, like those that would be included in a Chrome Root Store.
        - Trev expressed it’d be helpful for other browsers to clarify their view on clientAuth.
        - Dimitris expressed it is nice to align the BRs with root store policies. Trev indicated perhaps it’s a good time for a browser alignment ballot. That might be an outcome of this discussion.
        - Ben said that the presence of the clientAuth EKU in a TLS certificate doesn't appear to hurt anything, and there is no security vulnerability, so why does it have to be prohibited?
    - Require DNSSEC support for all aspects of DCV, not just for CAA checking: Given ongoing discussions, it’d be nice to get everyone’s awareness re: potential future direction and understanding potential challenges and concerns. 
        - Nicol asked whether this was related to all domains, or only those DNSSEC enabled. 
        - Dimitris clarified that any validation method that relies on DNS, would need to rely upon a resolver that’s capable of validating DNSSEC. It does not require domain operators to enable DNSSEC.
        - Github open issues: Time-permitting, we can discuss open issues and flag as many as we can for future work.
    - Additional discussion:
        - Corey suggested we could move the DNSSEC discussion to the Validation timeblock, to allow for more discussion time on some of the earlier discussed topics. 
        - Dimitris agreed to move the DNSSEC discussion to Validation. 
        - Dean also suggested we could move NetSec to later in the day to allow for additional discussion within the SCWG. Clint was fine with that change.

## Any Other Business

Dimitris encouraged participants to register for the F2F

## Next call

March 13, 2025 at 11:00 am Eastern Standard Time

## Adjourn

Meeting adjourned.
