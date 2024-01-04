---
aliases:
- /2022-12-07-2022-12-07-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-12-07 17:37:36
tags:
- S/MIME
title: 2022-12-07 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG {.wp-block-heading}

December 07, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees {.wp-block-heading}

Adrian Mueller – (SwissSign), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Eusebio Herrera – (AC Camerfirma SA), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Marco Schambach – (IdenTrust), Patrycja Tulinska – (PSW), Paul van Brouwershaven – (Entrust), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

NA

### 5. Discussion {.wp-block-heading}

The WG agreed to drop the planned teleconference for December 21. The January 4 meeting will tentatively go ahead, if only to confirm the effective date of the SBR and the pending availability of audit criteria.

Stephen Davidson confirmed that the IP Review as underway until January 1 and at this time no essential claims had been filed.

Stephen questioned how the WG would like to handle future ballot dates, proposing a fixed schedule of dates which allowed for better planning by Certificate Issuers, and most importantly more orderly communication with certificate users. He proposed 6 possible effective dates (15th of every-other month, starting in January). Bruce Morton said he thought two dates were probably adequate for most routine SBR updates, March 15 and September 15.

Dimitris Zacharopoulos commented that the CABF itself was looking at the same question at a forum level. Urgent updates could still be made as needed. Clint Wilson said he’d prefer that such a system be tried informally before it became a formal policy of CABF. Don Sheehy said this would be helpful in aligning the WebTrust criteria annually, which is typically done at the end of year. Stephen summarized that there seemed to be support in SMCWG for the idea of routine effective dates.

Tim Hollebeek noted that there probably would be errata that come up in the early new year as people look at SBR implementation – we already know of an improvement for EdDSA – so hopes people speak up early if amendments should to be made.

One example was raised by Bruce Morton, noting that the SBR require that info in the cert must come from a government agency – and this was carried through to Section 3.2.6 as the source for contact details as a Reliable Method of Communication (RMOC). He noted that in the EVG there is an allowance for QIIS (third party databases) for address and phone info. Stephen noted that he was not opposed to using these for contact information to establish a RMOC, but not for attributes that would be included in the certificate. The address attributes, if included, must match the registered entity reflected in the OrgID attribute. Tim and Bruce agreed to confer on a possible proposal.

Noting that he believed there was support for the use of CAA in S/MIME by enterprises, Stephen introduced the subject of CAA for “issuemail”.

- Certification Authority Authorization (CAA) Processing for Email Addresses, Draft-bonnell-caa-issuemail-00 at
- Draft CAA text for S/MIME BR at

Tim encouraged parties who support the use of CAA for S/MIME to join the IETF discussion at . He noted that we could also “go it alone” as was done for VMC but that the RFC approach allowed more detail to be provided on security considerations.

Stephen noted that CAA if adopted would most likely take effect after the September effective date of the SBR v1.0.0. Dimitris commented that there are CAs that issue S/MIME that do not issue TLS, and for whom CAA may be new, so any deadline should have adequate implementation time.

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

Next call: tentative Wednesday, January 4, 2023 at 11:00 am Eastern Time

### Adjourned {.wp-block-heading}