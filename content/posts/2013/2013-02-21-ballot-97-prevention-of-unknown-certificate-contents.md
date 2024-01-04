---
aliases:
- /2013-02-21-ballot-97-prevention-of-unknown-certificate-contents/
author: Ben Wilson
date: 2013-02-21 18:13:06
tags:
- Server Certificates
title: Ballot 97 – Prevention of Unknown Certificate Contents
type: post
---

Ballot 97 – Prevention of Unknown Certificate Contents (Passed)

Motion

Jeremy Rowley made the following motion, and Ryan Hurst and Robin Alden endorsed it:

… Motion Begins …

… Erratum Begins …

A. In Section 10.2.3, after the first paragraph, insert: “The CA SHALL establish and follow a documented procedure for verifying all data requested for inclusion in the Certificate by the Applicant.”

B. In Appendix B, add paragraph numbers to the headings: “(1) Root CA Certificate”, “(2) Subordinate CA Certificate”, and “(3) Subscriber Certificate”.

C. In three places in Appendix B, delete: “All other fields and extensions MUST be set in accordance with RFC 5280.”

D. In Appendix B, insert paragraph 4, as follows

“(4) All Certificates

All other fields and extensions MUST be set in accordance with RFC 5280. The CA SHALL NOT issue a Certificate that contains a keyUsage flag, extendedKeyUsage value, Certificate extension, or other data not specified in this Appendix B unless the CA is aware of a reason for including the data in the Certificate.

CAs SHALL NOT issue a Certificate with:

a) Extensions that do not apply in the context of the public Internet (such as an extendedKeyUsage value for a service that is only valid in the context of a privately managed network), unless:

i. such value falls within an OID arc for which the Applicant demonstrates ownership; or

ii. the Applicant can otherwise demonstrate the right to assert the data in a public context; or

b) semantics that, if included, will mislead a Relying Party about the certificate information verified by the CA (such as including extendedKeyUsage value for a smart card, where the CA is not able to verify that the corresponding Private Key is confined to such hardware due to remote issuance).

… Erratum ends …

The review period for this ballot shall commence at 21:00 UTC on 7 February 2013 and will close at 21:00 UTC on 14 February 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on 21 February 2013. Votes must be cast by posting an on-list reply to this thread.

… Motions ends …

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.