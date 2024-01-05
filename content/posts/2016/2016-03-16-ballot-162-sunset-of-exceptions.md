---
aliases:
- /2016-03-16-ballot-162-sunset-of-exceptions/
author: Ben Wilson
date: 2016-03-16 21:51:30
tags:
- Ballot
- Server Certificates
title: Ballot 162 – Sunset of Exceptions
type: post
---

Voting on **Ballot 162** closed on 16 March 2016. The results are as follows:

- From the CAs, there were 19 YES votes, 0 NO votes and 5 Abstentions
- From the Browsers, there were 4 YES votes, 0 NO votes and 0 Abstentions.

Therefore the ballot passes.

Detailed results can be found on the ballot tracker:

**Ballot 162 – Sunset of Exceptions**

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Richard Barnes of Mozilla and Jeremy Rowley of DigiCert.

—–BEGIN MOTION—–

1. Modify section 6.1.7 of the Baseline Requirements to add items 5(f) and 5(g) which read:

f. The CA signs the Subscriber Certificate on or before June 30, 2016

g. The notBefore field in the Subscriber Certificate has a date on or before June 30, 2016

2. Modify section 6.3.2 of the Baseline Requirements to replace the words “Beyond 1 April 2015” with the words “Until 30 June 2016”

1. Modify Section 5 of Appendix F of the EV Guidelines to remove the last sentence, renumber Section 6 to Section 7, and introduce a new Section 6

“6. When a certificate that includes a Domain Name where .onion is in the right-most label of the Domain Name, the Domain Name shall not be considered an Internal Name if the Certificate was issued in compliance with this Appendix F.”

—–END MOTION—–

To assist in review, a redlined diff view is available at [https://github.com/cabforum/documents/compare/master…sleevi:Ballot-162-Draft?expand=1][1] , with a branch demonstrating the integration of this ballot available at https://github.com/sleevi/cabforum-docs/tree/Ballot-162-Draft

As shown in the diff, certain editorial liberties are taken with respect to informational sections, but they cannot be completed unless and until the ballot is adopted and integrated.
The review period for this ballot shall commence at 2200 UTC on 1 March 2016, and will close at 2200 UTC on 8 March 2016. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on 15 March 2016. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor.

[1]: https://github.com/cabforum/documents/compare/master...sleevi:Ballot-162-Draft?expand=1