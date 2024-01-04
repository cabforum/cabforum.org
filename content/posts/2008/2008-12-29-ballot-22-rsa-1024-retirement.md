---
aliases:
- /2008-12-29-ballot-22-rsa-1024-retirement/
author: Ben Wilson
date: 2008-12-29 18:54:37
tags:
- Server Certificates
title: Ballot 22 – RSA 1024 Retirement
type: post
---

Ballot 22 – RSA 1024 Retirement (Unanimously Passed)

Motion

Robin Alden made the following motion, and Steve Medin and Moudrick Dadashov endorsed it.

______________________________________________________________________

Motion begins

______________________________________________________________________

The Guidelines should be amended in accordance with the following erratum.

______________________________________________________________________

Erratum begins

______________________________________________________________________

Delete Appendix A and replace it with the following.

Appendix A Minimum Cryptographic Algorithm and Key Sizes

1. Root CA Certificates

| | | |
| --- | --- | --- |
| |
Root Certificates whose validity period begins on or before 31 Dec 2010 |
Root Certificates whose validity period begins after 31 Dec 2010 | |
Digest algorithm |
MD5 (NOT RECOMMENDED),SHA-1 |
SHA-1\*, SHA-256, SHA-384 or SHA-512 | |
RSA |
2048† |
2048 | |
ECC |
NIST P-256 |
NIST P-256 |

2. Subordinate CA Certificates

| | | |
| --- | --- | --- |
| |
Subordinate CA Certificates whose validity period begins on or before 31 Dec 2010 |
Subordinate CA Certificates whose validity period begins after 31 Dec 2010 | |
Digest algorithm |
SHA-1 |
SHA-1\*, SHA-256, SHA-384 or SHA-512 | |
RSA |
1024 |
2048 | |
ECC |
NIST P-256 |
NIST P-256 |

3. Subscriber Certificates

| | | |
| --- | --- | --- |
| |
Subscriber Certificates whose validity period ends on or before 31 Dec 2010 |
Subscriber Certificates whose validity period ends after 31 Dec 2010 | |
Digest algorithm |
SHA-1 |
SHA1\*, SHA-256, SHA-384 or SHA-512 | |
RSA |
1024 |
2048 | |
ECC |
NIST P-256 |
NIST P-256 |

† A Subscriber Certificate may, in addition, chain to an EV-enabled \<2048-bit key RSA root CA certificate.

- SHA-1 SHOULD be used only until SHA-256 is supported widely by browsers used by a substantial portion of relying parties worldwide.

______________________________________________________________________

Erratum ends

______________________________________________________________________

______________________________________________________________________

Motion ends

______________________________________________________________________

The ballot review period comes into effect at 18.00 EST on Monday 15th December, and will close at 18.00 EST on Monday 22nd December. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 18.00 EST on Monday 29th December.

Votes must be cast by ‘reply all’ to this email.

A vote in favour of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted.

The latest vote received from any representative of a voting member before the close of the voting period will be counted.