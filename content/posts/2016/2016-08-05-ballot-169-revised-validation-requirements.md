---
aliases:
- /2016-08-05-ballot-169-revised-validation-requirements/
author: Ben Wilson
date: 2016-08-05 21:47:02
tags:
- Server Certificates
title: Ballot 169 – Revised Validation Requirements
type: post
---

Voting on Ballot 169, Revised Validation Requirements, has ended. Here are the results:

From the CAs, we received 19 YES votes, 0 NO votes and 0 Abstentions

From the Browsers, we received 3 YES votes, 0 NO votes and 0 Abstentions

Therefore, the ballot passes unanimously.

A big thank you to the validation working group for all your efforts in working through the issues and developing a ballot which met everyone’s expectations. The results are indicative of the time you took to address comments from the group.

This ballot has an effective date of March 1, 2017.

[CA-Browser Forum BR 1.3.7-redlined w Ballot 169][1]

**Ballot 169 – Revised Validation Requirements**

The following motion has been proposed by Jeremy Rowley of DigiCert and endorsed by Tim Hollebeek of Trustwave and Doug Beattie of GlobalSign:

**Background:**  The primary purpose of this change is to replace Domain Validation item 7 “Using any other method of confirmation which has at least the same level of assurance as those methods previously described” with a specific list of the approved domain validation methods (including new methods proposed by Members). This ballot also tightens up and clarifies the existing Domain Validation methods 1 through 6. This revised BR 3.2.2.4 describes the methods that CAs may use to confirm domain ownership or control. Other validation methods can be added in the future.

The Validation Working Group believes the domain validation rules should follow the current BR 3.2.2.4 structure as much as possible so the changes are easy to understand, be worded as simply and clearly as possible so as to be easily implemented by CAs worldwide, and should avoid unnecessary complications or additional requirements that don’t address a realistic security threat. If a Forum Member believes that any new requirements to these validation methods should be added, the Validation Working Group would prefer that the new requirements be proposed and discussed by separate ballot.

Attached is a redlined version of the Baseline Requirements and an explanatory table.

**–Motion Begins–**

Effective date: Prior to 1 March 2017, CAs may use either the domain validation methods of BR 3.2.2.4 as they existed before this ballot was approved, or the domain validation methods as specified in this ballot (as they may subsequently be further amended), or both. Effective 1 March 2017, CAs may use only the domain validation methods of BR 3.2.2.4 as specified in this ballot (or as such methods may subsequently be further amended).

**Part A.** In Section 1.6.1 of the Baseline Requirements INSERT the following definitions alphabetically:

**Authorization Domain Name:** The Domain Name used to obtain authorization for certificate issuance for a given FQDN. The CA may use the FQDN returned from a DNS CNAME lookup as the FQDN for the purposes of domain validation. If the FQDN contains a wildcard character, then the CA MUST remove all wildcard labels from the left most portion of requested FQDN. The CA may prune zero or more labels from left to right until encountering a Base Domain Name and may use any one of the intermediate values for the purpose of domain validation.

**Authorized Port:** One of the following ports: 80 (http), 443 (http), 115 (sftp), 25 (smtp), 22 (ssh).

**Base Domain Name:** The portion of an applied-for FQDN that is the first domain name node left of a registry-controlled or public suffix plus the registry-controlled or public suffix (e.g. “example.co.uk” or “example.com”).   For FQDNs where the right-most domain name node is a gTLD having ICANN Specification 13 in its registry agreement, the gTLD itself may be used as the Base Domain Name.

**Domain Contact:** The Domain Name Registrant, technical contact, or administrative contract (or the equivalent under a ccTLD) as listed in the WHOIS record of the Base Domain Name or in a DNS SOA record.

**Random Value:** A value specified by a CA to the Applicant that exhibits at least 112 bits of entropy.

**Request Token:** A value derived in a method specified by the CA which binds this demonstration of control to the certificate request.

The Request Token SHALL incorporate the key used in the certificate request.

A Request Token MAY include a timestamp to indicate when it was created.

A Request Token MAY include other information to ensure its uniqueness.

A Request Token that includes a timestamp SHALL remain valid for no more than 30 days from the time of creation.

A Request Token that includes a timestamp SHALL be treated as invalid if its timestamp is in the future.

A Request Token that does not include a timestamp is valid for a single use and the CA SHALL NOT re-use it for a subsequent validation.

The binding SHALL use a digital signature algorithm or a cryptographic hash algorithm at least as strong as that to be used in signing the certificate request.

**Required Website Content:** Either a Random Value or a Request Token, together with additional information that uniquely identifies the Subscriber, as specified by the CA.

**Test Certificate:** A Certificate with a maximum validity period of 30 days and which: (i) includes a critical extension with the specified Test Certificate CABF OID, or (ii) is issued under a CA where there are no certificate paths/chains to a root certificate subject to these Requirements.

**Part B.** DELETE Section 3.2.2.4 of the Baseline Requirements in its entirety and INSERT the following:

**3.2.2.4 Validation of Domain Authorization or Control**

This section defines the permitted processes and procedures for validating the Applicant’s ownership or control of the domain.

The CA SHALL confirm that, as of the date the Certificate issues, either the CA or a Delegated Third Party has validated each Fully-Qualified Domain Name (FQDN) listed in the Certificate using at least one of the methods listed below.

Completed confirmations of Applicant authority may be valid for the issuance of multiple certificates over time. In all cases, the confirmation must have been initiated within the time period specified in the relevant requirement (such as Section 3.3.1 of this document) prior to certificate issuance. For purposes of domain validation, the term Applicant includes the Applicant’s Parent Company, Subsidiary Company, or Affiliate.

Note: FQDNs may be listed in Subscriber Certificates using dNSNames in the subjectAltName extension or in Subordinate CA Certificates via dNSNames in permittedSubtrees within the Name Constraints extension.

**3.2.2.4.1 Validating the Applicant as a Domain Contact**

Confirming the Applicant’s control over the FQDN by validating the Applicant is the Domain Contact directly with the Domain Name Registrar. This method may only be used if:

1. The CA authenticates the Applicant’s identity under BR Section 3.2.2.1 and the authority of the Applicant Representative under BR Section 3.2.5, OR
1. The CA authenticates the Applicant’s identity under EV Guidelines Section 11.2 and the agency of the Certificate Approver under EV Guidelines Section 11.8; OR
1. The CA is also the Domain Name Registrar, or an Affiliate of the Registrar, of the Base Domain Name.

**3.2.2.4.2 Email, Fax, SMS, or Postal Mail to Domain Contact**

Confirming the Applicant’s control over the FQDN by sending a Random Value via email, fax, SMS, or postal mail and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to an email address, fax/SMS number, or postal mail address identified as a Domain Contact.

Each email, fax, SMS, or postal mail MAY confirm control of multiple Authorization Domain Names.

The CA or Delegated Third Party MAY send the email, fax, SMS, or postal mail identified under this section to more than one recipient provided that every recipient is identified by the Domain Name Registrar as representing the Domain Name Registrant for every FQDN being verified using the email, fax, SMS, or postal mail.

The Random Value SHALL be unique in each email, fax, SMS, or postal mail.

The CA or Delegated Third Party MAY resend the email, fax, SMS, or postal mail in its entirety, including re-use of the Random Value, provided that the communication’s entire contents and recipient(s) remain unchanged.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values, in which case the CA MUST follow its CPS.

**3.2.2.4.3 Phone Contact with Domain Contact**

Confirming the Applicant’s control over the requested FQDN by calling the Domain Name Registrant’s phone number and obtaining a response confirming the Applicant’s request for validation of the FQDN. The CA or Delegated Third Party MUST place the call to a phone number identified by the Domain Name Registrar as the Domain Contact.

Each phone call SHALL be made to a single number and MAY confirm control of multiple FQDNs, provided that the phone number is identified by the Domain Registrar as a valid contact method for every Base Domain Name being verified using the phone call.

**3.2.2.4.4 Constructed Email to Domain Contact**

Confirming the Applicant’s control over the requested FQDN by (i) sending an email to one or more addresses created by using ‘admin’, ‘administrator’, ‘webmaster’, ‘hostmaster’, or ‘postmaster’ as the local part, followed by the at-sign (“@”), followed by an Authorization Domain Name, (ii) including a Random Value in the email, and (iii) receiving a confirming response utilizing the Random Value.

Each email MAY confirm control of multiple FQDNs, provided the Authorization Domain Name used in the email is an Authorization Domain Name for each FQDN being confirmed

The Random Value SHALL be unique in each email.

The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient SHALL remain unchanged.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values, in which case the CA must follow its CPS.

**3.2.2.4.5 Domain Authorization Document**

Confirming the Applicant’s control over the requested FQDN by relying upon the attestation to the authority of the Applicant to request a Certificate contained in a Domain Authorization Document. The Domain Authorization Document MUST substantiate that the communication came from the Domain Contact. The CA MUST verify that the Domain Authorization Document was either (i) dated on or after the date of the domain validation request or (ii) that the WHOIS data has not materially changed since a previously provided Domain Authorization Document for the Domain Name Space.

**3.2.2.4.6 Agreed-Upon Change to Website**

Confirming the Applicant’s control over the requested FQDN by confirming one of the following under the “/.well-known/pki-validation” directory, or another path registered with IANA for the purpose of Domain Validation, on the Authorization Domain Name that is accessible by the CA via HTTP/HTTPS over an Authorized Port:

1. The presence of Required Website Content contained in the content of a file or on a web page in the form of a meta tag. The entire Required Website Content MUST NOT appear in the request used to retrieve the file or web page, or
1. The presence of the Request Token or Request Value contained in the content of a file or on a webpage in the form of a meta tag where the Request Token or Random Value MUST NOT appear in the request.

If a Random Value is used, the CA or Delegated Third Party SHALL provide a Random Value unique to the certificate request and SHALL not use the Random Value after the longer of (i) 30 days or (ii) if the Applicant submitted the certificate request, the timeframe permitted for reuse of validated information relevant to the certificate (such as in Section 3.3.1 of these Guidelines or Section 11.14.3 of the EV Guidelines).

Note: Examples of Request Tokens include, but are not limited to: (i) a hash of the public key; (ii) a hash of the Subject Public Key Info \[X.509\]; and (iii) a hash of a PKCS#10 CSR. A Request Token may also be concatenated with a timestamp or other data. If a CA wanted to always use a hash of a PKCS#10 CSR as a Request Token and did not want to incorporate a timestamp and did want to allow certificate key re-use then the applicant might use the challenge password in the creation of a CSR with OpenSSL to ensure uniqueness even if the subject and key are identical between subsequent requests. This simplistic shell command produces a Request Token which has a timestamp and a hash of a CSR. E.g. echo date -u +%Y%m%d%H%M sha256sum

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently ten (10) members– at least ten members must participate in the ballot, either by voting in favor, voting against, or abstaining.

[1]: /uploads/CA-Browser-Forum-BR-1.3.7-redlined-w-Ballot-169.pdf