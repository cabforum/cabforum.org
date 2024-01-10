---
aliases:
- /2019/03/09/ballot-forum-8-establishment-of-a-code-signing-working-group/
author: Jos Purvis
date: 2019-03-09 20:43:39
tags:
- Forum
- Code Signing
- Ballot
title: 'Ballot FORUM-8: Establishment of a Code Signing Working Group'
type: post
---

## Results

The voting period for Ballot Forum-8 has ended and the **Ballot has Passed**. Here are the results:

### Voting by Certificate Issuers

**24 votes total including abstentions**

- \*\*24 Yes votes: \*\*Actalis, Amazon, Buypass, Camerfirma, Certinomis, Certum (Asseco), Chunghwa Telecom, D-Trust, DarkMatter, DigiCert, Disig, eMudhra, Entrust Datacard, E-Tugra, GlobalSign, HARICA, SHECA, SSL.com, SSC, TrustCor, SecureTrust, TurkTrust, Visa
- **0 No vote:**
- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.

### Voting by Certificate Consumers

**3 votes total including abstentions**

- **4 \*\*\*\* 3 Yes votes:** Cisco, Microsoft, Opera
- **0 No votes:**
- \*\*0 Abstain: \*\*

100% of voting Certificate Consumers voted in favor

### Relevant Bylaw references

Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. _This requirement was met_ for both Certificate Issuers and Certificate Consumers.
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. _This requirement was also met._
- Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **9**, so quorum was **10 votes** – _quorum was met._

## Ballot FORUM-8: Charter to Establish a Code Signing Certificate Working Group

### Purpose of Ballot

It is proposed that the Forum establish a working group to adopt and maintain a policy, framework, and set of standards related to the issuance and management of code signing certificates by a third-party Certificate Issuer, rather than by the platform supplier (i.e. Certificate Consumer) itself. The work would be based on the Forum’s prior adoption of the EV Code Signing Guidelines, version 1.4, (Ballot 172; 5 July 2016), and additional work by Forum members who expressly agreed to operate pursuant to the Forum’s IPR Policy, between 2013 and 2015, which resulted in a failed proposal to adopt a set of baseline requirements for the issuance and management of code signing certificates (; ).

It is proposed by Ben Wilson of DigiCert and endorsed by Mike Reilly of Microsoft and Bruce Morton of Entrust Datacard that the Forum charter a working group to operate in accordance with the Scope and other provisions that follow. This Charter will take effect upon approval of the CAB Forum by ballot conducted in accordance with Bylaw 5.3.

### - BALLOT BEGINS

### Code Signing Certificate Working Group Charter

#### Introduction

This introduction provides general information and context with an intent to assist the interpretation of this Charter.

A code signing certificate contains the public key corresponding to a private key that is used by a person or organization to digitally sign data-such data usually containing instructions (i.e. “code”) for hardware to perform certain tasks. A code signing certificate can be identified by the existence of an Extended Key Usage (EKU) Object Identifier (OID) of 1.3.6.1.5.5.7.3.3.

The objective of a code signing certificate is to provide a cryptographic way to identify the source of code. There are a variety of functional models and use cases whereby a code signing certificate is issued by a Certificate Issuer to a Subscriber for use in signing code that will run on a particular computing platform or group of platforms. (Each platform supplier determines how a chain between a trusted root CA certificate and the code signing certificate will be created and verified.)

The primary use case under consideration for the working group is a model whereby the platform supplier accepts code signing certificates issued by a third-party Certificate Issuer. A common example of this model is Microsoft’s Authenticode, although others exist.

Other functional models include those which allow developers to self-sign code and those in which the platform supplier manages the code signing or certificate issuance process, and these models are expressly excluded from the working group’s mandate. Common examples of these models that are expressly excluded from the scope of guidelines to be promulgated by the working group are Apple’s Developer ID program and Google’s Android.

#### Chartering of the Code Signing Certificate Working Group

A Chartered Working Group (“CWG”) is created to perform the activities as specified in this Charter, subject to the terms and conditions of the CA/Browser Forum Bylaws and Intellectual Property Rights (IPR) Policy, as such documents may change from time to time. This charter for the Code Signing Certificate Working Group has been created according to CAB Forum Bylaw 5.3.1. In the event of a conflict between this Charter and any provision in either the Bylaws or the IPR Policy, the provision in the Bylaws or IPR Policy SHALL take precedence. The definitions found in the Forum’s Bylaws SHALL apply to capitalized terms in this Charter.

**1. Scope**

The authorized scope of the CWG SHALL be to discuss, adopt, and maintain policies, frameworks, and sets of standards related to the issuance and management of code signing certificates by third-party Certificate Issuers under a publicly trusted root (and not code signing certificates issued under a private root CA), limited as follows:

1. EV Code Signing Guidelines, v. 1.4 and subsequent versions
1. Version 1.0 Draft of November 19, 2015, Baseline Requirements for the Issuance and Management of Publicly-Trusted Code Signing Certificates (subject to the CWG making a written finding that the provenance of such document is sufficiently covered by the Forum’s IPR Policy)
1. Verification requirements for issuance/renewal of code signing certificates
1. Subscriber protection of private keys, including keys stored in the cloud
1. Certificate issuance and revocation
1. Requirements/controls on use of code signing certificates
1. Mechanisms to engage with AV vendors, researchers, and others regarding signed malware
1. Certificate profiles for code signing certificates and Issuing CA certificates (including the appropriateness of extensions and when those extensions should be present)
1. Certificate issuance and revocation
1. CA operational practices, physical/logical security, etc.

The CWG SHALL exercise caution to ensure that its work product does not impede the issuance of other EKU types.

**2. Out of Scope**

The CWG SHALL NOT develop guidelines, standards, or requirements applicable to:

1. Self-signed code;
1. Platform suppliers / Certificate Consumers;
1. Certificates issued under a root certificate that is not publicly trusted, even though they are managed by Certificate Issuers or other third-party service providers; or
1. The code signing or certificate issuance process when managed by a platform supplier / Certificate Consumer.

**3. Charter Expiration**

The CWG is chartered until it is dissolved as specified in Bylaw 5.3.2(c).

**4. Personnel and Participation**

\*\*a. Selection of Officers \*\*

Dean Coclin will act as chair of the CWG until the first Working Group Teleconference, at which time the group will select a chair and vice-chair. The chair and vice-chair will serve until October 31, 2020, or until they are replaced, resign, or are otherwise disqualified. Thereafter, elections SHALL be held for chair and vice chair every two years in coordination with the Forum’s election process and in conjunction with its election cycle. Voting SHALL occur in accordance with Bylaw 4.1(c).

## b. Eligibility to Participate, Suspension, and Termination of Membership in CWG

The CWG SHALL consist of two classes of voting members, Certificate Issuers and Certificate Consumers meeting the eligibility criteria below:

1. A Certificate Issuer eligible for voting membership in the CWG must have a current WebTrust for CAs or ETSI EN 319 411-1/EN 319 411-2 audit report prepared by a properly-qualified auditor and actively issue code signing certificates that are accepted for use in computing platforms in which the platform supplier accepts code signing certificates issued by such Certificate Issuer.
1. A Certificate Consumer (i.e. a platform supplier) eligible for voting membership in the CWG must produce a computing platform that accepts code signing certificates issued by third-party Certificate Issuers who meet criteria set by such Certificate Consumer.

Forum Members seeking to participate in the CWG MUST declare their intent to participate in accordance with subsection (c) below and provide the CWG Chair with evidence that they meet the criteria set forth above.

An Applicant not already a member of the Forum SHALL provide the information required by Bylaw 2.1(b). Such Applicant SHALL become a Member once the CWG has determined by consensus among the Members during a CWG Meeting or Teleconference that the Applicant meets all of the requirements above or, upon the request of any Member of the CWG, by a Ballot among Members of the CWG. Acceptance by consensus shall be determined or a Ballot of the Members shall be held as soon as the Applicant indicates that it has presented all information required above and has responded to all follow-up questions from the CWG and the Member has complied with the requirements of Bylaw 5.5.

Certificate Issuer applicants that are not actively issuing code signing certificates but otherwise meet these membership criteria MAY request to the CWG that they be granted an invitation for Associate Member status in accordance with Bylaw 3.1, subject to conditions designated by the CWG.

The CWG SHALL allow participation by Interested Parties, as set forth in the Bylaws.

Members may resign from the CWG at any time. Resignation or other termination of membership in the CWG does not prevent a Member from potentially having continuing obligations, under the Forum’s IPR Policy or any other document.

A Certificate Consumer Member’s membership in the CWG will automatically cease if it stops providing updates for its membership-qualifying software product or six months have elapsed since the last such published update.

A Certificate Issuer’s membership in the CWG may be suspended if any of the following become true:

1. it fails to pass its membership-qualifying audit;
1. its membership-qualifying audit is revoked, rescinded or withdrawn;
1. fifteen months have elapsed since the end of the audit period of its last successful membership-qualifying audit; or
1. it is no longer the case that its currently-issued certificates are treated as valid by at least one Certificate Consumer Member.

Any Member who believes one of the above circumstances is true of any other Member may report it on the CWG’s Public Mail List. The CWG Chair will then investigate, including asking the reported Member for an explanation or appropriate documentation. If evidence of continued qualification for membership is not forthcoming from the reported Member within five working days, the CWG Chair will announce that such Member is suspended, such announcement to include the basis upon which the suspension has been made. A suspended Member who believes it has now re-met the membership criteria under the relevant clauses shall provide evidence to the CWG Chair who SHALL post it to the CWG Public Mail List. The CWG Chair will examine the evidence and unsuspend the member, or not, by announcement to the CWG Public Mail List. A Member’s membership will automatically cease six months after it becomes suspended if the Member has not re-met the membership criteria by that time.

While suspended, a Member may participate in CWG Meetings, CWG Teleconferences, and on the CWG’s discussion lists, but may not propose or endorse ballots or take part in any form of voting.

Votes cast before the announcement of a Member’s suspension will stand.

## c. Membership Declaration

In accordance with the IPR Policy, all Members that choose to participate in the CWG and Applicants SHALL formally declare their participation in writing submitted to the CWG Chair and SHALL do so prior to participating. The Chair of the CWG SHALL establish a list for declarations of participation and manage it in accordance with the Bylaws, the IPR Policy, and the IPR Policy Agreement.

**5. Voting and Other Organizational Matters**

**5.1** The following rules will apply to all ballots, including Draft Guideline Ballots, defined in Bylaw 2.4.

(a) Only votes by Members SHALL be accepted.

(b) Only one vote per Member company SHALL be accepted; representatives of Affiliates SHALL NOT vote.

(c) A representative of any Member MAY call for a proposed ballot to be published for discussion and comment by the membership. Any proposed ballot needs two endorsements by other Members in order to proceed. The discussion period then SHALL take place for at least seven calendar days before votes are cast. At any time, a new version of the ballot (marked with a distinguishing version number) may be posted by the proposer in the same manner as the original. Once no new version of the ballot has been posted for seven calendar days, the proposer may end the discussion period and start the voting period by reposting the final version of the ballot and clearly indicating that voting is to begin, along with the start and end dates and times (including time zone) for the voting period. The ballot automatically fails if 21 calendar days elapse since the proposer last posted a version of the ballot and the voting period has not been started.

(d) Upon commencement of the voting period, Members SHALL have exactly seven calendar days for voting on the proposed ballot, with the deadline clearly communicated in the ballot and sent via the CWG Mail List. All voting will take place via the CWG Mail List. Votes not submitted to the CWG Mail List by the end of the voting period (as specified in the ballot) will not be considered valid and will not be counted for any purpose. Each Member, and not the CWG, will be responsible for taking precautions to make sure such Member’s vote is submitted properly and counted. In the event that a Member’s vote on a ballot is not submitted properly, such vote SHALL NOT be valid and SHALL NOT be counted for any purpose, and there SHALL be no appeal, revote (except in the case of a new ballot submitted to all Members) or other recourse.

(e) Members MAY vote yes, no, or abstain on a ballot. Only votes that indicate a clear ‘yes’ or ‘no’ response to the ballot question SHALL be considered (i.e. votes to abstain and votes that do not indicate a clear ‘yes’ or ‘no’ response will not figure in the calculation of item (f), below).

(f) Members fall into two categories for voting purposes-Certificate Issuers and Certificate Consumers, eligible as set forth in Section 4(b) above. In order for a ballot to be adopted by the CWG, two-thirds or more of the votes cast by the Members in the Certificate Issuer category must be in favor of the ballot, and more than 50% of the votes cast by the Members in the Certificate Consumer category must be in favor of the ballot. At least one Member in each category must vote in favor of a ballot for the ballot to be adopted.

(g) A ballot result will be considered valid only when the number of votes cast meets Quorum. Quorum is defined as the larger of three (3) or the average number of Member organizations that have participated in the last three (3) CWG Meetings or Teleconferences (not counting subcommittee meetings thereof). For transition purposes, if three (3) meetings have not yet occurred, quorum is three (3).

(h) The Chair SHALL tabulate and announce the results within 3 business days of the close of the voting period.

**5.2 Other Organizational Matters**

(a) The Chair may delegate any of his/her duties to the Vice Chair as necessary. The Vice Chair has the authority of the Chair in the event of any absence or unavailability of the Chair, and in such circumstances, any duty delegated to the Chair herein may be performed by the Vice Chair. For example, the Vice Chair may preside at CWG Meetings and Teleconferences in the Chair’s absence.

(b) CWG-created Subcommittees may be approved either (1) by formal ballot as described in 5.1(c) through (h), or (2) by simple majority vote of those members present at a regularly scheduled CWG Meeting or Teleconference provided that the proposal is mentioned in an agenda circulated on the CWG Mail List at least 24 hours prior to the CWG Meeting or Teleconference.

**6. Summary of Major Deliverables**

The deliverables of the CWG are defined in the Scope section above.

**7. Primary Means of Communication**

(a) The CWG SHALL appoint a webmaster to maintain the CWG’s pages on the wiki and the Forum’s Public Web Site.

(b) The CWG will communicate primarily through listserv-based email in accordance with Bylaw 5.3.1(d). The CWG List SHALL be available to the public, who will not have posting privileges (i.e. anyone may subscribe to receive messages and the list may be crawled and indexed by Internet search engines).

(c) The CWG SHALL conduct periodic calls or face-to-face meetings as needed. Minutes SHALL be kept, and such minutes SHALL be made public in accordance with Bylaw 5.2.

**8. IPR Policy and Antitrust Policy**

As with all Forum Working Group activity, the IPR Policy, v1.3 or later, SHALL apply to all activities and work of the CWG. All Participants in the CWG SHALL have on file with the Forum a valid, signed IPR Policy Agreement (v.1.3). A previously submitted IPR Policy Agreement (v1.3) by an existing Member of the Forum shall suffice as meeting the obligation under section 4.5 of the IPR Policy that a Participant in the CWG commit to CAB Forum License requirements.

In accordance with the Forum’s antitrust policy, the CWG Chair will read an antitrust compliance statement at the start of all Working Group Meetings, in substantially the following form:

“As you know, this meeting includes companies that compete against one another. This meeting is intended to discuss technical standards related to the provision of existing and new types of digital certificates without restricting competition in developing and marketing such certificates. This meeting is not intended to share competitively-sensitive information among competitors, and therefore all participants agree not to discuss or exchange information related to:

(a) Pricing policies, pricing formulas, prices or other terms of sale;

(b) Costs, cost structures, profit margins,

(c) Pending or planned service offerings,

(d) Customers, business, or marketing plans; or

(e) The allocation of customers, territories, or products in any way.”

### - MOTION ENDS-