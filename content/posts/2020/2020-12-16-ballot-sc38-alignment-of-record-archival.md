---
aliases:
- /2020/12/16/ballot-sc38-alignment-of-record-archival/
author: Ben Wilson
date: 2020-12-16 03:45:00
tags:
- Ballot
- Network Security
- Server Certificates
title: 'Ballot SC38: Alignment of Record Archival'
type: post
---

This ballot failed to go to a vote and failed pursuant to the Bylaws.

This begins the discussion period for Ballot SC38: Alignment of Record
Archival (which I circulated a little while ago).

The following ballot is proposed by Neil Dunbar of TrustCor Systems and
endorsed by David Kluge of Google Trust Services and Ben Wilson of Mozilla.

Purpose of Ballot:

After the updated language included in SC28 Sections 5.4.3 and 5.5.2 (of
the BRs) could be in conflict. Section 5.5.2 requires all documentation
relating to certificate requests and the verification thereof, and all
Certificates and revocation thereof be retained for seven years after
certificates cease to to be valid. Section 5.4.3 requires all audit logs
of Subscriber Certificate lifecycle management event records be
maintained for two years after the revocation or expiration of the
Subscriber Certificate. These sections intersect at the retention
requirements for audit logs and archived records, as they relate to
subscriber certificate lifecycle events. The retention periods are in
conflict as to the length of retention.

The proposed changes seek to bring these two sections of the “Baseline
Requirements” into agreement and avoid confusion and potential issues of
noncompliance as they relate to retention periods.

The NetSec discussion document for this ballot is attached as a PDF to
this email.

## Motion begins

Delete the following Section 5.5.2 Retention period for archive from the
“Baseline Requirements for the Issuance and Management of
Publicly-Trusted Certificates”, which currently reads as follows:

The CA SHALL retain all documentation relating to certificate requests
and the verification thereof, and all Certificates and revocation
thereof, for at least seven years after any Certificate based on that
documentation ceases to be valid.
Insert, as Section 5.5.2. Retention period for archive of the “Baseline
Requirements for the Issuance and Management of Publicly-Trusted
Certificates”, the following:

The CA SHALL retain all documentation relating to certificate requests
and the verification thereof, and all Certificates and revocation
thereof, for at least two years after any Certificate based on that
documentation ceases to be valid.

## Motion ends

\* WARNING \*: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL
VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at:
[https://github.com/cabforum/documents/compare/8f63128…neildunbar:180341b](https://github.com/cabforum/documents/compare/8f63128...neildunbar:180341b)

This ballot proposes one Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion: (7+ days)
Start Time: 2020-12-09 17:00 UTC
End Time: not before 2020-12-16 17:00 UTC

Vote for approval: (7 days)
Start Time: TBD
End Time: TBD