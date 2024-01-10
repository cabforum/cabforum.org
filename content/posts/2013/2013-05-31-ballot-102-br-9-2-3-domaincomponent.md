---
aliases:
- /2013/05/31/ballot-102-br-9-2-3-domaincomponent/
author: Ben Wilson
date: 2013-05-31 18:33:17
tags:
- Ballot
- Server Certificates
title: Ballot 102 – BR 9.2.3 domainComponent
type: post
---

Ballot 102 – BR 9.2.3 domainComponents (Passed)

Motion

Jeremy Rowley of DigiCert made the following motion, and Robin Alden from Comodo and Geoffrey Keating from Apple endorsed it:

## Motion Begins

EFFECTIVE IMMEDIATELY, in order to conform to requirements of other industry bodies, including the Internet Grid Trust Federation, and to allow the encoding of domain components in certificates that interact with the configurations of some LDAP directories, we propose amending Section 9.2.3 of the Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates as follows:

DELETE

9.2.3 Subject Domain Component Field

Certificate Field: subject:domainComponent (OID 0.9.2342.19200300.100.1.25) Required/Optional: Optional.

Contents: If present, this field MUST contain all components of the subject’s Registered Domain Name in ordered sequence, with the most significant component, closest to the root of the namespace, written last.

and INSERT:

9.2.3 Subject Domain Component Field

Certificate Field: subject:domainComponent (OID 0.9.2342.19200300.100.1.25)

Required/Optional: Optional.

Contents: If present, this field MUST contain a label from a Domain Name.

The domainComponent fields for each Domain Name MUST be in a single ordered sequence containing all labels from the Domain name. The labels MUST be encoded in the reverse order to the on-wire representation of domain names in the DNS protocol, so that the label closest to the root is encoded first.

The CA MUST ensure that the certificate is issued with the consent of, and according to procedures established by, the owner of each Domain Name.

=====Motion Ends=====

The review period for this ballot shall commence at 21:00 UTC on 24 May 2013 and will close at 21:00 UTC on 31 May 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on 7 June 2013. Votes must be cast by posting an on-list reply to this thread.

## Motion Ends

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.