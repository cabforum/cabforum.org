---
aliases:
- /2017-10-23-ballot-207-asn-1-jurisdiction-ev-guidelines/
author: Ben Wilson
date: 2017-10-23 16:37:28
tags:
- Ballot
- Server Certificates
title: Ballot 207 – ASN.1 Jurisdiction in EV Guidelines
type: post
---

**Revised to include yes vote from Trustwave**

**Results on Ballot 207 – ASN.1 Jurisdiction in EV Guidelines**

The voting period for Ballot 207 has ended and the ballot has passed. Here are the results.

**Voting by CAs – 17 votes total including abstentions**

17 Yes votes: Amazon, Buypass, CFCA, Chunghwa Telecom, Comodo, D-TRUST, DigiCert, Entrust, GDCA, GlobalSign, HARICA, QuoVadis, SSL.com, SSC, SwissSign, Symantec, Trustwave

0 No votes:

1 Abstain: OATI

100% of voting CAs voted in favor

**Voting by browsers – 4 votes total including abstentions**

4 Yes votes: Apple, Google, Microsoft, Mozilla

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 9, so quorum was 10 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**The ballot passes.**

**Ballot 207 – ASN.1 Jurisdiction in EV Guidelines**

This ballot clarifies the use of the ASN.1 Jurisdiction of incorporation field used in EV Certificates.

The following motion has been proposed by Peter Bowen of Amazon and endorsed by Ben Wilson of DigiCert and Li Chun Chen of Chunghwa Telecom.

— MOTION BEGINS —

In the EV Guidelines, Section 9.2.5 Subject Jurisdiction of Incorporation or Registration Field, under Certificate Fields, STRIKE “ASN.1 – X520LocalityName as specified in RFC 5280”, “ASN.1 – X520StateOrProvinceName as specified in RFC 5280”, and “ASN.1 – X520countryName as specified in RFC 5280” so that “Certificate Fields” reads:

Certificate fields:

Locality (if required):

subject:jurisdictionLocalityName (OID: 1.3.6.1.4.1.311.60.2.1.1)

State or province (if required):

subject:jurisdictionStateOrProvinceName (OID: 1.3.6.1.4.1.311.60.2.1.2)

Country:

subject:jurisdictionCountryName (OID: 1.3.6.1.4.1.311.60.2.1.3)

In the EV Guidelines ADD an Appendix G that reads:

Appendix G – Abstract Syntax Notation One module for EV certificates

CABFSelectedAttributeTypes {joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) module(4) cabfSelectedAttribute-Types(1) 1}

DEFINITIONS ::=

BEGIN

— EXPORTS All

IMPORTS

— from Rec. ITU-T X.501 | ISO/IEC 9594-2 selectedAttributeTypes, ID, ldap-enterprise

FROM UsefulDefinitions {joint-iso-itu-t ds(5) module(1) usefulDefinitions(0) 7}

— from the X.500 series ub-locality-name, ub-state-name

FROM UpperBounds {joint-iso-itu-t ds(5) module(1) upperBounds(10) 7}

— from Rec. ITU-T X.520 | ISO/IEC 9594-6

DirectoryString{}, CountryName

FROM SelectedAttributeTypes selectedAttributeTypes;

id-evat-jurisdiction ID ::= {ldap-enterprise 311 ev(60) 2 1}

id-evat-jurisdiction-localityName ID ::= {id-evat-jurisdiction 1}

id-evat-jurisdiction-stateOrProvinceName ID ::= {id-evat-jurisdiction 2}

id-evat-jurisdiction-countryName ID ::= {id-evat-jurisdiction 3}

jurisdictionLocalityName ATTRIBUTE ::= {

SUBTYPE OF name

WITH SYNTAX DirectoryString{ub-locality-name} LDAP-SYNTAX directoryString.&id LDAP-NAME {“jurisdictionL”} ID id-evat-jurisdiction-localityName }

jurisdictionStateOrProvinceName ATTRIBUTE ::= {

SUBTYPE OF name

WITH SYNTAX DirectoryString{ub-state-name} LDAP-SYNTAX directoryString.&id LDAP-NAME {“jurisdictionST”} ID id-evat-jurisdiction-stateOrProvinceName }

jurisdictionCountryName ATTRIBUTE ::= {

SUBTYPE OF name

WITH SYNTAX CountryName SINGLE VALUE TRUE LDAP-SYNTAX countryString.&id LDAP-NAME {“jurisdictionC”} ID id-evat-jurisdiction-countryName }

END

— MOTION ENDS —

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 207 Status: Final Maintenance Guideline Start time (22:00 UTC) End time (22:00 UTC)

Discussion begins October 9, 2017 22:00 UTC and ends October 16, 2017 22:00 UTC (7 days)

Vote for approval begins October 16, 2017 22:00 UTC and ends October 23, 2017 22:00 UTC (7 days)

If vote approves ballot: Review Period (Chair to send Review Notice) (30 days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period. Upon filing of Review Notice by Chair 30 days after filing of Review Notice by Chair

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.