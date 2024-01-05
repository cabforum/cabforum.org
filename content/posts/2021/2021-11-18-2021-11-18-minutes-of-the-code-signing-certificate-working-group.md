---
aliases:
- /2021-11-18-2021-11-18-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-11-18 17:00:00
tags:
- Code Signing
- Minutes
title: 2021-11-18 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland, Atsushi Inaba, Bruce Morton, Chris Kemmerer, Correy Bonnell, Dimitris Zacharopoulos, Ian McMillan, Inigo Barreira, Kiran Tummala, Sebastian Schulz, Tim Hollebeek

## Minutes 

Minutes of the previous Meeting were approved

### Discussion regarding SC-50 from Server Working Group 

– Ballot is concerned with removal of 4.1.1

– Discussion is postponed until any changes are required

### Ballot CSC-12 

– Ballot has passed, in IPR review through 3rd December

### Ballot CSC-6 

– Effective date is set to Sep 1st 2022 based on reccuring feedback from the group

– Date seems reasonable for most CAs but some want to double check time needed to implement

– Discussion of proposed changes to 16.3.1:

– Dimitris points out that the CA shipping crypto modules with keys should explicitly be allowed to ship modules with multiple keys

– Dimitris also points out that the current language would allow the CA to import keys to the crypto module

– Hence, the CA should be required to generate a key inside the crypto module

– Sebastian mentions that since it is already required for the subscriber to generate keys on the module, it should follow for CAs to do the same

– Overall, there is agreement that it would make sense to add that requirement explicitly

– Language on the ballot is being updated slightly, as per Dimitris proposal over Email

– Ian proceeds to discuss the requirements around generating the key on a suitable hardware crypto module, with a CSR signed by the manufacturer to claim generation of the key on the hardware

– Discussing whether or not that phrasing might be redundant, Tim points out that an auditor would still be able to distinguish

– Upon a question for the difference between items 2 and 3, Dimitris points out that 2 is Remote Key Attestation while 3 is constrained by enrolment with a cetain crypto library

– Regarding item 4, Ian mentions that Microsoft provides verification by IT audit for their own CodeSigning

– Tim Hollebeek mentions that there are some others using this method

– Dimitris has concerns that the language may be misinterpreted by some to provide their own audit (non-FIPS) for the devices

– Tim mentions that some use non-standard security practices that in assurance level exceed what is required by the BR

– Bruce points out that an audit should ideally show only that a suitable device according to BR is used, not introduce evluation of a new device

– Dimitris still encourages reqording of the paragraph, to clarify

– Tim points at that “suitable” needs a more clear-cut definition of what is acceptable, are internal IT audits acceptable?

– For Ian, any audit that would clarify make, model and procedures would be sufficient but that didnt come through for the whole group

– Dimitris is also pointing at item 6, which specifies CA or qualified auditor witnessing key creation. Does this overlap with item 4?

– Through discussion, it becomes clear that number 4 and 6 are meant for different purposes (bigger and smaller customers respectively)

– Tim points out that specifying IT audits would complicate this ballot and can be improved upon in the future

– Dimitris points out item number 8, and how approval might conflict with items 1 to 7

– It’s generally agreed that item number 8 is only meant to cover methods that are not described by item 1 through 7

– Regarding item number 8, CAs should also bring up additional methods to . This seems mostly important to CAs not participating (of whicht here are many)

– Looping back to item number 4, Dimitris is asking for clarification whether an itnernal or external audit should be used

– There is discussion around whether and what should be clarified now and what should be addressed with a future ballot

– Dimitris will propose some language for clarification of item 4

– Bruce also raises some concerns regarding reuse, specifically for item 4 and 5 (limiting the validity of audits or reports)

– Bruce is pointing out that reuse is already addressed in section 11 (validation)

– Dimitris is mentioning that there are different reuse periods for EV and non-EV

– Ian believes that the reuse period of EV (13 months) is more appropiate, Bruce will update the ballot for items 4, 5 and 7

– Corey is mentioning that 11.7 also has some specifications regarding takeover attacks and wondering whether these should be updated as well

– Dimitris agrees that it should be updated with the ballot, Ian agrees to update

### Discussion regarding CSBR format change 

– Corey has been distributing an updated mapping document and incorporated CSC-11 changes

– Dimitris agrees that most mapping seems ok so far, with only some comments remaining

– Dimitris comes with a reminder that clarification ballots should not introduce normative changes

– The appendix with certificate profile sections talks about Email Protections EKUs being allowed – should this be added to 3647 conversion?

– Corey refers to MS Root program requirements for Email protection and Document Signing EKUs

– Bruce suggests that while not updating with the conversion, but introducing a new ballot immediately to make the changes. The group agrees

– Corey is addressing the delegation of audits as well, with Dimitris agreeing that the section needs further discussion (section 14.2.1)

– For Dimitris, it reads as if delegated RA can be internall audited

– Overall, it doesn’t seem like it’s a format change issue but there’s a problem with the existing content not being understood properly

– If it’s not understood, should it not be moved or moved just somewhere because some may rely on it?

– There’s agreement that the item needs further discussion and updating before introduing a format change

Next Meeting is December 2nd, Meeting is adjourned