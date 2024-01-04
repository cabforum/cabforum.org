---
aliases:
- /2022-01-27-2022-01-27-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-01-27 14:00:00
tags:
- Code Signing
title: 2022-01-27 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {#attendees.wp-block-heading}

Andrea Holland – SecureTrust , Ashish Dhiman – GlobalSign, Atsushi Inaba – GlobalSign, Bruce Morton – Entrust, Corey Bonnell – DigiCert, Dean Coclin – DigiCert, Dimitris Zacharopoulos – HARICA, Ian McMillan – Microsoft, Inigo Barreira – Sectigo, Jeff Ward – WebTrust, Karina Sirota – Microsoft, Kiran Tummala – Microsoft, Michael Sykes – SSL.com, Mohit Kumar – GlobalSign, Tim Crawford – WebTrust, Tim Hollebeek – DigiCert

## Minutes {#minutes.wp-block-heading}

Minutes of January 13th 2022 approved.

### Interested Party Request {#interested-party-request.wp-block-heading}

Bruce: A request to join as an Interested Party, this person is a sole proprietorship. No reason to reject. Dean confirmed information and voiced approval. HGMS Information Technology Solutions out of the Philippines.

Tim H: No objections.

### CSC-6 Subscriber Key Protection {#csc-6-subscriber-key-protection.wp-block-heading}

Ian: We were waiting for feedback. Tim said he had feedback from some folks and Bruce pointed out timing that current deadline is September 1st and should be pushed out by 3 months. So I changed it to December 1 2022.

Tim H: Not a compliance friendly date.

Bruce: Why is that?

Tim H: It is into the holiday code freeze season. It isn’t the worst because we could finish early, but I would be happier with November 15th if we want that date area.

Ian: Go right before Thanksgiving?

Bruce: I think the 15th works fine with me. Of course, it could be done before the date not on the date. So, I think November 15th is available even if we said the date is December.

Tim: I would like us to set a precedent to not have compliance dates between like November 15th and January 15th. It would be great if we could agree forum wide on some popular compliance dates and just have 6 of them scattered across the calendar so we don’t have to keep having this conversation.

Ian: That would be great. I am good with November 15th. Everyone good with that as well?

Tim H: Most of the internal comments, there are a lot of them, are mainly word smithing and tweaking to get the language to match the intent. Don’t expect any substantive changes. They are all important changes but there are no bombs or opening up any new discussion topics. We are just fixing it so it looks better. Providing it tomorrow

Ian: I will update draft with new date and Tim’s feedback. Then send out a draft and asking for endorsers.

### Timestamping Certificate Validity Period {#timestamping-certificate-validity-period.wp-block-heading}

Ian: Today the max validity period with the certificate is 135 months. For windows and how we consume the timestamping certificate the 11.25 year has no true barring on whether the timestamp is actually valid to us. Tor the timestamp counter signature is actually valid to us. We look at the time of the timestamp and the certificate’s validity period of not only the timestamping authority’s endpoint signing certificate but also the code signing certificate. And if that time is within those certificates validity period it is good to us. The question that has come up with is does his jive with what Java sees. I followed up with some java people and they said they ignore it.

Bruce: They state that if the CS cert is expired or revoked then the signature is not valid any more irrespective of whether it was time stamped or not. You can have a long, long, timestamp on it and it doesn’t matter because it is all based on the CS cert and not on the timestamping certificate.

Ian: For us internally and what you see on like Windows or any Microsoft signed files that we are timestamping with our own timestamping authority the max validity period of those is 12 months. That proves that we have been doing it for many years and there has been no issues from that. There is no reason for us to require people to carry 11.25 years timestamping certificate for an end entity signing. Granted one of things in the CSBRs that account for the key rotation hygiene is the requirement to rotate the keys for a timestamping end entity certificate every 15 months. Dimitris and folks have brought up what is wrong with those keys not being rotated and just using the full 135 months validity period. And just using that key pair going forward because we protect it with the same level as an offline CA.

Tim H: Both perspectives are correct. Current situation is the worse of both worlds. We could have 11 year timestamp certificates that we could use for all 11 years or 1 year timestamp certificates that we use for 1 year. We shouldn’t have timestamp certificates that have 11 year expiration date, but you can only use for 1 year.

Ian: My perspective is I do not like the 11 year validity. I am okay because we are rotating or requiring rotation every 15 months of those key pairs. But you still have a key pair and a certificate that is going to be valid for 11 years, so if those get lost it is still valid and usable. I prefer the model where we have max validity is 15 months for the end entity certificate and you rotate that certificate every 15 months. Because that certificate that key pair are highly used and anyone can use them. Every TSA out there is publicly accessible to anybody authenticated.

Tim H: I would also like to mention the fact that we have an upcoming crypto transition. As far as security properties I don’t think this is largely relevant, but the optics of issuing 10 year TSA certificates right not especially moving from what we are doing right now to 10 year validity TSA certificates seems unwise.

Ian: Yup.

Dimitris: Why are you saying that about the TSA? How are the TSA different from the SubCAs.

Tim H: It is a weak preference and mostly about optics. Everybody is rotating their keys every 15 months right now anyway. I think we should just stick with that.

Dimitris: Do you mean the end entity TLS certificates or the code signing certificates. TSA are quite longer

Tim H: You are only suppose to be using them for first 15 months.

Corey: The key cannot be 15 months.

Dimitris: Right, but the certificate lives for 10 years.

Tim H: For no reason, yes. The actual reason is because people were concerned that there were applications out there that was checking the validity of the TSA certificate in the future for verifying the signature as opposed to verifying the validity of the TSA signature at the time of the signature which is the correct way to do certificate checking. So the requirements are actually wrong and we should just fix them.

Dimitris: Right but what did Oracle say, they don’t check the TSA. They just stop executing the code if the signing certificate is expired.

Bruce: Correct. It is the same discussion when we asked them about invalidity. They don’t actually care when the certificate is revoked, if the certificate is revoked all signatures are bad.

Dimitris: Just had a discussion on the Validation Subcommittee about OCSP and the keys associated with the OCSP responders. Which are suppose to be as protected as the SubCA. There was a question whether it would be okay to reuse that key for a subsequent certificate. I could renew a certificate for the same key pair for another 15 months then another 15 months always reusing the same key pair.

Bruce: So I think that we should apply the same, right? I think as Ian says we should have the smaller validity period, but since the keys are protected at the same level as a SubCA the keys do not have to be rotated.

Tim H: Agreed.

Bruce: That is thew same thing you can do for an OCSP responder assuming that you keep the key ON the HSM.

Ian: The only problem I see with that is the timestamp certificates like our own for instance. We use it well over 1 billion times a month like 3-4 billion times per month. From a crypto attack perspective it is significantly weaking the guarantees we can make on that key pair.

Tim: Why use the word significantly? That number of signing operations doesn’t affect the security of the key according to any research I am aware of.

Ian: From our own crypto analysis folks inside of Microsoft

Tim H: I would like to see their analysis of why they think that

Ian: I can follow up with them and discuss it, but I know from our own policies we don’t reuse keys.

Tim H: I applaud you for doing that, because if you’re doing high volume signing like that it is a good idea to rotate like you’re doing. But I think it is being rotated because of good hygiene not because there is actually any possible decrease in the security of the key.

Ian: Primarily we do it for hygiene wise policy wise because it has come down from the crypto experts.

Tim H: We could go in that direction. So the key rollover for other types of certificates is actually a much furrier topic, but these are certificates controlled by the CA. So it would be relatively easy with enough transition time to expect key rollover for these TSAs.

Corey: Primary difference is the current CSBRs contemplate a scenario where the TSA key can be compromised. But since these are stored in a level 3 HSMs at the same security level that a ICA would be, we are not particularly concerned about a key compromise. Am I understanding the rationale correctly?

Bruce: Yes.

Tim: Yes and no. We are concerned in the same way as a CA key compromise. You are dealing with an entirely different type of recovery.

Corey: On positive benefit with a mandated key rollover you’re are limiting the scope of signed application code and the impact. For example, you use a key pair for 10 years and your CA gets compromised. You now have to blocklist 10 years of signed timestamp tokens. Now everyone has to go a resign and maybe the software vendor doesn’t exist anymore. Whereas if it is 15 months, you just have a year of compromise and affected software code and that is a big difference.

Tim H: It is, and that is why I think it is a good idea for key hygiene.

Bruce: But if the attack is on the HSM where both the subordinates CA key is and the TSA key is. What if they just do the subordinate CA key instead

Tim H: Right

Corey: CSBRs are currently written is timestamping ICA is supposed to be offline key material treated the same way as a root CA is. If you are following that design then that shouldn’t be possible. A compromise at the end entity TSA key pair won’t necessarily be TSICA key compromise.

Tim H: Is there a realistic scenario where an attacker is able to get a hold of that and doesn’t get a hold of the root key, which is managed for the same controls? Why am I worried about the TSA key if I have popped that HSM?

Corey: Because that one necessarily has to be online, but the ICA and associated root key material would be in the offline CA.

Ian: End entities are online and available for attack no just physically but logically, for anyone on the network versus ICA is offline in an air gapped environment.

Corey: Yes, This is one place where CBRS are unclear on this point. But given you only have to issue CRLs corresponding to TSICAs only once a year like you do for offline roots. They do envision that you do put your TSICA key material offline, but it is not very explicit. You have to read between the lines.

Tim H: Let’s fix it to be explicit and maybe we make mandate rollover a part of it.

Dimitris: W still need to consider OCSP in that regard as well.

Tim H: That is a related topic. Whether we want to do rollover for OCSP is an interesting question that has a different security analysis. The 11 years confuses people so if we could fix that that would be awesome.

Bruce: Where do we go from here? Keep discussing or drafting a ballot

Tim H: How do people feel about rolling over keys for timestamping, we are fine with it, but we are only one voice.

Dimitris: I don’t like it very much since EIDAS doesn’t require rollover timestamping certificates. I don’t have strong pushback.

Tim H: How would you feel if there were a separation of EIDAS timestamping servers and code signing timestamping servers, so you didn’t have to satisfy both?

Dimitris: We are doing that the last year. We had to separate our Timestamping Authorities because of different rules. We are going to have to have a separate key rollover rule for codes signing timestamping and not rotating for the other. I think that was the reason we added the policy OID in our certificates, right?

Bruce: Do we want to pause on this?

Corey: It is worthy of further discussion, Maybe after we get the key protection and the format change we can have a follow up discussion and ballot to clarify the aspects around the timestamp authority operation.

Bruce: Okay we will pause on this and bring it up after Ian’s ballot and formatting change are done.

### Time stamping policy OIDs {#time-stamping-policy-oids.wp-block-heading}

Tim H: We were looking at the recent ballot, it appears we have written the ballot so that the policy OID indicating that a timestamp server is acceptable for code signing. Written in such a way that you must add the timestamping policy OID to every single timestamping end-entity certificate you have out there. Just because it chains up to a Microsoft trusted root and not because it’s particularly intended for Microsoft code signing and in particular there are a lot of those out there that are intended for EIDAS or other use cases. And the entire goal was to split these apart. It appears that we made a mistake in the ballot and if you are trying to split them apart, that you would have to split them apart all the way up to the chain to a non-Microsoft trusted root, which is not what I think we intended. I was wondering if other people had the same interpretation or whether the goal was that you are suppose to find your timestamping end-entity certificates that are intended for Code Singing, so that Microsoft can later distrust the non-intended ones. If we just add that OID to every single end-entity timestamping certificate out there we haven’t really changed anything. I wondered what people thought of that and whether we need to update the language to say that in order to be used for Microsoft, in order to be used for CA/B forum, code signing OID must be present as opposed to just this OID must be present.

Inigo: We are thinking always use the timestamp as long ca be used with the signature. It doesn’t matter if it’s signing a code or signing a document. The timestamping itself is a service. You can timestamp a document without putting a signature on it or timestamp anything. It has to have it’s own OID. When it is related to CA/B Forum which is mainly used only with code signing that is different. But the service itself is another service, you can have CAs that issue certificates and TSAs that issue timestamps and you can combine both, but both are different.

Tim H: From a technical point of view, you are right. And that is the problem we are trying to solve. It is possible today to arbitrarily use any timestamping server with any arbitrary code signing certificate. The problem that the timestamping server that you are pointing to might not be managed in accordance with the guidelines of the CA/B Forum Code Signing Working Group and Microsoft’s rules. There is no way for Microsoft to tell which TSAs are managed in accordance with these guidelines and which are managed in accordance with EIDAs guidelines for example, which may say different things about key protection and key rollover and things like that. We need to know which TSA are being operated under the rules of Microsoft Code Signing. Adding a policy OID seems like a great way of doing it, but if CAs add it to every single certificate that chains up to Microsoft like the current ballot appears to be forcing them to do then we have gained no new information about which ones are intended to be Microsoft timestamping TSAs and which should be trusted and which are not compliant with Microsoft timestamping and should not be used for Microsoft code signing.

Inigo: Well I might agree to have specific OIDs for timestamping similar as we have for CAs.

Tim H: If you have an EIDAS TSA which is not in compliance with CA/B Forum CS, and therefore cannot have that policy OID, are you required to have that policy OID just because it’s chained to Microsoft? IF I have TSA that I don’t want to add that OID to because it’s not managed according to those policies and would fail the audit. Do you have to issue it off a completely different root that is not trusted by Microsoft because I don’t want to add this OID because it not appropriate? And would specify that this certificate is managed in this way. I think we messed up on the ballot.

Bruce: This document states how subordinate CAs are suppose to be done to issue code signing certificates and how subordinate CAs are suppose to be done to issue timestamp authority certificates. This document tells us how to operate at timestamp authority. Trying to say that this item was signed using a TSA that meets all the requirements. I am not understanding the problem, you are saying we have to do it for all?

Tim H: The way the requirement is stated it would exist for any timestamping end-entity certificate that happens to chain, though any path, to a Microsoft trusted root, right?

Bruce: Where did you get the Microsoft trusted root, how did you extend that?

Tim H: That is the only way I know how to determine what the scope is for this particular baseline requirements. The CSBR scope is everything trusted under Microsoft CS trusted roots, right?

Corey: To Tim’s point, if you look at the audit requirements in the Microsoft root program policy you are going to see that non EV code signing and timestamping certificates have to have a CSBR audit. The way it is currently written there is no carve out for TSA certificates and the ICA certificates that don’t have this OID. Right now there is an obligation to put this in universally if you chain up to Microsoft which I don’t think was the intent.

Dimitris: I am confused though, I don’t think there is requirement in the current CSBRs that a timestamping certificate must have this OID.

Tim H: if you can prove this to me, I would love to be proved that are reading is wrong.

Dimitris: Shared current CSBRs. Highlighted Appendix B. Section (5) Timestamp Certificates A. certificatePolicies bullet 1.

Tim H: That is one part of it.

Corey: If you go up to the TLS ICAs profile you can see it is applicable to all TLS ICAs issued after March 31st of this year.

Dimitris: It is for the ICAs not for the timestamping certificate.

Corey: If you want your policies to chain then you will have to include that in the end entity.

Inigo: Another alternative would be to have all TSA be audited and certified. And be presented to the Microsoft root stores like another CA. So only those certified could be included.

Tim: I think that was the intent to use the policy identifier in the timestamp certificates in the same language that Dimitris showed, which was very helpful, thank you. That was the intent we want by asserting the policy OID in the timestamping end-entity certificate you are asserting this is a compliant CSBR timestamping end-entity certificate and not just a random timestamping certificate.

Dimitris: There can be requirements in the EIDAS TSAs that are in compliance with CSBRs.

Tim: Yeah, one could imagine complying with both. But one could also imagine not complying with both an we think that should be allowed as well.

Bruce: We should propose a change in text. It would be less restrictive and not more restrictive.

Corey: Even if we do that, there would have to be a modification to the Microsoft root program policy because that is where the audit obligation comes from. A carve out needs to be added to exclude TSA certificates issued after this date that don’t contain the policy OID.

Inigo: The current requirements for the timestamps are very few.

Tim: It should be a minor change, but wanted to discuss it with everyone before we started writing language.

Ian: Would like to see the language so we can review and figure out what we would like to see done.

Tim: Are you okay if we propose draft changes to Microsoft policy?

Ian: We would love to hear your opinions, of course.

Karina: Are policies are not set in stone. We have had many of you on this call reach out and say something you wrote doesn’t make sense, so feel free to reach out at any point. We have a whole gang of people to read over it and see what we can do.

Tim H: Thank you.

Dimitris: Thank you that is great feedback. Karina, do you want us to send you individual proposed changes or if we could discuss this in the CAB forum or not

Tim H: We are one of the people who often discuss these things privately with Microsoft and so I wanted to get people to agree that it’s okay to discuss Microsoft policy publicly on the CAB Forum mailing list because I think it would be quite useful.

### F2F Agenda {#f2f-agenda.wp-block-heading}

Bruce: We have 2 hours slotted for the meeting. Items that we wanted to talk about was the Signing service.

Dean: At F2F, we are asking each working group to do a short presentation on what they accomplished in 2021 and what they want to accomplish in 2022, can be ballots passed or proposed. It should be 2-3 slides max and around 10-15 minutes. We want to plan for a 2-hour slot for whatever topics we want.

Bruce: Dean when should we talk about what we want to do in 2022? Is that now or at the next meeting?

Ian: We have at least one more meeting.

Bruce: February 10th.

Dean: We can start discussing now and continue it to next time.

Bruce: I know we have been working on it for a while, but the subscriber key protection, reformatting, and signing service. Those are 3 items we want to do.

Tim H: Are we mostly done with key protection? Signing service is a great one, since we will be working on it through most of this year.

Bruce: It doesn’t hurt to put it there as it doesn’t go into effective until November 15th.

Tim H: Fair.

Bruce: and as an introduction. I would like to do some rationalization once we have the document in the new format, to remove the references to the SSL BRs and EV guidelines and fix with one liners or adding the text.

Tim H: Is your goal to make the document stand more independently?

Ian: I would love to see that.

Tim H: That is a reasonable priority.

Bruce: Make it readable.

Ian: We are still locked in on version 1.6.9 for the TLS BRs we should be all the way to the current version and creating a cadence of being able to keep up.

Tim H: We are in good shape since not a lot has happened there that is relevant here. Another related discussion topic though is the ongoing discussion int the Net Sec WG about how to keep the network requirements uniform across all the working groups. That will heavily impact this working group.

Ian: We already bound to the latest version

Tim H: Yes, Problem with that that Google has an issue with the server cert side.

Ian: If all the working groups say we are good with this version than we can all stop and dissolve the NetSec WG. Otherwise, you’ll end up with 3 working groups with 3 different versions but I am one CA so how would that be implemented.

Tim H: That is what I brought up but a couple of months ago. Freezing works very well for external references it doesn’t work very well for the NCSSRs. So having each working group try to independently pick what version number they are using is a recipe for disaster.

Ian: The NetSec document should be the minimum to cover all that the browsers and operating systems want and each WG could put in more specific items.

Tim: I was saying we should fix versions because that is best practice in the industry. Because this divergent problem across the NCSSRs I think the NCSSRs are special. It is just the same group of people on a different working group. We should let them roll across all the working groups and if you don’t like something that is coming in the next version it go to NetSec WG and argue against it. If it passes the NetSec WG, it is independent enough, we should just grab the current stuff. What the auditors going to think if NetSec passes something then we need 3 different WG to apply it and decide if it is appropriate or not to include it in their document at 3 different times. version

Ian: What are you going to do as a CA you are just going to go with the latest version and implement.

Tim H: CS is going about it the right way. Just have to convince everyone else.

Tim C: We are planning on making it a standalone document and standalone audit requirement. Being in different versions would really subvert that.

Bruce: Where were we going with that?

Tim H: Unless other working groups disagree, I think code signing has it right and there is nothing this WG has to do. I wanted to raise it here for awareness in case we go a different direction.

Bruce: I thought we were linking it something we wanted to accomplish this year?

Tim H: I think I took us on a siderail.

Dimitris: Deprecated the existing EV Code Signing guidelines.

Tim H: Retiring in favor of the merged document.

Dimitris: There are two documents the CSBRs and the old one is still in effect theoretically. We have stopped updating it.

Bruce: Is it not already deprecated? We are not updating it and we aren’t auditing against it?

Dimitris: In ETIS for several years we had the TS standard then we had the EN ETSI 411 part one that we were audited against, but there will still some CAs audited against the old one. They were accepted because most of the standards accepted the old ones. I don’t think the Microsoft program has been updated to require the new.

Tim H: One last amendment that they are out of date and point to the new doc.

Dimitris: That is what I had in mind.

Bruce: Added to the list. Finalize these items in the 10th meeting. Our meeting would be on the 24th at the F2F. We can prepare the slides between the 10th and the 24th. Any other items on the agenda.

Dean: Last call for F2F for in person, there are still slots available. Vaccine cards are required and masks must be worn.