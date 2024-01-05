---
aliases:
- /2019-05-01-ballot-sc18-phone-contact-with-dns-caa-phone-contact/
author: Wayne Thayer
date: 2019-05-01 20:47:15
tags:
- Ballot
- Server Certificates
title: 'Ballot SC18: Phone Contact with DNS CAA Phone Contact'
type: post
---

The voting period for Ballot SC18 has ended and the **Ballot has Failed**. Here are the results:
**Voting by Certificate Issuers – 10 votes total including abstentions**

- **1 Yes vote: Comsign**

- **9 No votes: Certum (Asseco), Chunghwa Telecom, DarkMatter, DigiCert, eMudhra, Entrust Datacard, GlobalSign, Kamu SM, TrustCor**

- **0 Abstain:**

10% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 1 vote total including abstentions**

- **0 Yes votes:**

- **1 No vote: Microsoft
**

- **0 Abstain:**

NOTE: a vote was received from Cisco after the end of the voting period, so it was ignored.

0% of voting Certificate Consumers voted in favor
**Relevant Bylaw references**
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
Half of currently active Members as of the start of voting was **12**, so quorum was **13 votes** – quorum was NOT met.

**Purpose of Ballot:** This ballot will permit domain owners to publish phone numbers in a DNS CAA record for the purposes of performing domain validation.

The following motion has been proposed by Doug Beattie of GlobalSign and endorsed Tim Hollebeek of DigiCert and Bruce Morton from Entrust.

**— MOTION BEGINS —**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.4.

Add the following definition to section 1.6.1:

DNS CAA Phone Contact: The phone number defined in section B.1.2.

Add the following Acronym to section 1.6.2:

ADN      Authorization Doman Name

Add Section 3.2.2.4.17 as follows:

3.2.2.4.17 Phone Contact with DNS CAA Phone Contact

Confirm the Applicant’s control over the FQDN by calling the DNS CAA Phone Contact’s phone number and obtain a confirming response to validate the ADN. Each phone call MAY confirm control of multiple ADNs provided that the same DNS CAA Phone Contact phone number is listed for each ADN being verified and they provide a confirming response for each ADN. The relevant CAA Resource Record Set MUST be found using the search algorithm defined in RFC 6844 Section 4, as amended by Errata 5065 (Appendix A).

The CA MAY NOT be transferred or request to be transferred as this phone number has been specifically listed for the purposes of Domain Validation.

In the event of reaching voicemail, the CA may leave the Random Value and the ADN(s) being validated. The Random Value MUST be returned to the CA to approve the request.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

Add appendix section B.1.2 as follows:

B.1.2. CAA contactphone Property

SYNTAX: contactemail

The CAA contactphone property takes a phone number as its parameter. The entire parameter value MUST be a valid Global Number as defined in RFC 3966 section 5.1.4, or it cannot be used. Global Numbers MUST have a preceding + and a country code and MAY contain visual separators.

The following is an example where the holder of the domain specified the contact property using a phone number.

$ORIGIN [example.com](https://clicktime.symantec.com/a/1/RrrP5wlUIQO0UEjES80UukJCFmwihBc7ewjfd-b_CQw=?d=_T97g78l-8OxNi8y9HcnecBd6kOhpD4OMPofFY5ICoU11DJf_5A8WZNy9Ebhlk9EU1493o-cw2ufBrk_KyPjP5jHjWZzBrywM79-63FKXl0bNo6iQsoyJwUlSACCytubGSMK9qpRH2MMU3bDA-kNpoYQInVxfDn3HxqzwxirEY0OaC96e1cfUzdUtTHmBFANU7rJUC6wy8soSb3QC_xlnCShaNi5Dn4rBvui7cTKJNS-Y0rysL60AtYs5PIgO8BiMU9RbE25y_Ub-CWOD0mq6DU2VTir5ewnM5lteZQV7NKGVir566yr6VusFmdDsnGQ7IN04SOYzJHJ0BaQpW1ldsZnIdQMElOtzWgjqhZv1HbbsTJ1GTsBHUaqxrljTvKis2p07PvKBJLDUpH-4i2DTtJHidnrZuTVshduGxPcI5Plt1RPbE73ddIdkv3bT2720-0vs-vGYu5n6XuxDtgIVIor3qxDksjD_3yy38MvvVbzZwqrNPfB5NYZPw%3D%3D&u=http%3A%2F%2Fexample.com).

CAA 0 contactphone “+1 (555) 123-4567”

The contactphone property MAY be critical if the domain owner does not want CAs who do not understand it to issue certificates for the domain.

**— MOTION ENDS —**

\*\** WARNING ***: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at:

https://github.com/dougbeattie/documents/compare/master…dougbeattie:SC18-v1-CAA-Phone-Validation

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2019-04-16   16:00 Eastern

End Time: Not before 2018-04-23   16:00 Eastern

Vote for approval (7 days)

Start Time: 2019-04-23   17:15 Eastern

End Time: 2019-04-30   17:15 Eastern