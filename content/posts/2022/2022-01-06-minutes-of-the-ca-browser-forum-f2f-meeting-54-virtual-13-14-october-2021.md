---
aliases:
- /2022/01/06/minutes-of-the-ca-browser-forum-f2f-meeting-54-virtual-13-14-october-2021/
author: Jos Purvis
date: 2022-01-06 20:48:00
tags:
- Forum
- Minutes
- Face-to-Face
title: Minutes of the F2F 54 Meeting, Virtual, 13-14 October 2021
type: post
---

## Wednesday, 13 October 2021 – Plenary Meeting (Day 1)

The Antitrust statement was read.

### Attendees

Actalis (Adriano Santoni), Telia Company (Ali Gholami), SecureTrust (Andrea Holland), D-Trust (Andreas Henschel), Microsoft (Aneta Wojtczak-Iwanicka), Nimbus, Member of ETSI ESI (Arno Fiedler), Telekom Security (Arnold Essing), GlobalSign (Atsushi Inaba), Mozilla (Ben Wilson), DigiCert (Brenda Bernal), GoDaddy (Brittany Randall), Entrust (Bruce Morton), SSL.com (Chris Kemmerer), GlobalSign (Christophe Bonjean), Apple (Clint Wilson), DigiCert (Corey Bonnell), Apple (Curt Spann), DigiCert (Dean Coclin), Google Chrome (Devon O’Brien), HARICA (Dimitris Zacharopoulos), CPA Canada (Don Sheehy), GlobalSign (Doug Beattie), Microsoft (Dustin Hollenback), SSL.com (Dustin Ward), Google Chrome (Emily Stark), D-TRUST (Enrico Entschew), GlobalSign (Eva Van Steenberge), JPRS (Fumihiko Yoneda), MSC Trustgate.com (Hazhar Ismail), GoDaddy (Hong Bui), Microsoft (Hongquan Yin), Google Chrome (Hubert Chao), Microsoft (Ian McMillan), Sectigo (Iñigo Barreira), SecureTrust (Janet Hines), BDO (Jeff Ward), DigiCert (Jeremy Rowley), TrustCor (Joanna Fox), Cisco (Jos Purvis), Microsoft (Karina Gupta), Microsoft (Karina Sirota), Mozilla (Kathleen Wilson), GoDaddy (Kati Davids), OATI (Kidd Freeman), Microsoft (Kiran Tummala), SSL.com (Leo Grove), Chunghwa Telecom Co., Ltd (Li-Chun Chen), Buypass (Mads Henriksveen), Visa (Marcelo Silva), Sectigo (Martijn Katerbarg), TÜViT / ACAB’c (Matthias Wiedenhorst), SSL.com (Michael Sykes), Primekey (Guest) (Mike Agrenius Kushner), SwissSign (Mike Guenther), Microsoft (Mike Reilly), SecureTrust (Natalia Kotliarsky), SECOM (Natsumi Uchida), Sectigo (Nick France), SecureTrust (Niko Carpenter), SECOM (Ono Fumiaki), Entrust (Paul van Brouwershaven), OISTE (Pedro Fuentes), Disig (Peter Miskovic), TrustCor (Rachel McPherson), GoDaddy (Rae Ann Gonzales), Apple (Rebecca Kelley), Sectigo (Rob Stradling), SwissSign (Roman Fischer), Google Chrome (Ryan Dickson), Google Chrome (Ryan Sleevi), GlobalSign (Sebastian Schulz), DigiCert (Stephen Davidson), OATI (Stephanie Skoro), SECOM (Tadahiko Ito), SSL.com (Thomas Zermeno), Sectigo (Tim Callan), BDO (Tim Crawford), DigiCert (Tim Hollebeek), Opera (Tobias Josefowitz), Amazon Trust Services (Trevoli Ponds-White), Chunghwa Telecom Co., Ltd (Tsung-Min Kuo), GoDaddy (Tyler Myers), eMudhra (Vijay Kumar), Fastly (Wayne Thayer), Federal PKI (Wendy Brown), JPRS (Yoshiro Yoneya), Georgia Tech (Zane Ma)

### Minutes

### Approval of Minutes

No minutes to approve. Dean/Karina will look for the prior meeting minutes and prepare them for the next meeting.

### Future face to face meeting schedule

**Speaker:** Dean Coclin  
**Minute Taker:** Dean Coclin

Cisco is unable to host the spring meeting. DigiCert has volunteered to host in March in Salt Lake City, Utah. More details forthcoming as we get closer to the date.

### Infrastructure WG Recap

**Speaker:** Jos Purvis  
**Minute Taker:** Tim Callan

Jos Purvis (Cisco): Ben went through the ballots wiki page He’s created links to process instruction documents. He has worked on and released a couple of flow charts to illustrate the ballot process. This is important to make sure we don’t miss steps. He’s also created swim lanes to identify where we could have someone else take over certain responsibilities. We were waiting for access to route 53 for our DNS cutover. We will be fixing our DNS settings to migrate CABForum over there. GoDaddy has been wonderful in how they have helped CABF in this regard. Adding these setting to AWS is helpful because more people will be able to make changes. This gives us more control and spreads the work better. We also can update the DMARC settings on our email lists to start quarantining email.

Corey had an inquiry, which gave the example of a weekly Github digest published for the TLS working group. There is general agreement that such a thing would be super helpful for our Github as well.

Questions: No questions

### Presentation: What’s in a Name? Exploring CA Certificate Control

**Guest Speaker:** Zane Ma

**Slides:** [cabrowser_forum_-_ca_transparency.pdf][1]  

## Wednesday, 13 October 2021 – Server Certificate Working Group Meeting

### Attendees

As marked for the Wednesday meeting session above

### Mozilla Root Program Update

**Speaker:** Ben Wilson  
**Minute Taker:** Devon O’Brien

**Handout:** [cab_forum_october_2021_-_mozilla_update.pdf][2]  

Starting to work through 63 open issues on GitHub concerning the Mozilla Root Store Policy

- 22 issues identified to be addressed in MSRP version 2.8
- MDSP Email on this sent 2021-10-01

Improved documentation throughout policy, including continuing replacement of “CA” with “CA Operator”, cleaning up organization / formatting, additional information about pre-certificates re: Mozilla root program

## S/MIME certificates

Considering proposing deprecating SHA-1 for S/MIME certs and looking for any remaining use cases for SHA-1 in certs for Mozilla-trusted hierarchies

## CRLs

- Clarifying CRL profile fields
- Addressing revocation reason codes, primarily to flag key compromise revocations
- Moving to require CAs to add CRL distribution info and full CRLs to CCADB

Adding policy regarding removal of old Root CA certificates, requiring CAs to maintain historical CA policy documents for CAs currently included in Mozilla’s root program.

Additionally, discussed requirements that CAs not engage in discriminatory practices via either withholding issuance or threatening revocation for discriminatory reasons

Other News

- Mozilla is moving forward with CRLite and is pushing for full CRL information for all TLS certificates, since it currently relies on certificates in CT for discovery, which is not necessarily a complete picture.
- Enabling HTTPS by default in private browsing
- Disabled 3DES

### Google Root Program Update

**Speaker:** Ryan Dickson, Ryan Sleevi  
**Minute Taker:** Ben Wilson

**Slides:** [cabf_f2f_54_chrome_update.pdf][3]  

Ryan Dickson was introduced as running Google Root Program. He previously worked in policy with the U.S. DOD and U.S. Federal PKI.

He reviewed the Chrome Root Store Policy – https://g.co/chrome/root-policy.

The Root Store is being enabled across all Chrome platforms. The root program is in the engineering and development phase. (Not able to provide updates on inclusion requests at this time, as the focus is on the remaining engineering work.)

Incident reporting should be sent to the email alias – chrome-root-authority-program@google.com.

Inclusion requests for Android should be filed within the “Libcore” component (https://issuetracker.google.com/issues?q=componentid:192710%2B).

Dimitris asked about EV treatment. If a CA wants to apply, the current process was to send an email and file it in a bug.

Answer: The process has not changed, so the same process should be followed.

### Apple Root Program Update

**Speaker:** Clint Wilson  
**Minute Taker:** Trevoli Ponds-White

**Presentation:** https://www.apple.com/certificateauthority/ca_program.html  

Apple is presenting a set of changes to their program. All the changes will have a future effective date. Apple has clarified audit requirements. This shouldn’t be a change just clarifying. If it looks like a change reach out to Apple. They have also clarified compliance requirements related to CP, CPS, and CA/BF standards documents. Previously it was implied but not explicit. Clarified that CAs are expected to maintain up to date contact information in CCADB. CAs are expected to maintain an awareness and accountability related to industry standard development. CAs that pay attention to changes going on in places like the forum tend to be more successful. Introduced a S/MIME Basic Certificate profile. They are interested in beginning technical enforcement or S/MIME certificates. Apple will now require Technically Constrained Certificates be disclosed in CCADB. This is to aid in being able to collect full CRL information for all CAs that chain up to the roots in the program. Added a clarified submission process that now points to the CCADB so that CAs leverage CCADB as the first step. Added incident handling behavior. If CAs are already disclosing this in Mozilla’s Bugzilla then they expect an email to them with a link to that incident at minimum. The effective date overall for the policy is December 1, 2021. April 1, 2022 is the effective date for the S/MIME certificate profile and the date for disclosure of all technically constrained CAs. October 1, 2022 is the effective date for providing the full CRL dataset in CCADB. If a CA has an issue with any of these they should reach out to Apple to discuss concerns so Apple can help them succeed.

Q: For CAs that issue 3 year S/MIME certs how does this date impact that? A: 825 days is a better range that is more widely accepted. But if people have other data please share. The certificate profile applies to certificates issued after April 1, 2022.

Q: Is it a root program violation that is driving the date or is it that the software won’t trust certificates beyond this validity period? A: Both

Q: Can you clarify if because it’s a violation that will apply to all CAs? A: Only publicly trusted CAs in the default trust store.

Q: Have you considered that smart cards are harder to update and that’s why the validity period is usually longer? A: Yes, it has been considered broadly but Apple doesn’t have specific data that shows it will break anything.

Q: Why is Apple introducing changes now instead of waiting for the CA/B F S/MIME working group to finalize requirements? A: Apple appreciates the feedback and is keeping this is in mind.

Sebastian: As per the recording, I also pointed out that changes to the Root Store policy now (to only allow 825 days) might have to be rolled back when S/MIME BR are published, with some cert profiles allowing more than 825 days as per current BR requirements. Clint acknowledged that as well

### Microsoft Root Program Update

**Speaker:** Karina Sirota  
**Minute Taker:** Doug Beattie

_Presentation unavailable_

The details are in the attached pdf presentation and there were no comments. Top level summary:

## Change Management

Root Store Certificate Trust List package is posted here: https://aka.ms/CTLDownload
Release notes here: https://docs.microsoft.com/en-us/security/trusted-root/release-notes

## Testing

If your CA has changes you will be notified and must test the changes within 5 days
For instructions on how to test, please go to https://docs.microsoft.com/en-us/security/trusted-root/testing

## Communications links and info

- Use for communications: msroot@microsoft.com
- Program Requirements: https://aka.ms/RootCert
- Audit requirements: https://aka.ms/auditreqs
- If you have issues or suggestions for Microsoft Trusted Root Program requirements, you can provide them on the GitHub page: https://github.com/MicrosoftDocs/security/issues and be sure to send an email to msroot@microsoft.com for their records.

### CCADB Update

**Speaker:** Kathleen Wilson  
**Minute Taker:** Clint Wilson

CCADB Homepage now includes the CCADB Release Notes. Please use the Root Store email addresses when you have a root store program question. CCADB Support email is specific only to CCADB. CCADB Dashboard is a Bugzilla representation of the full roadmap, bugs, and enhancement requests for CCADB. Use this to track what’s actively being worked on and what’s coming up.

Full CRLs section will be updated to remove the “Non-TLS” label. There is also a task list item that will help CAs identify what intermediate certs still need to be updated for future effective dates of the Apple requirements for Full CRLs. There are some scripts that have been shared by Harica for updating Full CRL fields.

Salesforce has updated their messaging for Third Party Cookies, so if you’ve encountered issues with that please revisit.

Microsoft mentioned their CTL system, and this is used to automate Microsoft’s integration with the CCADB.

A new Case type is being introduced for non-audit updates to CA details. The document “Instructions and Screenshots” is available as a help document for working through this new Case type. Hopefully this change will be in production by the end of October. Kathleen provided a walkthrough of the help document (https://docs.google.com/document/d/14znpyOxbMN-itMhTCV5PxbzqmyNlmpqVZvvXjT8exk8)

Q: Are Full CRLs inclusive of Expired and Revoked CAs? A: No

### ETSI Program Update

**Speaker:** Arno Fiedler  
**Minute Taker:** Matthias Wiedenhorst

**Slides:** [ETSI-ESI_Standardisation_Update_for_CAB-Forum-10-2021.pptx][4]  

ETSI TS 119 461 as a standard on identity proofing has been published. Updated versions of ETSI EN 319 401, 319 411-1, 319 411-2 have been published during summer. Further updates on ETSI EN 319 401 / 411-x / 412-x / 421 are on the agenda. eIDAS 2 ⇒ ETSI has identified the standards that need to be updated or newly created in order to align with the new regulation.

No questions.

### Acab’c Update

**Speaker:** Matthias Wiedenhorst from TUVIT  
**Minute Taker:** Arno Fiedler

ETSI auditing will switch back to on site as a default, as soon as travel allows for all standard cases (…new CA, new services, full audits) Updated Audit Attestation Letter (AAL) template conformant to… – ETSI TS 119 403-2 – CA/B Forum requirements and – Browser Root Store Programs is available for download here: https://www.acab-c.com/downloads/

The revised EU eIDAS Regulation expected late 2023 brings new services:

Introduction of European Digital Identity Framework:

- European Digital Identity Wallets to be provided by every member state
- eID schemes to be notified by every member state.

New Qualified Trust Services

1. Management of remote electronic signature / seal creation devices
1. Electronic attestation of attributes
1. Electronic archiving of documents
1. Electronic ledger

## Code Signing Certificate Working Group Meeting

**Speaker:** Ian McMillan  
**Minute Taker:** Eva Van Steenberge

**Slides and Agenda:** [f2f_54_-_cswg_202110_v1.pdf][5]

### Roll Call

SwissSign (Adrian Mueller), Telia Company (Ali Gholami), SecureTrust (Andrea Holland), Nimbus, Member of ETSI ESI (Arno Fiedler), GlobalSign (Atsushi Inaba), Entrust (Bruce Morton), DigiCert (Corey Bonnell), DigiCert (Dean Coclin), HARICA (Dimitris Zacharopoulos), CPA Canada (Don Sheehy), GlobalSign (Doug Beattie), SSL.com (Dustin Ward), GlobalSign (Eva Van Steenberge), Microsoft (Glaucia Young), GoDaddy (Hong Bui), Microsoft (Ian McMillan), Sectigo (Iñigo Barreira), SecureTrust (Janet Hines), BDO (Jeff Ward), TrustCor (Joanna Fox), Cisco (Jos Purvis), Microsoft (Karina Gupta), Microsoft (Karina Sirota), OATI (Kidd Freeman), Microsoft (Kiran Tummala), TÜViT / ACAB’c (Matthias Wiedenhorst), SSL.com (Michael Sykes), Primekey (Guest) (Mike Agrenius Kushner), SECOM (Natsumi Uchida), Sectigo (Nick France), SECOM (Ono Fumiaki), Entrust (Paul van Brouwershaven), GoDaddy (Rae Ann Gonzales), SwissSign (Roman Fischer), GlobalSign (Sebastian Schulz), OATI (Stephanie Skoro), SECOM (Tadahiko Ito), SSL.com (Thomas Zermeno), BDO (Tim Crawford), DigiCert (Tim Hollebeek), DigiCert (Tomofumi Okubo), Amazon Trust Services (Trevoli Ponds-White), Chunghwa Telecom Co., Ltd (Tsung-Min Kuo), eMudhra (Vijay Kumar), JPRS (Yoshiro Yoneya)

### Minutes

Goals and Progress • Merge non-EV and EV requirements – DONE • Rationalize EV requirements – DONE • Address move to 4096-bit RSA – DONE • Cleanup and clarify requirements – DONE • Update Subscriber Private Key Protection requirements • Update Signing Service requirements • Move CSBR to Pandoc/RFC 3647 format – Update in draft • CSBR less dependent on SSL BRs and SSL EVGs

Subscriber keys Ian McMillan: this is all about getting off of the acceptance of software generated and protected private keys. Pushing the official guidellines and requirements about cloud based solutions. Subscribers are using those solutions, but are they using the software protected versions,. or the hardware backed solutions? Really, that’s what we’re after, if you’re going to have a private key, it has to be generated in a hardware crypto module and remain protected there.

Hang-up is how does the subscriber or the CA gain that verification? Some of the topics are: updated requirement for the CA to ship the hardware crypto module with or without the preinstalled key pair. Optimal position is the subscriber countersigns the request with a manufacturer certificate. Not broadly available yet. Other option is signing services being in this boat. Signing service to countersign the certificate request making an attestation about the usage. Or subscribers can provide a suitable audit – but previously Tim C from BDO indicated that they don’t see that in any of the audits that they do. Other ones discussed: suitable report from cloud key protection solution (for example azure key vault provides log of key creation, and the “vault” will have the label of premium or managed HSM, which means not software key protected). None of the GCP use software protected keys, all of them are hardware backed, same with amazon. But some providers are all software backed. CAs could be witnessing the key creation on a suitable model (via teams or zoom) and recording the key creation with the subscriber.

How do we get to a place where everybody is comfortable that we are getting that verification from the Subscriber.

Dimitris Zacharopoulos: address the use case where subscriber want to migrate their keys to different vendor. Difficult to support. And there are security risks. But there are ways to doing that. Special HSM configuration etc to export keys. But does WG want to allow this use case? This could drive other things – for example the remote attestations. If we allow witnessing for key generation, then we might accept log file of cloud provider without cryptographic proof.

Tim Hollebeek: There’s a difference between a log of an unaudited third party vs validation done by a CA. That’s apples and oranges.

Dimitris Zacharopoulos: not really, unless it is cryptographically signed.

Tim Hollebeek: attestations we are talking about is audited CA keeping records, vs unaudited cloud provider providing log file.

Dimitris Zacharopoulos: true, they are. They provide different assurance levels. We need to draw the line of what is acceptable.

Bruce Morton: we’re looking for perfect instead of good. List of things we could do, some items may not be the best, but allows us to move forward. If the goal is to eliminate keys being generated in software, we may want to improve it in the future.

Ian McMillan: yes, agree, push improvement.

Bruce: in SSL we did this with “any other method” and now we killed all the bad methods and kept the good methods. Change over the years, this may be the same. Start out, improve and eliminate moving forward.

Dimitris Zacharopoulos: we currently have some DV methods that are stronger than others, but they are all good enough. Similar with this.

Paul Van Brouwershaven: PKI consortium is working on this. Running a survey from vendors on how different providers are implementing this attestation. Next goal is to collaborate to standardise this. There is some standardisation, but everybody does their own thing. Hopefully we can improve this with the feedback also of the CSWG.

Dimitris Zacharopoulos: : thanks for sharing, this is great, will read.

Dimitris Zacharopoulos: : what about the possibility of migration?

Tim Hollebeek: we’ll have to consider the history of that key – it may be held very insecurely. If we don’t consider that, the bar will be zero. We’ll have to have some requirements about the history. Will probably exclude the option because nobody has those records. Where did that key come from and how does the cloud provider that’s importing it know, that it actually has been protected for its lifetime

Ian McMillan: yes, 100% with Tim. Doesn’t want to accept the idea of bring your own key, or take it with you for signing services. New signing service, new keys.

Dimitris Zacharopoulos: : I agree 100% – just for the sake of the argument, I had to to repeat from past conversations 🙂

Bruce Morton: what’s the use case, why does the key need to be retained?

Dimitris Zacharopoulos: Representative of MS gave that use case, and gave some reasons. Software that’s supported in old platforms and need to be signed with a specific key?

Ian McMillan: yes, there can be, but who is the consumer of the certificates in those use cases? Microsoft typically. Newget author signing requires that you retain the private key. This follows the similar Android and Tyson app identification model. Not necessarily for publicly trusted certs. We don’t support static keys today. Challenge the team.

Bruce Morton: Do we want to start again with the proposal of how we verify that the keys are in hardware, and if other people review that and say they’d like to add stuff, then we drive it to a set of items? Assuming there are CAs that practice what they do, and what they practice should be on the table, and we can possibly move forward with that and get this section done. The goal is to eliminate software. Not sure if this can be done over the next month or so, to get the set of validations.

Ian McMillan: take the draft and put it in the latest set of CS BRs and get it out on the list, get it out to the group, and start getting feedback, to get the list of appropriate ways of verification, then find endorses etc.

Bruce Morton: any other comments/questions?

Seb: Good to discuss the requirements, also worth looking at “bad” subscribers, who try to get around this. Another topic to explore – Subscribers to be put on higher level vetting if there have been incidents or lower level protection of keys.

Signing Service: Intro- Bruce: Current text for Signing Services in the existing document is confusing enough that an update will not suffice, the aim is to do a full redo of Signing Services. The goal during this session is to discuss what are the requirements for the signing service? From there we can push those into the BRs. We are not looking to impact to Singing Services that already exist. What can we add to the list of what is expected of a signing service?

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

Ian: Would I ask subscribers to meet any of these audit requirements around protecting their private key? Dimitris: It is different. I don’t think you can compare that. If you have token and you take good care of it that is all you need to protect. In a signing service a 3rd party could have access to your private key. In WebTrust or ETSI you can carve out chapters. For example, there are sections that are used for RA functions only, they take out sections for CAs and key protection and so on and keep the logging, trusted roles, and some key components. If we want a trustworthy signing service platforms to be out there, they would need to work together with a CA or multiple CAs to handle keys on behalf of subscribers. I think it should be audited and we can define requirements for those services. Just as would be done for any CA running a signing service internally.

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

Ian: Right now Tim’s Unaudited Signing Service does exist. (Example: https://github.com/dotnet/SignService) They are using a cloud based key protection and generation solution. To Tim’s point, just because they are using that doesn’t mean they are properly controlling access to the private keys depending on who’s the users/subscribers to that signing service. I think there is an audit that is required. I have strong feeling that cloud already has an audit that meet the requirements, we just have to find out what that is.

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

Parking Lot: Bruce provided a list of open Parking Lot items and indicated that best efforts have been to track open items and have them resolved in ballots. Reference: https://docs.google.com/spreadsheets/d/1UID98GQnBNE9dzIkugMlLFF6po8FC5vbcSq0cwMEVqk/edit#gid=0&fvid=1822680629

Other Items: Revocation Date Ballot – Corey has reviewed the changes with Rob Stradling who agrees to the updates. Corey needs a ballot number to proceed. Bruce stated that the new number will be CSC-12, but would assign and confirm.

Next Meeting: Thursday, 21 October 2021, 12:00 ET

## Thursday, 14 October 2021 – Server Certificate Working Group Meeting (Day 2)

The Antitrust statement was read.

### Attendees

SwissSign (Adrian Mueller), Telia Company (Ali Gholami), SecureTrust (Andrea Holland), Nimbus, Member of ETSI ESI (Arno Fiedler), GlobalSign (Atsushi Inaba), Entrust (Bruce Morton), DigiCert (Corey Bonnell), DigiCert (Dean Coclin), HARICA (Dimitris Zacharopoulos), CPA Canada (Don Sheehy), GlobalSign (Doug Beattie), SSL.com (Dustin Ward), GlobalSign (Eva Van Steenberge), Microsoft (Glaucia Young), GoDaddy (Hong Bui), Microsoft (Ian McMillan), Sectigo (Iñigo Barreira), SecureTrust (Janet Hines), BDO (Jeff Ward), TrustCor (Joanna Fox), Cisco (Jos Purvis), Microsoft (Karina Gupta), Microsoft (Karina Sirota), OATI (Kidd Freeman), Microsoft (Kiran Tummala), TÜViT / ACAB’c (Matthias Wiedenhorst), SSL.com (Michael Sykes), Primekey (Guest) (Mike Agrenius Kushner), SECOM (Natsumi Uchida), Sectigo (Nick France), SECOM (Ono Fumiaki), Entrust (Paul van Brouwershaven), GoDaddy (Rae Ann Gonzales), SwissSign (Roman Fischer), GlobalSign (Sebastian Schulz), OATI (Stephanie Skoro), SECOM (Tadahiko Ito), SSL.com (Thomas Zermeno), BDO (Tim Crawford), DigiCert (Tim Hollebeek), DigiCert (Tomofumi Okubo), Amazon Trust Services (Trevoli Ponds-White), Chunghwa Telecom Co., Ltd (Tsung-Min Kuo), eMudhra (Vijay Kumar), JPRS (Yoshiro Yoneya)

### WebTrust Update

**Speaker:** Don Sheehy, Jeff Ward  
**Minute Taker:** Wayne Thayer
Don and Jeff presented these slides: [Webtrust-CABF-update-Oct-2021.pdf][6]

Bruce Morton brought up the separation of the Network Security audit report from the BR report because the Code Signing BRs will soon incorporate the NCSSRs. Bruce also said that other types of certificates requirements could incorporate the BRs and the Network Security subcommittee is considering becoming a separate working group. Don said that they would thake this request to CPA Canada for consideration.
Jeff continued presenting the CPA Canada slides at the end of the document linked above.
There were no additional questions.

### Guest topic: News about qualified certificates for website authentication

**Speaker:** Enrico Entschew  

_MINUTES NOTE: The CA/Browser Forum does not take any official position on the adoption or use of QWACs, which are an EU-specific project. This presentation is given as an informative update on TLS developments for CABF members, and does not represent an endorsement or position on the part of the CA/Browser Forum._

Enrico presented these slides: [20211014-ca-b-forum-entschew.pdf][7]

### Guest presentation: Designing the new eIDAS 2 browser UI

**Speaker:** Chris Bailey  

_MINUTES NOTE: The CA/Browser Forum does not take any official position on the presentation of QWACs for the eIDAS project, as QWACs and eIDAS are EU-specific projects. This presentation is given as an informative update on TLS developments for CABF members, and does not represent an endorsement or position on the part of the CA/Browser Forum._

Chris presented these slides: [05_chris-bailey_20210900-ca-day-designing-the-new-eidas-2-browser-ui_1\_.pdf][8]

### Understanding Requirements for Legacy CA Certificates

**Speaker:** Tim Callan  
**Minute Taker:** Clint Wilson

A recent bug resulted in a conclusion regarding treatment of Legacy CA Certificates that was surprising, so wanted to discuss with the group what the potential implications are.

A Legacy CA Certificate is one that either pre-existed the BRs in totality, or more generally pre-dates any given requirement that comes along. The BR 1.1 description of the Requirements impacting only events on or after 1 July 2012. The incident causing this discussion was https://bugzilla.mozilla.org/show_bug.cgi?id=1725039. We understand Root Programs interpret and impose requirements, and we work with that. But we do want to have a more reliable abilitity to interpret the requirements in the same way. Many BR sections have present-tense “MUSTs”, but have not always been enforced as applying to pre-BR Root CA Certificates. We’d like to get to the point where nobody has to wonder, and to avoid being surprised in the future. We’d like to discuss reactions from CAs, Root Programs, and what could improve consistency in applying the BRs to Legacy CA Certificates.

Q: Are you interested in solely pre-BR CA Certificates, or also Roots going forward. A: Very interested in the impact going forward.

C: We have rules that typically apply to certificates issued after an effective date. C: The BRs is essentially about how you use a Root CA Certificate’s private key. When cert profiles change, these are requirements for certificates going forward with respect to certificate contents. There are also rules for how you use private keys going forward, e.g. SHA-1 didn’t go backwards and say if you’ve _ever_ signed with SHA-1, that’s a violation; it just said new signings couldn’t be SHA-1. The requirement in question was “you shall not sign OCSP responses going forward unless you have this bit set”.

Q: Have other CAs interpreted it differently? A: Harica also had a Root generated without the digitalSignature bit set because we were planning on doing OCSP Responders, but when we wanted to do direct signing we concluded that we couldn’t do that.

C: DigiCert shares Ryan’s interpretation. The intent behind it is that relying party software uses this to determine if the OCSP response should be trusted. C: It’s regarding how the CA is signing things contemperaneously, if the OCSP response had been signed before the BRs, that OCSP response would be fine.

Q: What about with cRLSign bit? A: There are some complexities with cRLSign, and most of today’s discussion has focused on OCSP. The question is if a CRL is issued after the BRs, does it need to comply with 5280? It’s very likely that the same scenario exists, but we’d need to do the same exercise for CRLs.

C: One requirement that was strange, was when we had to add the revocationReason for certificates; because that was a requirement going forward, we had to add reason codes to CAs revoked prior to the ballot going into effect. C: We definitely need to think about those “soft” retroactive effects with ballots. C: That’s a very useful general rule, though this specific revocation scenario was explicitly called out. C: It was discussed, but it wasn’t necessarily described in the ballot language itself. So perhaps an improvement to the ballot writing process and language to make sure these considerations are made more explicit.

## Thursday, 14 October 2021 – S/MIME Certificate Working Group Meeting

**Speaker:**
**Minute Taker:** Mads Henriksveen (Buypass)

### Attendees

Adrian Mueller (SwissSign), Adriano Santoni (Actalis), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Bailey (Entrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Jeff Ward (WebTrust), Joanna Fox (TrustCor), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Mike Agrenius Kushner (PrimeKey), Nick France (Sectigo), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Rebecca Kelley (Apple), Rob Stradling (Sectigo), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Wendy Brown (Federal PKI)

### Minutes

Anti-trust statement read

Stephen welcomed and took the roll call, the antitrust statement was read. The minutes from the last teleconference were distributed with an error in the header, this will be corrected. The minutes were accepted.

Stephen introduced the two main topics for discussion by referring to the new Apple policy introduced by Clint W. during the Apple Root Program Update on Wednesday. The two topics are ‘What’s an S/MIME cert’ and the ‘Validity Period for S/MIME certs’. Apple requires that an S/MIME cert must include the emailProtection EKU and email address in SAN and the validity period must not be greater than 825 days.

Stephen: The definition of an S/MIME is important as it overlaps with both the root cert programs and the SBRs. We could say it’s a combination of EKU = email Protection and an email address. Or we could define this based on the SBR certificate policy OIDs. Cert consumers could decide to accept certs with these OIDs. Perhaps Clint with the perspective of Apple policy could talk about this.

Clint: Let me start with a side topic that is important, what are the dates that we could phase out the legacy profiles? Back to the question: if we could require an CP OID in addition to the requirement, the certificate content as a minimum content. The identifiers define an S/MIME cert – Apple do not support document signing, so multipurpose is out of scope. The EKU and SAN is the main focus.

Stephen: An S/MIME cert has always the EKU and some Subject alt name with an email. Not limited to SAN rfc822.

Tim H.: I would suggest the same; using CP OIDs is relatively easy for future certs. For legacy cert a transition period should allow EKU and an email to be sufficient.

Dimitris: Thank you Clint for the update on the Apple policy, CAs hate surprises. We are talking about email in SAN, but it could also be in the subject.

Clint: Subject is used for UI processing, not for trusted processing. Therefore, we are preferring SAN, it’s intentional. After the effective date, those certs without SAN will stop working. This will affect only future certs, i.e. certs with a not Before on or after 1.april 2022 (midnight UTC).

Stephen: That is a clarification for this topic. Major email clients may say that they only accept S/MIME certs with the SBR CP OIDs. However, S/MIME certs that are not compliant may still work in some clients.

Clint: Will use the SBR

Tim H.: To some extent this is a feature and not a bug.

Stephen: This is the main arguments for the legacy profiles, to not have to be compliant in terms of CP OIDs.

Tim H.: Long term to become compliant with all programs. The enforcement has been quite large.

Clint: The CAs may follow the SBR, we have more CAs in our program not participating in the SMCWG than CAs participating. There will be a communication going out after this meeting.

Stephen: I will send a summary where the group is to the public list, to get CAs up to speed to understand where we are. We want their involvement.

Stephen: CAs might consider their certs to be simply signing certs without focusing on S/MIME. How should we deal with this in Legacy? When a generic document signing EKUs is defined by IETF, this will be solved.

Tim H.: A document signing EKU is defined (to replace emailProtection) – this should be supported from the community.

Stephen: This is absolutely supported. Incidents happens in the intersection of different usecases. The move towards pure S/MIME and document signing certs will be good.

Validity period discussion

Stephen: The proposal for validity period is 825 days for strict and multipurpose, this matches the Apple Policy. For legacy this is set to 1095 days, which were set by survey, there were some 5 years S/MIME certs and few 1 years.

Stephen: From TLS there is a preference for short validity periods; due to policy agility and driving automation. Enterprises are the big driver for S/MIME using tokens. When protecting keys in tokens and rotating certs often, this has a cost, also for the user. If they need to manage encrypted emails, they might need to manage them for several years.

Wendy: We do not necessarily want the same validity period for sponsored certs as for the other. It should be possible to use the PIV cards with three years validity period. Users moving away from the Enterprise will end up in revoking certs. A shorter validity period for the certs is unreasonable for the Enterprise.

Stephen: Many certs on tokens are using 3 years, this is the norm for the Enterprises. On github we are defining cert extensions for how the keys are protected, could use this to define validity period?

Clint: Would shorter validity would be unreasonable for PIV cards? We would like to move to even shorter validity period, i.e. 1 year. What is the reasonable time to come to 1 year?

Wendy: By having a short validity period, we would prefer not to have the certs publicly trusted. On the PIV cards, they will never be shorter than 3 years.

Clint: No indication to shorter period? In 2018 a max. validity was set to 825 days for TLS certs, also private TLSs. We have similar examples also for private TLSs.

Wendy: It’s easier to automate for TLS then for PIV cards – with manual processes. Changes every year will be an issue.

Clint: We are familiar with the issue of automation, what about using ACME for S/MIME?

Wendy: I can’t answer that.

Dimitris: I have not seen any rule for not reusing the same key. Could that be possible? If the key is generated in the card? Would Apple accept that?

Clint: No rules against reusing keys. As long as the keys are not weak or compromised, there should not be any reason to block this at OS level.

Paul: Even using ACME for S/MIME, this is still difficult on a token. Does not support key recovery.

Clint: We understand that the problem exist for key rotation. Two questions: For non legacy: two years are proposed. What about PIV; are they intending to use legacy for a long time?

Wendy: We do not intend to push S/MIME to publicly trusted. For sponsored individual 825 will be too short.

Sebastion: Google recommends less validity period (825 days). Non-token based certs might be ok to automate. Once legacy profiles are established, they can be used.

Tim H: The purpose for legacy is to give a safe harbor in the beginning. Email providers will not accept 3 years for ever. The expectation is that for legacy profiles this will need to be changed, by automation like ACME.

Clint: there might be some pushback to short validity periods.

Tim H.: I understand that PIV cards may be an issue, we should have better answers than we currently have. It’s annoying to run PKI ecosystems with smart cards.

Dimitris: The TLS risks are slightly different than for S/MIME that shorter lifetime would cure. Email addresses might change, but what’s the risk? Why is it important to aim for 1 year?

Clint: there is some of the same reasons. It should be possible to roll out security related changes without having to wait for 3 years. We see a lot of value to be able to ship updates (annually) but some changes might be limited by 3 years validity period. This might not be compellant reasons for the Enterprises?

Doug: Don’t see that Enterprises being able to update their infrastructure so frequently.

Clint: We are talking about the apple infrastructure, rolling out APIs, using keys and certs in keychains and this is not only limited to S/MIME.

Doug: Seems like an Apple issue and not an ecosystem issue. What is the risk? It’s not an issue related to the identity bound to the key? What is the security issue?

Clint: I might not be able to give a proper description of this issue, being able to update key lengths and cryptography would give an agile systems. We are not trying to get 1 year this year, but to move in that direction. What is the barriers and obstacles for doing this? I understand that tokens may be an issue, but we need to address this and solve this in order to improve the agility in the ecosystem.

Doug: I am still missing the security driver for the ecosystem.

Wendy: Clint talks about agility related to keys and key management?

Clint: This is not perfectly true, certs valid for 3 years makes it difficult to switch rules frequently.

Ben: If there was a needed change, the certs could be replaced.

Clint: We could say that this affects certs valid after a date, not issued after a date. But I do not like that outcome.

Tadahiko: We should think on time for encryption and signing, but not as the same for TLS. This is more long term objects than for TLS.

Clint: There are some new complexity when introducing lifetime of signing or encrypting objects. This is common in the code signing world.

Tim: You have email folders in a client, what are the security if stored emails are kept for a long time? There have been discussions on this in the IETF lamps working group. The short answer is that there is no simple way to solve this.

Tadahiko: Also key management should be discussed.

Stephen: Senders also need to understand when people they communicate with gets new certs. This must be handled by clients.

Dimitris: This is not as easy as it sounds, the sender needs to use the new cert when sending an encrypted email.

Stephen: How to clarify what S/MIME is? The ability of people to understand how to manage key management.

Clint: This is complicated, i.e. manage distribution of certs on cards. To make them available for everybody. I am emphasizing this as a long term goal as this is difficult.

Stephen: We do also have the possibility of defining extensions. What if there is an extension defining where the key is stored. Do PIV cards do token attestations? Would you consider such certificates to have longer lifetime?

Clint: This is only my personal view, but key protection might improve the issue. That could be possible, but cert lifetime is a key component for us.

Stephen: Should cert validity period be a one line rule? Or could we allow for 1095 days for legacy – and set some end dates?

Clint: That’s something that we could look into, definitively.

Sebastian: Google distrusted certs in the clients (and not in their policy) to give some signals for the CAs.

Clint: This implies that we should implement technical enforcement before the policy enforcement?

Sebastian: Yes, stop the client accepting certs with more than 825 days from 1 April, hold back the policy until the SBRs and profiles are published.

Stephen: The flipside of that is that it creates inconsistency. When Gmail distrusted 3 year certs, people were confused; why does it not work in Gmail, but in Outlook? The first version of TLS BR included a few rules, a staged implementation make sense to make people come in an orderly way.

Clint: We could align the policies in the root programs with the standards.

Stephen: We already have an email client with a technical limitation. The SBR should add some clarity, allow 3 years for legacy which could be around for only some years. This should be discussed.

Paul: The discussion is about the agility, but what about having ACME support in the ecosystems before limiting the lifetime.

Clint: This is not in the scope for the root programs. Personally, I agree.

Dimitris: Do we need some ACME option before we can limit the validitity?

Paul: Yes, this worked for TLS so it could work for S/MIME. If it’s easy to automate, it will be easier to accept shorter validity period. It’s difficult for managing tokens etc.

Dimitris: this should be a collaborative work with Apple as an agent, not only as a root program owner.

Clint: Device management – please think about this.

Stephen: The outlined approach is probably not realistic – for both legacy and multipurpose it should be 825 days and for strict we should move towards 1 year.

Clint: I am supporting 1095 days for legacy, but with a clear timeline moving to 825 days this could be possible.

Tim: We need to get an agreement across all email clients.

Clint: I am only speaking for my self, but there is already one that has set 825 days.

Stephen: Any other cert consumers have some perspective?

Ben: I can’t speak before I get some guidance.

David (Google): I will take that question back to my colleagues – and give our response in the next call.

Stephen: There has been some confusion for CAs whether this is a technical constraint or a policy constraint.

Dimitris: It could be a technical violation and not a policy violation for CAs.

Clint: I would prefer to align those, but need to discuss this internally.

Stephen: It would be important to know the Google view on this, I am working on the draft SBR text. The most interesting parts has not been written yet. For the first version of SBR, we should have a complete text. And then we go into a ballot period. The discussion period could be months. Even if we have an effective date, there will take at least a year before CAs are able to be audited against the SBR. We are talking about a significant time.

Doug: No browsers adopted the TLS BR before it was auditable.

Stephen: We do need to set some better days into the process. If we have a standard late in 2022, and CAs had to be audited in 2023. What would the time period for legacy to be beyond that? That’s something I need to work on. We are out of time. Please go take a look at Github.

[1]: /uploads/cabrowser_forum_-_ca_transparency.pdf
[2]: /uploads/cab_forum_october_2021_-_mozilla_update.pdf
[3]: /uploads/cabf_f2f_54_chrome_update.pdf
[4]: /uploads/ETSI-ESI_Standardisation_Update_for_CAB-Forum-10-2021.pptx
[5]: /uploads/f2f_54_-_cswg_202110_v1.pdf
[6]: /uploads/Webtrust-CABF-update-Oct-2021.pdf
[7]: /uploads/20211014-ca-b-forum-entschew.pdf
[8]: /uploads/05_chris-bailey_20210900-ca-day-designing-the-new-eidas-2-browser-ui_1_.pdf