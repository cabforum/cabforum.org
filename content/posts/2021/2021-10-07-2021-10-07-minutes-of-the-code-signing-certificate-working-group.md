---
aliases:
- /2021-10-07-2021-10-07-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-10-07 17:00:00
title: 2021-10-07 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland, Atsushi Inaba, Bruce Morton, Corey Bonnell, Dean Coclin, Iñigo Barreira, Ian McMillan, Janet Hines, Kiran Tummala, Roberto Quiñones, Sebstian Schulz, Tim Hollebeek

## Minutes 

Minute-taker: Iñigo

Dean read the antitrust statement.

Meeting minutes from last meeting were approved.

### NetSec WG discussion 

Ben emailed the rest of the WG to know if they could consider the NetSec to move from a subcommittee under the SCWG and become a WG that will affect the other WGs. It was agreed to recommend moving it to the plenary level and approve it as a WG.

Bruce also mentioned that this could impact the Webtrust audits and become a different NetSec audit and not tied to the current format. TBD next week with the Webtrust task force.

### Signing services and subscriber private key protection 

Bruce indicates that there´s a lot of information for the signing service and many things to discuss. One of these items is about the subscriber key protection requirements (the crypto modules provided by the CA, the signing service that could be a cloud provider, private or public cloud provider, …) Also it is important to discuss when the relation with an organization not representing the CA and the subscriber and the subscriber agreement between the subscriber and the signing service provider. So, need to clearly define the signing service, who provides the service (the CA or other organization), from where (private-public cloud), etc.

Ian agreed with this explanation of the situation and Tim asked for more time to read the emails as he´s been on vacation and had not time to look at them.

Bruce also indicates the issue that can happen when the key generation is created on behalf of the subscriber and how this could affect the different audits performed by Webtrust and ETSI.

Tim suggested that we can´t make the private key protection issue worse than we have today and Ian would like to have a solution to protect the private keys securely.

It was agreed to not use software solutions for private keys protection. Other important aspect is the subscriber identity management.

Sebastian questioned that how to address and enforce the subscriber private key protection and Ian mentioned to countersign the CSR.

Ian and Tim mentioned that another concern is that the signing service is providing its own private key for these purposes and also that wouldn´t be good to have all the time importing/exporting keys.

Roberto then mentioned that the problem would come when the subscriber is migrating/changing to another signing service and how to transfer the keys. Ian mentioned Android and Tizen as scenarios that use the key pair to stablish the identity.

Bruce tried to summarize what we are going to discuss next week during the F2F basically in 2 aspects:

1. Signing service requirements: CAs, third parties, private-public cloud, …

1. Subscriber private key protection and the primary goal would be to eliminate the software protection

### Ballot status 

CSC-11 is under IPR review which will be finished by November 3rd.

Invalidity Date ballot:

There has been good discussion on the list. Corey commented that Rob Stradling of Sectigo is willing to endorse the latest version.

Bruce Morton of Entrust is also willing to endorse.

Corey will prepare the ballot.

### F2F Agenda 

Dean mentioned that we have 2 hours and we can reserve most of the time for signing service item.

Bruce indicated that there are 2-3 items that can be converted into ballots and would like to talk about the direction for the next years and list out top priorities. The main open item is the reformatting of the current BRs and have an independent document of the SSL BRs.

Dean suggested to have the ideas ready for next week and send them ahead to the list when ready

Next meeting will be at the fall F2F next week, Wednesday from 12:30 to 14:30 EST

There was no other business; meeting was adjourned.