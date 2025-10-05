---
aliases:
- /2025/09/02/ballot-sc-92-sunset-use-of-precertificate-signing-cas

author: Wayne Thayer
date: 2025-09-02
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-092: Sunset use of Precertificate Signing CAs'
type: post
---

## Voting Results

### Certificate Issuers

29 votes in total:

- 29 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Izenpe, Japan Registry Services, Let's Encrypt, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SwissSign, Telia Company, TrustAsia, TWCA, VikingCloud.
- 0 voting NO:
- 0 ABSTAIN: 

### Certificate Consumers

3 votes total:

- **3 voting YES**: Apple, Google, Mozilla
- 0 voting NO
- 0 ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 16 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

Ballot for Review: SC092: Sunset use of Precertificate Signing CAs

[TBR-SC92.pdf](BR-SC092.pdf)

[TBR-SC92-redlined.pdf](BR-SC092-redline.pdf)

[TBR-SC92.docx](BR-SC092.docx)

[TBR-SC92-redlined.docx](BR-SC092-redline.docx)

**Start of Review Period: 2025-10-05 09:00:00 UTC**
**End of Review Period: 2025-11-04 09:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

**Purpose of Ballot SC-092**

This ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates (TLS BRs) to sunset use of Precertificate Signing CAs, currently specified in Section 7.1.2.4.

**Background:**

RFC 6962 (2013) describes the concept of “Precertificate Signing Certificates.” This profile allows for the creation of a dedicated intermediate CA that is technically constrained to only issue Precertificates. A profile for Precertificate Signing Certificates was added to the TLS BRs as a part of SC-062.

Adoption of Precertificate Signing CAs remains low, yet they introduce ongoing complexity. Similarly, RFC 9162 (2021) deprecates Precertificate Signing Certificates and the Precertificate Poison extension.

**Justification:**

Precertificate Signing CAs introduce complexity, and by extension, risk to the ecosystem for virtually zero practical benefit.

- Unnecessary complexity

    - Signing a Precertificate using a separate, dedicated Precertificate Signing CA, which itself chains up to the Issuing CA responsible for signing Subscriber Certificates, forces the ecosystem to build and maintain complex and distinct logic to validate two different types of certificate chains. Prohibiting this profile simplifies X.509 chain validation logic for all parties and allows for convergence reducing the ecosystem's overall attack surface.

    - They require adopting CA Owners to stand up additional CA infrastructure with very specific requirements on what can be issued from them. This introduces new points of failure and maintenance burden.

    - They make it difficult for Certificate Transparency Monitors and other ecosystem observers to get a comprehensive view of certificate issuance.

- Source of real-world critical failure

    - The complexity of supporting this alternate chain-building mechanism can contribute directly to severe operational failures, recently resulting in the rejection of a CT log. 

- Negligible adoption

    - With only 2 publicly-trusted CA Owners currently using Precertificate Signing CAs, the entire global ecosystem is being forced to bear the cost and risk of supporting a complex mechanism that serves no practical purpose for a majority of the internet. 

    - Discussion at the 11 September SCWG meeting described Precertificate Signing CAs as a rarely used option that does not interact nicely with other parts of the ecosystem.


**Benefits of adoption**

- Promote simplicity.

- Reduce attack surface.


**Proposed Key Dates:**

The effective date considered in this update is intended to allow CA Owners relying on existing Precertificate Signing CAs to transition to alternatives.

- Effective March 15, 2026:

    - The Certificate Profile specified in Section 7.1.2.4 MUST NOT be used to issue new certificates.

    - Existing Precertificate Signing CAs MUST NOT be used to issue new Precertificates.


**Proposal Revision History:**

- Pre-ballot: Some discussion found in this GitHub Pull Request. Feedback ultimately incorporated into Version 1 (this version) of the ballot.

- Version #1 Ballot and discussion (initiated via this email, see "redline" below)


The following motion has been proposed by Ryan Dickson and Chris Clements of Google (Chrome Root Program) and endorsed by Aaron Gable (Internet Security Research Group) and Clint Wilson (Apple).


**— Motion Begins —**


This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.1.7.


MODIFY the Baseline Requirements as specified in the following Redline:


https://github.com/cabforum/servercert/compare/b6a014d4aee244c019ef6ca41667045cdbfefb81..d0c9842bca6f912c31bd9c28f6cb3be3e6d91010


**— Motion Ends —**


This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:


**Discussion (no less than 7 days)**

- Start: 2025-09-18 13:30:00 ET

- End: 2025-09-25 15:29:59 ET


**Vote for approval (7 days)**

- Start: 2025-09-25 15:30:00 ET

- End: 2025-10-02 15:30:00 ET