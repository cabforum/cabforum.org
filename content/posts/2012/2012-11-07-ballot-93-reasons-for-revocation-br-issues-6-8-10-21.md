---
aliases:
- /2012/11/07/ballot-93-reasons-for-revocation-br-issues-6-8-10-21/
author: Ben Wilson
date: 2012-11-07 18:08:46
tags:
- Ballot
- Server Certificates
title: Ballot 93 – Reasons for Revocation (BR issues 6, 8, 10, 21)
type: post
---

Ballot 93 – Reasons for Revocation (BR issues 6, 8, 10, 21) (Passed Unanimously)

Motion

Effective immediately, except as to Part E below.

Erratum begins:

## A. (Issue #8)

Add the following as 10.2.5:

“10.2.5 Subordinate CA Private Key

Parties other than the Subordinate CA SHALL NOT archive the Subordinate CA Private Keys. If the Issuing CA generated the Private Key on behalf of the Subordinate CA, then the Issuing CA SHALL encrypt the Private Key for transport to the Subordinate CA. If the Issuing CA becomes aware that a Subordinate CA’s Private Key has been communicated to an unauthorized person or an organization not affiliated with the Subordinate CA, then the Issuing CA SHALL revoke all certificates that include the Public Key corresponding to the communicated Private Key.”

## B. (Issue #8)

• Replace the heading of section 13.1.5 with “Reasons for Revoking a Subscriber Certificate”

• Add the following as section 13.1.6:

“13.1.6 Reasons for Revoking a Subordinate CA Certificate

The Issuing CA SHALL revoke a Subordinate CA Certificate within seven (7) days if one or more of the following occurs:

1. The Subordinate CA requests revocation in writing;

1. The Subordinate CA notifies the Issuing CA that the original certificate request was not authorized and does not retroactively grant authorization;

1. The Issuing CA obtains evidence that the Subordinate CA’s Private Key corresponding to the Public Key in the Certificate suffered a Key Compromise or no longer complies with the requirements of Appendix A,

1. The Issuing CA obtains evidence that the Certificate was misused;

1. The Issuing CA is made aware that the Certificate was not issued in accordance with or that Subordinate CA has not complied with these Baseline Requirements or the applicable Certificate Policy or Certification Practice Statement;

1. The Issuing CA determines that any of the information appearing in the Certificate is inaccurate or misleading;

1. The Issuing CA or Subordinate CA ceases operations for any reason and has not made arrangements for another CA to provide revocation support for the Certificate;

1. The Issuing CA’s or Subordinate CA’s right to issue Certificates under these Requirements expires or is revoked or terminated, unless the Issuing CA has made arrangements to continue maintaining the CRL/OCSP Repository;

1. Revocation is required by the Issuing CA’s Certificate Policy and/or Certification Practice Statement; or

1. The technical content or format of the Certificate presents an unacceptable risk to Application Software Suppliers or Relying Parties (e.g. the CA/Browser Forum might determine that a deprecated cryptographic/signature algorithm or key size presents an unacceptable risk and that such Certificates should be revoked and replaced by CAs within a given period of time).”

## C. (Issue #6)

•Replace Section 13.1.5(3) with: “(3) The CA obtains evidence that the Subscriber’s Private Key corresponding to the Public Key in the Certificate suffered a Key Compromise (also see Section 10.2.4) or no longer complies with the requirements of Appendix A,”

•Add the following as a new Section 13.1.5(4) and renumber the remaining bullet points:

“(4) The CA obtains evidence that the Certificate was misused;”

•Replace the definition of Key Compromise with the following:

“Key Compromise: A Private Key is said to be compromised if its value has been disclosed to an unauthorized person, an unauthorized person has had access to it, or there exists a practical technique by which an unauthorized person may discover its value. A Private Key is also considered compromised if methods have been developed that can easily calculate it based on the Public Key (such as a Debian weak key, see ) or if there is clear evidence that the specific method used to generate the Private Key was flawed.”

## D. (Issue #21)

Add new section 13.2.7: “13.2.7 Certificate Suspension.

The Repository MUST NOT include entries that indicate that a Certificate is suspended.”

## E. (Issue #10)

1. Add the following to Section 3. References

“NIST SP 800-89, Recommendation for Obtaining Assurances for Digital Signature Applications, ”

2. Add the following after Appendix A, table (3):

“(4) General requirements for public keys (Effective 1 January 2013) RSA: The CA SHALL confirm that the value of the public exponent is an odd number equal to 3 or more. Additionally, the public exponent SHOULD be in the range between 216+1 and 2256-1. The modulus SHOULD also have the following characteristics: an odd number, not the power of a prime, and have no factors smaller than 752. \[Source: Section 5.3.3, NIST SP 800-89\].”

Erratum ends

… Motion ends …

The review period for this ballot commenced at 21:00 UTC on 17 October 2012. A voting period of seven days began and was suspended on 31 October 2012 at which time the tally was cleared and the review-and-comment period continued. The ballot has been amended and voting will begin again at 21:00 UTC on 2 November 2012. Voting will close at 21:00 UTC on Wednesday, 7 November 2012. Votes must be cast by posting an on-list reply to this thread.

… Motions ends …

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.