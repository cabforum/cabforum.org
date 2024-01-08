---
aliases:
- /2014-03-24-ballot-117-ev-code-signing-guidelines-corrections/
author: Ben Wilson
date: 2014-03-24 16:40:15
tags:
- Code Signing
- Ballot
title: Ballot 117 – EV Code Signing Guidelines Corrections(passed)
type: post
---

**Ballot 117 – EV Code Signing Guidelines Corrections**
Yea: ANF, Certinomis, DigiCert, GlobalSign, Izenpe, Logius PKIoverheid, OpenTrust, QuoVadis, SECOM Trust, SSC, StartCom, Symantec, Trend Micro, Trustis, WoSign, Microsoft, and Mozilla.

Nay: Comodo, Network Solutions, and Google.

Abstain: Buypass

Results: Ballot passed

Updated version is posted here on the [EV Code Signing][1] page.

Jeremy Rowley of DigiCert made the following motion, and Iñigo Barreira of Izenpe and Rick Andrews of Symantec endorsed it.

There are two issues with the EV code signing guidelines that need correction:

1. Section 9.2.2 of the EV code signing guidelines recommends that CAs not include the SAN extension in an EV certificate. However, section 9.7 requires that an EV certificate include subjectAltName:permanentIdentifier. Because the main concern is that a CA might include a domain name in the SAN extension, we should specify that this practice is not allowed and recognize that other information may be present.

2. Because the EV Code Signing Guidelines were originally based on the EV Guidelines for SSL, Section 9.2.3 of the EV code signing guidelines deprecates the CN field. However, the CABF Code Signing Working Group received a report that this field is still required by code signing applications. We should still include the CN in code signing certificates for the Subscriber’s legal name, even though the field is deprecated for use in SSL/TLS certificates.

**—Motion Begins—**

Effective immediately:

a.           Replace section 9.2.2 with the following:

“9.2.2   Subject Alternative Name Extension

This field MUST be present and MUST contain the permanentIdentifier specified in Section 9.7. This field MUST NOT contain a Domain Name or IP Address.”

b.           Amend section 9.2.3 as follows:

“9.2.2   Subject Common Name Field

Certificate field: subject:commonName (OID 2.5.4.3)

Required/Optional: Required

Contents: This field MUST contain the Subject’s legal name as verified under Section 11.2.“

**—Motion ends—**

The review period for this ballot shall commence at 2200 UTC on Monday, 10 March 2014, and will close at 2200 UTC on Monday, 17 March 2014.

Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Monday, 24 March 2014.

Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response.

A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted.

The latest vote received from any representative of a voting member before the close of the voting period will be counted.

Voting members are listed here: [/about/membership/members/][2]

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and more than one half of the votes cast by members in the browser category must be in favor.

Quorum is currently six (6) members– at least six members must participate in the ballot, either by voting in favor, voting against, or by abstaining for the vote to be valid.

**[Draft of EV Code Signing v.1.1.2 for Ballot 117][3]**

[1]: /working-groups/code-signing/ev-code-signing-certificate-guidelines/ "EV Code Signing Certificate Guidelines"
[2]: /about/membership/members/ "Members"
[3]: /uploads/EV-Code-Signing-v.1.1.2-Ballot-117.pdf