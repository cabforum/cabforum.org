---
aliases:
- /2013-05-03-ballot-99-add-dsa-keys/
author: Ben Wilson
date: 2013-05-03 18:24:59
tags:
- Server Certificates
title: Ballot 99 – Add DSA Keys
type: post
---

Ballot 99 – Add DSA Keys (Passed)

… Motion Begins …

… Erratum Begins …

In the Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates, Appendix A, add to each of the tables (1) Root CA Certificates, (2) Subordinate CA Certificates, and (3) Subscriber Certificates a new row with these three column entries (comma-separated): Minimum DSA modulus and divisor size (bits) **\*, L= 2048, N= 224 or L= 2048, N= 256, L= 2048, N= 224 or L= 2048, N= 256

Following Table 3, change the first sentence to read (++added language++): * SHA-1 MAY be used ++with RSA keys++ until SHA-256 is supported widely by browsers used by a substantial portion of relying-parties worldwide.

After “** A Root CA Certificate issued…”, add: **\* L and N (the bit lengths of modulus p and divisor q, respectively) are described in the Digital Signature Standard, FIPS 186-3 ().

To Section “(4) General requirements for public keys”, add:

DSA: Although FIPS 800-57 says that domain parameters may be made available at some accessible site, compliant DSA certificates MUST include all domain parameters. This is to insure maximum interoperability among relying party software. The CA MUST confirm that the value of the public key has the unique correct representation and range in the field, and that the key has the correct order in the subgroup. \[Source: Section 5.3.1, NIST SP 800-89\].

ECC: The CA SHOULD confirm the validity of all keys using either the ECC Full Public Key Validation Routine or the ECC Partial Public Key Validation Routine. \[Source: Sections 5.6.2.5 and 5.6.2.6, respectively, NIST SP 800-56A\].

… Erratum Ends …

The review period for this ballot shall commence at 21:00 UTC on 19 April 2013 and will close at 21:00 UTC on 26 April 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on 3 May 2013. Votes must be cast by posting an on-list reply to this thread.

… Motions ends …

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.