---
aliases:
- /2021-04-08-ballot-sc43-clarify-acceptable-status-codes/
author: Ben Wilson
date: 2021-04-08 03:53:00
tags:
- Ballot
- Server Certificates
title: Ballot SC43 – Clarify Acceptable Status Codes
type: post
---

The voting on SC43v2 has completed, and the ballot has **failed**.

**Voting Results**

**Certificate Issuers**

**8 votes total, with no abstentions**

·         0 Yes votes:

·         8 No Votes: DigiCert, Entrust, GlobalSign, HARICA, Let’s Encrypt / ISRG, Telia Company, TrustCor, SecureTrust

·         0 Abstentions

**Certificate Consumers**

**1 vote total, with no abstentions**

1.      0 Yes votes

2.      1 No votes: Google

3.      0 Abstentions

**Bylaw Requirements**

1.      Bylaw 2.3(f) requires:

o     A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
_This requirement was NOT met for Certificate Issuers and NOT met for Certificate Consumers_.

o    at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
_This requirement was NOT met_.

2.      Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 12, so the quorum was 13 for this ballot.
_This requirement was NOT met._

This ballot is marked as failed and may be revised and submitted as a new ballot at a future date. The results of this voting will be posted to the public website.

——————-

Purpose of Ballot:

This ballot clarifies the allowed HTTP status codes used for following redirects in domain validation methods 18 and 19, and specifies that the target URI must come from the Location response header. In Section 3.2.2.4.18 and 3.2.2.4.19, it replaces “Redirects MUST be the result of an HTTP status code result within the 3xx Redirection class of status codes, as defined in RFC 7231, Section 6.4.” with the following:

- “Redirects MUST be the result of a 301, 302, 307, or 308 HTTP status code response.”
- “Redirects MUST be to resource URLs contained in the Location HTTP response header.”

The following motion has been proposed by Niko Carpenter of SecureTrust and endorsed by Corey Bonnell of DigiCert and Ryan Sleevi of Google.

–MOTION BEGINS–

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as defined in the following redline, based on Version 1.7.3:

–MOTION ENDS–

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 11-March 2021 21:30 UTC

End Time: 01-April 2021 16:00 UTC

Vote for approval (7 days)

Start Time: 01-April 2021 16:00 UTC

End Time: 08-April 2021 16:00 UTC