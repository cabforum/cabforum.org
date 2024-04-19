---
author: Iñigo Barreira
date: 2024-04-05 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-02-28 Minutes of F2F meeting in Delhi - Validation SC
type: post
---

## Attendance

Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Antti Backman - (Telia Company), Arno Fiedler - (ETSI), Arvid Vermote - (GlobalSign), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bilal Ashraf - (SSL.com), Brittany Randall - (GoDaddy), Bruce Morton - (Entrust), Christophe Bonjean - (GlobalSign), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dave Chin - (CPA Canada/WebTrust), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Enrico Entschew - (D-TRUST), Eva Vansteenberge - (GlobalSign), Fumi Yoneda - (Japan Registry Services), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jeremy Rowley - (DigiCert), Jos Purvis - (Fastly), Jozef Nigut - (Disig), Kateryna Aleksieieva - (Asseco Data Systems SA (Certum)), Keshava Nagaraju - (eMudhra), Leo Grove - (SSL.com), Li-Chun Chen - (Chunghwa Telecom), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Matthias Wiedenhorst - (ACAB Council), Miguel Sanchez - (Google), Mrugesh Chandarana - (IdenTrust), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Raffaela Achermann - (SwissSign), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Roman Fischer - (SwissSign), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Sissel Hoel - (Buypass AS), Sooyoung Eo - (NAVER Cloud Trust Services), Star Simmons - (GoDaddy), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Callan - (Sectigo), Tim Hollebeek - (DigiCert), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha - (eMudhra)

## Review Agenda

- Corey Bonnell ran the meeting.
- Notewell read by Corey. 
- Feb. 8, 2024, Meeting Minutes were unanimously approved.

Corey reviewed:
•        BR section 3.2.2.4 (7) improvements
•        MPDV/MPIC effort led by Chris and Ryan
•        Automation of EV certificate issuance – GlobalSign will continue its presentation today
•        Identifying DTP in context of Domain and IP address validation (discussion postponed until 3/7/2024) 


## Discussion 

### Automation of EV Certificate Issuance

Slide 1:  Introduction
Context 
– The EVGs were not written with automation in mind. Allowed practices are not clear, and there is ambiguity. Some methods are easily automated while others are not, e.g., looking up a phone number in a QGIS and then calling it and then hoping that you get in touch with the right person. 

Goals 
- Automation of domain validation exists, but improvements could be made to clarify how processing of certificate requests could be automated.

Main Themes for This Round
We want to keep a narrow scope without rewriting the entire EVGs.  The group has looked at “due diligence” and “cross-correlation” and to reduce the amount of work being done.
GlobalSign and others looked at what these two concepts mean.
Eva then reviewed how these topics were addressed by proposed changes to the EVGs.

Due Diligence and Domain Validation (EVG 11.13)
Eva 
– we moved away from requiring it for every certificate or certificate request and focused on the fact that the CA has to do the procedure as a whole, but that it has to have been done, and it’s not something that can be done after the fact.

Roman Fischer asked whether mention of “the Certificate” meant “each certificate”.  Eva said that wasn’t their intent. 
Tim H. said that is how we typically write the requirements—in terms of a single certificate, which is what may cause this confusion, but it is implied that you may be doing multiple certificates.
Eva said that after her presentation it should be clear that things don’t need to be done on a certificate-by-certificate basis.
Clint said it should be understood that the CA has to “ensure” that the requirement is being done, but that an individual does not need to review every single certificate issued.
Ben asked why “due diligence” is tied together here with “domain validation”? From his perspective, “due diligence” doesn’t need to be performed on domain validation, but it is mainly for confirming subject identity information.

Eva 
– we tried to define “due diligence” (next slide) and we looked at whether all things have been done correctly.  Then, if it is automated, due diligence doesn’t apply, but if manual, then it needs to have been done correctly and someone else needs to double-check it, but we didn’t want to out-scope it entirely.  This proposes a definition for “due diligence”, any questions or comments?

Clint 
– I don’t think it’s absolutely necessary that it be capitalized and defined, but it looks fine.

Ben 
– the definition is too narrow – it focuses too much on the processes/procedures and not enough on the contents of the certificates.

Eva 
– that’s not how we see it, not everything we do ends up in the contents of the certificate (e.g. company age, authorization of requester and signer, etc.)

Clint 
– I agree with Ben, you can’t put the legal name of an organization into the certificate unless it meets the requirements that all the steps have been performed. The concepts are very similar, the processes and procedures lead to what is included in the certificate.

Eva 
– Are we hinting at the difference between due diligence and cross-correlation?  All the different elements have to be done correctly, and those individual elements are subject to due diligence, and then everything combined goes into the certificate. That feels like cross-correlation.

Clint – It might. Those terms are not currently well-defined in the EVGs.

Ben – I wouldn’t lump them together like that even though they are part of the same phrase. I’d like something that says, “verification of certificate contents is done with due diligence”. I can hold my comments about “cross-correlation” until later.

Scott R. -- Can you clarify the scope of what you have for “due diligence” and “cross-correlation”?  Because if you say it is automated and not subject to due diligence, but then with cross-correlation if you have to tie everything together, there might be a domain that is not related to the organization. 

Paul – With this definition we say, “due diligence is the process of ...”  we might be able to re-word that section to say that the due diligence process must confirm that each verification process and procedure …, but that would no longer be a definition, it’s more contextual.

Eva – that sounds good.

Paul – And you could create sub-items by indenting and bulleting parts of it.

Eva – We wanted to split them out because of the different treatment for domain validation.  

### Cross-Correlation

We started work on cross-correlation with something that is like a definition.  We don’t mention the whole of certificate contents, but we do mention certificate contents.  Cross-correlation confirms that there are no discrepancies when everything is combined.  We could consider whether to make it more explicit that it needs to support all of the information that goes into the certificate. During our review process, we considered that maybe we take verification of domain names out of the EVGs altogether, since they mainly refer to the BRs. When things were manual, it made sense, but it no longer makes sense to require cross-correlation for the domain control. Historically, there was the lawyer’s letter, but it required that you verify the lawyer’s signature and license to practice. But then when exclusive control of the domain dropped off, it no longer made sense to require cross-correlation of domain ownership. Do people have opinions about this?

Toby – I don’t know if I have an opinion, but I have questions.  let’s say we have a domain name of a well-known bank, but it is clearly not the bank, how would that factor in under cross-correlation?  In the past, when we had signals like the green bar, it would be very unfortunate to display those. 

Tim – Yes. That’s the purpose of section 3.2.5, Verification of Authority. The CA is required to verify that the applicant actually legitimately represents the organization.  So, in that case the section 3.2.5 checks should fail. 

Eva – All of the processes should stop that, but I’m not sure that it needs to be cross-correlation that stops that.

Clint – Section 3.2.5 is part of the domain validation process, even if it is not part of the domain control validation process. If we’re going to scope things out of the EVGs, then we ought to be clear that we’re scoping section 3.2.2.4 out of the due diligence and cross-correlation requirements.  What is the intent of having the certificate go through an extended verification?  Perhaps it is handled by section 3.2.5, but we want to make sure that we’re backing up the claim that they are “Extended Validation”. Having an extra EV component for domain validation would make sense.

Eva – The EVGs have procedures not just for the domain and identity, but also the things to flesh out section 3.2.5.  For example, the signer and the approver requirements, but I don’t know what added value is adding domain control in due diligence and cross-correlation.

Tim – Great point of Clint.  We need to be more specific.  We need to clarify for other CAs who are not doing things properly, e.g. they are not aware that they need to verify that the requester of the certificate works for the organization requesting the certificate.  So adding clarification and specificity in this area would be good.

Eva – Is that related to due diligence and cross-correlation, or is it that sections 11.8 and 11.9 of the EVGs are just more specific versions of BR section 3.2.5?

Tim – I’m just saying that we need to make it clear that DCV has been performed. 

Eva – So we should make it clear that domain validation is to be performed according to these specific sections.

Toby – I’m not sure about the explanation of section 3.2.5.  For example, if I control a domain, but it is an impersonating domain, like if I registered globalsignCA.com as a domain I own.  And then I get an EV certificate for an entity that doesn’t even claim to be GlobalSign.

Eva – but is that a problem?

Toby - In the past it would have been a signal to relying parties for banking sites, e-commerce sites, etc., and it might become relevant again with QWACs.

Tim – If the verification works correctly, then the confirmed identity will be accurate and portrayed correctly. That is how the process is supposed to work. The domain might say globalsignca.com, but the identity information won’t say GlobalSign, it will say something like “Hollebeek Enterprises”. If the process correctly identifies the right subject organization, then that’s how it’s supposed to work.

Toby – But according to research, this will expose people to fraud. 

Eva – We as CAs don’t control what is on these pages, but we provide a very thorough and reliable verification process, so you can complain to this legal person who we verified.  So I don’t think that matching the domain name to the organization was ever within scope.

Paul – This issue is not part of this section we’re discussing.

Toby – We cannot separate the discussion of how these are issued and how browsers display the information.

Dimitris – The purpose of Eva’s discussion is to focus on the barriers to automation.

Toby – I’ll step back, but I am skeptical about automation because of this reason.

Dimitris – The cross-correlation step will continue to be done as it is done today, but we’re also looking at what information can be reused after that has been done.

Paul – Cross-correlation and due diligence are done and you need to have the authorization from the organization and that domain and organization entities can be combined. And those validation processes happen before any certificate request is processed or certificate is issued.  Let’s assume we reopen the discussion about phishing and misleading domains – because both have been verified before issuance.
As soon as the applicant authorizes the domain name to be used in combination with that organization, the CA could say, “we have a process to verify it and we don't allow that combination,” but that should not be involved at the actual time of issuance because the domain and the organization both are being verified in advance for issuance.

Clint – I agree with Toby, but the way that we have been considering the EVGs for years is changing because they are being incorporated into other standards and procedures, e.g. eIDAS legislation. It will change how relying parties have to interact with the EVGs going forward. 

Mads – I agree the focus of this proposal is due diligence, cross-correlation, and automating issuance, but let’s address EVG 11.7, too, which talks about domain validation. It is related and needs to be fixed, even if it is not part of this proposal.

Eva – Thanks.  The reason we decided not to is because there are things in EVG 11.7 and the BRs and we don’t want to be locked down because we are waiting for some changes to be made in the BRs. But we don’t mind, either way. …  I will skip through some of the slides.

Corey – Let’s skip the Delegated-Third-Party topic until next week and continue through with this topic.

Eva – OK.  We removed delegation of due diligence and cross-correlation by Enterprise RAs. We felt like it didn’t add value. So we are not delegating due diligence and cross-correlation to Enterprise RAs.
Re-use of Existing Documentation from Due Diligence and Cross-Correlation

Eva – We want to make sure the due diligence and cross-correlation can be reused in a safe and secure manner We changed EVG section 11.14, the main body content, because it’s not all about  age, and because some are about conditions, so we changed it to be about “conditions”.
We added reliance on previously performed due diligence.  It has to have been done, but not just before certificate issuance. We didn’t like to use the word “reuse” but things that we continuously rely upon. If the age has expired, then it has to be re-performed.  Approval must have been given in an appropriate way. Manual processes should still be reviewed with due diligence and cross-correlation. But if you have used automated processes, then you should be allowed to rely on previously performed steps. For example, if you have a portal where certificate approvers have already been verified, then they can approve certificates without cross-correlation and due diligence. 

Tim – We have some concerns that you were too restrictive in choosing which methods to keep and which to remove.  There are some methods that could be automated and not removed.

Eva – Do you have any suggestions to make now?

Tim – Yes.  EVG section 11.10.2, option 2, and section 11.9.2, option 3. There are potentially options that could be automated. 
Eva - If this needs to be broader, then we can look at those. We can discuss further when people have had a chance to review this.

Separation of Duties (EVG 14.1.3)

Eva – We replaced language that suggested that steps needed to be done for every separate certificate issuance with “complete all verification processes and procedures.”  Are there any questions?
Mads – I posted a comment about the last sentence – collecting the information by one person and reviewing it by another person for due diligence and cross-correlation.  We collect a lot of information today using automated means. Do we mean that one person reviews all of the information we collect to make sure that it is correct? 

Eva – Got it. Thank you. Any other comments?
Approval of EV Certificate Request (EVG 11.10)

Eva – The CA must verify that the certificate request has been approved. “Verifying” sounds very much like after the fact. We replaced this with “ensure” to capture the fact that this could be done automated, without a manual process. A pre-authorized approver can give their approval in an automated way. 

Tim – I still owe more explicit language on this so that we can have something better than “ensure”.

Clint –  Isn’t it pretty clear from the EVGs that the certificate requester can also be the certificate approver as well?  

Eva – If people think it is clear enough today, then great. We just wanted to add additional clarity that approval can be given in an automated way and you don’t have to verify the approval after it has been given.

Trev – I am in favor of removing derivatives of verification and validation wherever possible throughout the EVGs where it’s not the thing that we intend, but instead where we mean to process and check something. 

Clint – This approval can be automated if they are both the same.  We’re looking to make sure that a thing happens. 

Clint will add a sentence to this section.
Verification of Signature on Subscriber Agreement (EVG 11.9)

Eva – EVG 11.9 has a reference to 11.8.4 (pre-authorized approver). 

Clint – One of the “gotchas” in the EVGs is where it says the Contract Signer needs to authorize certificate approvers.  There are other places like this in the EVGs, so any clarifications like this will help.

Eva –We’ve discussed requester and approvers being the same person, but we did not explore that topic in depth.  Still, we had to fix this section.

Clint – The interactions among the three EV roles are interesting and documentation could be added.

Tim – We will help with additional rounds on this topic, too.
Data Security  (EVG section16)

Eva – There is a requirement that two trusted persons need to be involved. This is removed because we have enough language elsewhere in the EVGs.

Clint – I’m not opposed to removing this, but I’m not positive that removal of this would not have unintended consequences, depending on how this is implemented by CAs. This discussion of trusted persons could be subject to different interpretations. They could be validation specialists, and it may have some impact on due diligence and cross correlation. We should just make sure we’re not removing something important.

Eva – We previously talked about removing Enterprise RA role. I suppose this neutral language for due diligence and cross-correlation for Enterprise RAs. 

Brittany – I’ve seen due diligence and cross-correlation as a systematic control as opposed to a procedural control. 

Eva – The whole due diligence and cross-correlation process is system agnostic. It just says that it needs to be done, and that could be seen as systematic.  Thoughts?

Mads – This is a step towards helping with automating EV issuance processes.

Eva – Maybe we can remove the reference to “certificate request” and add systematic control.

Clint – This section could be moved into the due diligence and cross-correlation section.

Eva – That’s it.  We’ve come to the end of this presentation.
Corey – Should folks provide feedback in GitHub or on the list?

Eva – We prefer GitHub.


## Any Other Business

None


Meeting adjourned
