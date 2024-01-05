---
aliases:
- /2012-06-08-ballot-75-nameconstraints-criticality-flag/
author: Ben Wilson
date: 2012-06-08 21:44:07
tags:
- Ballot
- Server Certificates
title: Ballot 75 – NameConstraints Criticality Flag
type: post
---

Ballot 75 – NameConstraints Criticality Flag (Passed)

Motion

Kathleen Wilson made the following motion, and Steve Roylance and Adam Langley endorsed it.

______________________________________________________________________

Motion begins

______________________________________________________________________

Effective immediately

______________________________________________________________________

Erratum begins

______________________________________________________________________

Delete the following text from the “Subordinate CA Certificate” section of both the Baseline Requirements Appendix B and EV Guidelines Appendix B:

“All other fields and extensions MUST be set in accordance to RFC 5280.”

AND replace it with the following:

“F. nameConstraints (optional).

If present, this extension SHOULD be marked critical\*.

All other fields and extensions MUST be set in accordance to RFC 5280.

- Non-critical Name Constraints are an exception to RFC 5280 that MAY be used until the Name Constraints extension is supported by Application Software Suppliers whose software is used by a substantial portion of Relying Parties worldwide.”

______________________________________________________________________

Erratum ends

______________________________________________________________________

The ballot review period comes into effect at 21:00 UTC on May 25, 2012 and will close at 21:00 UTC on June 1, 2012. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on June 8, 2012. Votes must be cast by “reply all” to this email.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.

______________________________________________________________________

Motion ends