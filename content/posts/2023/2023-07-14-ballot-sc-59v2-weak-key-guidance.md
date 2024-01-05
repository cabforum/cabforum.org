---
aliases:
- /2023-07-14-ballot-sc-59v2-weak-key-guidance/
author: Iñigo Barreira
date: 2023-07-14 13:54:33
tags:
- Server Certificates
title: 'Ballot SC-59v2: Weak key guidance'
type: post
---

**Voting Results**

**Certificate Issuers**

19 votes total:

- 4 Issuers voting YES: Disig, Harica, Sectigo, SSL.com
- 14 Issuers voting NO: Buypass, CFCA, Chunghwa Telecom, D-Trust, Digicert, eMudhra, Entrust, Fastly, Globalsign, JPRS, LE, SECOM, Swisssign, Viking Cloud
- 1 Issuers ABSTAIN: OISTE

**Certificate Consumers**

3 votes total:

- 2 Consumers voting YES: Apple, Mozilla
- 0 Consumers voting NO
- 1 Consumer ABSTAIN: Google

**Bylaws Requirements**

1. Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **NOT** **MET**.
- at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
- Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot. This requirement was **MET**.

# Ballot Contents

## Purpose of the Ballot SC-59

This ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates related to the identification and revocation of certificates with private keys that were generated in a manner that may make them susceptible to easy decryption. It specifically deals with Debian weak keys, ROCA, and Close Primes Vulnerability.

Notes:

- Thank you to the participants who voiced opinions and concerns about the previous version of the ballot. While there were many concerns about the inclusion of the Debian weak keys checks, we have decided to leave the checks in the ballot. Our reasoning is that we wanted to strengthen the guidance statements, to help CAs ensure compliant certificate generation. Future reviews of the BRs may cull the requirements, as is required by the needs of the community.
- We believe that the requested date of November 15, 2023, will allow enough time for Certificate Authorities to enact any changes to their systems to ensure that they perform the weak key checks on all CSRs submitted for TLS certificates.
- The changes introduced in SC-59 do not conflict with any of the recent ballots. As observed with other ballots in the past, minor administrative updates must be made to the proposed ballot text before publication such that the appropriate Version # and Change History are accurately represented (e.g., to indicate these changes will be represented in Version 2.0.1).

The following motion has been proposed by Thomas Zermeno of SSL.com and has been endorsed by Martijn Katerbarg of Sectigo and Ben Wilson of Mozilla.

## – Motion Begins –

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 2.0.0.

MODIFY the Baseline Requirements as specified in the following Redline: [https://github.com/cabforum/servercert/compare/a0360b61e73476959220dc328e3b68d0224fa0b3…SSLcom:servercert:958e6ccac857b826fead6e4bd06d58f4fdd7fa7a][1]

**– Motion Ends –**

The procedure for approval of this ballot is as follows:

# Discussion (7 days)

- Start time: 2023-06-26 22:00:00 UTC
- End time: 2023-07-03 21:59:59 UTC

# Vote for approval (7 days)****

- Start Time:  2023-07-06 17:00:00
- End Time:  2023-07-13 16:59:59

[1]: https://github.com/cabforum/servercert/compare/a0360b61e73476959220dc328e3b68d0224fa0b3...SSLcom:servercert:958e6ccac857b826fead6e4bd06d58f4fdd7fa7a