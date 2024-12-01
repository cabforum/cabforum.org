---
author: Stephen Davidson
date: 2024-10-10 00:00:00
tags:
- Minutes
- S/MIME
- Face-to-Face
title: Minutes of the F2F 63 Meeting in Seattle, WA, USA - SMCWG, October 10, 2024
type: post
---

## Attendance

...

## Review Agenda

Minutes were prepared by Stephen Davidson (DigiCert).

## Approval of minutes

...

## Discussion 

Stephen Davidson presented, noting that S/MIME always wrapped up the long F2F meetings so the group would compress its discussion. Stephen noted the Vice Chair elections and that Martijn Katerbarg has been nominated to continue in the role. Stephen asked if there was any other business. Dimitris Zacharopoulos asked if eIDAS2 could be added to a future agenda. Minutes approval was deferred.

The WG discussed progress over the past quarter including SMC07 (Align logging requirement, key escrow clarification) and SMC08 (Deprecate Legacy Generation and minor updates). Stephen noted that when the SMCWG set out, there was very little data on the S/MIME market, which led to a cautious approach in enacting the S/MIME BR. Since then the WG had received much feedback from CAs and their auditors, and the group sought where possible to roll up groups of changes to create an orderly implementation schedule through the year.

He noted that there were more than 30 bugs in Bugzilla relating to S/MIME BR and summarized some of the causes:
- Email domain validation issues
- subjectDN formatting mistakes, like CN muddles, OrgID
- Characters and SAN issues
- Disallowed keyUsages
- CP OID mixups
- OCSP failures

He noted that many of the nonconformities would have been caught by linting. Stephen noted that SMC09 had entered discussion period, dealing with:
- Require pre-linting of leaf end entity Certificates starting September 15, 2025
- Require WebTrust for Network Security for audits starting after April 1, 2025
- Clarify that multiple certificatePolicy OIDs are allowed in end entity certificates
- Clarify use of organizationIdentifer references
- Update of Appendix A.2 Natural Person Identifiers

The WG also discussed ballot SMC10, which would soon proceed to maintain parity between the SBR and the TLS BR on the issue of Multi-Perspective Issuance Corroboration (MPIC). The ballot adopts MPIC for DNS validations including CAA but on a slightly delayed schedule compared to TLS. The WG chose to do this as some CAs only issue S/MIME and may not be aware of the discussions that have taken place for TLS MPIC. Clint Wilson noted that he wished the WG would also consider MPIC in relation to checking MX records for emails sent as part of mailbox control validation in 3.2.2.2. Stephen noted that the same might apply to emails sent under the TLS BR and the two groups should coordinate their approach.

The WG also discussed potential items on its roadmap for the coming months. Topics included:
- TLS ballot SC-081 as impact of reduced cache of domain control may require additional ballots to amend domain control text in the TLS BR or have a negative impact on Enterprise RAs which are scoped via prevalidated domains
- EUID for OrgID
- Review of vetting methods
    - eSignatures proposal
    - eID update
- MPIC for mailbox
- PQC feedback from Certificate Consumers
- Other email domain validation methods (like MX+SMTP)
- Charter refresh
    - How do we get more info on actual use?
    - Optimizing CAs is not enough: how do we better engage with other participants in the ecosystem?

Martijn invited SMCWG members to submit additional topics to the group. The next SMCWG call is October 23.

## Any Other Business

None

## Next call 

Next call: October 23 at 11:00 am Eastern Time

Meeting adjourned

