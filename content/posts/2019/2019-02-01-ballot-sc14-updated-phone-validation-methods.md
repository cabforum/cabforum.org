---
aliases:
- /2019-02-01-ballot-sc14-updated-phone-validation-methods/
author: Wayne Thayer
date: 2019-02-01 02:58:36
tags:
- Server Certificates
title: 'Ballot SC14: Updated Phone Validation Methods'
type: post
---

The voting period for Ballot SC14 has ended and the **Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 19 votes total including abstentions**

- **19 Yes votes:** Actalis, Amazon, Buypass, Camerfirma, Certum (Asseco), DarkMatter, DigiCert, eMudhra, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, Kamu SM, SHECA, SSL.com, TrustCor, SecureTrust (former Trustwave), TurkTrust

- **0 No vote:**

- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.
**Voting by Certificate Consumers – 5 votes total including abstentions**

- **5 Yes votes:** Apple, Google, Microsoft, Mozilla, 360
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **9**, so quorum was **10 votes** – quorum was met.

**Purpose of Ballot:** As discussed during the Validation Summit, Method 3 of the Baseline Requirements could use some improvements to close off some potential bad practices that might lead to security risks.  This Ballot tightens up the rules around phone validation in order to make sure domain authorization or control is verified with a person who is authorized to do so by introducing a replacement for Method 3. Validations done under Method 3 will continue to be valid until the end of the data reuse period, but new phone based validations must use the new method by the date specified in the ballot below.

This ballot also builds on “Ballot SC13: CAA Contact Property and Associated E-mail Validation Methods” to permit domain owners to publish Domain Validation phone numbers in DNS TXT records. Since these phone numbers are specifically for the purpose of validating domains, it’s not permissible to be transferred to a different number.

The following motion has been proposed by Doug Beattie of GlobalSign and endorsed by Bruce Morton of Entrust and Tim Hollebeek of DigiCert.

**— MOTION BEGINS —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.2 with ballot SC13 changes:

Add the following definition to section 1.6.1:

DNS TXT Record Phone Contact: The phone number defined in section B.2.2.

In section 3.2.2.4.3, after the end of the second paragraph add the following text as a new paragraph: ”CAs SHALL NOT perform validations using this method after May 31, 2019. Completed validations using this method SHALL continue to be valid for subsequent issuance per the applicable certificate data reuse periods.”

Add sections 3.2.2.4.15 and  3.2.2.4.16 as follows:

3.2.2.4.15 Phone Contact with Domain Contact

Confirm the Applicant’s control over the FQDN by calling the Domain Contact’s phone number and obtain a confirming response to validate the ADN. Each phone call MAY confirm control of multiple ADNs provided that the same Domain Contact phone number is listed for each ADN being verified and they provide a confirming response for each ADN.

In the event that someone other than a Domain Contact is reached, the CA MAY request to be transferred to the Domain Contact.

In the event of reaching voicemail, the CA may leave the Random Value and the ADN(s) being validated. The Random Value MUST be returned to the CA to approve the request.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

3.2.2.4.16 Phone Contact with DNS TXT Record Phone Contact

Confirm the Applicant’s control over the FQDN by calling the DNS TXT Record Phone Contact’s phone number and obtain a confirming response to validate the ADN. Each phone call MAY confirm control of multiple ADNs provided that the same DNS TXT Record Phone Contact phone number is listed for each ADN being verified and they provide a confirming response for each ADN.

The CA MAY NOT knowingly be transferred or request to be transferred as this phone number has been specifically listed for the purposes of Domain Validation.

In the event of reaching voicemail, the CA may leave the Random Value and the ADN(s) being validated. The Random Value MUST be returned to the CA to approve the request.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add appendix section B.2.2 as follows:

B.2.2. DNS TXT Record Phone Contact

The DNS TXT record MUST be placed on the “\_validation-contactphone” subdomain of the domain being validated. The entire RDATA value of this TXT record MUST be a valid Global Number as defined in RFC 3966 section 5.1.4, or it cannot be used.

**— MOTION ENDS —**

\*\** WARNING ***: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at: [https://github.com/dougbeattie/documents/compare/master…dougbeattie:SC14—Phone-validation-updates](https://github.com/dougbeattie/documents/compare/master...dougbeattie:SC14---Phone-validation-updates)

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2019-01-16 16:30 Eastern

End Time: Not before 2019-01-23 16:30 Eastern

Vote for approval (7 days)

Start Time: 2019-01-24 13:15 Eastern

End Time: 2019-01-31 13:15 Eastern