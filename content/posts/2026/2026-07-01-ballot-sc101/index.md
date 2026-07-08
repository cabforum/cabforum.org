---
aliases:
- /2026/07/01/ballot-sc-101v2-clarify-authorization-domain-names
date: 2026-07-01
tags:
- Ballot
- Server Certificates
title: 'Ballot SC0101v2: Clarify Authorization Domain Names'
type: post
---

## Voting Results

### Certificate Issuers
27 votes in total:

 * 27 voting YES: Amazon, Asseco Data Systems SA (Certum), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, Kamu SM, Let's Encrypt, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO: 

 * 0 ABSTAIN:

### Certificate Consumers
4 votes in total:

 * 4 voting YES: Apple, Google, Microsoft, Mozilla
 
 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 17 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC0101v2: Clarify Authorization Domain Names

[TBR-SC101.pdf](BR-SC101.pdf)

[TBR-SC101-redlined.pdf](BR-SC101-redline.pdf)

[TBR-SC101.docx](BR-SC101.docx)

[TBR-SC101-redlined.docx](BR-SC101-redline.docx)

**Start of Review Period:** 2026-07-07 08:00:00 UTC

**End of Review Period:** 2026-08-06 08:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Summary of the Ballot

In Section 3.2.2.4, explicitly describe the algorithm by which a CA may derive an Authorization Domain Name from an applied-for FQDN. The algorithm described is consistent with the most common interpretation of the current definition of ADN, so this is not expected to be a disruptive change for most CAs, but it removes ambiguity and closes one security issue (described below).

Simplify the definition of Authorization Domain Name to be merely descriptive. Update all validation methods to describe how they validate control of the selected ADN. Collapse all previous statements about validation method suitability for wildcard and ending-in-the-same-suffix validation into a table in Section 3.2.2.4. As a knock-on effect, simplify the definitions of Base Domain Name and Domain Contact.

Although these changes are simple, they are also sweeping. As such, the ballot includes a provision that CAs may comply with Section 3.2.2.4 of the previous version of the Baseline Requirements until November 15, 2026. This is derived from the approach taken by v2.0 of the Network Security Requirements.

### Background of the Ballot

The existing definition of Authorization Domain Name has two severe issues:

a) It contains normative policy language (describing how to derive an ADN) but attempts to be a concise and descriptive definition, leading to ambiguity as to whether parts of the definition can be performed exclusively, in sequence, repeatedly, or otherwise.

b) Under some interpretations, it allows for issuance of certificates for names over which the applicant has not demonstrated any control.

Specifically, one interpretation of the current definition of an ADN is that a CA may prune labels from the left-hand side of the FQDN, then follow one or more CNAMEs, and then use the resulting FQDN as the ADN. However, just because `example.com` has a CNAME pointing to `example.org`, that does not give the operators of `example.org` any control over subdomains of such as `blog.example.com`. Under this interpretation, an entity capable of demonstrating control of a CNAME (such as a CDN operator) might be able to get issuance of certificates for arbitrary subdomains of names that are CNAMEd to them. This is not good.

This ballot resolves the issue by much more strictly describing the acceptable ADN derivation algorithm. In particular:

- The ADN must be selected after the validation method has been selected.

- Only certain methods (those which perform validation at the name itself, not at a underscore-prefixed subdomain of it) can use the "cname" step of the ADN algorithm.

- Only certain methods (those which currently allow issuance for "other FQDNs that end with all the Domain Labels of the validated FQDN") can use the "prune" step of the ADN algorithm.

- Following CNAMEs must happen before pruning labels, if both operations are performed.

This makes it much easier for CAs to implement provably-compliant ADN derivation algorithms, and closes the security hole described above.

This ballot also explicitly acknowledges something that has always been true: that all validation methods are in fact validating control over the ADN, not the applied-for FQDN (unless the CA has selected the ADN to be exactly equal to the applied-for FQDN). This means that validation data reuse also works at the ADN level: if two applied-for FQDNs can both be turned into the same ADN, then demonstrating control of that ADN is valid for the issuance of both applied-for FQDNs.


This ballot differs from the original SC-101 in only one substantive way: it adds an effective date for the change to Section 3.2.2.5.3, which is not covered by the general effective date covering all of Section 3.2.2.4. The other changes are merely editorial. You can see a diff from SC-101 to SC-101v2 here.

The following motion is proposed by Aaron Gable (Let's Encrypt / ISRG) and endorsed by Rich Smith (DigiCert) and Chris Clements (Google).

**--- Motion Begins ---**

Modify the "Baseline Requirements for the Issuance and Management of Publicly-Trusted Server Certificates", based on Version 2.2.7, per the following redline:

https://github.com/cabforum/servercert/compare/1bcb34993331313c92ac7d6af778e81ca3d5faff...0a66f1dfad21cc9964738ce753b5ac8859d9a265

**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days):

 * Start time: 2026-06-12 17:00 UTC

 * End time: 2026-06-19 17:00 UTC or later

Vote for approval (7 days):

 * Start time: 2026-06-23 23:20 UTC

 * End time: 2026-06-30 23:20 UTC
