---
title: 'Ballot SMC020: Remove Requirement to Record BR Version of Validation Method'
author: Stephen Davidson
date: 2026-10-05
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-020
Aliases: 
- SMC020
---

# Ballot SMC020: Remove Requirement to Record BR Version of Validation Method

## Summary:

This ballot removes the requirement in Section 3.2.2 to record "relevant version number" of the S/MIME BR with the validation method. The change maintains consistency with the TLS BR following Ballot SC-099.

In its place, the ballot specifies that effective March 15, 2027 audit logs of verification activities under Section 5.4.1 must include the information validated, the domain name whose control was validated where it differs from the domain portion of the Mailbox Address (for example the Authorization Domain Name or SMTP FQDN), and the validation method used. 

The ballot aligns the S/MIME BR with SC-099, with two intentional differences: it refers to the "domain name whose control was validated" rather than "ADN", since ADN is not defined in the S/MIME BR and Section 3.2.2.3 also covers SMTP FQDN validation, and it permits the recorded method to reference a section of either the S/MIME BR or the TLS BR, since Sections 3.2.2.1 and 3.2.2.3 rely on TLS BR Section 3.2.2.4.

This ballot is proposed by Pedro Fuentes (OISTE Foundation), and is endorsed by Stephen Davidson (DigiCert) and Dustin Hollenback (Apple).

**-- Motion Begins --**

This ballot modifies the "Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates" ("S/MIME Baseline Requirements"), based on Version 1.0.16.

MODIFY the Baseline Requirements as specified in the following Redline: https://github.com/cabforum/smime/compare/466cb409781cdb14f028d46694c878c009be52d0...63955064dd9a858d631dda059b0505d3596657f1

**-- Motion Ends --**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

* Start time: 2026-10-05 19:00 UTC

* End time: 2026-10-12 19:00 UTC

Voting for Approval

* Start time: TBD

* End time: TBD

