---
aliases:
- /2021/09/01/2021-09-01-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-09-01 22:52:00
tags:
- Minutes
- S/MIME
title: 2021-09-01 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

September 1, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Daniel Zens (GlobalTrust), Don Sheehy (WebTrust), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Rebecca Kelley (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the August 18 teleconference were approved.

### 5. Discussion

Discussion moved to the Individual Corporate-validation profile (aka the Sponsored profile).

This profile may be used by Enterprise RAs, where Org information would be verified by the CA and individual details by the Enterprise RA.

It was agreed to adopt a more systematic “pattern” for CommonName built from either the givenName+surname or repeating the email (similar to the repeat of the O or repeating the email proposed for the Organization profile). Clint Wilson suggested that ultimately it may be better to have a single option such as email.

It was agreed to allow Pseudonym subject to subsequent discussion in the Personal Individual profile and of verification procedures.

The use of serialNumber field was discussed at length. The serialNumber is often used by Enterprise RAs to hold employee ID, account number, etc of the individual Subject. Wendy Brown pointed out that it is often used for a DN qualifier if multiple subjects exist with the same name. If the “EV JOI” format is used, the serialNumber would already be taken to hold info about the associated org – which is confusing. It was agreed that perhaps the best way to indicate the “vetting evidence” would be by using the organizationalIdentifier as defined in EVG 9.2.8 and Appendix H.

In Enterprise RA use, it is argued that the sponsor might be able to vouch for the OU being used for departments or even roles of the subject. At this time, the he Strict and Multipurpose profile propose prohibiting OU.

It was agreed to drop the streetAddress and PostalCode from the Strict profiles.

There was discussion surrounding the limits of “affiliation of the individual with the Org” … for example it can be straight forward for me to have an O in my personal cert reflecting my employer or perhaps a membership organisation (see also ETSI EN 319 411-1, 5.4.2). But how about a O issuing to customers or partners? Should they be directed towards using a simpler profile like the Mailbox-validated? Should the WG define a tag or extension for external RAs? These issues will need to be clarified in the later WG discussions of Enterprise and Delegated RA and corresponding audit.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, September 15, 2021 at 11:00 am Eastern Time

### Adjourned