---
aliases:
- /2018/11/06/ballot-sc4-caa-contact-property-and-associated-e-mail-validation-method/
author: Jos Purvis
date: 2018-11-06 18:34:17
tags:
- Ballot
- Server Certificates
title: 'Ballot SC4: CAA Contact Property and Associated E-mail Validation Method'
type: post
---

This ballot was in the review period for more than 21 days and voting did not start. **According to section 2.3c of the Bylaws, the ballot has failed.**

Purpose of Ballot: Increasingly, contact information is not available in WHOIS due to concerns about potential GDPR violations. This ballot specifies a method by which domain holders can publish their contact information via DNS, and how CAs can use that information for validating domain control.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Bruce Morton of Entrust and Doug Beattie of GlobalSign.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.0:

Add Section 3.2.2.4.13: Email to DNS CAA Contact

Confirming the Applicant’s control over the FQDN by sending a Random Value via email and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to an email address identified as a CAA contactemail property record as defined in Appendix B.

Each email MAY confirm control of multiple FQDNs, provided that the DNS contactemail email address is the same for each ADN being validated.

The Random Value SHALL be unique in each email. The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient SHALL remain unchanged. The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Appendix B: DNS Contact Properties

The contactemail property allows domain owners to publish contact information in DNS in addition to WHOIS for the purpose of validating domain control.

CAA contactemail Property

contactemail : The contactemail property specifies an emailaddress that can be used to perform domain validation.

The contactemail property takes an email address as its parameter. The entire parameter value of the MUST be a valid email address as defined in RFC 6532 section 3.2, with no additional padding or structure, or it cannot be used.

The following is an example where the holder of the domain specified the contact property using an email address.

```
$ORIGIN example.com
. CAA 0 issue “ca.example.net”
. CAA 0 contactemail “domainowner@example.com”
```

## Motion ends

A comparison of the changes can be found at: https://github.com/cabforum/documents/compare/Ballot-SC4---CAA-CONTACT-email?diff=unified&expand=1

The procedure for approval of this ballot is as follows:
**Discussion (7+ days):**
Start Time: 2018-10-10 3:50pm Eastern
End Time: Not before 2018-10-17 3:50pm Eastern
**Vote for approval (7 days):**
Start Time: TBD
End Time: TBD
