---
aliases:
- /2024/11/29/ballot-sc-82-Clarify-CA-Assisted-DNS-Validation-under-3.2.2.4.7
author: Dimitris Zacharopoulos
date: 2024-11-29
tags:
- Ballot
- Server Certificates
title: 'Ballot SC082: Clarify CA Assisted DNS Validation under 3.2.2.4.7'
type: post
---

## Voting Results

The voting period for Ballot SC82: Clarify CA Assisted DNS Validation under 3.2.2.4.7 has completed. The ballot has: **FAILED**

### Certificate Issuers

21 votes in total:

- 17 voting YES: Amazon, Asseco Data Systems SA (Certum), Chunghwa Telecom, DigiCert, eMudhra, Entrust, Fastly, GlobalSign, GoDaddy, IdenTrust, OISTE Foundation, Sectigo, SwissSign, Telia Company, TWCA, VikingCloud, Visa
- 0 Issuers voting NO
- 4 ABSTAIN: Buypass AS, HARICA, SECOM Trust Systems, SSL.com

### Certificate Consumers

3 votes total, with no abstentions:

- 0 Consumers voting YES
- 1 Consumers voting NO: Apple
- 2 Consumers ABSTAIN: Google, Mozilla

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **NOT MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **NOT MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 16 for this ballot. This requirement was **MET**.

## Ballot Contents
Ballot SC-082 is proposed by Michael Slaughter (Amazon Trust Services) and endorsed by Martijn Katerbarg (Sectigo) and Wayne Thayer (Fastly).

**Purpose of Ballot SC-082**

The purpose of this ballot is to clarify the practice of CA Assisted DNS Validation and add constraints under Method 7 (3.2.4.4.7 DNS Change). Modification of other domain validation methods and the introduction of new domain validation methods are not in scope of this ballot but may be addressed in a future ballot.

**Background**

CA Assisted DNS Validation is the practice where Certification Authorities (CAs) instruct Applicants to create Canonical Name (CNAME) records specifically for the purpose of assisting the Applicant with Domain Control Verification (DCV) of their domain.

At F2F 59 (July 23’), the Validation Subcommittee of the Server Certificate WG presented the following conclusions on the practice of CA Assisted DNS Validation:

>  More clarity is needed around the practice
>  Applicants generally delegate the performance of many aspects of operating a website.
>  If done correctly, allowing Applicants to delegate the placement of the Random Value/ Request Token boosts agility and automation.
>  There are reasonable interpretations of the BRs that such delegation is already allowed today.

A tiger team was formed to threat model CA Assisted DNS Validation and propose modifications to the BRs to add clarity and constraints around the practice under section 3.2.2.4.7. The results of the threat model exercise [1] were presented and discussed at F2F 60 [2] and F2F 61 [3].

**Overview of Changes**

* New definition: Canonical Authorization Domain Name
* Add Canonical Authorization Domain Names into section 3.2.2.4.7 (DNS Change)
* Addition of constraints around the usage of Canonical Authorization Names by CAs
   * Enforce CNAMEs are unique to an Applicant and not shared with multiple Applicants
   * Expire DNS lookup results after 8 hours
   * Restrict the type of DNS records located in zones used for this purpose.

**References**

[1]: Validation SC Threat Modeling Doc: https://docs.google.com/document/d/1G2GYb0eg0rqE23f844J8qs7RYGU1jFVDsU5Pf7UYg3g/edit

[2]: F2F-60 Presentation: https://docs.google.com/presentation/d/1M80h1N7MpBuqvZS0FdtJ_zj-AsaFxu7BNBSUJ6Ia5jU/edit?usp=sharing

[3]: F2F-61 Presentation: https://docs.google.com/presentation/d/1rKW7I5jOYh37jQFtd1S-fKIs0j-dCAyUUU-fq_C8UKw/edit?usp=sharing

[4]: https://github.com/cabforum/servercert/pull/501

The following motion has been proposed by Michael Slaughter (Amazon Trust Services) and endorsed by Martijn Katerbarg (Sectigo) and Wayne Thayer (Fastly)

GitHub pull request for this ballot: https://github.com/cabforum/servercert/pull/501

### Motion begins
MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version 2.0.9 as specified in the following redline:

https://github.com/cabforum/servercert/compare/911e47e2657de64a7455ba16319b96ffdb5816cd..76f6e1b7a39f44f6e7b5a1bc0c4a0df744457d84

### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion 
- Start: 2024-11-12 17:30:00 UTC
- End no earlier than: 2024-11-19 17:30:00 UTC

Vote for approval (7 days)
- Start: 2024-11-20 18:30:00 UTC
- End: 2024-11-27 18:30:00 UTC
