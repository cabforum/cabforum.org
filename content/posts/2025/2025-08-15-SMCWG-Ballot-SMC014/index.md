---
title: 'Ballot SMC014: DNSSEC for CAA'
author: Stephen Davidsoon
date: 2025-08-15
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-014
Aliases: 
- SMC014
---

# Ballot SMC014: DNSSEC for CAA 

## IPR Review of Ballot SMC014: DNSSEC for S/MIME

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, and may be found at:
https://cabforum.org/2025/08/15/SMCWG-Ballot-SMC014/CA-Browser-Forum-SMIMEBR-1.0.12-Redline.pdf

### Summary of Review

**Ballot for Review: SMC014: DNSSEC for S/MIME**

Start of Review Period: 2025-09-10 18:00:00 UTC
End of Review Period: 2025-10-10 18:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Stephen Davidson) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf)

# Results of Ballot SMC014: DNSSEC for S/MIME

The voting period for SMC014: DNSSEC for S/MIME has completed. The ballot has: PASSED

### Voting Results

**Certificate Issuers**
16 votes in total: 
 * 15 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), DigiCert, Disig, eMudhra, GlobalSign, HARICA, IdenTrust, MSC Trustgate Sdn Bhd, OISTE Foundation, SECOM, Sectigo, SHECA, SSL.com, SwissSign, TWCA
 * 0 voting NO: 
 * 1 ABSTAIN: Entrust

**Certificate Consumers**
3 votes in total: 
 * 3 voting YES: Apple, Mozilla, rundQuadrat
 * 0 voting NO: 
 * 0 ABSTAIN: 

**Bylaws Requirements**

1. Bylaw 2.3(6) requires:
 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was MET.
 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was MET.
* At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was MET.
2. Bylaw 2.3(7) requires:
* A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
* the quorum was 10 for this ballot. This requirement was MET.

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues. This will be notified in a separate email.

### Summary: 

New version of the ballot text with minor text changes, restarting discussion period.

— Motion Begins —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.10.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/59687c5e3835f889cdbb0ff0f0a24cfffc684084...5feb1c76b8513dfb54111463eeff681be381f151 

— Motion Ends —

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

* Start time: August 27, 2025 at 17:00:00 UTC
* End time: September 3, 2025 at 17:00:00 UTC

**Voting for Approval**

* Start time: September 3, 2025 at 17:00:00 UTC
* End time: September 10, 2025 at 17:00:00 UTC

**IP Review (30 Days)**


# Ballot SMC014: DNSSEC for CAA 

### Summary: 

This ballot introduces requirements that a Certificate Issuer MUST deploy DNSSEC validation back to the IANA DNSSEC root trust anchor on all DNS queries associated with CAA record lookups performed by the Primary Network Perspective, effective March 15, 2026.

The ballot is intended to maintain consistency in the S/MIME Baseline Requirements with the requirements of Ballot SC-085 which implemented identical requirements in the TLS Baseline Requirements.  

Note: SC-085 also introduced requirements in TLS Baseline Requirements for the use of DNSSEC in domain control validation. These requirements are automatically adopted in the S/MIME BR by the email domain control methods that include a normative reference to section 3.2.2.4 of the TLS Baseline Requirements.

The draft also includes minor corrections to web links in the text.

This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Client Wilson (Apple) and Ashish Dhiman (GlobalSign).

— Motion Begins —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.10.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/59687c5e3835f889cdbb0ff0f0a24cfffc684084...dcd4ea338d796f2875da3ea015dc585dcde431c7

— Motion Ends —

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days)

* Start time: August 18, 2025 at 09:00:00 UTC
* End time: August 27, 2025 at 17:00:00 UTC

