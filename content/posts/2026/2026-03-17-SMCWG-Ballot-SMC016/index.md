---
title: 'Ballot SMC016: Equivalence with Ballots SC096 and SC097'
author: Stephen Davidsoon
date: 2026-03-17
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-016
Aliases: 
- SMC016
---

# [IPR Review] Ballot SMC016: Equivalence with Ballots SC096 and SC097

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice may be found at https://cabforum.org/uploads/CA-Browser-Forum-SMIMEBR-1.0.14-Redline.pdf.

### Summary of Review

Ballot for Review: Ballot SMC016: Equivalence with Ballots SC096 and SC097

Start of Review Period: 2026-04-01 19:00:00 UTC
End of Review Period: 2026-05-01 19:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to stephen.davidson at digicert.com) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

# [Voting Results] Ballot SMC016: Equivalence with Ballots SC096 and SC097

Based on the current results, the ballot has PASSED. Please use the below generated email to send the results to the member list:

The voting period for SMC016: Equivalence with Ballots SC096 and SC097 has completed. The ballot has: PASSED

### Voting Results

**Certificate Issuers**

19 votes in total:

 * 19 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), Chunghwa Telecom, DigiCert, D-TRUST, eMudhra, GlobalSign, HARICA, IdenTrust, Logius PKIoverheid, MSC Trustgate Sdn Bhd, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

**Certificate Consumers**

2 votes in total:

 * 2 voting YES: Mozilla, rundQuadrat

 * 0 voting NO:

 * 0 ABSTAIN:

**Bylaws Requirements**

1. Bylaw 2.3(6) requires:
 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was MET.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was MET.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was MET.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 9 for this ballot. This requirement was MET.

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues. This will be notified in a separate email.

# Ballot SMC016: Equivalence with Ballots SC096 and SC097

### Summary: 
 
This ballot maintains consistency between the S/MIME Baseline Requirements and the TLS Baseline Requirements with changes introduced by Ballots SC096 and SC097. Specifically, this ballot:

* Creates a carve-out of the logging requirements for DNSSEC specifically, stating these are not in scope. For audit purposes, change management logging is able to confirm if the appropriate controls are in effect or not.
* Sunsets all remaining use of SHA-1 signatures in Certificates and CRLs. It is noted that most uses of SHA-1 signatures are already deprecated by SC097. With this ballot, all unexpired Subordinate CA Certificates issuing S/MIME containing the SHA-1 signature algorithm must be revoked. This proposal does not prohibit the use of SHA-1 to generate issuerKeyHash or issuerNameHash values as currently required by RFC 5019.
* Includes minor formatting corrections.

 This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Martijn Katerbarg (Sectigo) and Ben Wilson (Mozilla).

**— Motion Begins —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.12.

MODIFY the Baseline Requirements as specified in the following Redline:

https://github.com/cabforum/smime/compare/be9a18ab2b48eb0cbff41d3a268202f700c06c05...32915d18f165e1702aa759d01cdceb231d262ec0

**— Motion Ends —**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

### Discussion (at least 7 days)

* Start time: March 17, 2026 at 23:00 UTC

* End time: March 25, 2026 at 18:00 UTC

### Voting for Approval

* Start time: March 25, 2026 at 18:00 UTC

* End time: April 1, 2026 at 18:00 UTC