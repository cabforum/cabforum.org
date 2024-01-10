---
aliases:
- /2013/08/06/ballot-108-defining-the-scope-of-the-baseline-requirements/
author: Ben Wilson
date: 2013-08-06 18:58:34
tags:
- Ballot
- Server Certificates
title: Ballot 108 – Defining the Scope of the Baseline Requirements
type: post
---

Ballot 108 – Defining the Scope of the Baseline Requirements (Withdrawn)

Motion

Jeremy Rowley made the following motion, and Stephen Davidson and Geoff Keating endorsed it:

**Motion Begins**

Amend Section 1 of the Baseline Requirements as follows:

The Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates describe a subset of the requirements that a Certification Authority must meet in order to issue Publicly Trusted Certificates. Except where explicitly stated otherwise, these requirements apply only to relevant events that occur on or after the Effective Date.

These Requirements do not address all of the issues relevant to the issuance and management of Publicly-Trusted Certificates. The CA/Browser Forum may update the Requirements from time to time, in order to address both existing and emerging threats to online security. In particular, it is expected that a future version will contain more formal and comprehensive audit requirements for delegated functions.

This version of the Requirements only addresses Certificates intended to be used for authenticating servers accessible through the Internet. Similar requirements for code signing, S/MIME, time-stamping, VoIP, IM, Web services, etc. may be covered in future versions.

All root certificates included in a browser’s trust store, all subordinate CA certificates signed by one of these root certificates, and all end-entity certificates that either lack an Extended Key Usage extension or contain an Extended Key Usage extension that contains one or more of the following:

– Server Authentication (1.3.6.1.5.5.7.3.1),

– anyExtendedKeyUsage (2.5.29.37.0),

– Netscape Server Gated Cryptography (2.16.840.1.113730.4.1); or

– Microsoft Server Gated Cryptography (1.3.6.1.4.1.311.10.3.3)

are expressly covered by these requirements. Similar requirements for code signing, S/MIME, time-stamping, VoIP, IM, Web services, etc. may be covered in different or future versions.

These Requirements do not address the issuance, or management of Certificates by enterprises that operate their own Public Key Infrastructure for internal purposes only, and for which the Root Certificate is not distributed by any Application Software Supplier.

**Motion Ends**

The review period for this ballot shall commence on July 30, 2013 and will close on August 6, 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at August 13, 2013. Votes must be cast by posting an on-list reply to this thread.