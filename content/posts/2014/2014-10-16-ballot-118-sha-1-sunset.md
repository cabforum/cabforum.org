---
aliases:
- /2014/10/16/ballot-118-sha-1-sunset/
author: Ben Wilson
date: 2014-10-16 23:43:32
tags:
- Ballot
- Server Certificates
title: Ballot 118 – SHA-1 Sunset (passed)
type: post
---

Voting on Ballot 118 – SHA-1 Sunset closed on 16 October 2014.

The Chair received “yes” votes from Actalis, ANF, Buypass, Certinomis, Chunghwa Telecom, Comodo, DigiCert, Disig, Entrust, GlobalSign, GoDaddy, Google, Izenpe, Kamu Sertifikasyon Merkezi, Logius PKIoverheid, Microsoft, Mozilla, Opentrust, Opera, QuoVadis, SSC, StartCom, Symantec, Trend Micro, TURKTRUST, TWCA, and WoSign.

SECOM Trust Systems voted no. There were no abstentions.

Therefore, Ballot 118 passed.

Kelvin Yiu of Microsoft made the following motion, and Kirk Hall from Trend Micro and Ryan Sleevi from Google have endorsed it.

## Reason for Ballot

Over the last year or two, several application software providers have announced deprecation of the SHA-1 algorithm in their software.

## Motion begins

9. In the Baseline Requirements, insert the following new section 9.4.2:

**9.4.2 SHA-1 Validity Period**
Effective 1 January 2016, CAs MUST NOT issue any new Subscriber certificates or Subordinate CA certificates using the SHA-1 hash algorithm. CAs MAY continue to sign certificates to verify OCSP responses using SHA1 until 1 January 2017. This Section 9.4.2 does not apply to Root CA or CA cross certificates. CAs MAY continue to use their existing SHA-1 Root Certificates. SHA-2 Subscriber certificates SHOULD NOT chain up to a SHA-1 Subordinate CA Certificate.
Effective 16 January 2015, CAs SHOULD NOT issue Subscriber Certificates utilizing the SHA-1 algorithm with an Expiry Date greater than 1 January 2017 because Application Software Providers are in the process of deprecating and/or removing the SHA-1 algorithm from their software, and they have communicated that CAs and Subscribers using such certificates do so at their own risk.

1. In Appendix A of the Baseline Requirements – Cryptographic Algorithm and Key Requirements (Normative), add this note under Table 2, Subordinate CA certificates:

- SHA-1 MAY be used with RSA keys in accordance with the criteria defined in Section 9.4.2.

And amend this note at the end of each of the 3 tables.

- SHA-1 MAY be used with RSA keys in accordance with the criteria defined in Section 9.4.2 until SHA-256 is supported widely by browsers used by a substantial portion of relying-parties worldwide.

## Motion ends

The review period for this ballot shall commence at 2200 UTC on Thursday, 2 October 2014, and will close at 2200 UTC on Thursday, 9 October 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Thursday, 16 October 2014. Votes must be cast by posting an on-list reply to this thread. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.