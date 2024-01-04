---
aliases:
- /2020-05-07-ballot-sc29v3-system-configuration-management/
author: Wayne Thayer
date: 2020-05-07 22:10:12
tags:
- Server Certificates
title: 'Ballot SC29v3: System Configuration Management'
type: post
---

The voting period for Ballot SC29v3 has ended and **the Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 21 votes total including abstentions**

– **21 Yes votes**: Amazon, Buypass, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, DigiCert, eMudhra, Entrust Datacard, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, Izenpe, Kamu SM, OISTE, SSL.com, SwissSign, TrustCor, SecureTrust (former Trustwave)
– **0 No votes**:
– **0 Abstain**:

100% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 7 votes total including abstentions**

– **7 Yes vote**s: Apple, Cisco, Google, Microsoft, Mozilla, Opera, 360
– 0 **No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

**Relevant Bylaw references**

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11** votes – quorum was met.”

### Ballot SC29v3: System Configuration Management {.wp-block-heading}

**Purpose of Ballot:**

Two sections of the current NSRs contain requirements for configuration management. Section 1(h) demands a weekly review and Section 3(a) a process to monitor, detect and report on security-related configuration changes.
There was consensus in the discussions of the Network Security Subgroup that unauthorized or unintentional configuration changes can introduce high security risks but the current wording allows CAs to comply with s1(h) without noticing such a change for several days. Whether the weekly human reviews have to be performed every 7 days or just once per week is a matter of interpretation but for the discussion of our proposal this is immaterial. The change we are proposing seeks to encourage CAs to rely on continuous monitoring rather than human reviews because alerts created by a continuous monitoring solution can notify a CA by orders of magnitude earlier than a human review i.e. within minutes not within days.

To answer the question as to whether automated patching via defined software vendor repositories is allowed: the answer is YES – this is allowed by the text of the ballot. The proposers and seconders publish no judgement on the desirability of such a process, but if it defined and documented per the terms of the ballot, such a process does not contravene the text of this ballot.

The GitHub redline is: [https://github.com/cabforum/documents/compare/16a5a9b…neildunbar:aefc8ad?diff=split](https://github.com/cabforum/documents/compare/16a5a9b...neildunbar:aefc8ad?diff=split)

**— MOTION BEGINS —**

This ballot modifies the “Network and Certificate System Security Requirements” based on Version 1.3.

(Each CA or Delegated Third Party SHALL)
(…)

Insert as new Section 1(h)

Ensure that the CA’s security policies encompass a change management process, following the principles of documentation, approval and review, and to ensure that all changes to Certificate Systems, Issuing Systems, Certificate Management Systems, Security Support Systems, and Front-End / Internal-Support Systems follow said change management process;

Remove from Section 3(a)

Implement a Security Support System under the control of CA or Delegated Third Party Trusted Roles that monitors, detects, and reports any security-related configuration change to Certificate Systems;

Insert as new Section 3(a)

Implement a System under the control of CA or Delegated Third Party that continuously monitors, detects, and alerts personnel to any modification to Certificate Systems, Issuing Systems, Certificate Management Systems, Security Support Systems, and Front-End / Internal-Support Systems unless the change has been authorized through a change management process. The CA or Delegated Third Party shall respond to the alert and initiate a plan of action within at most twenty-four (24) hours.

Effective date

The changes introduced by this Ballot take effect on 1 November 2020. Earlier adoption is permitted.

**— MOTION ENDS —
** This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2020-04-14 17:00:00 UTC

End Time: 2020-04-30 17:00:00 UTC

Vote for approval (7 days)
Start Time: 2020-04-30 17:00:00 UTC

End Time: 2020-05-07 17:00:00 UTC