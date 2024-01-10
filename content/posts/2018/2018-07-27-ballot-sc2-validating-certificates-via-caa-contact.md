---
aliases:
- /2018/07/27/ballot-sc2-validating-certificates-via-caa-contact/
author: Jos Purvis
date: 2018-07-27 00:56:34
tags:
- Ballot
- Server Certificates
title: Ballot SC2 – Validating Certificates via CAA CONTACT
type: post
---

The voting period for Ballot SC2 has ended and the ballot has failed. Here are the results.

## Voting by CAs – 25 votes total, including abstentions

- **20 Yes votes:** Amazon, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, QuoVadis, SECOM, SHECA, SSL.com, SwissSign, TWCA, TrustCor, Visa

- **0 No votes:**

- **5 Abstain:** Actalis, Comodo CA, Disig, KPN Corporate Market, SSC

100% of voting CAs voted in favor

## Voting by browsers – 8 votes total, including abstentions

- **2 Yes votes:** Microsoft, Opera

- **2 No votes:** Cisco, Google

- **4 Abstain:** Apple, Comodo Group Inc., Mozilla, 360

50% of voting browsers voted in favor

## Quorum requirements

Currently active members: 23

Quorum: 12

Votes cast (including abstentions): 33

Quorum met: Yes

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for CAs but was **not** met for browsers.

## Ballot SC2 fails.

## Ballot SC2: CAA Contact Property and Associated Validation Methods

Purpose of Ballot: Increasingly, contact information is not available in WHOIS due to concerns about potential GDPR violations. This ballot specifies a method by which domain holders can publish their contact information via DNS, and how CAs can use that information for validating domain control.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Bruce Morton of Entrust and Doug Beattie of GlobalSign.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.5.7:

Add Section 3.2.2.4.13: Domain Owner Email published in DNS

Confirm the Applicant’s control over the FQDN by (i) sending an email to a DNS domain name holder, (ii) including a Random Value in the email, and (iii) receiving a confirming response utilizing the Random Value. The CA MUST send the email to an email address found in the CAA Contact property record as defined in Appendix B.

Each email MAY confirm control of multiple FQDNs, provided the email address used is a DNS contact email address for each FQDN being confirmed.

The Random Value SHALL be unique in each email. The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient SHALL remain unchanged. The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Section 3.2.2.4.14: Domain Owner Phone published in DNS

Confirm the Applicant’s control over the FQDN by calling the DNS domain name holder phone number and obtaining a response confirming the Applicant’s request for validation of the FQDN. The CA MUST place the call to a phone number identified in the CAA Contact property record as defined in Appendix B.

Each phone call SHALL be made to a single number and MAY confirm control of multiple FQDNs, provided that the phone number is identified by the DNS contact as a valid contact method for every Base Domain Name being verified using the phone call.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Section 3.2.2.4.15: Domain Owner Email published in TXT record

Confirm the Applicant’s control over the FQDN by (i) sending an email to a DNS domain name holder, (ii) including a Random Value in the email, and (iii) receiving a confirming response utilizing the Random Value. The CA MUST send the email to an email address found in the DNS TXT record as defined in Appendix B.

Each email MAY confirm control of multiple FQDNs, provided the email address used is a DNS contact email address for each FQDN being confirmed.

The Random Value SHALL be unique in each email. The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient SHALL remain unchanged. The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

\##### 3.2.2.4.16 Domain Owner Phone published in TXT record

Confirm the Applicant’s control over the FQDN by calling the DNS domain name holder phone number and obtaining a response confirming the Applicant’s request for validation of the FQDN. The CA MUST place the call to a phone number identified in the DNS TXT record defined in Appendix B.

Each phone call SHALL be made to a single number and MAY confirm control of multiple FQDNs, provided that the phone number is identified by the DNS contact as a valid contact method for every Base Domain Name being verified using the phone call.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Appendix B: CAA Contact Tag

The syntax for the contact property is similar to the iodef property. It allows domain owners to publish contact information in DNS in addition to WHOIS for the purpose of validating domain control.

CAA contact Property

contact : The contact property entry specifies the authorized means of contacting the holder of the domain or another party who is authorized to approve issuance of certificates for the domain.

The contact property specifies a means of contacting the domain holder, or another party that is authorized to approve issuance of certificates for the domain in question.

The contact property takes a URL as its parameter. The following URL scheme types SHOULD be implemented:

mailto: An SMTP email address where the domain holder or other authorized party can be contacted.

tel: A telephone number where the domain holder or other authorized party can be contacted.

Schemes other than “mailto:” or “tel:” MUST NOT be used. Telephone numbers MUST include the country code and be global phone numbers as defined by RFC 3966.

The following is an example where the holder of the domain specified the contact property using both an email address and a phone number.

$ORIGIN example.com

. CAA 0 issue “ca.example.net”

. CAA 0 contact “”

. CAA 0 contact “”

\## Support for Legacy Systems

Some systems still do not have sufficient support for CAA records. To allow users of those systems to specify contact information, a legacy format using text records is allowed. The CAA contact property SHOULD be used instead of TXT records, where feasible.

The DNS TXT record MUST be placed on the “\_caa_contact” subdomain of the domain being validated. The DNS record MUST be named “domain-authorization-email” or “domain-authorization-phone”. The value of “domain-authorization-email” MUST contain a valid email address, or it cannot be used. The value of “domain-authorization-phone” must be a global phone number, including country code, as defined in RFC 3966 or it cannot be used.

## Motion ends

A comparison of the changes can be found at:

The procedure for approval of this ballot is as follows:

## Discussion (7+ days)

Start Time: 2018-07-11 10:30am EST

End Time: 2018-07-19 11:00am EST

## Vote for approval (7 days)

Start Time: 2018-07-19 11:00am EST

End Time: 2018-07-26 11:00am EST