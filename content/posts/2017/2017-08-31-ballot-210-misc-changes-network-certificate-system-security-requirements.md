---
aliases:
- /2017-08-31-ballot-210-misc-changes-network-certificate-system-security-requirements/
author: Ben Wilson
date: 2017-08-31 15:20:47
tags:
- Network Security
- Server Certificates
title: Ballot 210 – Misc. Changes to the NCSSR
type: post
---

Results on Ballot 210 – Misc. Changes to the Network and Certificate System Security Requirements

The voting period for Ballot 210 has ended and the ballot has passed. Here are the results.

**Voting by CAs – 18 votes total including abstentions**

18 Yes votes: Amazon, Buypass, Chunghwa Telecom, Cisco, D-TRUST, DigiCert, Disig, Entrust, GDCA, GlobalSign, GoDaddy, HARICA, Logius PKIoverheid, SSL.com, SwissSign, Symantec, TrustCor, Trustwave

0 No votes:

0 Abstain:

100% of voting CAs voted in favor

**Voting by browsers – 3 votes total including abstentions**

3 Yes votes: Apple, Google, Mozilla

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 9, so quorum was 10 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**The ballot passes.**

The discussion period for this ballot is 12 days to give everyone ample time to review it. Voting will start at 2200 UTC on Thursday, August 24, 2017.

The Network Security Working Group recommends that the Forum make the following minor revisions to the Network and Certificate System Security Requirements.   (Other changes are being considered by the Working Group and will be presented in due course.)

The following ballot is proposed by Dimitris Zacharopoulos of HARICA and endorsed by Ben Wilson of DigiCert and Neil Dunbar of TrustCor.

**–Motion Begins–**

In the Network and Certificate System Security Requirements:

ADD ETSI EN 319 411-1 to first sentence of the Scope and Applicability section so that it reads “These Network and Certificate System Security Requirements (Requirements) apply to all publicly trusted Certification Authorities (CAs) and are adopted with the intent that all such CAs and Delegated Third Parties be audited for conformity with these Requirements as soon as they have been incorporated as mandatory requirements (if not already mandatory requirements) in the root embedding program for any major Internet browsing client and that they be incorporated into the WebTrust Service Principles and Criteria for Certification Authorities, ETSI TS 101 456, ETSI TS 102 042 and ETSI EN 319 411-1 including revisions and implementations thereof, including any audit scheme that purports to determine conformity therewith.”

REPLACE section 1.a. with “a. Segment Certificate Systems into networks based on their functional or logical relationship, for example separate physical networks or VLANs;”

REPLACE section 1.b. with “b. Apply equivalent security controls to all systems co-located in the same network with a Certificate System;”

REPLACE “90 days” with “three (3) months” in section 2.g.ii. and 2.j so that they read “ii. For accounts that are accessible from outside a Secure Zone or High Security Zone, require that passwords have at least eight (8) characters, be changed at least every three (3) months, use a combination of at least numeric and alphabetic characters, that are not a dictionary word or on a list of previously disclosed human-generated passwords, and not be one of the user’s previous four (4) passwords; and implement account lockout for failed access attempts in accordance with subsection k; OR”

AND

“j. Review all system accounts at least every three (3) months and deactivate any accounts that are no longer necessary for operations;”

REPLACE section 2.m. with “m. Enforce multi-factor OR multi-party authentication for administrator access to Issuing Systems and Certificate Management Systems;”

REPLACE section 2.o. with “o. Restrict remote administration or access to an Issuing System, Certificate Management System, or Security Support System except when: (i) the remote connection originates from a device owned or controlled by the CA or Delegated Third Party, (ii) the remote connection is through a temporary, non-persistent encrypted channel that is supported by multi-factor authentication, and (iii) the remote connection is made to a designated intermediary device (a) located within the CA’s network, (b) secured in accordance with these Requirements, and (c) that mediates the remote connection to the Issuing System.”

REPLACE “every 30 days and” with “once a month to” in section 3.e. so that it reads “e. Conduct a human review of application and system logs at least once a month to validate the integrity of logging processes and ensure that monitoring, logging, alerting, and log-integrity-verification functions are operating properly (the CA or Delegated Third Party MAY use an in-house or third-party audit log reduction and analysis tool); and”

REPLACE 4.a. with “a. Implement intrusion detection and prevention controls under the control of CA or Delegated Third Party Trusted Roles to protect Certificate Systems against common network and system threats;”

REPLACE 4.C. with “c. Undergo or perform a Vulnerability Scan (i) within one (1) week of receiving a request from the CA/Browser Forum, (ii) after any system or network changes that the CA determines are significant, and (iii) at least every three (3) months, on public and private IP addresses identified by the CA or Delegated Third Party as the CA’s or Delegated Third Party’s Certificate Systems;”

REPLACE the definition of Security Support System in the Definitions with “Security Support System: A system used to provide security support functions, which MAY include authentication, network boundary control, audit logging, audit log reduction and analysis, vulnerability scanning, and intrusion detection (Host-based intrusion detection, Network-based intrusion detection).”

Make other editorial changes as indicated at and in the attached PDF.

**–Motion Ends—**

The procedure for approval of this Final Maintenance Guideline ballot is as follows:

BALLOT 210 – Final Maintenance Guideline

Relevant Start times and End Times are 22:00 UTC

Discussion (7 to 14 days) Start: August 17, 2017     End: August 24, 2017

Vote for approval (7 days) Start: August 24, 2017    End: August 31, 2017

If a vote of the Forum approves this ballot, the Chair will initiate a 30-day IPR Review Period by sending out an IPR Review Notice.

After 30 days of announcing the IPR Review period by the Chair:

(a) If Exclusion Notice(s) are filed, this ballot approval is rescinded and a PAG will be created; or (b) If no Exclusion Notices are filed, this ballot becomes effective at end of the IPR Review Period.

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is half of the number of currently active Members, which is the average number of Member organizations that have participated in the previous three Forum-wide meetings (both teleconferences and face-to-face meetings). Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.