---
author: Corey Bonnell
date: 2024-10-10 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-10-10 Minutes of the Code Signing Certificate Working Group
type: post
---

## Minutes

Minutes from September 19 weren't approved since they were sent to an old list, approval will be discussed on a next meeting  
Vice chair elections: Thomas Zermeno from SSL.com and Martijn Katerbarg from Sectigo are nominated, the deadline for nominations is 14.10.2024 
 
### Progress since last F2F:

CSC-25 and CSC-26 passed
CSC-XX: Reduce Max Validity for Code Signing Certificates, 
Ian has sent his proposal on this ballot, not sent for discussion yet. The All Code Signing Certificates issued after May 30, 2025 the validity period for the Code Signing Certificate issued to a Subscriber MUST NOT exceed 460 days.
 
Bruce Morton starts a topic regarding Microsoft's idea to have 1 certificate type, for Code Signing certificates. He prepared a few questions for discussion:
Are these Subscriber roles not similar: Applicant Representative, Enterprise RA and Certificate Approver? A lot of what they do is the same.
Do we need all these EV roles: Certificate Requester, Certificate Approver, and Contract Signer? This bunch of roles may make the process too complicated.
Should we improve individual validation, such as requiring F2F similar to Document Signing? 
Since Business Entity must be registered, do we need the Principal Individual to be F2F vetted, we don't trust the registration?
Do we need to validate Operational Existence? 
Should denied/blocked list be applied for all Code Signing certificates?
Final Cross-Correlation and Due Diligence for all Code Signing certificates?
Can OrgID be a replacement or alternative to EVbusiness type/serial  number/jurisdiction?
 
 If we want to make 1 type, we should decide what that model should be, here are some variants to consider: 
. OV
. OV with OrgID (S/MIME BRs)
· EV
Bruce recommends that we choose one of the above, so we do not create a 4th standard and notes, that the model may drive decisions based on other topics
 
Corey says OV + (in between OV and EV,  similar to S/MIME BRs) is an excellent starting point.
Brianca from Amazon says EV does have larger requirements, it may be confusing to go back to OV. She doesn't understand why would we lower the EV standards.
Bruce says that majority of certificates aren't EV, but the audience comments say that he's wrong.
Tim Hollebeek says a lot of stuff in EV that doesn't matter, CA mostly use compliant EV methods, that are simpler to implement, so they don't need to use all of them, generally lot of EV requirements are historical artifacts.
Tim suggests to use OV + orgID, since it doesn't have the unnecessary complexity of EV, but has newest identity confirmation standard. We should figure out what parts of EV validation are worth saving, combined modern identity validation framework.
We should also pay attention to identity validation in Europe, there are some disagreements on how the identity validation is done in CA/B Forum and in Europe, that should be ironed out, since it might be a bigger problem in future.
It's not that simple, like choosing one of 3 options, but Tim also thinks it should be closer to the second option.
A couple of enhancements to improve such .. Such as organizational existence, doesn't always protect, people find a way around it, or even face to face vetting doesn't also always guarantee the safety. The world has moved on identity vetting, so we need to figure out what is the modern well written simple version of identity validation requirements that we want to use for going forward.

Dimitris says that for legal entities there is no obligation to validate the identity of legal representative, CS WG has their own identity validation process, they did this work few years ago, which is not included in S/MIME BR. Dimitris is also more keen to the second option, 
In Europe, we must validate the legal representative, or the properly delegated person, just as we do for validating the identity of natural persons. 

Brianca suggests a checklist against all validation schemes like a table (OV+ OrgID and EV) to compare.

Dimitris says that physical presence validation should be mandatory, regardless the fact if the company is older than 3 years or not. Dimitris confirms that identity validation has its standard in Europe, it is mandatory by EU legislation, which describes high-level goals. To his mind Microsoft's decision to remove difference between OV and EV means that they're equally happy with validation done on OV level, he would like to hear Microsoft  point of view, if today's OV level is a starting point.
Bruce says that reducing validity requirements is not a good idea.
Nate from Microsoft says they don't want to lower the requirements, they think of it as more of a consolidation than a downgrade, not lowering security standards. A lot of requirements are the same within OV and EV, they want to look at that.
Nate asks if SMIME regulations were made with EU identity validation standards, Dimitris and Stephen confirm.
 
Tim Hollebeek had a presenation on Quantum-safe cryptography and Code Signing (attached)
 
Discussion:
 
Nate S: Highlighted the importance of transitioning to post-quantum algorithms due to government requirements, specifically referencing CNSA 2.0, which sets a timeline for software and code-sign signatures to be quantum-safe by the early 2030s.
 
Bruce: Asked about next steps in the transition process.
 
Tim: Noted that the time for waiting is over. With the CNSA timeline in mind, it is essential to establish timelines and plans for implementing quantum-safe signing, especially concerning hardware security module (HSM) support.
 
Consensus: There is a need for discussions around sequencing and project planning for the transition of the code signing ecosystem. Both CAs and Microsoft will need to collaborate to develop a reasonable timeline and transition plan to communicate effectively with customers.
 
Nate S: Raised the point that potential signing formats cannot be used until the code signing BRs are updated.
 
Tim: Confirmed that quantum-safe code signing cannot occur today and emphasized the need to define prerequisites for issuing these signatures, noting that HSM support is currently lacking.
 
Dimitris: Stressed the importance of having a testbed for CAs interested in participating in beta programs for quantum-safe algorithms before embedding roots in the Microsoft Root store.
 
Tim: Responded that efforts to create a testbed are already in progress, particularly through the IETF hackathon, where various CAs can collaborate and test interoperability.
 
Nate S: Mentioned that Microsoft will be flighting platform support for post-quantum algorithms later this year, although not for the certificates themselves yet.
 
Corey: Suggested that a concrete step forward from a policy standpoint would be to write MLDSA as an allowed algorithm in the policy now. This would facilitate migration to next-generation algorithms once HSMs become available.
 
Tim: Agreed, noting that this would preempt discussions about vendor roadmaps.
 
Dimitris: Pointed out that current code signing BRs lack language to describe composite signatures.
 
Tim: Clarified that composite signatures could be supported if added to the BRs, and discussions are needed on which combinations should be permitted.
 
Dimitris: Raised concerns regarding the security of post-quantum algorithms when added in isolation.
 
Tim: Responded that while there are differing opinions, he believes dilithium signatures are secure. He prefers the use of composite signatures for specific use cases, acknowledging the overhead they introduce.
 
Consensus: A decision was reached to initiate a pre-ballot discussion regarding the addition of post-quantum algorithms.
 
Scott: Inquired about supporting quantum-safe code signing in constrained environments.
 
Tim: Acknowledged that constrained environments are a topic of concern and highlighted the importance of the Falcon algorithm for low-end use cases.
 
Nate S: Mentioned that Microsoft is working with the LMS and XMS algorithms, which are standardized in CNSA 2.0 and NIST, noting their potential for use in firmware companies.
 
Dean: Announced that next Thursday's meeting is canceled following a brief discussion.
 
The meeting was adjourned.
