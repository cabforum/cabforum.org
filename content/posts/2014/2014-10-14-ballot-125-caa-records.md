---
aliases:
- /2014/10/14/ballot-125-caa-records/
author: Ben Wilson
date: 2014-10-14 23:34:09
tags:
- Ballot
- Server Certificates
title: Ballot 125 – CAA Records (passed)
type: post
---

## Ballot 125 – CAA Records

Voting on Ballot 125 – CAA Records closed on 14 October 2014.

The Chair received “yes” votes from Actalis, ANF, Buypass, Chunghwa Telecom, Comodo, DigiCert, Disig, Entrust, GlobalSign, GoDaddy, Google, Logius PKIoverheid, Microsoft, Mozilla, Opentrust, Opera, SECOM Trust Systems, SSC, Symantec, Trend Micro, Trustis, TWCA, and WoSign.

Certinomis, Izenpe, Kamu Sertifikasyon Merkezi, TURKTRUST, and StartCom abstained.

Therefore, Ballot 125 passed.

Rick Andrews of Symantec made the following motion and Jeremy Rowley of Digicert and Ryan Sleevi of Google have endorsed it:

**Reasons for proposed ballot** RFC 6844 defines a Certification Authority Authorization DNS Resource Record (CAA). A CAA allows a DNS domain name holder to specify the CAs authorized to issue certificates for that domain. Publication of the CAA gives domain holders additional controls to reduce the risk of unintended certificate mis-issuance.

The proponents of this ballot believe that this proposed modification to the Baseline Requirements, which gives CAs up to six months to update their CP and/or CPS to state the degree to which they implement CAA, provides all CAs with the flexibility needed to begin implementation of CAA.

**-MOTION BEGINS-**

**Add to Section 4 Definitions, new item:**

**CAA:** From RFC 6844 (<http:tools.ietf.org/html/rfc6844>): “The Certification Authority Authorization (CAA) DNS Resource Record allows a DNS domain name holder to specify the Certification Authorities (CAs) authorized to issue certificates for that domain. Publication of CAA Resource Records allows a public Certification Authority to implement additional controls to reduce the risk of unintended certificate mis-issue.”  

**Add the following to the end of Section 8.2.2, Disclosure:**

Effective as of \[insert date that is six months from Ballot 125 adoption\], section 4.2 of a CA’s Certificate Policy and/or Certification Practice Statement (section 4.1 for CAs still conforming to RFC 2527) SHALL state whether the CA reviews CAA Records, and if so, the CA’s policy or practice on processing CAA Records for Fully Qualified Domain Names. The CA SHALL log all actions taken, if any, consistent with its processing practice.

**The resulting Section 8.2.2 would read as follows:**

The CA SHALL publicly disclose its Certificate Policy and/or Certification Practice Statement through an appropriate and readily accessible online means that is available on a 24×7 basis. The CA SHALL publicly disclose its CA business practices to the extent required by the CA’s selected audit scheme (see Section 17.1). The disclosures MUST include all the material required by RFC 2527 or RFC 3647, and MUST be structured in accordance with either RFC 2527 or RFC 3647. Effective as of \[insert date that is six months from Ballot 125 adoption\], section 4.2 of a CA’s Certificate Policy and/or Certification Practice Statement (section 4.1 for CAs still conforming to RFC 2527) SHALL state whether the CA reviews CAA Records, and if so, the CA’s policy or practice on processing CAA Records for Fully Qualified Domain Names. The CA SHALL log all actions taken, if any, consistent with its processing practice.

**-MOTION ENDS-**

The review period for this ballot shall commence at 2200 UTC on Tuesday, 30 September 2014, and will close at 2200 UTC on Tuesday, 7 October 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Tuesday, 14 October 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: [/about/membership/members/](/about/membership/members/)

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently seven (7) members– at least seven members must participate in the ballot, either by voting in favor, voting against, or abstaining.