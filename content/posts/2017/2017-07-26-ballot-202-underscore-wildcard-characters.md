---
aliases:
- /2017/07/26/ballot-202-underscore-wildcard-characters/
author: Ben Wilson
date: 2017-07-26 07:56:36
tags:
- Ballot
- Server Certificates
title: Ballot 202 – Underscore and Wildcard Characters
type: post
---

## Results on Ballot 202 – Underscore Character in SANs

The voting period for Ballot 202 has ended, and the ballot has failed. Here are the results.

## Voting by CAs – 19 votes total, including abstentions

- **12 Yes votes:** Actalis, Amazon, Cisco, Comodo, DigiCert, Disig, HARICA, Let’s Encrypt, QuoVadis, Symantec, TrustCor, Trustwave

- **7 No votes:** Buypass, CFCA, DocuSign France, Entrust, GDCA, GlobalSign, SHECA

- **0 Abstain:**

63% of voting CAs voted in favor

## Voting by browsers – 3 votes total, including abstentions

- **3 Yes votes:** Apple, Google, Mozilla

- **0 No votes:**

- **0 Abstain:**

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes. 22 votes (including abstentions) were cast – quorum was met.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for browsers but was not met for CAs.

## Ballot 202 fails.

## Ballot 202 – Underscore and Wildcard Characters

The current Baseline Requirements do not expressly allow underscore
characters in Subject Alternative Names. This ballot seeks to clarify that
one or more underscore characters (“\_”) are allowed in FQDNs. In many places
it also replaces the term “FQDN” with “Domain Name” because “Domain Name”
now means either “FQDN” or “Wildcard Domain Name”. The ballot clarifies
validation of wildcard domain names. It also cleans up some of the language
in Sections 3.2.2.4 and 7.1.4.2.1 of the Baseline Requirements.

The following motion has been proposed by Ben Wilson of DigiCert and
endorsed by Peter Bowen of Amazon and Ryan Sleevi of Google to introduce new
Final Maintenance Guidelines for the “Baseline Requirements Certificate
Policy for the Issuance and Management of Publicly-Trusted Certificates”
(Baseline Requirements).

–Motion Begins–

A. In Sections 1.3.2, 1.6 (Base Domain Name), 2.2, 3.2.2.4, 3.2.2.4.5,
3.2.2.4.6, 3.2.2.4.10, 3.2.2.4.11, 4.2.1, 4.9.1.1.6, and 4.9.11 of the
Baseline Requirements, REPLACE the words “Fully Qualified Domain Name” and
“FQDN” with “Domain Name”.

B. In Section 1.6.1 of the Baseline Requirements, REPLACE the definition for
“Authorization Domain Name” with the following: The Domain Name used to
obtain authorization for certificate issuance for a given Domain Name. The
CA may use the FQDN returned from a DNS CNAME lookup as the Domain Name for
the purposes of domain validation. If the Domain Name is a Wildcard Domain
Name, then the CA MUST remove “\*.” from the left most portion of requested
Domain Name. The CA may prune zero or more labels from left to right until
encountering a Base Domain Name and may use any one of the intermediate
values for the purpose of domain validation.

C. In Section 1.6.1 of the Baseline Requirements, INSERT the following
definition: “Domain Label: An individual component of a Domain Name.”

D. In Section 1.6.1 of the Baseline Requirements, REPLACE the definition for
“Domain Name” with the following: A set of one or more Domain Labels, each
separated by a single full stop character (“.”).

E. In Section 1.6.1 of the Baseline Requirements, REPLACE the definition for
“Fully-Qualified Domain Name” with the following: A Domain Name that
includes the Domain Labels of all superior nodes in the Internet Domain Name
System.

F. In Section 1.6.1 of the Baseline Requirements, REPLACE the definition for
“Reserved IP Address” with the following: An IPv4 or IPv6 address that the
IANA has “False” for Globally Reachable in either of the IANA
Special-Purpose IP Address Registries:

https://www.iana.org/assignments/iana-ipv4-special-registry/iana-ipv4-special-registry.xhtml or

https://www.iana.org/assignments/iana-ipv6-special-registry/iana-ipv6-special-registry.xhtml

G. In Section 1.6.1 of the Baseline Requirements, REPLACE the definition for
“Wildcard Certificate” with the following: A Certificate containing a
Wildcard Domain Name in any of the Subject Alternative Names in the
Certificate.

H. In Section 1.6.1 of the Baseline Requirements, INSERT the following
definition: “Wildcard Domain Name: A Domain Name consisting of a single
asterisk character (“\*”) followed by a single full stop character (“.”)
followed by a Fully-Qualified Domain Name.”

I. In Section 2.2 of the Baseline Requirements, INSERT the word “requested”
in the fourth sentence between the words “processing CAA records for” and
“Domain Names” so that it reads, “processing CAA records for requested
Domain Names”.

J. REPLACE the second paragraph of Section 3.2.2.4 of the Baseline
Requirements so that it reads, “The CA SHALL confirm that, as of the date
the Certificate issues, the CA has validated each Domain Name listed in the
Certificate using at least one of the methods listed below, or is within the
Domain Namespace of a Fully Qualified Domain Name (FQDN) that has been
validated using at least one of the methods listed below (not including the
method defined in section 3.2.2.4.8).”

K. REPLACE Section 3.2.2.6 of the Baseline Requirements in its entirety
with:

3.2.2.6. Additional Validation for Wildcard Certificates

Before issuing a Wildcard Certificate, the CA MUST establish and follow a
documented procedure\[^pubsuffix\] that determines if the FQDN portion of any
Wildcard Domain Name in the certificate is “registry-controlled” or is a
“public suffix” (e.g. “\*.com”, “\*.co.uk”, see RFC 6454 Section 8.2 for
further explanation).

If the FQDN portion of any Wildcard Domain Name in the certificate is
“registry-controlled” or is a “public suffix”, CAs MUST refuse issuance
unless the applicant proves its rightful control of the entire Domain
Namespace. (e.g. CAs MUST NOT issue “\*.co.uk” or “\*.local”, but MAY issue
“\*.example.com” to Example Co.).

\[^pubsuffix\] Determination of what is “registry-controlled” versus the
registerable portion of a Country Code Top-Level Domain Namespace is not
standardized at the time of writing and is not a property of the DNS itself.
Current best practice is to consult a “public suffix list” such as http://publicsuffix.org/
(PSL), and to retrieve a fresh copy regularly. If
using the PSL, a CA SHOULD consult the “ICANN DOMAINS” section only, not the
“PRIVATE DOMAINS” section. The PSL is updated regularly to contain new gTLDs
delegated by ICANN, which are listed in the “ICANN DOMAINS” section. A CA is
not prohibited from issuing a Wildcard Certificate to the Registrant of an
entire gTLD, provided that control of the entire namespace is demonstrated
in an appropriate way.

L. REPLACE Section 7.1.4.2.1 of the Baseline Requirements in its entirety
with:

7.1.4.2.1 Subject Alternative Name Extension

Certificate Field: extensions:subjectAltName

Required/Optional: Required

Contents: This extension MUST contain at least one entry. Each entry MUST be
one of the following types:

1. dNSName: the entry MUST contain either a Fully-Qualified Domain Name or
   Wildcard Domain Name that the CA has validated in accordance with section
   3.2.2.4. FQDNs and the FQDN portion of Wildcard DNs must comply with RFC
   5280 section 4.2.1.6 with the following exception: underscore characters
   (“\_”) are allowed in Domain Labels such that replacing all underscore
   characters with hyphen characters (“-“) would result in a valid Domain
   Label. CAs MUST NOT include Domain Labels which have hyphens as the third
   and fourth characters unless the first character is “x” or “X”, the second
   character is “n” or “N”, and the fifth and later characters are a valid
   Punycode string. CAs MUST additionally validate that Wildcard DNs are
   consistent with section 3.2.2.6. The entry MUST NOT contain an Internal
   Name.

1. iPAddress: the entry MUST contain an IP address that the CA has validated
   in accordance with Section 3.2.2.5. The entry MUST NOT contain a Reserved IP
   Address.

M. REPLACE subsection a. of Section 7.1.4.2.2 of the Baseline Requirements
with:

a. Certificate Field: subject:commonName (OID 2.5.4.3)

Required/Optional: Deprecated (Discouraged, but not prohibited)

Contents: If present, this field MUST contain a single IP address or Domain
Name that is one of the values contained in the Certificate’s subjectAltName
extension (see Section 7.1.4.2.1). When including a Domain Name in a common
name, CAs MUST only use LDH labels as defined in RFC 5890 and MUST NOT use
U-labels. When including an IPv6 address in a common name, CAs MUST use a
format conforming to Section 4 or Section 5 of RFC 5952. When including an
IPv4 address in a common name, CAs MUST encode the name as an IPv4Address as
defined in RFC 3986.

–Motion Ends–

The procedure for approval of this Final Maintenance Guideline ballot is as
follows (exact start and end times may be adjusted to comply with applicable
Bylaws and IPR Agreement):

BALLOT 202 Status: Final Maintenance Guideline Start time (22:00 UTC) End
time (22:00 UTC)

Discussion (7 to 14 days) July 12, 2017 to July 19, 2017

Vote for approval (7 days) July 19, 2017 to July 26, 2017

If a vote of the Forum approves this ballot, the Chair will initiate a
30-day IPR Review Period by sending out an IPR Review Notice.

After 30 days of announcing the IPR Review period by the Chair:

(a) If Exclusion Notice(s) are filed, this ballot approval is rescinded and
a PAG will be created; or (b) If no Exclusion Notices are filed, this ballot
becomes effective at end of the IPR Review Period.

> \_From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final
> \_ Maintenance Guideline, such ballot will include a redline or comparison
> showing the set of changes from the Final Guideline section(s) intended to
> become a Final Maintenance Guideline, and need not include a copy of the
> full set of guidelines. Such redline or comparison shall be made against the
> Final Guideline section(s) as they exist at the time a ballot is proposed,
> and need not take into consideration other ballots that may be proposed
> subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public
list. A vote in favor of the motion must indicate a clear ‘yes’ in the
response. A vote against must indicate a clear ‘no’ in the response. A vote
to abstain must indicate a clear ‘abstain’ in the response. Unclear
responses will not be counted. The latest vote received from any
representative of a voting member before the close of the voting period will
be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast
by members in the CA category and greater than 50% of the votes cast by
members in the browser category must be in favor. Quorum is half of the
number of currently active Members, which is the average number of Member
organizations that have participated in the previous three Forum-wide
meetings (both teleconferences and face-to-face meetings). Under Bylaw
2.2(g), at least the required quorum number must participate in the ballot
for the ballot to be valid, either by voting in favor, voting against, or
abstaining.