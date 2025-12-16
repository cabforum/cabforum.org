---
aliases:
- /2025/11/10/ballot-sc-86v3-sunset-the-inclusion-of-ip-reverse-address-domain-names

author: Wayne Thayer
date: 2025-11-10
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-086v3: Sunset the Inclusion of IP Reverse Address Domain Names'
type: post
---

## Voting Results

### Certificate Issuers
26 votes in total:

 * 26 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
3 votes in total:

 * 3 voting YES: Apple, Google, Mozilla

 * 0 voting NO:

 * 0 ABSTAIN:

#### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 16 for this ballot. This requirement was **MET**.


## NOTICE OF REVIEW PERIOD

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

**Summary of Review**

**Ballot for Review**: SC086v3: Sunset the Inclusion of IP Reverse Address Domain Names

**Start of Review Period: 2025-11-14 12:00:00 UTC**
**End of Review Period: 2025-12-14 12:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

[TBR-SC86v3.pdf](BR-SC086.pdf)

[TBR-SC86v3-redlined.pdf](BR-SC086-redline.pdf)

[TBR-SC86v3.docx](BR-SC086.docx)

[TBR-SC86v3-redlined.docx](BR-SC086-redline.docx)

## Ballot Contents

**Purpose of Ballot**

 
The IP Reverse Address Domain Names (“in-addr.arpa” and “ip6.arpa”) are components of the Internet infrastructure and are not intended to include hostnames. As a result, it is undesirable to permit the issuance of publicly trusted TLS certificates containing hostnames under “in-addr.arpa” and “ip6.arpa”. This ballot establishes a sunset on this practice.


**Motion**


The following motion has been proposed by Corey Bonnell (DigiCert) and endorsed by Clint Wilson (Apple) and Tobias Josefowitz (Opera).


— Motion Begins —


MODIFY the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“TLS Baseline Requirements”) based on Version 2.1.7 as specified in the following redline:

 
https://github.com/cabforum/servercert/compare/b6a014d4aee244c019ef6ca41667045cdbfefb81...b249b191249e834aeffb32dc633249ad55658e1a

 
— Motion Ends —

 
This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

 
**Discussion (at least 7 days)**

 
Start time: 2025-10-23 11:30 UTC

End time: 2025-11-03 17:00 UTC

 

**Vote for approval (7 days)**

 

Start time: 2025-11-03 17:00 UTC

End time: 2025-11-10 17:00 UTC
