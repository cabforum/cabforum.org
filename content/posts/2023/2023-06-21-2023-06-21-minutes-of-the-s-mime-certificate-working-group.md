---
aliases:
- /2023-06-21-2023-06-21-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-06-21 13:28:31
tags:
- Minutes
- S/MIME
title: 2023-06-21 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

June 21, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Abhishek Bhat – (eMudhra), Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Doug Beattie – (GlobalSign), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Judith Spencer – (CertiPath), Keshava Nagaraju – (eMudhra), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Taavi Eomäe – (Zone Media), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Wendy Brown – (US Federal PKI Management Authority), Yashwanth TM – (eMudhra)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: May 24.

### 5. Discussion

Stephen Davidson noted that the group would move ahead with Ballot SMC03 in order to have it cleanly in place in time for the overall effective date of the S/MIME BR.

He noted that the text and redlines had been covered at some length in the preceding months. He noted that new section of text had been added to create a clear transition arrangement for existing Issuing CAs into the new arrangement. Clint Wilson recently suggested that when CABF standards shift requirements, that it would typically be best that the same standard suggest transition arrangements as well as the new standard.

As such a new section dealing with “Extant S/MIME CAs” has been added to the S/MIME BR. The changes consist of a new Definition of what CAs are eligible for the transition arrangement, as well as an Appendix B describing that these CAs may be used to issue otherwise compliant EE certificates but must be replaced by fully-compliant ICAs before September 15, 2024.

Extant CAs that are replaced (in other words, cease issuance) or reissued to become compliant are not required to be revoked. Ben Wilson asked why and Stephen noted that this is to avoid unknown impact in client S/MIME software on previously signed or encrypted emails. Wendy Brown agreed. Ben noted that if there were an actual revocation reason “for cause” then those CAs would still need to be revoked.

Andreas Henschel noted that this does not affect previously created ICAs that are already compliant with the S/MIME BR.

Eva van Steenberge and Clint Wilson noted that some of the audit language in the proposed definition was not required as it repeated a root program requirement. Stephen agreed to remove it. Don Sheehy commented that this did not seem to conflict with what was known regarding the root program audit reporting requirements for S/MIME BR.

There were no objections to the approach. Stephen noted that he would distribute the discussed changes and if there were no objections, then the ballot would commence. There was discussion on the discussion (10 days) and ballot (7 day) period.

Dimitris Zacharopoulos noted that ETSI had extended a liaison to the SMCWG for the draft of ETSI TS 119 411-6 which maps the S/MIME BR against the CPs described in ETSI standards to facilitate ETSI audits.

It was agreed to drop the July 5 teleconference due to US holidays.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, July 19, 2023 at 11:00 am Eastern Time

### Adjourned

\_\_PRESENT
\_\_PRESENT