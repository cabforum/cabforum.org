---
aliases:
- /2024/08/05/ballot-sc-67-Require-Multi-Perspective-Issuance-Corroboration
author: Iñigo Barreira
date: 2024-08-05
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-67 v3: Require domain validation and CAA checks to be performed from multiple Network Perspectives Corroboration'
type: post
---

## Voting Results

### Certificate Issuers

22 votes total, with no abstentions:

- **22 Issuers voting YES**: Actalis, Buypass, Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Fastly, GlobalSign, HARICA, IdenTrust, Izenpe, JPRS, Let's Encrypt / ISRG, OISTE, SECOM, Sectigo, SSL.com, Telia Company, TrustAsia
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

4 votes total, with no abstentions:

- **3 Consumers voting YES**: Apple, Google, Mozilla, Opera
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 14 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-67 v3: Require domain validation and CAA checks to be performed from multiple Network Perspectives

[TBR-SC67.pdf](CA-Browser-Forum-TLS-BR-2.0.7.pdf)

[TBR-SC67-redlined.pdf](CA-Browser-Forum-TLS-BR-2.0.7-redlined.pdf)

[TBR-SC67.docx](CA-Browser-Forum-TLS-BR-2.0.7.docx)

**Start of Review Period**: 5 August 2024 at 18:00 UTC

**End of Review Period**: 5 September 2024 at 18:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

### Purpose of the Ballot

This Ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates (i.e., TLS BRs) related to “Multi-Perspective Issuance Corroboration” (“MPIC”).

Background:

- MPIC refers to performing domain validation and CAA checks from multiple Network Perspectives before certificate issuance, as described within the Ballot for the applicable validation methods in TLS BR Sections 3.2.2.4 and 3.2.2.5.
- Not all methods described in TLS BR Sections 3.2.2.4 and 3.2.2.5 will require using MPIC.
- This work was most recently motivated by research presented at Face-to-Face 58 [1] by Princeton University, but has been discussed for years prior as well.
- The goal of this proposal is to make it more difficult for adversaries to successfully launch equally-specific prefix attacks against the domain validation processes described in the TLS BRs.
- Additional background information can be found in an update shared at Face-to-Face 60 [2].

Benefits of Adoption:

- Recent publicly-documented attacks have used BGP hijacks to fool domain control validation and obtain malicious certificates, which led to the impersonation of HTTPS websites [3][4].
- Routing security defenses (e.g., RPKI) can mitigate the risk of global BGP attacks, but localized, equally-specific BGP attacks still pose a significant threat to the Web PKI [5][6].
- Corroborating domain control validation checks from multiple network perspectives (i.e., MPIC) spread across the Internet substantially reduces the threat posed by equally-specific BGP attacks, ensuring the integrity of domain validation and issuance decisions [5][7][8].
- Existing deployments of MPIC at the scale of millions of certificates a day demonstrate the feasibility of this technique at Internet scale [7][9].

Intellectual Property (IP) Disclosure:

- While not a Server Certificate Working Group Member, researchers from Princeton University presented at Face-to-Face 58, provided academic expertise, and highlighted publicly-available peer-reviewed research to support Members in drafting this ballot.
- The Princeton University researchers indicate that they have not filed for any patents relating to their MPIC work and do not plan to do so in the future.
- Princeton University has indicated that it is unable to agree to the CA/Browser Forum IPR agreement because it could encumber inventions invented by researchers not involved in the development of MPIC or with the CA/B Forum.
- Princeton University has instead provided the attached IPR statement. Pursuant to the IPR statement, Princeton University has granted a worldwide royalty free license to the intellectual property in MPIC developed by the researchers and has made representations regarding its lack of knowledge of any other Princeton intellectual property needed to implement MPIC.
- The attached IPR statement has not changed since disclosed in Discussion Round 1.
- For clarity, Princeton University’s IPR statement is NOT intended to replace the Forum’s IPR agreement or allow Princeton to participate in the Forum in any capacity.
- Members seeking legal advice regarding this ballot should consult their own counsel.

Proposal Revision History:

- Pre-Ballot Release #1 (work team artifacts and broader Validation Subcommittee collaboration) [10]
- Pre-Ballot Release #2 [11]

Previous versions of this Ballot:

- Ballot Release #1 [12] (comparing Version 2 to Version 1) [13]. Note, some of the changes represented in the comparison are updates made by other ballots that have since passed (e.g., SC-069).
- Ballot Release #2 [14] (comparing Version 3 to Version 2) [15]. Note, some of the changes represented in the comparison are updates made by other ballots that have since passed (e.g., SC-072).

References:

[1] https://cabforum.org/wp-content/uploads/13-CAB-Forum-face-to-face-multiple-vantage-points.pdf

[2] https://drive.google.com/file/d/1LTwtAwHXcSaPVSsqKQztNJrV2ozHJ7ZL/view?usp=drive_link 

[3] https://medium.com/s2wblog/post-mortem-of-klayswap-incident-through-bgp-hijacking-en-3ed7e33de600 
[4] https://www.coinbase.com/blog/celer-bridge-incident-analysis 

[5] https://www.usenix.org/conference/usenixsecurity23/presentation/cimaszewski  

[6] https://www.blackhat.com/docs/us-15/materials/us-15-Gavrichenkov-Breaking-HTTPS-With-BGP-Hijacking-wp.pdf 

[7] https://www.usenix.org/conference/usenixsecurity21/presentation/birge-lee 

[8] https://www.usenix.org/conference/usenixsecurity18/presentation/birge-lee 

[9] https://security.googleblog.com/2023/05/google-trust-services-acme-api_0503894189.html 

[10] https://github.com/ryancdickson/staging/pull/6 

[11] https://github.com/ryancdickson/staging/pull/8 

[12] https://github.com/cabforum/servercert/pull/487 

[13] https://github.com/cabforum/servercert/compare/6d10abda8980c6eb941987d3fc26e753e62858c0..5224983ef0a6f94c18808ea3469e7a5ae35746e5

[14] https://github.com/cabforum/servercert/pull/507 

[15] https://github.com/cabforum/servercert/compare/5224983ef0a6f94c18808ea3469e7a5ae35746e5..2dcf1a8fe5fc7b6a864b5767ab1db718bc447463

The following motion has been proposed by Chris Clements and Ryan Dickson of Google (Chrome Root Program) and endorsed by Aaron Gable (ISRG / Let’s Encrypt) and Wayne Thayer (Fastly). 

### Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.0.4.

MODIFY the Baseline Requirements as specified in the following Redline:
https://github.com/cabforum/servercert/compare/c4a34fe2292022e0a04ba66b5a85df75907ac2a2..2dcf1a8fe5fc7b6a864b5767ab1db718bc447463 


### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

•	Start time: 2024-05-20 14:30:00 UTC

•	End time: 2024-07-15 15:29:59 UTC

Vote for approval (7 days)

•	Start time: 2024-07-15 15:30:00 UTC

•	End time: 2024-07-22 15:30:00 UTC


