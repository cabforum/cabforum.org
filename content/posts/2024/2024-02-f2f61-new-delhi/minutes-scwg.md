---
author: Iñigo Barreira
date: 2024-04-05 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-02-27 Minutes of F2F meeting in Delhi - SCWG
type: post
---

## Attendance

Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Antti Backman - (Telia Company), Arno Fiedler - (ETSI), Arvid Vermote - (GlobalSign), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bilal Ashraf - (SSL.com), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Christophe Bonjean - (GlobalSign), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dave Chin - (CPA Canada/WebTrust), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Enrico Entschew - (D-TRUST), Eva Vansteenberge - (GlobalSign), Fumi Yoneda - (Japan Registry Services), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jeremy Rowley - (DigiCert), Jos Purvis - (Fastly), Jozef Nigut - (Disig), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Keshava Nagaraju - (eMudhra), Leo Grove - (SSL.com), Li-Chun Chen - (Chunghwa Telecom), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Matthias Wiedenhorst - (ACAB Council), Miguel Sanchez - (Google), Mrugesh Chandarana - (IdenTrust), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Raffaela Achermann - (SwissSign), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Roman Fischer - (SwissSign), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Sissel Hoel - (Buypass AS), Sooyoung Eo - (NAVER Cloud Trust Services), Star Simmons - (GoDaddy), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tim Hollebeek - (DigiCert), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha - (eMudhra)

## Review Agenda

- D-Trust has requested adding a second topic on Revocation
- Dimitris requested adding a topic on linting requirements if time allows

## Discussion 

### Updates since last F2F and ballots update

Inigo presented the updates since the last F2F for the SCWG and the Validation Subcommittee. The updates were presented through the presentation in [F2F61_SCWG-summary.pptx](F2F61_SCWG-summary.pptx).

### Reasons to revoke

Trevoli presented a presentation which can be found in [CABF_F2F61_Reasons_to_Revoke.pptx](CABF_F2F61_Reasons_to_Revoke.pptx). Below are the discussion points coming from this presentation.

#### Reason 8

The question raised here is: Does requiring a 5-day revocation window for this, mean that CAs maybe aren’t adding strict rules into their Subscriber agreement in fear of causing misissuance?

Dimitris points out that if any of the subscriber agreement items is also a BR requirement, the timing should be limited to 5 days, otherwise, we may want to look at giving the CA more days.

#### Reason 9

Martijn points out that while adding the domain controller / owner to reason 1 may help for some cases, it doesn’t completely satisfy this requirement.

Tim C. adds that we could add specifically what proof should be accepted, but not have the CA be limited to only these items. Dimitris states that in the EU, a supervisory body may also request revocation.

Tadahiko raises the point that, what if a government or court of one country states that the domain belonging to an entity in another country does not have the right to the domain name. How should CAs process this.

Tim C. suggests that we should not make the language too strict, but include language such as “the CA is satisfied that”.

Clint adds that even if a clock starts ticking after the CA confirms a request, we should look at adding language about how long the CA has to complete investigations. At the same time, this is also hard to define based on what type of case it is.

Brittany asks why if it took time to investigate, why should there be another 24 hours or 5 days to complete revocation, and should revocation not be done immediately after concluding the investigation. Dimitris and Tim C answer this by stating the CA may in some cases need time to reach out to the subscriber and give them time to review and replace a certificate.

Clint clarifies that we should balance the right language for allowable timing.

#### Reason 10

Tim H. clarifies that this is from a long time ago and sees no objection on removing this by now. 

Dimitris asks if anyone has any objection. Eva brings up that they receive problem reports from Netcraft who use this reason to submit CPRs

#### Reason 11

There seems consensus that this is not something required in the long term, especially if we further reduce validity period and reuse periods.

#### Reason 12

Clints adds that the reason seems very broad, and we may want to break them appart. 

The point is brought up that this maybe should clarify that it should only be a revocation reason, if the certificate was misissed based on the requirements and/or cps / cp that was effective at time of issuance. Tim H. proposes we should add something akin to this earlier in the document, so it would be true for the entire BR.

#### Reason 13

Dimitris asks if any CAs keep track of when this reason has been used for revocation. Identrust states they should be able to query for this. 
Mads adds that they use this reason when for example a formatting error was included in the Subject DN

#### Reason 14

Questions are raised on why this is included, as CAs generally don’t have a license or right to issue certificates. CAs could still issue certificates even if they are no longer trusted. 

#### Reason 15

Tim H. suggests that if CAs add additional reasons for revocation within their CP/CPS, they should also be able to state the timeline for this.

#### Reason 16

While similar to Reason 4, there’s consensus on it being different enough, but needs some cleanup

### Part 2 – Ballot Proposal

#### Reason 6

There seems to be general consensus towards removing this, since the sections quoted are for key sizes and algorithms. Since the reason states “no longer”, it means certificate still was compliant at time of issuance. 

#### Reason 7

Ben injects that this presumably was added to give CAs an option to revoke for any reason they deem appropriate and allows the CA to point to the BRs.
Mads states that they use this reason for Netcraft revocations

Consensus towards removing both of these seems to be there.


### Delegated DNS

Michael Slaughter presented a presentation which can be found in  “Proposed 3.2.2.4.7 Changes - FEB 24.pdf”. Below are the discussion points coming from this presentation:

Ben requests changing the naming of the proposal. Tim H. proposes “CA Assisted Validation”.

No further discussion on this topic

### Github procedures

Inigo explains the current issues with multiple ballots happening at the same time, or close after each other, where there is a lot of work for chairs to complete in GitHub, and also a lot for CAs to keep track of. There have been proposals around only doing a limited number of document publications per year, each of which may incorporate multiple ballots at the same time.

Tim H. agrees that now probably is the right time to start a discussion on only publishing documents X times per year, and how this also would help in allowing standard 6 month effective dates.

Ben: Would we do 1 IPR period per publication, or still one per ballot?
There is discussion about what is better. Having 1 IPR period per publication may halt multiple ballots if an IPR claim is filed. The risk for this is deemed to be low. 

Github Merge conflicts are also raised as an issue. Paul mentioned that we could solve this by using a staging branch before moving to the main branch

Clint: From our side, our lawyers have stated preference for having smaller but concrete changes provided, rather than multiple at the same time. 

Trevoli: Having 1 IPR period prior to publishing would allow companies to actually do either, as they could choose to perform the review once the ballot passes, not when the IPR period starts.

There seems to be general consensus on moving towards a general 2 or 3 time per year release cycle.

### Revocation periods

Enrico provides an introduction to this topic, and their recent experience with having to perform revocations in time.

Tim C. presents the presentation which can be found in “Revocation Timelines Feb 24.pptx”. 

Clint points that he feels fields not marked as critical does feel like more of a security issue and should probably not be included here. Likewise, we’d need to be very specific on all of these, for example a typo in a CN would be a big issue.

Tim C. agrees. Likewise if anything is not specifically in the 15 day window, it’s automatically a 1 or 5 day revocation. Next steps should involve getting more specifically on which cases we want to allow making sure there’s a clear list of candidates.

Comments are made around the misalignment with a CPS. Having a required revocation in this case, might invite CAs to have less-restrictive CPSes. 

Clint notes that we do have to hold CAs to very high standards, which this is a part of. Clint also points out that he worries we’re maybe not pointing out the root cause of issues, and if we should put more efforts on linting, rather than finding excuses for not revoking or revoking with a larger timeframe. 

Tim adds that this shouldn’t be seen as an exercise to get away with things, but rather have relying parties keep confidence in the WebPKI.

Michael states we should try to find a balance between holding CAs accountable and encourage linting and automation, while also not punishing relying parties and subscribers for CA errors outside of their control. Tim C. agrees that this should be the goal.

Michael asks about how the ecosystem is protected against CAs making the same mistake over and over. Tim C. answers that during a writeup, CAs already need to address the root cause of the issue, and “improper training” is generally not an accepted answer. 
Paul adds the idea of asking auditors to make sure corrective measures are in place, and repeated failure to do so should lead to audit failures.

Tobias raises the point that there’s a second part to this, which is, what if a reason for rapid replacement is suddenly found and you need to replace all certificates within a day, that’s a problem that will also need to be addressed. Tim H. agrees and brings Heartbleed as an example. At the same time, he agrees that one may act differently in an emergency and to that extend, we should make sure customers and CAs improve their ability to replace certificates in sort time through automation.

There is further discussion around the topic of CPS misalignment, where this is deemed as a reasonable candidate for allowing a 15 day window. Retroactively updating the CPS and not revoking is pointed out as a path we shouldn’t go down.

### Linting Requirements

Dimitris presented a short topic on requiring linting to be performed by CAs. Some CAs have been noticed to not perform pre-issuance linting. Dimitris has proposed language to include andpoints out that it’s a should so any CA not doing so, should justify as to why they’re not performing this. 
Michael inquires about the concept of pre-issuance linting, which is clarifies as linting the TBS certificate which usually gets signed by a dummy key.
Paul asks if we plan on pointing out what actually needs to be linted, as if we don’t the requirement seems empty if a CA could choose to only lint for one item.
Trevoli points out that it does help and clarify for any new CA that’s starting. 

## Any Other Business

None

## Next call 

Next call: 14 March at 11:00 am Eastern Time

Meeting adjourned
