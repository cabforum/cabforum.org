---
aliases:
- /2016-09-07-ballot-175-addition-given-name-surname/
author: Ben Wilson
date: 2016-09-07 20:38:35
tags:
- Server Certificates
title: Ballot 175 – Addition of given name and surname
type: post
---

Voting on Ballot 175, Addition of given name and surname, has now closed. The results are as follows:

From the CA’s, we received 13 YES votes, 0 NO votes and 1 Abstention

From the Browsers, we received 2 YES votes, 0 NO votes and 1 Abstention

Therefore the ballot passes.

Full ballot results can be found here:

Thanks,

Dean Coclin

CA/B Forum Chair

**Ballot 17****5 – Addition of givenName/surname**

The following motion has been proposed by Jeremy Rowley of DigiCert and endorsed by Richard Wang of WoSign and Eddy Nigg of StartCom:

**Background:**

The CAB Forum Baseline Requirements theoretically permit use of givenName and surname under Section 7.1.4.2.2. However, the actual language of Section 7.1.4.2.2 ends up prohibiting use of these fields. This ballot permits use of givenName and surname to identify individuals validated under Section 3.2.5.

**–Motion Begins–**

Insert a new (C) under 7.1.4.2.2, renumbering all subsequent bullets.

c. Certificate Field: subject:givenName (2.5.4.42) and subject:surname (2.5.4.4)
Contents: If present, the subject:givenName field and subject:surname field MUST contain an natural person Subject’s name as verified under Section 3.2.3. A Certificate containing a subject:givenName field or subject:surname field MUST contain the (2.23.140.1.2.3) Certificate Policy OID.

d. Certificate Field: Number and street: subject:streetAddress (OID: 2.5.4.9)

- Optional if the subject:organizationName field, subject: givenName field, or subject:surname field areis Prohibited if the subject:organizationName field, subject:givenName, and subject:surname field are is absent.

- Contents: If present, the subject:streetAddress field MUST contain the Subject’s street address information as verified under Section 3.2.2.1.

e. Certificate Field: subject:localityName (OID: 2.5.4.7)

Required if the subject:organizationName field, subject:givenName field, or subject:surname field are is present and the subject:stateOrProvinceName field is absent. Optional if the subject:stateOrProvinceName field and the subject:organizationName field, subject:givenName field, or subject:surname field are present. Prohibited if the subject:organizationName field, subject:givenName, and subject:surname field are is absent.

Contents: If present, the subject:localityName field MUST contain the Subject’s locality information as verified under Section 3.2.2.1. If the subject:countryName field specifies the ISO 3166‐1 user‐assigned code of XX in accordance with Section 7.1.4.2.2(g), the localityName field MAY contain the Subject’s locality and/or state or province information as verified under Section 3.2.2.1.

f. Certificate Field: subject:stateOrProvinceName (OID: 2.5.4.8)

Required if the subject:organizationName field field, subject:givenName field, or subject:surname field are is present and the subject:localityName field is absent. Optional if the subject:localityName field and the subject:organizationName field, the subject:givenName field, or subject:surname field are present. Prohibited if the subject:organizationName field, subject:givenName field , or subject:surname field are is absent.

Contents: If present, the subject:stateOrProvinceName field MUST contain the Subject’s state or province information as verified under Section 3.2.2.1. If the subject:countryName field specifies the ISO 3166‐1 user‐assigned code of XX in accordance with Section 7.1.4.2.2(g), the subject:stateOrProvinceName field MAY contain the full name of the Subject’s country information as verified under Section 3.2.2.1.

g. Certificate Field: subject:postalCode (OID: 2.5.4.17)

Optional if the subject:organizationName, subject:givenName field, or subject:surname fields are is present. Prohibited if the subject:organizationName field, subject:givenName field, or subject:surname field are is absent.

Contents: If present, the subject:postalCode field MUST contain the Subject’s zip or postal information as verified under Section 3.2.2.1.

h. Certificate Field: subject:countryName (OID: 2.5.4.6)

Required if the subject:organizationName field, subject:givenName, or subject:surname field are is present. Optional if the subject:organizationName field, subject:givenName field, and subject:surname field are is absent.

Contents: If the subject:organizationName field is present, the subject:countryName MUST contain the two‐letter ISO 3166‐1 country code associated with the location of the Subject verified under Section 3.2.2.1. If the subject:organizationName, subject:givenName field, and subject:surname field are is absent, the subject:countryName field MAY contain the two‐letter ISO 3166‐1 country code associated with the Subject as verified in accordance with Section 3.2.2.3. If a Country is not represented by an official ISO 3166‐1 country code, the CA MAY specify the ISO 3166‐1 user‐assigned code of XX indicating that an official ISO 3166‐1 alpha‐2 code has not been assigned.

i. Certificate Field: subject:organizationalUnitName

Optional.

Contents: The CA SHALL implement a process that prevents an OU attribute from including a name, DBA, tradename, trademark, address, location, or other text that refers to a specific natural person or Legal Entity unless the CA has verified this information in accordance with Section 3.2 and the Certificate also contains subject:organizationName, subject:givenName, subject:surname, subject:localityName, and subject:countryName attributes, also verified in accordance with Section 3.2.2.1.

7.1.6.1

…

If the Certificate asserts the policy identifier of 2.23.140.1.2.1, then it MUST NOT include organizationName, givenName, surname, streetAddress, localityName, stateOrProvinceName, or postalCode in the Subject field.

…

**–Motion Ends–**

The review period for this ballot shall commence at 2200 UTC on 24 August 2016, and will close at 2200 UTC on 31 August 2016. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on 7 September 2016. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently ten (10) members– at least ten members must participate in the ballot, either by voting in favor, voting against, or abstaining.