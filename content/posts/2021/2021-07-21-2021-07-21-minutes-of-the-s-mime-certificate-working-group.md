---
aliases:
- /2021/07/21/2021-07-21-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-07-21 23:41:00
tags:
- Minutes
- S/MIME
title: 2021-07-21 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

July 21, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Bruce Morton (Entrust), Christy Berghoff (Federal PKI), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daniel Zens (GlobalTrust), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Enrico Entschew (D-TRUST), Hongquan Yin (Microsoft), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Matthias Wiedenhorst (ACAB’c), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Paul van Brouwershaven (Entrust), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

Comments were received relating to the Sponsored profile, following discussions that took place in MDSP relating to S/MIME, and it was agreed to accommodate that topic in the current meeting.

### 4. Approval of minutes from last teleconference

The minutes of the July 7 teleconference were approved.

### 5. Discussion of certificate profile

Stephen Davidson described discussion that had been taking place on MDSP relating to S/MIME. He described that it was sometimes difficult to determine practices for S/MIME in the lack of CT or other database of such certificates.

In review of certs, it seems clear that in some cases delegated RAs are acting as Enterprise RAs constrained to issuing to email addresses that have undergone domain validation – but there is an appearance in other cases that the RA is issuing to external parties using mailbox validation. Russ Housely pointed out this is generally acceptable, and in fact some certificates that appear to be external may in fact be for internal users on a different mail account. There are use cases such as calendaring that may drive this.

It was noted that this might be problematic when expanded Subject information is included in the profile. Sebastian Schultz and Tadahiko Ito pointed the RA may have multiple subsidiaries or even JV interests they wish to reflect in the Subject. It was discussed whether we needed to mark certificates in this case that are internal versus external. Would it be appropriate, for example, to show a customer name or email in combination with the O of the Sponsored RA? Further, examples show the variety of use in the CN, sometimes using what appear to be ID numbers rather than a name or email.

This returned to the discussion of tags in the CN perhaps noting (external) in the CN when mailbox validation was used by the delegated RA. Sebastian suggested that Enterprise RAs could use more subject fields when domain validation is used, but should use a simpler Mailbox profile when external/ mailbox validation is used. Corey Bonnell agreed that the Sponsored profile should accommodate a variety of Subject “depth” as this is the largest category of S/MIME issuance.

Stephen suggested that our current structure is Mailbox, Organisation, Individual, Sponsored. Perhaps another approach would be consolidate to Mailbox, Organisation, Individual and have some other method to mark those certificates when they are issued by a sponsor/delegated RA. Sebastian said that we need to ensure that each profile has consistent subject info verification, no matter if it is performed by the CA or an Enterprise RA.

Historically an Enterprise RA, which is technically constrained, has different audit requirements than a delegated RA. Using the appropriate profile may make our future audit discussions simpler for “sponsored” situations.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, August 4, 2021 at 11:00 am Eastern Time

### Adjourned