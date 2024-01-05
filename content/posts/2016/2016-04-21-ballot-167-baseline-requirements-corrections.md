---
aliases:
- /2016-04-21-ballot-167-baseline-requirements-corrections/
author: Ben Wilson
date: 2016-04-21 14:33:18
tags:
- Ballot
- Server Certificates
title: Ballot 167 – Baseline Requirements Corrections
type: post
---

Voting on Ballot 167 (BR Corrections) has closed. The results are as follows:
From the CAs we received 2 YES votes, 1 NO vote and 0 Abstentions

From the Browsers we received 2 YES votes, 0 NO Votes and 0 Abstentions

However, the quorum was not met and therefore the ballot fails.

The following motion has been proposed by Peter Bowen of Amazon and endorsed by Dimitris Zacharopoulos of HARICA and Josh Aas of ISRG:

Background:

A number of small corrections and clarifications to the Baseline Requirements have been identified. These are, in general, changes that reflect the existing understanding of the Baseline Requirements by the Forum. Due to the understanding that these primarily represent existing practice, they are combined for efficiency.

— MOTION BEGINS —

Effective the date of passage, the following modifications to the Baseline Requirements are adopted:

In Section 1.6.1:

– In the definition of “Applicant Representative”, replace “and agrees to the Certificate Terms of Use” with “the Terms of Use” and append “or is the CA” at the end of the definition;

– In the definition of “Country”, replace “sovereign nation” with “Sovereign State”;

– In the definition of “Terms of Use”, append “or is the CA” at the end of the definition;

In Section 1.6.3:

– Delete RFC2560;

– Insert “RFC6960, Request for Comments: 6960, X.509 Internet Public Key Infrastructure Online Certificate Status Protocol – OCSP. Santesson, Myers, Ankney, Malpani, Galperin, Adams, June 2013.”;

– Delete X.509v3;

– Insert “X.509, Recommendation ITU-T X.509 (10/2012) | ISO/IEC 9594-8:2014 (E), Information technology – Open Systems Interconnection – The Directory: Public-key and attribute certificate frameworks.”

Move the content in section 3.3.1 to section 4.2.1 to become the third paragraph in 4.2.1 and leave section 3.3.1 blank.

In section 4.9.9, replace all occurrences of “RFC2560” with “RFC6960”.

In section 5.2.2, insert “CA” immediately before “Private Key”.

In section 6.1.2, append “without authorization by the Subscriber” to the end of the first sentence.

In section 6.1.6, update the last citation to read: “\[Source: Sections 5.6.2.3.2 and 5.6.2.3.3, respectively, of NIST SP 56A: Revision 2\]”

In section 6.2, in the second sentence, insert “CA” immediately before both instances of “Private Key”.

In section 6.2.5, append “without authorization by the Subordinate CA” to the end of the sentence.

In section 7, insert the following introduction paragraph:

“All Certificates and Certificate Revocation Lists SHALL comply with RFC 5280 and RFC 6818. They SHALL additionally comply with RFC3279, RFC4055, RFC5480, RFC5756, RFC5758 as appropriate based on the Subject Public Key Info and the Signature Algorithm present in the certificate.”

In sections 7.1.2.1(e) and 7.1.2.2(h) change the organizationName line to read:

“- organizationName (OID 2.5.4.10): This field MUST be present and the contents MUST contain either the Subject CA’s name or DBA as verified under Section 3.2.2.2. The CA may include information in this field that differs slightly from the verified name, such as common variations or abbreviations, provided that the CA documents the difference and any abbreviations used are locally accepted abbreviations; e.g., if the official record shows “Company Name Incorporated”, the CA MAY use “Company Name Inc.” or “Company Name”.”

Append ” – Subscriber Certificates” to the the title of section 7.1.4.2.

Replace “Subordiate” with “Subordinate” in the title of 7.1.6.3.

In section 9.6.1 item 6:

– Insert “are the same entity or” immediately prior to “are Affiliated”;

– Remove “and accepted”.

In section 9.6.3, replace “agreement to the Terms of Use agreement.” with “acknowledgement of the Terms of Use.”

In section 9.6.3 item 2, replace “maintain sole control” with “assure control”.

In the following sections, replace all occurrences of “Subscriber or Terms of Use Agreement” with “Subscriber Agreement or Terms of Use”.

– Section 1.6.1, in the definition of “Subscriber”

– Section 4.1.2

– Section 4.9.1.1

– Section 4.9.11

– Section 9.6.1

– Section 9.6.3

— MOTION ENDS —

The review period for this ballot shall commence at 2200 UTC on 7 April 2016, and will close at 2200 UTC on 14 April 2016. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on 21 April 2016. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: