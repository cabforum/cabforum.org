---
aliases:
- /2014-10-16-ballot-134-application-rfc-5280-pre-certificates/
author: Ben Wilson
date: 2014-10-16 23:50:20
tags:
- Server Certificates
title: Ballot 134 – Application of RFC 5280 to Pre-certificates
type: post
---

**Ballot 134 – Application of RFC 5280 to Pre-certificates**

Voting on Ballot 134 – Application of RFC 5280 to Pre-certificates closed on 16 October 2014.

The Chair received “yes” votes from Actalis, Buypass, Chunghwa Telecom, Comodo, DigiCert, Disig, Entrust, GlobalSign, GoDaddy, Google, Logius PKIoverheid, Mozilla, Opera, Symantec, Trend Micro, TURKTRUST, TWCA, and WoSign.

Opentrust voted no.

ANF, Microsoft, Certinomis, Izenpe, Kamu Sertifikasyon Merkezi and StartCom abstained.

Therefore, Ballot 134 passed.

Kirk Hall of Trend Micro made the following motion, and Ben Wilson of Digicert and Ryan Sleevi from Google have endorsed it.

**Reason for Ballot**

CAs are implementing Certificate Transparency (CT) based on RFC 6962, which contains the concept of pre-certificates. The current Baseline Requirements require all certificates to comply with RFC 5280. (See Definition of “Valid Certificate” and references to RFC 5280 in Appendix B.) For some implementations, there is a potential dilemma if the pre-certificate and the production certificate are issued from the same sub-CA and both have the same Serial Number, not permitted under RFC 5280. Given that CAs will likely be implementing CT before potential technical differences can be worked out, the purpose of this ballot is to allow CAs to meet CT deadlines without violating the Baseline Requirements requiring compliance with RFC 5280.

**— Motion Begins —**

Effective immediately, the title to Appendix B of the Baseline Requirements shall be amended as follows:

- Appendix B – Certificate Content and Extensions; Application of RFC 5280 (Normative)
- This appendix specifies the additional requirements for Certificate content and extensions for Certificates generated after the Effective Date.

and a new subsection (5) will be added as follows:

(5) Application of RFC 5280

For purposes of clarification, a Precertificate as described in RFC 6962 – Certificate Transparency shall not be considered to be a “certificate” subject to the requirements of RFC 5280 – Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile under these Baseline Requirements.

**— Motion Ends —**

The review period for this ballot shall commence at 2200 UTC on Thursday, 2 October 2014, and will close at 2200 UTC on Thursday, 9 October 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Thursday, 16 October 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.