---
aliases:
- /2015-04-02-ballot-148-issuer-field-correction/
author: Ben Wilson
date: 2015-04-02 17:27:30
tags:
- Server Certificates
title: Ballot 148 – Issuer Field Correction
type: post
---

Voting on Ballot 148, Issuer Field Correction, closed on 2 April 2015.

We received 13 YES votes from CAs, 0 NO votes and 0 Abstentions

We received 1 YES vote from Browsers, 0 NO votes and 0 Abstentions

Therefore the ballot passes.

Several votes were received after the ballot closed and were not counted. Full details are on the ballot tracking wiki.

Ballot 148 resulted in the adoption of [BRv1.2.5][1]

**Ballot 148 – Issuer Field Correction (Rev 1)
**

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

**Reason**

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

The issuer field language in Section 9.1 of the Baseline Requirements confuses two issues:

1. the contents of the issuer field in an end entity cert and

1. how to name root and intermediate CA certificates.

To clarify the issue, and ensure proper name chaining, this ballot fixes the issuer field requirements and, to clarify that commonName field is part of the distinguished name, moves all of the Subject Distinguished Name Field requirements under the proper section. The ballot also removes requirements around the domainComponent field as the field is not used by current TLS clients. A subsequent ballot will address naming of roots and intermediates under current Section 9.2.5.

Doug Beattie of GlobalSign made the following motion, which was endorsed by Jeremy Rowley of DigiCert and Richard Wang of WoSign.

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

**Motion begins**

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

1. Replace Section 9.1 with the following:

“9.1 Issuer Information

The content of the Certificate Issuer Distinguished Name field MUST match the Subject DN of the Issuing CA to support Name chaining as specified in RFC 5280, section 4.1.2.4.”

2. Move Section 9.2.2 to 9.2.4(a) and renumber the subsequent sections as b-i.

1. Delete Section 9.2.3.

1. Renumber 9.2.4 as 9.2.2.

1. In section 9.2, edit section reference “9.2.2” to “9.2.2 (a)”

1. Update section references 9.2.4 (f) to 9.2.2.(g) and 9.2.4 to 9.2.2 throughout document.

1. In Appendix B (Certificate Content and Extensions), Item (1) Root CA Certificates, add

**E. Subject Information**

The Certificate Subject MUST contain the following

– countryName (OID 2.5.4.6). This field MUST contain the two-letter ISO 3166-1 country code for the country in which the CA’s place of business is located.

– organizationName (OID 2.5.4.10). This field MUST contain the name (or abbreviation thereof), trademark, or other meaningful identifier for the CA, provided that they accurately identify the CA. The field MUST NOT contain exclusively a generic designation such as “Root 1”.

8. In Appendix B (Certificate Content and Extensions), Item (2) Subordinate CA Certificate, add

**H. Subject Information**

The Certificate Subject MUST contain the following

– countryName (OID 2.5.4.6). This field MUST contain the two-letter ISO 3166-1 country code for the country in which the CA’s place of business is located.

– organizationName (OID 2.5.4.10). This field MUST contain the name (or abbreviation thereof), trademark, or other meaningful identifier for the CA, provided that they accurately identify the CA. The field MUST NOT contain exclusively a generic designation such as “CA1”.

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

**Motion Ends**

\___\___\___\___\___\___\___\___\___\___\___\___\_\_\_\_

The review period for this ballot shall commence at 2200 UTC on 19 Mar 2015, and will close at 2200 UTC on 26 Mar 2015. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on 2 Apr 2015. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.

[1]: /uploads/BRv1.2.5.pdf