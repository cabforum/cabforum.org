---
title: 'Ballot SMC013: Enable PQC Algorithms for S/MIME'
author: Stephen Davidsoon
date: 2025-07-02
tags:
- S/MIME
- Ballot
type: post
slug: Ballot-SMC-013
Aliases: 
- SMC013
---

## IPR Review of Ballot SMC013: Enable PQC Algorithms for S/MIME 

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, and may be found at:
https://cabforum.org/uploads/CA-Browser-Forum-SMIMEBR-1.0.11-Redline.pdf

### Summary of Review

**Ballot for Review: SMC013: Enable PQC Algorithms for S/MIME**

* Start of Review Period: 2025-07-21 20:00:00 UTC
* End of Review Period: 2025-08-20 20:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Iñigo Barreira ) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.

(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf)


## Results of Ballot SMC013: Enable PQC Algorithms for S/MIME 

The voting period for SMC013: Enable PQC Algorithms for S/MIME has completed. The ballot has: PASSED

### Voting Results

**Certificate Issuers**
20 votes in total:
* 19 voting YES: Actalis S.p.A., Asseco Data Systems SA (Certum), Carillon Information Security Inc., DigiCert, Disig, D-TRUST, eMudhra, GlobalSign, HARICA, IdenTrust, Logius PKIoverheid, MSC Trustgate Sdn Bhd, OISTE Foundation, SECOM Trust Systems, Sectigo, SSL.com, SwissSign, TWCA, VikingCloud
* 0 voting NO:
* 1 ABSTAIN: Entrust

**Certificate Consumers**
3 votes in total:
* 2 voting YES: Mozilla, rundQuadrat
* 1 voting NO: Microsoft
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

## Ballot SMC013: Enable PQC Algorithms for S/MIME 

### Summary: 

This ballot introduces specifications for the use of two post-quantum cryptography (PQC) algorithms, as standardized by the U.S. National Institute of Standards and Technology (NIST), in the S/MIME BR:

* ML-DSA, or Module-Lattice-Based Digital Signature Algorithm, a digital signature scheme; and

* ML-KEM, or Module-Lattice-Based Key-Encapsulation Mechanism, a key encapsulation mechanism.

The ballot specifies single-key/non-hybrid PQC certificates that do not rely upon pre-quantum algorithms. 

The ballot is intended to enable experimentation by Certificate Issuers with PQC certificates; noting that additional requirements on the use of PQC may be imposed by Root programs. 

This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Andreas Henschel (D-Trust) and Martijn Katerbarg (Sectigo).

— Motion Begins —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”), based on Version 1.0.10.

https://github.com/cabforum/smime/compare/59687c5e3835f889cdbb0ff0f0a24cfffc684084...0ba137373f1c7cb1ac52981b6b155ffd1be52267

— Motion Ends —

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

* Start time: July 2, 2025 at 18:00:00 UTC
* End time: July 11, 2025 at 18:00:00 UTC

**Voting for Approval**

*  Start time: July 14, 2025 at 17:00:00 UTC
*  End time: July 21, 2025 at 17:00:00 UTC

**IP Review (30 Days)**