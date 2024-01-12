---
aliases:
- /2019/05/21/ballot-sc19-phone-contact-with-dns-caa-phone-contact-v2/
author: Wayne Thayer
date: 2019-05-21 15:58:41
tags:
- Ballot
- Server Certificates
title: 'Ballot SC19: Phone Contact with DNS CAA Phone Contact v2'
type: post
---

The voting period for Ballot SC19 has ended and the **Ballot has Passed**. Here are the results:

**Voting by Certificate Issuers – 20 votes total including abstentions**

- **20 Yes votes:** Buypass, Certum (Asseco), Chunghwa Telecom, D-TRUST, DarkMatter, DigiCert, Disig, eMudhra, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, Kamu SM, SHECA, SwissSign, TrustCor, SecureTrust (former Trustwave), TurkTrust, Visa

- **0 No votes:**

- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 5 votes total including abstentions**

- **5 Yes votes:** Apple, Cisco, Google, Microsoft, Mozilla

- **0 No votes:**

- **0 Abstain:**

100% of voting Certificate Consumers voted in favor

**Relevant Bylaw references**
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
21 member companies attended the last teleconference, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **10**, so quorum was **11 votes** – quorum was met.

**Purpose of Ballot:** This ballot will permit domain owners to publish phone numbers in a DNS CAA record for the purposes of performing domain validation.

The following motion has been proposed by Doug Beattie of GlobalSign and endorsed Tim Hollebeek of DigiCert and Bruce Morton from Entrust.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.4.

Add the following definition to section 1.6.1:

DNS CAA Phone Contact: The phone number defined in section B.1.2.

Add the following Acronym to section 1.6.2:

ADN Authorization Doman Name

Add Section 3.2.2.4.17 as follows:

3.2.2.4.17 Phone Contact with DNS CAA Phone Contact

Confirm the Applicant’s control over the FQDN by calling the DNS CAA Phone Contact’s phone number and obtain a confirming response to validate the ADN. Each phone call MAY confirm control of multiple ADNs provided that the same DNS CAA Phone Contact phone number is listed for each ADN being verified and they provide a confirming response for each ADN. The relevant CAA Resource Record Set MUST be found using the search algorithm defined in RFC 6844 Section 4, as amended by Errata 5065 (Appendix A).

The CA MUST NOT be transferred or request to be transferred as this phone number has been specifically listed for the purposes of Domain Validation.

In the event of reaching voicemail, the CA may leave the Random Value and the ADN(s) being validated. The Random Value MUST be returned to the CA to approve the request.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add appendix section B.1.2 as follows:

B.1.2. CAA contactphone Property

SYNTAX: contactphone \<rfc3966 Global Number\>

The CAA contactphone property takes a phone number as its parameter. The entire parameter value MUST be a valid Global Number as defined in RFC 3966 section 5.1.4, or it cannot be used. Global Numbers MUST have a preceding + and a country code and MAY contain visual separators.

The following is an example where the holder of the domain specified the contact property using a phone number.

```
$ORIGIN example.com.
               CAA 0 contactphone "+1 (555) 123-4567"
```

The contactphone property MAY be critical if the domain owner does not want CAs who do not understand it to issue certificates for the domain.

## Motion ends

**WARNING**: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at (while the link name may be misleading, this is an accurate redline for SC19):

[https://github.com/dougbeattie/documents/compare/master…dougbeattie:SC18-v1-CAA-Phone-Validation][1]

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2019-05-02 12:00 Eastern

End Time: Not before 2019-05-09 12:00 Eastern

Vote for approval (7 days)

Start Time: 2019-05-13 16:30 Eastern

End Time: 2019-05-20 16:30 Eastern

[1]: https://github.com/dougbeattie/documents/compare/master...dougbeattie:SC18-v1-CAA-Phone-Validation