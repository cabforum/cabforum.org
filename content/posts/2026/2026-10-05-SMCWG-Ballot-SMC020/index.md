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

# [Voting Results] Ballot SMC020: Remove Requirement to Record BR Version of Validation Method

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.4). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is at https://cabforum.org/uploads/CA-Browser-Forum-SMIMEBR-1.0.17-Redline.pdf

### Summary of Review

Ballot for Review: Ballot SMC020: Remove requirement to record BR version of validation method

* Start of Review Period: 2026-10-20 12:00:00 UTC

* End of Review Period: 2026-11-19 12:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy. An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf

# [Voting Results] Ballot SMC020: Remove Requirement to Record BR Version of Validation Method

The voting period for Ballot SMC020: Remove requirement to record BR version of validation method has completed. The ballot has: PASSED

## Voting Results

**Certificate Issuers**

16 votes in total:

 * 16 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), DigiCert, Disig, eMudhra, GlobalSign, HARICA, IdenTrust, MSC Trustgate Sdn Bhd, OISTE Foundation, SECOM Trust Systems, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

**Certificate Consumers**

3 votes in total:

 * 3 voting YES: Apple, Mozilla, rundQuadrat

 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was MET.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was MET.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was MET.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 6 for this ballot. This requirement was MET.

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues. 

# [Voting] Ballot SMC020: Remove Requirement to Record BR Version of Validation Method

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

* Start time: 2026-10-12 19:00 UTC

* End time: 2026-10-19 19:00 UTC

