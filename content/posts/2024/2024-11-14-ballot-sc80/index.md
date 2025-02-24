---
aliases:
- /2024/11/14/ballot-sc-80-Sunset-the-use-of-WHOIS-to-identify-Domain-Contacts-and-relying-DCV-Methods
author: Iñigo Barreira
date: 2024-11-14
tags:
- Ballot
- Server Certificates
title: 'Ballot SC080v3: Sunset the use of WHOIS to identify Domain Contacts and relying DCV Methods'
type: post
---

## Voting Results

### Certificate Issuers

24 votes in total:

- **23 voting YES**: Amazon, Buypass AS, Certinomis, Chunghwa Telecom, CommScope, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, Visa
- 0 Issuers voting NO
- 1 ABSTAIN: Japan Registry Services


### Certificate Consumers

3 votes total, with no abstentions:

- **3 Consumers voting YES**: Apple, Google, Mozilla
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 14 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-80: Sunset the use of WHOIS to identify Domain Contacts and relying DCV Methods

[TBR-SC80.pdf](BR-SC80.pdf)

[TBR-SC80-redlined.pdf](BR-SC80-redlined.pdf)

[TBR-SC80.docx](BR-SC80.docx)

**Start of Review Period**: 14 November 2024 at 13:00 UTC

**End of Review Period**: 14 December 2024 at 13:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

This ballot intends to accomplish two objectives, originally described in [1], but have since been updated in response to community feedback.

Objective 1: Enhance WHOIS/RDAP validation of gTLDs with comparable security properties to DNS-based validation.

Justification:
- A recent disclosure [2] demonstrated how threat actors could exploit deficiencies in the WHOIS protocol and WHOIS tools served via HTTPS websites to obtain fraudulent TLS certificates.
- Discussions within the Mozilla Dev Security Policy (MDSP) community [3] further expressed corresponding risks related to WHOIS, while also noting that ccTLDs may not maintain accurate or up-to-date WHOIS server records. Several examples of inoperative WHOIS servers for ccTLDs were identified.
- Solutions to strengthen existing WHOIS lookup methods were proposed in [5] and some are considered in this ballot.

Objective 2: Sunset Methods 3.2.2.4.2 (“Email, Fax, SMS, or Postal Mail to Domain Contact”) and 3.2.2.4.15 (“Phone Contact with Domain Contact”).

Justification:
- While solutions to strengthen WHOIS-relying DCV methods are considered in this ballot (see above), there is limited public evidence of significant reliance on these methods, including in response to [3] and [6]. 
- Instead, discussion has identified at least one CA Owner has already sunset reliance on WHOIS [7], and another that has changed its approach [8] for relying on WHOIS since disclosure of [2].
- More modern and heavily relied-upon DCV methods offer advantages over the existing WHOIS-based methods, including greater opportunity for seamless certificate lifecycle management automation (e.g., [9] and [10]), while also benefiting from recently improved security practices [11]. These methods can also more effectively align subscriber capabilities with agility and resilience expectations necessary to respond to the revocation timelines described in the TLS BRs [12]. 
- Beyond the above, previous discussions within the CA/Browser Forum have raised concerns about the perceived value (e.g., [13]) and security (e.g., [14]) of the DCV methods relying on WHOIS, further supporting the rationale for their gradual sunset.

Benefits of adoption:
- Enhanced Security: Eliminates reliance on outdated and vulnerable DCV methods that cannot consistently provide the security required by the TLS BRs, or benefit from recent DCV security enhancements (i.e., Multi-Perspective Issuance Corroboration [11]).   
- Increased Agility: Encourages site owners to transition to modern DCV methods, creating opportunities for faster, more efficient, and less error-prone certificate lifecycle management.   
- Opportunity for Innovation: Promotes the development of new and/or improved DCV methods, fostering innovation that may enhance the overall security and agility of the ecosystem.
 
Proposed Key Dates:
The effective dates considered in this update are intended to 1) address the immediate concerns identified by [2], and 2) offer near-term and longer-term transition periods for subscribers and CA Owners relying on existing implementations of these methods.

January 15, 2025: For Methods 3.2.2.4.2, 3.2.2.4.12, and 3.2.2.4.15…
- CAs MUST NOT rely on Domain Contact information obtained using an HTTPS website, regardless of whether previously obtained information is within the allowed reuse period.
- When obtaining Domain Contact information for a requested Domain Name using the WHOIS protocol (RFC 3912) or the Registry Data Access Protocol (RFC 7482), the CA must follow specific practices (described in the ballot).
- CAs MUST NOT rely on cached 1) WHOIS server information that is more than 48 hours old, or 2) RDAP bootstrap data from IANA that is more than 48 hours old, to ensure that it relies upon up-to-date and accurate information.

July 15, 2025: 
- CAs MUST NOT issue Subscriber Certificates relying on Methods 3.2.2.4.2 ("Email, Fax, SMS, or Postal Mail to Domain Contact") or 3.2.2.4.15 ("Phone Contact with Domain Contact").
- Prior validations using these methods and validation data gathered therein MUST NOT be used to issue new Subscriber Certificates.

 
The following motion has been proposed by Ryan Dickson and Chris Clements of Google (Chrome Root Program) and endorsed by Arvid Vermote (GlobalSign) and Pedro Fuentes (OISTE).

### Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.0.8.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/servercert/compare/d820f37f9e1550805c210dcaf5162b7f86ccfb69..d356eb8c4bca3f12f5036b45c76ca963aa102ee4 



### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion
- Start: 2024-10-23 20:00:00 UTC
- End: 2024-10-31 13:59:00 UTC

Vote for approval (7 days)
- Start: 2024-10-31 14:00:00 UTC
- End: 2024-11-07 14:00:00 UTC






