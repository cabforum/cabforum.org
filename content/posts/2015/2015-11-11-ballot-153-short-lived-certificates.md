---
aliases:
- /2015/11/11/ballot-153-short-lived-certificates/
author: Ben Wilson
date: 2015-11-11 23:51:27
tags:
- Ballot
- Server Certificates
title: Ballot 153 – Short-Lived Certificates
type: post
---

## Ballot 153 – Short-Lived Certificates

Ballot 153, Short-Lived Certificates revision, closed on November 10th 2015.
The Chair received **26 votes from CAs** in which 04 were in favor, 17 against and 05 abstentions and **05 votes from Browsers** in which 04 were in favor, 01 against and 0 abstention.
Therefore the ballot fails.

The following motion has been proposed by Jeremy Rowley of DigiCert and endorsed by Ryan Sleevi of Google and Gervase Markham of Mozilla.

## Motion begins

1. Add/revise the following definitions:

Issuance Time: The time at which a Certificate’s digital signature is calculated.
Short-Lived Certificate: A Certificate with a Validity Period less than 96 hours and a notBefore time no earlier than 24 hours before the Issuance Time and a notAfter time no later than 72 hours after the Issuance Time.
Validity Period: The period of time measured from notBefore through notAfter, inclusive. the date when the Certificate is issued until the Expiry Date.

2. Modify Section 4.9.10 as follows:

**4.9.10. On‐line Revocation Checking Requirements**
Effective 1 January 2013, the CA SHALL support an OCSP capability using the GET method for Certificates issued in accordance with these Requirements.
For the status of Subscriber Certificates other than a Short-Lived Certificate containing a cRLDistributionPoints extension: The CA SHALL update information provided via an Online Certificate Status Protocol at least every four days. OCSP responses from this service MUST have a maximum expiration time of ten days.

3. Modify Section 7.1.2.3 as follows:

**7.1.2.3. Subscriber Certificate** …

b. cRLDistributionPoints This extension MUST be present for Short-Lived Certificates that lack an authorityInformationAccess extension and MAY be present for all other certificates. If present, it MUST NOT be marked critical, and it MUST contain the HTTP URL of the CA’s CRL service. See Section 13.2.1 for details.

c. authorityInformationAccess With the exception of stapling and Short-Lived Certificates, which is noted below, this extension MUST be present. It MUST NOT be marked critical, and it MUST contain the HTTP URL of the Issuing CA’s OCSP responder (accessMethod = 1.3.6.1.5.5.7.48.1). It SHOULD also contain the HTTP URL of the Issuing CA’s certificate (accessMethod = 1.3.6.1.5.5.7.48.2).

The HTTP URL of the Issuing CA’s OCSP responder MAY be omitted for Short-Lived Certificates containing a cRLDistributionPoints extension or if Subscriber “staples” OCSP responses for the Certificate in its TLS handshakes \[RFC4366\].

## Motion ends

The review period for this ballot shall commence at 27 October 2015, and will close at 3 November 2015. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 10 November 2015. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response.

Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here: /about/membership/members/

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.