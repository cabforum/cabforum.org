---
aliases:
- /2015/09/28/ballot-151-addition-of-optional-oids-for-indicating-level-of-validation/
author: Ben Wilson
date: 2015-09-28 16:12:29
tags:
- Ballot
- Server Certificates
title: Ballot 151 – Addition of Optional OIDs for Indicating Level of Validation
type: post
---

## Ballot 151 – Addition of Optional OIDs for Indicating Level of Validation

Ballot 151, OID revisions, closed on September 28th 2015. The Chair received 22 votes from CAs in which 19 were in favor, 0 against and 3 abstentions and 3 votes from Browsers in which 2 were in favor, 0 against and 1 abstention. Therefore the ballot passes.

The following motion has been proposed by Dean Coclin of Symantec and endorsed by Jeremy Rowley of Digicert and Kirk Hall of Trend Micro.

## Motion begins

1. Modify section 1.2 of Baseline Requirements as follows:

**1.2 Document Name and Identification**

This certificate policy (CP) contains the requirements for the issuance and management of publicly‐trusted SSL certificates, as adopted by the CA/Browser Forum.

The following Certificate Policy identifiers are reserved for use by CAs as an optional means of asserting compliance with this CP (OID arc 2.23.140.1.2) as follows:

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐ requirements(2) domain‐validated(1)} (2.23.140.1.2.1);

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐ requirements(2) organization-validated(2)} (2.23.140.1.2.2) and

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐ requirements(2) individual-validated(3)} (2.23.140.1.2.3).

2. Modify section 7.1.6.1 of the Baseline Requirements as follows:

**7.1.6.1. Reserved Certificate Policy Identifiers**

This section describes the content requirements for the Root CA, Subordinate CA, and Subscriber Certificates, as they relate to the identification of Certificate Policy.

The following Certificate Policy identifiers are reserved for use by CAs as an optional means of asserting compliance with these Requirements as follows:

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐requirements(2) domain‐validated(1)} (2.23.140.1.2.1), if the Certificate complies with these Requirements but lacks Subject Identity Information that is verified in accordance with either Section 3.2.2.1 or Section 3.2.3.

If the Certificate asserts the policy identifier of 2.23.140.1.2.1, then it MUST NOT include organizationName, givenName, surname, streetAddress, localityName, stateOrProvinceName, or postalCode in the Subject field.

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐requirements(2) organization-validated(2)} (2.23.140.1.2.2), if the Certificate complies with these Requirements and includes Subject Identity Information that is verified in accordance with Section 3.2.2.1.

{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) baseline‐requirements(2) individual-validated(3)} (2.23.140.1.2.3), if the Certificate complies with these Requirements and includes Subject Identity Information that is verified in accordance with Section 3.2.3.

If the Certificate asserts the policy identifier of 2.23.140.1.2.2, then it MUST also include organizationName, localityName (to the extent such field is required under Section 7.1.4.2.2), stateOrProvinceName (to the extent such field is required under Section 7.1.4.2.2), and countryName in the Subject field. If the Certificate asserts the policy identifier of 2.23.140.1.2.3, then it MUST also include (i) either organizationName or givenName and surname, (ii) localityName (to the extent such field is required under Section 7.1.4.2.2), (iii) stateOrProvinceName (to the extent required under Section 7.1.4.2.2), and (iv) countryName in the Subject field.

3. Modify the definition of “EV OID” in the EV Guidelines as follows:

**EV OID**: An identifying number, in the form of an “object identifier,” that is included in the certificatePolicies field of a certificate that: (i) indicates which CA policy statement relates to that certificate, and (ii) is either the CA/Browser Forum EV policy identifier or a policy identifier that, by pre-agreement with one or more Application Software Supplier, marks the certificate as being an EV Certificate.

4. Modify Section 9.3.2 of the EV Guidelines as follows:

Each EV Certificate issued by the CA to a Subscriber MUST contain a policy identifier that is either defined by these Guidelines or the CA in the certificate’s certificatePolicies extension that: (i) indicates which CA policy statement relates to that Certificate, (ii) asserts the CA’s adherence to and compliance with these Guidelines, and (iii), is either the CA/Browser Forum’s EV policy identifier or a policy identifier that, by pre-agreement with the Application Software Supplier, marks the Certificate as being an EV Certificate.

The following Certificate Policy identifier is the CA/Browser Forum’s EV policy identifier:
{joint‐iso‐itu‐t(2) international‐organizations(23) ca‐browser‐forum(140) certificate‐policies(1) ev-guidelines (1) } (2.23.140.1.1), if the Certificate complies with these Guidelines.

If the ballot passes, the custodian of the Forum OIDs will be instructed to obtain the new OID for IV as indicated above.

## Motion ends

The review period for this ballot shall commence at 2200 UTC on Monday, September 14, 2015, and will close at 2200 UTC on Monday, September 21, 2015. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Monday, September 28, 2015. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.