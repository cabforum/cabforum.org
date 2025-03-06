---
author: Wayne Thayer
date: 2025-02-13 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-02-13 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones (Microsoft), Andrea Holland (VikingCloud), Antti Backman (Telia Company), Ben Wilson (Mozilla), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Gregory Tomko (GlobalSign), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Jeff Ward (Aprio), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kiran Tummala (Microsoft), Lucy Buecking (IdenTrust), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sissel Hoel (Buypass AS), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

## Read Note Well

Dimitris read the note well

## Review Agenda

No changes to the agenda.

## Approval of minutes

The minutes for the teleconference of 30 January 2025 were approved.

## Membership

CyberTrust Japan is applying. Will defer to the next teleconference as their application status is confirmed as a certificate issuer and their inclusion into browser root stores.

## Discussion

### Open issues on GitHub

- Dimitris added a new flag called “non-controversial” to the open issues that would be “easy” ballots to tackle.
- Currently there are two (2) “easy” open issues. Dimitris will look for more as he continues to comb through the list.
- Group had a conversation on label locations.
- Currently four (4) open issues flagged for future profiles ballot. They could be combined in one ballot, to improve the certificate profiles language in the BRs.

### Ballot Status

SC-81:

- Dimitris Z. opened the floor to discuss the email communications.
- Aaron Gable: Discussed his impression of the email thread, is about the timelines to being the primary source of debate. Aaron suggested that we should say “Lifetimes should go down to x over the next three years” and then review that progress at the halfway mark to see if the timeline needs to be extended. Aaron mentioned he is in favor of the timeline as currently proposed in the ballot, but feels the language keeps options open in a way that allows modifications.
- Trevoli Ponds-White asked Aaron for more clarification on the language around timeline language.
- Dimitris Z. is willing to accept the risk (from the HARICA side) and agrees with Aaron on his approach.
- Tadahiko Ito: Expressed his concerns with Japanese subscribers but agrees with the shortening of lifetime and would like a more definitive understanding of the goals this would bring. He also brought up the concerns that this will mandate automation to the subscribers and the issues this could bring.
- Scott Rea says eMudhra is 100% behind the initiative to have more automation. His only concern is around the last date in the ballot – the 47 days. Their clients are asking for more information, so that they can plan accordingly.
- Clint Wilson highlighted that there have been three changes to the effective date to the NCSSRs v.2 based on discussion of the impact that the initial effective date went into place.
- Wendy Brown is concerned with the 45 days. She understands automation is the end goal, but her fear is with the subscribers who cannot have a change occur in the middle of an event. How do we service those kinds of customers?
- Clint Wilson reminded the group about the reality of the BRs, since their inception, have mandated an upper bound of 24 hours for being able to replace certificates. This reality has never come. He believes this ballot will not get us to that point but assist this reality happening sooner than later.
- Wendy Brown suggested that if this is the reality that this group wants, the browsers should validate the certificate themselves at the time of use. Wendy supports validation and agrees you can automate up to 90 days. She also discussed about the burdens that shorter lifecycle certificates will bring to subscribers and CAs.
- Trevoli Ponds-White feels there has been copious amount of feedback towards this ballot and at this point we need to set dates in stone and give CAs a deadline to plan for. Tevoli does agree with Wendy when it comes to certain customers, and she understands where 47 days can come across as confusing. Trevoli would like a plan, and we all stick and agree with the plan.
- Ryan Dickson wanted to remind everyone that that the 10-day number is only related to Domain Validation use.
- Wayne Thayer would like to start having the conversation of “how do we get to the end goal” and we need a timeline.
- Aaron explained, in response to concerns from Wendy and Tadahiko about the cost of adopting automation, that automation is an amortized cost. You pay an easily measurable cost up front in order to save money, time, engineering effort, and personnel time in the long run. That is part of the benefit of automation.
- Aaron continued to describe how Let’s Encrypt has worked with organizations in the past to overcome challenges related to the perceived risk of using automation and organizational policies that limit how infrastructure changes are made. They have been successful at changing perspectives where a change to the automation is a change to the infrastructure, but the automation changing the certificate is not a change that needs to be reviewed and approved. This is comparable to how a Kubernetes cluster scales up or down with traffic.
- In response to concerns re: automation failing, Aaron cited automation fails statistically so much less than people fail. Monitoring is needed for both automated and non-automated certificate lifecycle management.
- The group continued their conversation on timelines and automation.
- Clint Wilson explained where the 47 days came from. It came down to it does not that you get different security benefits from moving to 398 days and down. These are the same security increases; they just impact a larger segment of certificates with each increase. This will help to ensure with each decrease in validity period, fewer certificates are at risk for the different issues described in the ballot’s preamble.

## Any Other Business

None.

## Next call

27 February 2025 at 11:00 am Eastern Time

## Adjourn

Meeting adjourned.
