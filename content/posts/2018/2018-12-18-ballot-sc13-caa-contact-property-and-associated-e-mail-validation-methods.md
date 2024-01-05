---
aliases:
- /2018-12-18-ballot-sc13-caa-contact-property-and-associated-e-mail-validation-methods/
author: Wayne Thayer
date: 2018-12-18 16:46:00
tags:
- Ballot
- Server Certificates
title: 'Ballot SC13: CAA Contact Property and Associated E-mail Validation Methods'
type: post
---

The voting period for Ballot SC13 has ended and the **Ballot has Passed**. Here are the results:

**Voting by Certificate Issuers – 21 votes total including abstentions**

- **20 Yes votes:** Actalis, Amazon, Camerfirma, Certinomis, Chunghwa Telecom, D-TRUST, DarkMatter, DigiCert, Entrust, GDCA, GlobalSign, GoDaddy, HARICA, OATI, Quovadis, SecureTrust, SHECA, SSL.com, TURKTRUST, Visa
- **1 No vote:** Sectigo
- **0 Abstain:**

95% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 4 votes total including abstentions**

- **4 Yes votes:** Cisco, Comodo Security Solutions, Microsoft, Mozilla
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor

**Relevant Bylaw references**
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11 votes** – quorum was met.

**Purpose of Ballot:** Increasingly, contact information is not available in WHOIS due to concerns about potential GDPR violations. This ballot specifies a method by which domain holders can publish their contact information via DNS, and how CAs can use that information for validating domain control.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Bruce Morton of Entrust and Doug Beattie of GlobalSign.

**— MOTION BEGINS —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.0:

Add the following definitions to section 1.6.1:

DNS CAA Email Contact: The email address defined in section B.1.2.

DNS TXT Record Email Contact: The email address defined in section B.2.2.

Add Section 3.2.2.4.13: Email to DNS CAA Contact

Confirming the Applicant’s control over the FQDN by sending a Random Value via email and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to a DNS CAA Email Contact. The relevant CAA Resource Record Set MUST be found using the search algorithm defined in RFC 6844 Section 4, as amended by Errata 5065 (Appendix A).

Each email MAY confirm control of multiple FQDNs, provided that each email address is a DNS CAA Email Contact for each Authorization Domain Name being validated. The same email MAY be sent to multiple recipients as long as all recipients are DNS CAA Email Contacts for each Authorization Domain Name being validated.

The Random Value SHALL be unique in each email. The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient(s) SHALL remain unchanged. The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Section 3.2.2.4.14: Email to DNS TXT Contact

Confirming the Applicant’s control over the FQDN by sending a Random Value via email and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to a DNS TXT Record Email Contact for the Authorization Domain Name selected to validate the FQDN.

Each email MAY confirm control of multiple FQDNs, provided that each email address is DNS TXT Record Email Contact for each Authorization Domain Name being validated. The same email MAY be sent to multiple recipients as long as all recipients are DNS TXT Record Email Contacts for each Authorization Domain Name being validated.

The Random Value SHALL be unique in each email. The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient(s) SHALL remain unchanged. The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add Appendix B: DNS Contact Properties

These methods allow domain owners to publish contact information in DNS for the purpose of validating domain control.

B.1. CAA Methods

B.1.1. CAA contactemail Property

SYNTAX: contactemail

The CAA contactemail property takes an email address as its parameter. The entire parameter value MUST be a valid email address as defined in RFC 6532 section 3.2, with no additional padding or structure, or it cannot be used.

The following is an example where the holder of the domain specified the contact property using an email address.

$ORIGIN [example.com](http://example.com).

CAA 0 contactemail “”

The contactemail property MAY be critical, if the domain owner does not want CAs who do not understand it to issue certificates for the domain.

B.2. DNS TXT Methods

B.2.1. DNS TXT Record Email Contact

The DNS TXT record MUST be placed on the “\_validation-contactemail” subdomain of the domain being validated. The entire RDATA value of this TXT record MUST be a valid email address as defined in RFC 6532 section 3.2, with no additional padding or structure, or it cannot be used.

**— MOTION ENDS —**

\*\** WARNING ***: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at: [https://github.com/cabforum/documents/compare/Ballot-SC4—CAA-CONTACT-email?diff=unified&expand=1](https://github.com/cabforum/documents/compare/Ballot-SC4---CAA-CONTACT-email?diff=unified&expand=1)

The changes between version 5 and version 4 are here:

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2018-12-10 17:30 Eastern

End Time: Not before 2018-12-17 17:30 Eastern

Vote for approval (7 days)

Start Time: 2018-12-17 19:00 Eastern

End Time: 2018-12-24 19:00 Eastern