---
aliases:
- /2022/03/10/2022-03-10-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-03-10 12:00:00
tags:
- Minutes
- Code Signing
title: 2022-03-10 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Atsushi Inaba – GlobalSign, Bruce Morton – Entrust, Corey Bonnell – DigiCert, Dean Coclin – DigiCert, Dimitris Zacharopoulos – HARICA, Ian McMillan – Microsoft, Inigo Barreira – Sectigo, Joanna Fox – TrustCor, Martin Katerberg – Sectigo, Michael Sykes – SSL.com, Mohit Kumar – GlobalSign, Roberto Quinones – Intel, Tim Hollebeek – DigiCert, Tomas Gustavsson

## Minutes

Antitrust statement: read by Dean.

Minutes: Approval of minutes from F2F on hold until people can review.

### CSC-13: Subscriber Private Key Protection (Ian)

Ian – CSC – 6 Had some errors and the creation of 13 is the updated version with fixes. High Risk Applicants is now removed from this ballot. New version of redline under review. New activity on the word ‘representations.’

Dimitris – We already have requirements for subscribers, but it’s not strongly enforceable. The client must not try to manipulate software provided by CA, CA must provide something that has reasonable assurance levels. Makes sense to have two requirements. Legal term ‘representation’ causing some confusion and should possibly be rephrased or move this to section with the subscriber warranties.

Tim – Representation is the appropriate legal term to use in this case, but there may be a better way of phrasing. Intent of that word is saying something more than what the subscriber claims, they are making a legal promise that they are doing this. The similar text in the warranty section is appropriate. We’re not try into to say they can lie about what they’re doing and that’s great and compliant. What we’re trying to do here is say that the subscriber has an obligation to describe accurately what they are doing in a factual way.

Inigo – Concerned that this is a promise but not a fact that a CA can check.

Tim understands that this is not auditable and that is a legitimate concern. How do we make this verifiable and auditable in the future. Key attestation is not there yet, how to move this long term to more technically auditable requirements. Something technically verifiable would be better. Based on previous discussion, Microsoft is willing to accept an IP auditors opinion from within the company which is very similar and we aren’t going to change that.

Inigo – Issue is for remote signing services not hosted or controlled by the CA.

Tim asked if the concern was about representation in the case of the signing service as opposed to just a generic subscriber.

Inigo – This representation is for private protection so that we as a CA verify that the certificate we provide when we receive the CSR is being created in the crypto module, and we are not sure about that. What you are saying is when the key attestation is widely available we can do that. We had the same concerns years ago when the key attestation wasn’t even on the table. I don’t know if we can provide different alternative methods for this not just representation, the CA can check that the keys are installed or generated within the HSM by auditor going to singing service provider or video remote.

Tim is supportive, had proposed in the past but it got dropped. Ian agreed we did have that. Bruce mentioned some issues in secure type locations. Tim agreed would not work for everyone and secure locations may have fewer problems due to likeliness to have an auditor or key attestation support, maybe they are less likely to use representations. Ian does all key generation offline which are not video recorded but are written into audit logs and events which are provided to an auditor and that is acceptable.

Inigo agreed to leave the representation and define in the warranties or definition what we are expecting the CA for representation and indicate video recordings or samples. For example, you need a face to face validation or alternative method, put samples of the alternative method such as video recording or third party attestation. Bruce asked if it can it be a contractual obligation. Tim think we should fix that, maybe say contractual obligation instead of representation to make it legally binding. Inigo stated the need for a definition of representation.

Inigo – If this is for a sample for signing a third party signing the service provider this is not maybe for us as the CA its just between the subscriber and the provider. We are just providing a certificate to the subscriber but the contract is between the subscriber and the signing service. In case 3 parties are in both do we as a CA need to have representation from third party provider that customers keys are in HSM.

Tim – The subscriber is the one who’s actually responsible for protecting the key so if they’re using a third party service that would have to be part of their attestation. The BR’s contain what requirements CA’s put on subscribers. If there is a third party involved on behalf of the subscriber that is murky in the requirements.

Bruce – Do we need to take care of signing service in this section?

Tim – Not sure we need to do anything as it is on the subscriber to prove to the CA that their key protection is adequate and the fact that whether there is a cloud service provider key protection involved or not is part of what the subscriber needs to explain, makes sense to Ian. Ian asked if we want to make representation a defined term or change it to contractual representation. Inigo prefers in definitions, but adding contract makes it more clear. Bruce suggested making it representation by, stating various roles, and those roles need to abide by the agreement. Dimitris, most CAs have language for this in Subscriber Agreement. Should add this to warranties section? Bruce is good with that, but should the representation be made by someone already trusted?

Who has to agree, individual or company? Dimitris – It is an individual that agrees that they abide by the Subscriber Agreement. Tim – you need a contractual agreement with the subscriber, “What you need is a legal agreement with contractual agreement with this subscriber. You cannot use a contractual agreement with one of these subscribers employees.” Dimitris – has to be properly delegated to enter into that agreement. Ian does a Subscriber Agreement with their own internal services. Dimitiris follows a delegation chain to check if that person is allowed to sign before accepting the Subscriber Agreement. Tim thinks we need to say a contractual representation from the subscriber which is the organization. So if you say contractual representation from the subscriber then you’re obligated to do the sort of chain following and checking whether they’re allowed to do that.

Bruce – should you just put this in the Subscriber Agreement? Dimitris – Add to representations and warranties, The CA has to comply with this section by adding into Subscriber Agreement or creating a separate agreement or in the application. Needs a binding between the applicant and these rules. Tim thinks it now says what we want in 16.3. Ian – are we good? Yes move on – Dean.

Ian – Other points from Doug raised in email were valid. Section 11.5 and 11.7 need to be updated prior to November 15. Because in that section it points to if you are in a takeover or a victim of a compromise that the subscribe, the CA must get representation again. To ensure that they are protecting the key, 16.3.1 subsection 1 is going away and will be only left with 2.

Bruce – Doesn’t matter right? Because it was saying you can’t use the key in software and we’ve eliminated software by November 15 2022, so that language should be deleted.

Ian – Is there other language for victim of a takeover.

Bruce – They were the victim of a takeover because they had keys in software, we weren’t trying to deal with it if they were victim of a key in hardware so that would be a new requirement.

Tim – As background, the keys in software was controversial 7 years ago, it was put in place to mitigate damage we were potentially allowing.

Ian – Agreed, section can go away once change is made. Asked for endorsers. Tim is willing to endorse, Bruce will endorse after reviewing final version.

### Signing Service (Bruce) conversations inline

Goal: Have a ballot by the next F2F. These are notes, looking for support.

Proposed Signing Service items:

- Signing Service is may be performed by the CA or a third party (Bruce – We are good with this)
- Signing Service is not a CA requirement, so is NOT a function of a Delegated Third Party – this will limit scope (Bruce – They could be a signing service so they’re not ending up a delegated 3rd party and we can define their compliance items and how they’re being audited later. Tim agrees that making them a Delegated Third party would not work. Bruce – Signing service is optional, so if you do meet these requirements.)
- Signing Service references may be removed when not required – this will limit implied scope
- Signing Service is not a Subscriber, so all Private Keys are only associated to certificate Subscriber (Bruce – They are only going to sign code on behalf to describe what the subscribers keys. Tim – Right, so that implies that a signing service must segregate their keys by subscriber. Bruce – Right, we’re not going down this path of this monumental key from the signing service that can sign for thousands of subscribers.)
- Signing Service is not an RA, so will not receive certificate requests from an Applicant – CA or Delegated Third Party RA will receive certificate requests (Bruce – It will not perform validation. If it did, it would be Delegated Third Party.)
- Signing Request requirements will not be defined in the CSBRs (Tim – isn’t this usually called activation? Bruce – maybe we should think more about activation or key activation, signing request isn’t providing much value. Maybe need to remove a 2 factor requirement. Need to figure out manual versus automated.)

#### Private key generation

- Signing Service must provide evidence to the CA that the private key was created by the Signing Service. (Bruce – If the signing service generated the key it should provide evidence. If we are going down the path that the subscriber can do it, they get evidence from the signing service. If the signing service provides the CSR and certificate requests directly to the CA. Ian – do you have the signing service do the counter signing of the CSR? Bruce – I’d be more concerned if it was a third party not the CA. Tim – very important when it’s a third party to provide evidence it’s in an HSM. Bruce – assuming direct link between CA and signing service, if the signing service is going to send out CSR to the subscriber and the subscriber sends that to the CA how does the CA know that the key that signed that CSR was in the signing service? – This is where we need evidence. Tim thinks the CA and the signing service would arrange this directly between the two of them. Bruce – if they sign it we have it covered, they need to provide something so the CA knows.)
- Question – Ballot CSC-13 allows the Signing Service to use cloud-based key generation. Can the CA can operate the cloud-based service? (Ian, Bruce and Tim assume this is a yes.)

#### Audit

- Specific compliance sections of CSBRs and NetSec should be stated in the CSBRs as the compliance/audit scope should not be determined by the CA, Signing Service and Auditor. Note, WebTrust for CA or ETSI EN 319 411-1 would not be in scope for Signing Service. (Bruce – Issue is that the signing service can deal with multiple subscribers or a bunch of subscribers can have a key for every signature, so maybe the signing service held to a higher standard. For compliance, we should call out specifically which sections of Netsec and CSCBR they should meet. CSCBR should state scope. Tim agreed. Inigo – This is only for the issuance of certificates but the signing service provider is providing a different service so in the case of ETSI there are other standards for auditing signing service providers. Dimitris – Discussed during F2F reviewing these standards. Bruce thinks there may be some good things in the standards we can put into the CSCBRs without using references. Tim agrees. Dimitris agreed this should be captured in minutes from F2F, are we reinventing the wheel? Bruce – he agrees, using current wheel, CSCBRs needs to be updated but someone needs to take the action. Tim asked for specific mapping of ETSI to CSCR. Inigo is willing to provide the standards. Dimitris brought up this might be too difficult and need a separate subcommittee. Inigo – The difference is this is a signing service and we are talking about issuance service so we are only issuing certificates but we are not doing anything with them. So we provide the certificates to the subscribers and they use it for whatever they want, in this case to sign code. If we are going farther to signing service then agrees with matrix. Bruce – not trying to state anything new just clean up what we have, signing services already existed, just reel it in. Just scoping to what we think is secure. Dimitris, wants to reel out. Move to a separate document and potentially scope a new charter for signing services, Bruce says that is out of our scope. Bruce thinks we can contain in the doc we have. This discussion will be tabled for later.)
- For cloud-based key generation, is there a compliance requirement for the cloud-based service? (Bruce – how do we know the signing service is using cloud based and how do we know cloud based is good? Ian would love to lean on a key attestation from all these cloud services, Dimitris – or an audit, Tim – there is no difference, must follow same requirements. Ian – yep. Bruce – the cloud service can provide a contract. Tim – under private key generation we are going to require proof so that would be true if the signing service was in the cloud as well. Bruce – the signing service could sign the CSR although it may sign the key in software. Tim- The signature on the CSR doesn’t prove that the key is in the hardware. Dimitris – we need more controls including trusted personnel. Bruce – but those are in NetSec, but the keys are generated in cloud based, so what’s the requirement on that party? Table discussion.)