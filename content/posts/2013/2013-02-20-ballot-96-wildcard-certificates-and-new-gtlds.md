---
aliases:
- /2013/02/20/ballot-96-wildcard-certificates-and-new-gtlds/
author: Ben Wilson
date: 2013-02-20 18:11:16
tags:
- Ballot
- Server Certificates
title: Ballot 96 – Wildcard Certificates and New gTLDs
type: post
---

## Ballot 96 – Wildcard Certificates and New gTLDs (Passed)

Motion

Jeremy Rowley made the following motion, and Rick Andrews and Steve Roylance endorsed it:

… Motion Begins …

… Erratum Begins …

Add the following as new Section 11.1.3:

11.1 Authorization by Domain Name Registrant

11.1.3 Wildcard Domain Validation

Before issuing a certificate with a wildcard character (\*) in a CN or subjectAltName of type DNS-ID, the CA MUST establish and follow a documented procedure† that determines if the wildcard character occurs in the first label position to the left of a “registry-controlled” label or “public suffix” (e.g. “\*.com”, “\*.co.uk”, see RFC 6454 Section 8.2 for further explanation).

If a wildcard would fall within the label immediately to the left of a registry-controlled† or public suffix, CAs MUST refuse issuance unless the applicant proves its rightful control of the entire Domain Namespace. (e.g. CAs MUST NOT issue “\*.co.uk” or “\*.local”, but MAY issue “\*.example.com” to Example Co.).

Prior to September 1, 2013, each CA MUST revoke any valid certificate that does not comply with this section of the Requirements.

†Determination of what is “registry-controlled” versus the registerable portion of a Country Code Top-Level Domain Namespace is not standardized at the time of writing and is not a property of the DNS itself. Current best practice is to consult a “public suffix list” such as . If the process for making this determination is standardized by an RFC, then such a procedure SHOULD be preferred.

Add the following as new Section 11.1.4:

11.1.4 New gTLD Domains

CAs SHOULD NOT issue Certificates containing a new gTLD under consideration by ICANN. Prior to issuing a Certificate containing an Internal Server Name with a gTLD that ICANN has announced as under consideration to make operational, the CA MUST provide a warning to the applicant that the gTLD may soon become resolvable and that, at that time, the CA will revoke the Certificate unless the applicant promptly registers the domain name.

Within 30 days after ICANN has approved a new gTLD for operation, as evidenced by publication of a contract with the gTLD operator on \[www.ICANN.org\] each CA MUST (1) compare the new gTLD against the CA’s records of valid certificates and (2) cease issuing Certificates containing a Domain Name that includes the new gTLD until after the CA has first verified the Subscriber’s control over or exclusive right to use the Domain Name in accordance with Section 11.1.

Within 120 days after the publication of a contract for a new gTLD is published on \[www.icann.org\], CAs MUST revoke each Certificate containing a Domain Name that includes the new gTLD unless the Subscriber is either the Domain Name Registrant or can demonstrate control over the Domain Name.

… Erratum Ends …

The review period for this ballot shall commence at 21:00 UTC on 6 February 2013 and will close at 21:00 UTC on 13 February 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on 20 February 2013. Votes must be cast by posting an on-list reply to this thread.

… Motions ends …

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.