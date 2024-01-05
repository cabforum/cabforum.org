---
aliases:
- /2023-05-24-2023-05-24-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-05-24 14:25:04
tags:
- Minutes
- S/MIME
title: 2023-05-24 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

May 24, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Chad Ehlers (IdenTrust), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dave Chin (CPA Canada/WebTrust), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Janet Hines (VikingCloud), Marco Schambach (IdenTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Rollin Yu (TrustAsia Technologies, Inc.), Russ Housley (Vigil Security LLC), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Clint has asked to add a topic on the the issue of legacy issuing CAs

Minute taker Martijn Katerbarg.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: May 10.

### 5. Discussion

**Membership confirmation of Logius as Certificate Issuer**

Logius / PKIOverheid were previously a ServerCert WG member. They have applied for a Certificate Issuer membership in the S/MIME WG.

Membership is granted by group consensus.

**Rob Lee topic re: Mailbox Address** [**https://github.com/cabforum/smime/issues/198**][1]

Stephen proposed to add a definition for Mailbox Address in the SBRs. Doug adds that we should make sure it’s clearly defined as an email address. Stephen will be proposing language.

**Bruce Morton re: Enterprise RA** [**https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000676.html**][2]

Bruce has pointed out that for clarification we should have language stating that “The CA, RA or Enterprise RA SHALL collect and retain evidence”. At current, the “Enterprise RA” bit is missing. It’s proposed to add the Enterprise RA into the same language. No objections are raised.

**ETSI standard update re audit**

The Erratum ballot proposes to update the language on which ETSI guidelines may be used, as well as a reference to the S/MIME BRs themselves. ETSI is preparing new audit requirements for which a draft has been created, TS 119411-6, and contains mapping against the S/MIME profiles and OIDs. The hope is to have this in place before September 1st.

Stephen mentioned he hopes to be able to share the draft within a few weeks.

Dimitris raises a question regarding ETSI certificate policy identifiers, in which it appears that Sponsor-validated can be done on the ETSI LCP requirements, where Individual requires NCP as minimum. Stephen confirms this is correct, for at least the first version of the ETSI audit criteria.

**F2F topics – Legacy issuing CAs, erratum ballot, Enterprise RA topics**

**Legacy Issuing CAs**

Clint has requested adding a topic regarding legacy issuing CAs. Clint explained reading the BRs that any ICA issued prior to the effective date, will need to be compliant if it wants to continue issuing certificates after the effective date. Apple has received multiple requests asking for exceptions and grandfathering. While being open for a discussion, it’s proposed that we should be adding appropriate language into the SBR, if we want to allow this.

Bruce raises the point that while we have an effective date, no root programs have as of yet added language to actually require adherence to it. Tim states his agreement to this statement, and clarifies that the SBRs state what the requirements are when a certificate is issued, including when an ICA is issued.

Ben added that they are with Apple’s view at this moment. If any audit finds an ICA does not comply, we will allow that for one year at maximum. A change to the SBRs is also preferred by Mozilla if we agree that we should allow this.

Dimitris points out that BR requirements have always been read as the requirements applicable when a certificate is issued, and not retroactively put on an already issued ICA.

Tim clarifies that it seems the SBRs don’t state anything regarding the use of existing ICAs. While allowing all existing ICAs may not be appropriate, it may be appropriate to allow, for example, existing ICAs with different OIDs if they were issued prior to the Effective Date

The discussion it to be continued during the F2F. Stephen asks for people to reach out in order to help deal with this and scope which exceptions we want to allow.

**Erratum ballot**

A last call for the erratum ballot will be done during the F2F.

**Other topics during the F2F**

- orgIdentifier discussion
- Root Store updates. A discussion broke out on where and when root store updates need to happen, during the Forum call or if each WG should get its own section of root store updates. Tim has asked for a discussion to be added to the Forum call during the F2F.

**Current erratum text at**

### 6. Any Other Business

None

### 7. Next call

Next call: F2F, Redmond. June 7th

### Adjourned

\_\_PRESENT

[1]: https://github.com/cabforum/smime/issues/198
[2]: https://lists.cabforum.org/pipermail/smcwg-public/2023-May/000676.html