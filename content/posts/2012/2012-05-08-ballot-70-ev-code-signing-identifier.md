---
aliases:
- /2012/05/08/ballot-70-ev-code-signing-identifier/
author: Ben Wilson
date: 2012-05-08 21:36:44
tags:
- Code Signing
- Ballot
title: Ballot 70 – EV Code Signing Identifier
type: post
---

Ballot 70 – EV Code Signing Identifier (Passed Unanimously)

Motion

Jeremy Rowley made the following motion, and Tom Albertson and Bruce Morton endorsed it:

… Motion begins….

Effective immediately.

… Erratum begins …

DELETE the following text from the EV Guidelines Appendix H:

“(3) Certificate Content. EV Code Signing Certificates MUST meet the minimum content requirements of Section 8.1 and Appendix B -Extensions for EV Certificates Intended for use with SSL/TLS – of these Guidelines, except that the Domain Name SHALL be omitted and the keyUsage extension SHALL be set as follows: “(A) keyUsage. This extension MUST be present and MUST be marked critical. The bit position for digitalSignature MUST be set. All other bit positions SHOULD NOT be set. The extended key usage certificate extension MUST be set as follows: “(B) extKeyUsage. This extension MUST be present and MUST be marked critical. The value id-kp-codeSigning MUST be present. Other values SHOULD NOT be present.”

AND REPLACE it with the following:

“(3) Certificate Content. EV Code Signing Certificates MUST meet the minimum content requirements of Section 8.1 and Appendix B -Extensions for EV Certificates Intended for use with SSL/TLS – of these Guidelines, except that:

“(A) the Domain Name required by Section 8.1.1(2) SHALL be omitted;

“(B) the Certificate MUST include a SubjectAltName:permanentIdentifier which MUST contain the following:

“(1) The ISO 3166-2 country code in uppercase characters corresponding to the Subject’s Jurisdiction of Incorporation or Registration (CC), as specified in the subject:jurisdictionOfIncorporationCountryName field;

“(2) If applicable, the state, province, or locality of the Subject’s Jurisdiction of Incorporation in uppercase characters as specified in the subjectjurisdictionOfIncorporationLocalityName or subject:jurisdictionofIncorporationStateorProvinceName field, expressed in an unabbreviated format (STATE); and

“(3) The first one of the following that applies: a. The Registration Number as included in the Subject:serialNumber field (REG), b. A date of Incorporation or Registration in YYYY-MM-DD format (DATE) and the Subject’s Organization Name as included in the organizationName field (ORG), c. A verifiable date of creation in YYYY-MM-DD format (DATE) and the Subject’s Organization Name as included in the organizationName field (ORG), or d. The Subject’s Organization Name as included in the organizationName field (ORG).

“The CA SHALL format data in the SubjectAltName:permanentIdentifier extension using Unicode as follows: CC-STATE (if applicable)- REG or DATE (if available)-ORG (if REG is not present). Characters representing the organization name MUST be uppercase Unicode. Any included “-“ characters MUST be Unicode 002D and any included spaces in REG, STATE, or ORG MUST be Unicode 0020. A CA MAY truncate or abbreviate an organization name included in this field to ensure that the combination does not exceed 64 characters provided that the CA checks this field in accordance with section 10.11.1 and a Relying Party will not be misled into thinking that they are dealing with a different organization. If this is not possible, the CA MUST NOT issue the EV Code Signing Certificate.

“(C) the keyUsage extension MUST be set as follows: This extension MUST be present and MUST be marked critical. The bit position for digitalSignature MUST be set. All other bit positions SHOULD NOT be set; AND

“(D) the extended keyUsage extension MUST be set as follows: This extension MUST be present, and the value id-kp-codeSigning MUST be present. Other values SHOULD NOT be present.

… Erratum ends …

The ballot review period comes into effect at 21:00 UTC on April 24, 2012 and will close at 21:00 UTC on May 1, 2012. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on May 8, 2012. Votes must be cast by “reply all” to this email.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.

… Motion ends …