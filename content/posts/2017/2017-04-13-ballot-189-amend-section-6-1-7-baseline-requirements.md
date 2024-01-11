---
aliases:
- /2017/04/13/ballot-189-amend-section-6-1-7-baseline-requirements/
author: Ben Wilson
date: 2017-04-13 17:07:01
tags:
- Ballot
- Server Certificates
title: Ballot 189 – Amend Section 6.1.7 of Baseline Requirements
type: post
---

Results on Ballot 189 – **Amend Section 6.1.7 of Baseline Requirements**

The voting period for Ballot 189 has ended. Here are the results.

## Voting by CAs – 21 votes total, including abstentions

- **21 Yes votes:** Entrust, HARICA, CFCA, GlobalSign, Izenpe, GDCA, Buypass, OATI, SwissSign, SHECA, DigiCert, TurkTrust, D-Trust, SSC, Actalis, GlobalSign, Comodo, Disig, Chunghwa Telecom, Cisco, Symantec

- **0 No vote:**

- **0 Abstain:**

100% of voting CAs voted in favor

## Voting by browsers – 3 votes total, including abstentions

- **3 Yes votes:** Mozilla, Apple, Google,

- **0 No votes:**

- **0 Abstain:**

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

## Ballot 189 passes.

## Ballot 189 – Amend Section 6.1.7 of Baseline Requirements

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Bruce Morton of Entrust and Jeremy Rowley of Digicert

**Background**:

Section 6.1.7 of the Baseline Requirements states that the Root CA Private Keys MUST NOT be used to sign end-entity certificates, with some exceptions. It is unclear if this exception list includes end-entity certificates with EKU id-kp-timeStamping. This ballot attempts to clarify two things:

1. that it affects Root Keys in a hierarchy that issues SSL Certificates and
1. that it does not include time stamping certificates in the exception list.

It also clears the exception language for 1024-bit RSA Subscriber Certificates and testing products with Certificates issued by a Root.

## Motion begins

_Current section 6.1.7_

Root CA Private Keys MUST NOT be used to sign Certificates except in the following cases:

1. Self-signed Certificates to represent the Root Certificate itself;
1. Certificates for Subordinate CAs and Cross Certificates;
1. Certificates for infrastructure purposes (e.g. administrative role certificates, internal CA operational device certificates, and OCSP Response verification Certificates);
1. Certificates issued solely for the purpose of testing products with Certificates issued by a Root CA; and
1. Subscriber Certificates, provided that:
1. The Root CA uses a 1024-bit RSA signing key that was created prior to the Effective Date;
1. The Applicant’s application was deployed prior to the Effective Date;
1. The Applicant’s application is in active use by the Applicant or the CA uses a documented process to establish that the Certificate’s use is required by a substantial number of Relying Parties;
1. The CA follows a documented process to determine that the Applicant’s application poses no known security risks to Relying Parties;
1. The CA documents that the Applicant’s application cannot be patched or replaced without substantial economic outlay.
1. The CA signs the Subscriber Certificate on or before June 30, 2016; and
1. The notBefore field in the Subscriber Certificate has a date on or before June 30, 2016

_Proposed section 6.1.7_

Private Keys corresponding to Root Certificates MUST NOT be used to sign Certificates except in the following cases:

1. Self-signed Certificates to represent the Root CA itself;
1. Certificates for Subordinate CAs and Cross Certificates;
1. Certificates for infrastructure purposes (administrative role certificates, internal CA operational device certificates)
1. Certificates for OCSP Response verification;

## These changes become Effective 30 days after the ballot passes.

## Motion ends

The procedure for this ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 189  

| Status: Amend BR 6.1.7                                                                                                                                                                                                                                                                                                                   | Start time (22:00 UTC)                | End time (22:00 UTC)                           |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------- | ---------------------------------------------- |
| Discussion (7 days)                                                                                                                                                                                                                                                                                                                      | 30 March 2017                         | 6 April 2017                                   |
| Vote for approval (7 days)                                                                                                                                                                                                                                                                                                               | 6 April 2017                          | 13 April 2017                                  |
| If vote approves ballot: Review Period (Chair to send Review Notice) (30 days) If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. Votes must be cast by posting an on-list reply to this thread on the Public Mail List. | Upon filing of Review Notice by Chair | 30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.