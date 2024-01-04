---
aliases:
- /2021-10-13-2021-10-13-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-10-13 20:00:00
tags:
- Code Signing
title: 2021-10-13 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

SwissSign (Adrian Mueller), Telia Company (Ali Gholami), SecureTrust (Andrea Holland), Nimbus, Member of ETSI ESI (Arno Fiedler), GlobalSign (Atsushi Inaba), Entrust (Bruce Morton), DigiCert (Corey Bonnell), DigiCert (Dean Coclin), HARICA (Dimitris Zacharopoulos), CPA Canada (Don Sheehy), GlobalSign (Doug Beattie), SSL.com (Dustin Ward), GlobalSign (Eva Van Steenberge), Microsoft (Glaucia Young), GoDaddy (Hong Bui), Microsoft (Ian McMillan), Sectigo (Iñigo Barreira), SecureTrust (Janet Hines), BDO (Jeff Ward), TrustCor (Joanna Fox), Cisco (Jos Purvis), Microsoft (Karina Gupta), Microsoft (Karina Sirota), OATI (Kidd Freeman), Microsoft (Kiran Tummala), TÜViT / ACAB’c (Matthias Wiedenhorst), SSL.com (Michael Sykes), Primekey (Guest) (Mike Agrenius Kushner), SECOM (Natsumi Uchida), Sectigo (Nick France), SECOM (Ono Fumiaki), Entrust (Paul van Brouwershaven), GoDaddy (Rae Ann Gonzales), SwissSign (Roman Fischer), GlobalSign (Sebastian Schulz), OATI (Stephanie Skoro), SECOM (Tadahiko Ito), SSL.com (Thomas Zermeno), BDO (Tim Crawford), DigiCert (Tim Hollebeek), DigiCert (Tomofumi Okubo), Amazon Trust Services (Trevoli Ponds-White), Chunghwa Telecom Co., Ltd (Tsung-Min Kuo), eMudhra (Vijay Kumar), JPRS (Yoshiro Yoneya)

## Minutes {.wp-block-heading}

### Goals and Progress {.wp-block-heading}

- Merge non-EV and EV requirements – DONE

- Rationalize EV requirements – DONE

- Address move to 4096-bit RSA – DONE

- Cleanup and clarify requirements – DONE

- Update Subscriber Private Key Protection requirements

- Update Signing Service requirements

- Move CSBR to Pandoc/RFC 3647 format – Update in draft

- CSBR less dependent on SSL BRs and SSL EVGs

### Subscriber Keys {.wp-block-heading}

Ian: this is all about getting off of the acceptance of software generated and protected private keys. Pushing the official guidelines and requirements about cloud based solutions. Subscribers are using those solutions, but are they using the software protected versions,. or the hardware backed solutions? Really, that’s what we’re after, if you’re going to have a private key, it has to be generated in a hardware crypto module and remain protected there.

Hang-up is how does the subscriber or the CA gain that verification? Some of the topics are: updated requirement for the CA to ship the hardware crypto module with or without the preinstalled key pair. Optimal position is the subscriber countersigns the request with a manufacturer certificate. Not broadly available yet. Other option is signing services being in this boat. Signing service to countersign the certificate request making an attestation about the usage. Or subscribers can provide a suitable audit – but previously Tim C from BDO indicated that they don’t see that in any of the audits that they do. Other ones discussed: suitable report from cloud key protection solution (for example azure key vault provides log of key creation, and the “vault” will have the label of premium or managed HSM, which means not software key protected. None of the GBP use software protected keys, all of them are hardware backed, same with amazon. But some providers are all software backed.

CAs could be witnessing the key creation on a suitable model (via teams or zoom) and recording the key creation with the subscriber.

How do we get to a place where everybody is comfortable that we are getting that verification from the Subscriber.

DZ: address the use case where subscriber want to migrate their keys to different vendor. Difficult to support. Risk. But there are ways to doing that. Special HSM configuration etc to export keys. But does WG want to allow this use case? This could drive other things – for example the remote attestations. If we allow witnessing for key generation, then we might accept log file of cloud provider without cryptographic proof.

Tim: apples and oranges (FIX)

DZ: not really (FIX)

Tim: attestations we are talking about is audited CA keeping records, vs unaudited cloud provider providing log file.

DZ: true, they are. They provide different assurance levels. We need to draw the line of what is acceptable.

Bruce: we’re looking for perfect instead of good. ~List of things we could do, some items may not be the best, but allows us to move forward. If the goal is to eliminate keys being generated in software, we may want to improve it in the future.

Ian: yes, agree, push improvement.

Bruce: in SSL we did this with “any other method” and now we killed all the bad methods and kept the good methods. Change over the years, this may be the same. Start out, improve and eliminate moving forward.

DZ: we currently have some DV methods that are stronger than others, but they are all good enough. Similar with this.

Paul VB: PKI consortium is working on this. Running a survey from vendors on how different providers are implementing this attestation. Next goal is to collaborate to standardise this. There is some standardisation, but everybody does their own thing. Hopefully we can improve this with the feedback also of the CSWG.

Ian: thanks for sharing, this is great, will read.

DZ: what about the possibility of migration?

Tim: we’ll have to consider the history of that key – it may be held very insecurely. If we don’t consider that, the bar will be zero. We’ll have to have some requirements about the history. Will probably exclude the option because nobody has those records. Protection during the lifetime.

Ian: yes, 100% with Tim. Doesn’t want to accept the idea of bring your own key, or take it with you for signing services.

DZ: I agree 100% – just had to repeat from past conversations 🙂

Bruce: what’s the use case, why does the key need to be retained?

DZ: representative of MS gave that use case, and gave some reasons.

Ian: yes, there can be, but who is the consumer of the certificates in those use cases? (FIX) Not necessarily for publicly trusted certs. We don’t support static keys today. Challenge the team.

Bruce: Do we want to start again with the proposal of how we verify that the keys are in hardware, and if other people review that and say they’d like to add stuff, then we drive it to a set of items? Assuming there are CAs that practice what they do, and what they practice should be on the table, and we can possibly move forward with that and get this section done. The goal is to eliminate software. Not sure if this can be done over the next month or so, to get the set of validations.

Ian: take the draft and put it in the latest set of CS BRs and get it out on the list, get it out to the group, and start getting feedback, to get the list of appropriate ways of verification, then find endorses etc.

Bruce: any other comments/questions?

Seb: Good to discuss the requirements, also worth looking at “bad” subscribers, who try to get around this. Another topic to explore – Subscribers to be put on higher level vetting if there have been incidents or lower level protection of keys.

### Signing Service {.wp-block-heading}

Intro- Bruce: Current text for Signing Services in the existing document is confusing enough that an update will not suffice, the aim is to do a full redo of Signing Services. The goal during this session is to discuss what are the requirements for the signing service? From there we can push those into the BRs. We are not looking to impact to Singing Services that already exist. What can we add to the list of what is expected of a signing service?

Ian: Agree don’t import private keys. Singing Service is the keeper for the subscriber. As a applicant representative of the subscriber, they are the ones creating the key pair on behalf of the subscriber.

Dimitris: Should we add anything that has to do with redundancy and disaster recovery? If a signing service breaks, are all the keys gone?

Ian: Do we have to require that or is that an expectation that any of these services have a stated data loss and recovery objectives.

Bruce: Given another way that a failed signing service won’t impact the relying parties. As long as the CA is up and running and can keep providing status of the certificates, then the signatures that are already out there are already taken care of what they are signing.

Dimitris: Thought of it as one of the bullets already mentioned, like, logs must be available to the subscriber. It is a nice to have, but why is it a requirement? What makes it a requirement?

Paul: Logs must be available to the subscriber is open to interpretation. What does that mean? Is that record performing assigning, accessing the keys, shutting down the HSM or not.

Tim H: That is the question. These are suppose to be the minimum security requirements for a signing service. Not all the nice things you would like to have if you happened to be a customer. Some of these things seems to less apply like quality of service and redundancy. Those are more of a service quality issue and not a minimum security requirement. Log one is interesting as a customer I am interested in making sure there are no signing events that happened with my remotely managed key that I don’t recognize. So there is a reasonable security argument to be made in favor of a requirement that you must at lease provide a customer with a log of the signing events that have happened for their keys that they can do audits of their own.

Ian: Agrees that “They can do audits on their own.” We have to be careful around data privacy as well for signing service. I found out that hashes and digests are considered customer content. So any processing that you do with the hashes or digests must be done inside the region to meet GDPR. Any log of that data needs to retained in the customer’s region and in their possession.

Dimitris: Did you hear that from European lawyers?

Ian: It was the data privacy experts. This is a recent change too. It complicates things. We need to be able to provide our customers who has access to that private key and what has it been used for.

Dimitris: Do we need to add anything about sole control? Like 2FA or things like that? The same problem has been taken up by ETSI and eIDAS where the signing certificate for a qualified signature must be controlled only by the signer not the CA or the signing service.

Paul: That is for signature not for codes sign seal.

Dimitris: You compare it with a seal.

Paul: Code signing certificate is not issued to an individual, right?

Dimitris: If it is not an EV code signing, it can be issued to an individual.

Paul: In those cases, you might want to require some control.

Arno: Really complex discussion if you are talking about individuals. From the use case it is like a seal, it is issued to an organization. I wouldn’t sign at as a natural person. I want always to have a legal person behind it.

Dimitris: I think it is closer to the seal product for eIDAS. So, it does not require sole control for all cases.

Bruce: I didn’t expand bullet number 2, but it was secure authentication. Secure authentication could be expected to if the subscribers a natural person then you have to sole control. It is how we ant to expand how you authenticate to either generate or activate a private key for signing.

Ian: I am thinking about the users. To say I want to sign up subscribe and have a key and certificate for code signing done configuration of access and those kinds of things. I see those with 2FA. But the act of signing, if I want to put this into a CIDC pipeline: Jenkins, Github actions, or ADO pipeline, I cannot use 2FA, it doesn’t exist for managed identities. I need my build and pipeline to go from compilation and linking to the packing and signing without user interaction.

Bruce: We talked about that on our first discussion. Was 2FA or secure to server authentication, however it is fully defined. I assume CAs are already doing this, if the CAs are hosting keys and allowing for automating signing or sealing.

Paul: I am thinking why you wouldn’t be able to do 2FA or signing in a pipeline. There is a difference of factor. An additional factor could be while your only able to run or sign if you authenticate and come from this IP address for example. Something that you know or authenticate. Or a TLS session where you have a client auth where you do that additional factor of authentication. Something in those forms could reduce the tech factor.

Ian: If am using Github or ADO, is the IP address of where those build nodes existing is the entire fleet of IP ranges Github has for their action pipelines.

Paul: Yes, that is a problem. Still restricting to say that you might only sign from Github. Is already much more then you can sign from anywhere in the world. Is it really helping? That is the question. But the consideration that there might be more than one factor as in you have username and password or whatever token to authenticate and now you can use that key. Is that between time frames or whatever there is to restrict that. All the other authentication ports are useless if you can randomly sign if you have access to the service. Maybe the pipeline runs automatically, but to complete the signature, you have an email notification, or push notification and you need to agree to it as a second factor. I authorize this action of signing this object. That this interrupts the pipeline, I agree.

Dimitris: We have all seen use cases where best practices are applied like what you just described. But you want to be practical and allow not super experts to sign an excel file. Then we need less expectations from the signing service.

Ian: I want application developers and ISVs to sign their entire build and package. A small product that we do Sys internals that is 1000 signatures they would have to do per month on average. Talking about Teams and Zoom level application you have 500,000 signatures per month. To have to interrupt their daily build pipelines a couple thousand times for the larger ISVs or even medium ones it is not practical to have them have an actual person approve that.

Paul: I agree you want to have something that is identifying that service with a higher degree of certainty.

Bruce: Are we digging too deep into individual ones? Should we get a list of all the items? I think we agree we need to deal with authentication, sole control, and so forth and those should be on the list. What else do we need to add to the list? We can discuss these when we write them up and put it in the requirements. I assume our list will be longer than these five bullets. I don’t know if the 5th item is really an item. But are there any other items that we really think that the signing service should or should not do that that we should say is a requirement.

Tim H: It is possible that the list doesn’t have to be longer than this. There might be 1 or 2 other things that are not on this list. This list might be close.

Bruce: Let’s talk about the fifth item. I am breaking down that signing services could be done by an enterprise. This is why Ian is so familiar on signs stuff. He works on Microsoft enterprise signs more signatures than all of us put together.

Ian: 120 million per day at least.

Bruce: As an Enterprise signing service if we said a customer could use a cloud and a cloud could be their signing service. Or a customer could go to a CA or a delegated 3rd party CA running the signing service, that could be another area. If we leave the document as is, the CA or delegated 3rd party would be subject to an audit to meet the CSBRs, NetSec, WebTrust for CA or meet other items from the ETSI audit documents. Whereas the cloud service or enterprise doesn’t’ have to be audited at all. In the end the signature is identical, and the relying parties are subject to the same benefits or threats of the same signature, but some are audited, and some are not. How do we make it equitable to say what are the requirements a signing service should have to say that this is a signing service, and they met these requirements? Currently it is not equitable.

Ian: I agree. It is not. Some of these audit requirements when you think of a signing service, don’t really apply. With these audit rules and controls are geared toward a securing a CA private key not a subscriber private key. It seems heavy handed.

Bruce: That is why I was tying signing service to subscriber key protection. If the CA can validate that the key and hardware is protected, regardless of who has the hardware whether it is the CA, the public cloud, or subscriber. Is that the requirement the CA needs to verify that keys are in the hardware then the audit is not required.

Ian: Would I ask subscribers to meet any of these audit requirements around protecting their private key?

Dimitris: It is different. I don’t think you can compare that. If you have token and you take good care of it that is all you need to protect. In a signing service a 3rd party could have access to your private key. In WebTrust or ETSI you can carve out chapters. For example, there are sections that are used for RA functions only, they take out sections for CAs and key protection and so on and keep the logging, trusted roles, and some key components. If we want a trustworthy signing service platforms to be out there, they would need to work together with a CA or multiple CAs to handle keys on behalf of subscribers. I think it should be audited and we can define requirements for those services. Just as would be done for any CA running a signing service internally.

Bruce: On one hand it might make sense. At the same time a subscriber can open an account on AWS and get a key from the same level of hardware and sign items and code using that service. And we are not calling that a signing service, so we are not putting all the audits on them.

Dimitris: Why not? I think it is a signing service. If they handle the keys on behalf of the subscriber, then we need to see their audits. We need to make sure that they are not using the subscriber keys for their own purposes.

Ian: That is just generic secret store. These types of cloud based services already have to go through other compliance and audits such as FedRAMP and FISMA to meet requirements on providing a multi-tenant service.

Tim H: No necessarily. What is to stop me from creating Tim’s Unaudited Cloud Service?

Ian: That is true. Dose it have to be this specific list?

Tim H: That is the thing. The question of what the audit requirements should be is a completely different question. We are going to want to shave them down. I do want an audit. Not the full list we have. How do we prevent it from being legal to create Tim’s Unaudited Signing Service, where I am not complying with the signing service requirements, I am just signing for you. I don’t know how we stop that loophole.

Dimitris: We haven’t. The one thing that can stop that is responsible CAs that is going to check how the keys are protected before signing a certificate. That is the only thing that is stopping you.

Tim H: There are a couple other things we could do. We could put something in the terms of service for Code Signing CAs that says your terms of service must say you are not running an unaudited signing service.

Bruce: If public cloud has to meet these requirements then that is a definition of the cloud, which is not a signing service. Then the signing service has to meet these set of requirements and they can be audited for that. If you come up with Tim’s Signing Service you can either be Tim’s Cloud or Tim’s Signing Service. Signing service is already a delegated 3rd party form the CA anyways because you have to get certificate from somewhere. If you’re a cloud then you are not.

Dimitris: I am lost with the cloud service and signing service.

Bruce: The subscriber is responsible to have their key in hardware. The key in an HSM they have or an HSM someone else has. That someone else can be Azure, AWS, or Google Cloud. That is the subscribers job to do that and the CAs will need to verify they are using it. But we also have to verify they are using something that meets the cloud requirements.

Dimitris: The cloud service is doing the signing operation. It is one that access the key and signs something with that key. In my mind they are one and the same.

Bruce: I can’t do what you are saying and go through the audit requirements, chop them down for a signing service and then impose that on AWS. I can impose it on CAs, delegated 3rd party CA, or on a trusted service provider that does signing services. We can impose those requirements on them. That relationship is between a subscriber the party that is operation the HSM for them. We have no relationship right? A CA has no relationship to that to impose the audit. So it just has to qualify it somehow. It is not something that we can audit and present it to our auditors.

???: Is this someway addressed in the ETSI standards for operating a remote qualified signature?

Paul: I don’t think they have addressed that. They only say if you receive it.

Dimitris: We do. For remote signing services in the EU. It is okay to delegate to third party, but we take parts from the ETIS standards associated with operating a remote signing service. It would be applicable to AWS or Azure that would have their HSMs that they would handle it on behalf of their subscribers, they would keep their log files. They would give the key activation credentials to the subscribers, the subscriber could use the credentials to enable accessing to the private key, send the data to be signed, and get signed data back. The audit part is in the signing service, what you call the cloud server.

Paul: This is specified in the ETSI TS 119 432 and another.

Dimitris: Yes, in those same standards. It is like someone operating an HSM in a secure network or environment with good controls. Same thing as a cloud provider from a code signing perspective.

Bruce: You are saying the cloud provider is subject to audit.

Dimitris: Yes, something equivalent. If it is a cloud provider like AWS, they already have a bunch of audits for other standards that could provide some equivalency. We should discuss and dive into.

Bruce: Right. We should define what a cloud provider has to mean.

Inigo: It is the same for Microsoft Azure.

Tim Crawford: My concern is there are a lot of other areas too. It is a mixed responsibility. It is important to figure out how we are going to bring these cloud providers into an audit in some fashion. And carve out our other mechanism

Bruce: This is a difficulty.

Dimitris: We have a consensus that we want an audit. Whether it is audit already performed by cloud providers or a new audit. We can discuss the details. So far everyone has accepted that we need some audit for signing service.

Ian: Right now Tim’s Unaudited Signing Service does exist. (Example: ) They are using a cloud based key protection and generation solution. To Tim’s point, just because they are using that doesn’t mean they are properly controlling access to the private keys depending on who’s the users/subscribers to that signing service. I think there is an audit that is required. I have strong feeling that cloud already has an audit that meet the requirements, we just have to find out what that is.

Bruce: Do we want to definite it separately from signing service? Is that a relationship between a subscriber and a cloud and not a CA. A CAs relationship is to the subscriber and the subscriber has to provide this data. If they are going to use a cloud, then they are going to have to provide that the cloud was audited to whatever the audit requirements are and that the keys were generated in hardware. Is that just a relationship between the CA and the subscriber to take care of cloud requirements. The audit side that is a relationship between signing service and a CA. CA could be doing this or there could be a delegated third party doing the signing service.

Ian: Or the CA could be completely unaffiliated to the signing service.

Bruce: In order for the signing service to actually provide a key and have a certificate to validate the signature they must get the certificate from somewhere. If the signing service is not getting the certificate directly from the CA and they are pushing a CSR to the subscriber and the subscriber get the key from the CA, that would create a problem anyway.

Paul: If they can provide the key attestation to prove it was generated in hardware.

Bruce: Right. My assumption is that if the CA was a signing service as well they don’t have to look for key attestation from the subscriber.

Paul: The challenge here is if it a CA that is operating it is pretty straight forward. If it is the enterprise itself or a service provider that is not affiliated with the CA and not audited. They might use an HSM that can do key attestation and provide the proof. That doesn’t say that they have a secure infrastructure or operations of that signing service and that you cannot use the key of that neighbor. There might be a thousand or a million keys on that device and you can use all of them.

Ian: That is true.

Paul: That is the challenge we have to solve: the isolation of usage. Within ETSI, within the qualified space if you are using the QSCD they do it with signature activation module. Where the user needs to activate the signature. But then you run into the problem that you can do that for signatures but not for seals. When you use the signature activation module you have no way of doing that interactively without user input. The user must have some random token or challenge or one time password on their phone/device to activate. The problem statement is you have a shared service how do you prevent user A from using user B’s key.

Ian: Yes, signing service has to do that.

Paul: That is why the signing service has to be audited. Say that all signing services need to be audited to mitigate that problem. How do we identify that key was generated by the signing service and not by the HSM from the user.

Ian: I threw out the idea in the last meeting of having the signing service countersign the CSR for the certificate that identifies the signing service.

Paul: That is sort of key attestation which is fine. I am an enterprise who has my own HSM and my own signing pipeline. I am the only user of my HSM. I buy your code signing certificate. I generate the key on my HSM and I provide you with the key attestation. I should be able to use that since I am the only user. How do you identify that user from a shared service user which using the exactly the same HSM who also provides the key attestation, but is using it for a million users? Is that even practical, to identify cryptographic module by its serial number, hash or some identifier? And say actually we already have requests from that same device and this is not the same subscriber, so you are sharing the service and in that case you need an audit. You might be able to provide the certificate for the first user, but the second user and identify that we have already seen that creation device under a different subscriber. If you want to do that cross industry we would need some type of certificate transparency where we can store that information. Thinking out of the box. If you would have that identify of the signature creation device, embed it as an extension in the certificate and you can use CT or another source of data to identify if other users are using that same signature creation device and if that signature device has been audited. But that adds a lot of complexity.

Sebastian: When we talk about whether audits are required, that is a good point that we should discuss and come to a agreement. I don’t think we should define new audit requirement, since it is moving beyond the scope of this group. Defining requirement for certificate issuers and not those that process it in any way. Requirement for issuer can only be to hand out certificates to someone who proved the private key is created securely and proved by some type of audit. Not move the goalposts and defining our own audit criteria for non CAs.

Tim H: We already have audit criteria for delegated third parties who are involved in issuance. It is reasonable to consider signing services as the same thing. We cannot leave them out of scope for the audits or there will be no value in the signing services and protecting keys. I think we are going to have them in scope. I don’t think it moves beyond the charter of this working group.

Bruce: The BRs do call out some audit criteria like NetSec that signing service has to meet. If the CA was a signing service then if you go to WebTrust for CA it has a whole section on if the keys were generated by the CA. So then that is also an audit item for the CA since the CA is a signing service. We have similar requirements in the ETSI specs if you are generating keys on behalf of the subscriber of the subject then you have to meet these requirements. There are already items for signing service. And even more items if the CA is the signing service. It is not equitable it terms of the audit criteria is it depends on who the signing service is and how much audits we have from our existing document. Maybe we go down the path as Dimitris said in terms we don’t add anything in, but chop it down what is there, so that things make more sense. If you want NetSec, then here are the items from NetSec you have to do. If you want WebTrust for the CA here is what has to be done. But it is the same for all.

Paul: That would be a good approach and covers some of the items. Referring to ETSI 19431 series on remote signing and on remote signing protocols 19432. Those might help define the edge cases in a remote environment. That are currently not considered to work for us. Not sure if we want to reference an ETSI standard in this, but why do the work again if those might fit.

Bruce: Some work needs to be done and provide a proposal. Whether it is here is a standard that already exists and a proposal that meets that. Or if we need to chop it down and here is a proposal.

Tim H: That is right, we should look at what is out there. Look at the ETSI standards for what we can steal from those. Look at existing audits that cloud providers have to see if one of them we can just rely on, you have common industry audit X that covers key protection well enough and we are willing to accept that from existing cloud providers.

Ian: Key protection and that multi-tenant protection.

Tim H: Exactly. We are careful of splitting this out correctly.

Bruce: Move on. Not much to add on this list, but get into the details on how to impose this list. Talking about coming up with different audit requirements if the signing is done by a cloud provider vs a CA or delegated third party. We need volunteers to provide something to move this forward. Paul you mentioned ETIS document can you provide the document and paragraph that we should consider. And Dimitris you mentioned chopping down the document. If we leave it to someone else it will never get done. We have to work on it ourselves.

Dimitris: This is a work in progress and won’t be don’t in a short time. It might not just be five bullets it could be more. I think we all agree on the general goal. I will bring in any information for ETSI audits with regards to signing services. And see how much that helps.

Paul: One thing to add is that NetSec is looking at cloud services and have been trying to address these similar problems. Avoid discussing the key generation and key management things because it was not done in the cloud. I think some engagement there might help as well. We want to go forward with how to utilize existing audits for cloud service providers. Can we rely on a SOC2 audit? What services are incorporated? Who does the audit? Is that a vendor management perspective or the auditor that checks the audit of the cloud service provider? That was shared on the server certificate working group list, asking some feedback on that. It is really challenging to keep these things in and out of scope in the right way. Especially relying on 3rd party audits in the server certificate working group therefore in the NetSec it is problematic.

Bruce: Thanks for the discussion, we are slowly moving forward.

### Parking Lot {.wp-block-heading}

Bruce provided a list of open Parking Lot items and indicated that best efforts have been to track open items and have them resolved in ballots.

Reference:

### Other Items {.wp-block-heading}

Revocation Date Ballot – Corey has reviewed the changes with Rob Stradling who agrees to the updates. Corey needs a ballot number to proceed. Bruce stated that the new number will be CSC-12, but would assign and confirm.

### Next Meeting {.wp-block-heading}

Thursday, 21 October 2021, 12:00 ET