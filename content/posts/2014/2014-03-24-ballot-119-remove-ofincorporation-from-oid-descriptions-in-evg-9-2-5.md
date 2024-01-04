---
aliases:
- /2014-03-24-ballot-119-remove-ofincorporation-from-oid-descriptions-in-evg-9-2-5/
author: Ben Wilson
date: 2014-03-24 16:42:59
tags:
- Server Certificates
title: Ballot 119 – Remove “OfIncorporation” from OID descriptions in EVG 9.2.5(passed)
type: post
---

**Ballot 119 – Remove “OfIncorporation” from OID descriptions in EVG 9.2.5**
Yea: ANF, Certinomis, Comodo, DigiCert, GlobalSign, Izenpe, Logius PKIoverheid, OpenTrust, QuoVadis, SECOM Trust, SSC, StartCom, Symantec, Trend Micro, Trustis, WoSign, Google, Microsoft, and Mozilla.

Nay: None

Abstain: None

Result: Ballot passed

Rob Stradling of Comodo made the following motion, and Ben Wilson from DigiCert and Chema López González from AC Firmaprofesional S.A. have endorsed it.

The EV Guidelines require certificates to include the jurisdiction where the Subject has registered or incorporated. Subsection 9.2.5 of the EV Guidelines is titled, “Subject Jurisdiction of Incorporation or Registration Field”.  However, the OID names provided in that section use the string “OfIncorporation”, which is overly specific and might be considered misleading, because not all business entities with EV certificates are corporations. Therefore, the string “OfIncorporation” should be deleted from these OID names.

**Motion Begins**

DELETE the string “OfIncorporation” from the OID names in the three certificate fields in Section 9.2.5 (Subject Jurisdiction of Incorporation or Registration Field) so that the section, as amended, will read as follows:

**Certificate fields:**

**Locality (if required):**

subject:jurisdictionLocalityName (OID: 1.3.6.1.4.1.311.60.2.1.1)

ASN.1 – X520LocalityName as specified in RFC 5280

**State or province (if required):**

subject:jurisdictionStateOrProvinceName (OID: 1.3.6.1.4.1.311.60.2.1.2)

ASN.1 – X520StateOrProvinceName as specified in RFC 5280

**Country:**

subject:jurisdictionCountryName (OID: 1.3.6.1.4.1.311.60.2.1.3)

ASN.1 – X520countryName as specified in RFC 5280

**Required/Optional:  ** Required

**Contents: ** These fields MUST NOT contain information that is not relevant to the level of the Incorporating Agency or Registration Agency. For example, the Jurisdiction of Incorporation for an Incorporating Agency or Jurisdiction of Registration for a Registration Agency that operates at the country level MUST include the country information but MUST NOT include the state or province or locality information. Similarly, the jurisdiction for the applicable Incorporating Agency or Registration Agency at the state or province level MUST include both country and state or province information, but MUST NOT include locality information. And, the jurisdiction for the applicable Incorporating Agency or Registration Agency at the locality level MUST include the country and state or province information, where the state or province regulates the registration of the entities at the locality level, as well as the locality information. Country information MUST be specified using the applicable ISO country code. State or province or locality information (where applicable) for the Subject’s Jurisdiction of Incorporation or Registration MUST be specified using the full name of the applicable jurisdiction.

**Motion Ends**

The review period for this ballot shall commence at 2200 UTC on Monday, 10 March 2014, and will close at 2200 UTC on Monday, 17 March 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Monday, 24 March 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: [/members/][1]

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Also, at least six members must participate in the ballot, either by voting in favor, voting against, or abstaining.

[1]: /members/ "Members"