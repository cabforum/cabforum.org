---
aliases:
- /2019/02/09/ballot-sc7-update-ip-address-validation-methods/
author: Wayne Thayer
date: 2019-02-09 00:02:24
tags:
- Ballot
- Server Certificates
title: 'Ballot SC7: Update IP Address Validation Methods'
type: post
---

The voting period for Ballot SC7 has ended and the **Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 19 votes total including abstentions**

- **19 Yes votes:** Actalis, Amazon, Buypass, Certum (Asseco), Chunghwa Telecom, DarkMatter, DigiCert, Disig, eMudhra, Entrust Datacard, GDCA, GlobalSign, HARICA, Kamu SM, Let’s Encrypt, SSL.com, TrustCor, TurkTrust, Visa

- **0 No vote:**

- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.
**Voting by Certificate Consumers – 4 votes total including abstentions**

- **4 Yes votes:** Google, Microsoft, Mozilla, 360
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **9**, so quorum was **10 votes** – quorum was met.

**Purpose of Ballot:**

Ballot 169 removed Method 11 (“Any Other Method”) from 3.2.2.4 and replaced it with explicit validation methods, but it’s sibling in 3.2.2.5 item 4 is still in the Baseline Requirements.

This ballot removes 3.2.2.5 item 4 and replaces it with an explicit list of IP validation methods.

The intention is that, moving forward, IP validation methods will be handled in the same way as domain-name validation methods, and CAs that want to use new methods or variants of existing methods must bring them to the Forum for scrutiny, first.

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Doug Beattie of GlobalSign and Tim Hollebeek of DigiCert.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.2:

_Add the following to the table in section 1.2.2:_

Compliance: 2019-08-01; Section 3.2.2.5; Summary Description: CAs MUST follow revised validation requirements in section 3.2.2.5 and MUST keep a record of IP Address validation methods used.

_Add the following definitions to section 1.6.1:_

**IP Address:** A 32-bit or 128-bit label assigned to a device that uses the Internet Protocol for communication.

**IP Address Contact:** The person(s) or entity(ies) registered with an IP Address Registration Authority as having the right to control how one or more IP Addresses are used.

**IP Address Registration Authority:** The Internet Assigned Numbers Authority (IANA) or a Regional Internet Registry (RIPE, APNIC, ARIN, AfriNIC, LACNIC).

_Replace Baseline Requirements section 3.2.2.5, in its entirety, with the following text:_

**3.2.2.5. Authentication for an IP Address**

This section defines the permitted processes and procedures for validating the Applicant’s ownership or control of an IP Address listed in a Certificate.

The CA SHALL confirm that prior to issuance, the CA has validated each IP Address listed in the Certificate using at least one of the methods specified in this section.

Completed validations of Applicant authority may be valid for the issuance of multiple Certificates over time. In all cases, the validation must have been initiated within the time period specified in the relevant requirement (such as Section 4.2.1 of this document) prior to Certificate issuance. For purposes of IP Address validation, the term Applicant includes the Applicant’s Parent Company, Subsidiary Company, or Affiliate.

After July 31, 2019, CAs SHALL maintain a record of which IP validation method, including the relevant BR version number, was used to validate every IP Address.

Note: IP Addresses verified in accordance with this section 3.2.5 may be listed in Subscriber Certificates as defined in section 7.1.4.2 or in Subordinate CA Certificates via iPAddress in permittedSubtrees within the Name Constraints extension. CAs are not required to verify IP Addresses listed in Subordinate CA Certificates via iPAddress in excludedSubtrees in the Name Constraints extension prior to inclusion in the Subordinate CA Certificate.

**3.2.2.5.1. Agreed-Upon Change to Website**

Confirming the Applicant’s control over the requested IP Address by confirming the presence of a Request Token or Random Value contained in the content of a file or webpage in the form of a meta tag under the “/.well-known/pki-validation” directory, or another path registered with IANA for the purpose of validating control of IP Addresses, on the IP Address that is accessible by the CA via HTTP/HTTPS over an Authorized Port. The Request Token or Random Value MUST NOT appear in the request.

If a Random Value is used, the CA SHALL provide a Random Value unique to the certificate request and SHALL not use the Random Value after the longer of (i) 30 days or (ii) if the Applicant submitted the certificate request, the timeframe permitted for reuse of validated information relevant to the certificate (such as in Section 4.2.1 of this document).

**3.2.2.5.2. Email, Fax, SMS, or Postal Mail to IP Address Contact**

Confirming the Applicant’s control over the IP Address by sending a Random Value via email, fax, SMS, or postal mail and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to an email address, fax/SMS number, or postal mail address identified as an IP Address Contact.

Each email, fax, SMS, or postal mail MAY confirm control of multiple IP Addresses.

The CA MAY send the email, fax, SMS, or postal mail identified under this section to more than one recipient provided that every recipient is identified by the IP Address Registration Authority as representing the IP Address Contact for every IP Address being verified using the email, fax, SMS, or postal mail.

The Random Value SHALL be unique in each email, fax, SMS, or postal mail.

The CA MAY resend the email, fax, SMS, or postal mail in its entirety, including re-use of the Random Value, provided that the communication’s entire contents and recipient(s) remain unchanged.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values, in which case the CA MUST follow its CPS.

**3.2.2.5.3. Reverse Address Lookup**

Confirming the Applicant’s control over the IP Address by obtaining a Domain Name associated with the IP Address through a reverse-IP lookup on the IP Address and then verifying control over the FQDN using a method permitted under BR Section 3.2.2.4.

**3.2.2.5.4. Any Other Method**

Using any other method of confirmation, including variations of the methods defined in BR Section 3.2.2.5, provided that the CA maintains documented evidence that the method of confirmation establishes that the Applicant has control over the IP Address to at least the same level of assurance as the methods previously described in version 1.6.2 of these Requirements.

CAs SHALL NOT perform validations using this method after July 31, 2019. Completed validations using this method SHALL NOT be re-used for certificate issuance after July 31, 2019. Any certificate issued prior to August 1, 2019 containing an IP Address that was validated using any method that was permitted under the prior version of this section 3.2.2.5 MAY continue to be used without revalidation until such certificate naturally expires.

**3.2.2.5.5. Phone Contact with IP Address Contact**

Confirming the Applicant’s control over the IP Address by calling the IP Address Contact’s phone number and obtaining a response confirming the Applicant’s request for validation of the IP Address. The CA MUST place the call to a phone number identified by the IP Address Registration Authority as the IP Address Contact. Each phone call SHALL be made to a single number.

In the event that someone other than an IP Address Contact is reached, the CA MAY request to be transferred to the IP Address Contact.

In the event of reaching voicemail, the CA may leave the Random Value and the IP Address(es) being validated. The Random Value MUST be returned to the CA to approve the request.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

**3.2.2.5.6 ACME “http-01” method for IP Addresses**

Confirming the Applicant’s control over the IP Address by performing the procedure documented for an “http-01” challenge in draft 04 of “ACME IP Identifier Validation Extension,” available at <https://tools.ietf.org/html/draft-ietf-acme-ip-04#section-4>.

**3.2.2.5.7 ACME “tls-alpn-01” method for IP Addresses**

Confirming the Applicant’s control over the IP Address by performing the procedure documented for a “tls-alpn-01” challenge in draft 04 of “ACME IP Identifier Validation Extension,” available at <https://tools.ietf.org/html/draft-ietf-acme-ip-04#section-4>.

## Motion ends

\*\\*\* WARNING \*\**: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at:[https://github.com/wthayer/documents/compare/wthayer:master…Ballot-SC7](https://github.com/dougbeattie/documents/compare/master...dougbeattie:SC14---Phone-validation-updates)

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2019-01-24 01:00 UTC

End Time: Not before 2019-01-31 01:00 UTC

Vote for approval (7 days)

Start Time: 2019-02-01 19:00 UTC

End Time: 2019-02-08 19:00 UTC