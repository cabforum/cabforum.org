---
aliases:
- /2019-05-21-ballot-sc17-version-7-alternative-registration-numbers-for-ev-certificates/
author: Wayne Thayer
date: 2019-05-21 15:53:12
tags:
- Ballot
- Server Certificates
title: 'Ballot SC17 version 7: Alternative registration numbers for EV certificates'
type: post
---

The voting period for Ballot SC17 has ended and the **Ballot has Passed**. Here are the results:

**Voting by Certificate Issuers – 24 votes total including abstentions**

- **23 Yes votes:** Actalis, Buypass, Camerfirma, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, Comsign, D-TRUST, DarkMatter, DigiCert, eMudhra, Entrust Datacard, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Kamu SM, SHECA, SSC, SecureTrust (former Trustwave), TurkTrust

- **0 No votes:**

- **1 Abstain:** TrustCor

100% of voting Certificate Issuers voted in favor.

**Note:** Disig sent a vote in reply to ballot SC17 in an email titled “Ballot SC19 version 7” stating “Disig votes “YES” on Ballot SC19.” This vote was NOT counted.

**Voting by Certificate Consumers – 6 votes total including abstentions**

- **6 Yes votes:** Apple, Cisco, Google, Microsoft, Mozilla, 360
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
21 member companies attended the last teleconference, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **10**, so quorum was **11 votes** – quorum was met.

**Purpose of Ballot:** Allow for the inclusion of additional information in certificates in order to comply with relevant EU regulations.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Dimitris Zacharopoulos of Harica and Enrico Entshew of D-Trust.

**Motivation:**

Update to CAB Forum EV Guidelines to cater for alternative registration numbers caused by EU Legal Requirements:

i. The EU Regulation No 910/2014 (eIDAS \[\]) defines regulatory requirements for certificates with an agreed quality level called Qualified. This regulation specifies in Annex IV specific requirements for “Qualified certificates for website authentication” including the statement that the certificate shall contain: “for a legal person: the name and, where applicable, registration number as stated in the official records,”

ii. It is understood that this requirement relates to validated attributes for the identification of the certificate subject and hence is best fitted in the subject’s distinguished name.

iii. In line with the regulatory framework ETSI has defined a general structure for carrying “registration numbers” in TS 119 412-1\[\] clause 5.1.4. This uses the X.520 \[\] organizationIdentifier within the subject’s distinguished name in line with its stated purpose being “holds an identification of an organization different from the organization name”. This is used for ETSI requirements to carry registration numbers for certificates, Qualified or otherwise.

iv. It is considered that this use of organizationIdentifier supports the primary purpose of EV certificates as stated in section 2.1.1 of the EV Guidelines as “other disambiguating information”.

v. A recent EU delegated Regulation 2018/389 on secure communications for payment services (RTS \[\]) states in Article 34.2 that for Qualified Website certificates (QWACs) the registration number required in eIDAS “shall be the authorisation number of the payment service provider … or equivalent \[reference made to earlier regulations relating to banks\]”.

vi. ETSI has specified TS 119 495 \[\] requirements for carrying PSD2 related registration numbers in the general structure for registration numbers defined in TS 119 412-1 clause 5.1.4 as mentioned in iii. above.

vii. ETSI has endeavoured to ensure and always intended that requirements relating to web site certificates at the Qualified level are in line with the CA/B Forum EV Guidelines.

viii. This proposal only includes some of the Registration Schemes as used in ETSI TS 119 412-1, which have clear validation rules (NTR, VAT, PSD) that provide reasonable assurance in line with the EV Guidelines. The IPR for the semantics of this scheme is proposed to be released to the CA/B Forum allowing it to further extend the use of organizationIdentifier to include other Registration Schemes (e.g. LEI) and corresponding validation rules, at the CA/B Forum’s discretion. Also, any further changes by ETSI to ETSI TS 119 412-1 will not impact the CA/B Forum.

ix. Having found out that CA/B Forum’s interpretation of EV Requirements in section 9.2.8 “Other Attributes” was not in line with those understood by ETSI experts, ETSI would like to harmonise with CA/B Forum approach to carrying alternative forms of registration number for PSD2 and other registration schemes.

b) CA/B Forum specific concerns are:

i. Requirements regarding Attributes to be included in the Subject DN need to be explicitly covered in 9.2.

ii. Organisations may wish to identify OrganisationalUnits within their organisation. It is unclear if this is currently allowed in the EV Guidelines (similar ambiguity in section 9.2.8).

iii. There are objections to ETSI specific usage of the orgID field (no squatting).

iv. The procedures for validation of the attribute need to be clearly stated.

v. There may be other uses of the organizationIdentifier field in various PKIs, however it is not considered to be a problem. Because of the unique semantics we are specifying for each identifier, applications should be able to understand different uses of the OrgID field by different issuers and users. There are many different “PKIs” out there that can use all X.500 attributes differently and with different validation or no validation at all. To the best of our knowledge, the WebPKI has never used this subjectDN attribute before for Publicly-Trusted Certificates. Thus there is no “conflict” by using this attribute in the EV Guidelines for SSL/TLS Certificates, and perhaps later for EV Code Signing Certificates.

vi. This use of organisationIdentifier must be extendable to allow for use by other registration numbers allocated by different registration schemes. Some CAB Forummembers have indicated interest in carrying registration numbers other than for Incorporation within EV Certificates. This is catered for in the current proposal.

vii. There is interest by some CA/B Forum members in carrying LEIs within CA/B Forum certificates but as yet the LEI registration scheme is not currently considered sufficiently robust to be recognised as an registration numbering scheme to be accepted by CA/B Forum. Therefore this proposal only introduces a limited set of Registration Schemes (namely NTR, VAT, PSD) which have reasonably robust validation rules.

viii. Some CA/B Forum members have indicated the possible need for multiple identifiers in the subject name. This, however, cannot be achieved using X.520 organizationIdentifier which defined this attribute as being “SINGLE VALUE”.  The use of a single value has the advantage is it is clear what is the registration, in addition to the company registration, which identifies the subject.

**—MOTION BEGINS—**

Purpose of Ballot: Update to CAB Forum EV Guidelines to allow alternative registration numbers

Proposed Ballot for Changes to EVG 1.6.9

Add to section 4 definitions:

“Legal Entity: A Private Organization, Government Entity, Business Entity, or Non-Commercial Entity.

Registration Reference: A unique identifier assigned to a Legal Entity.

Registration Scheme: A scheme for assigning a Registration Reference meeting the requirements identified in Appendix H.”

Retitle Section 9.2 as “Subject Distinguished Name Fields”.

Remove Section 9.2.2 and renumber sections 9.2.3 through 9.2.8 to 9.2.2 through 9.2.7.

Insert new section 9.2.8:

“9.2.8. Subject Organization Identifier Field

**Certificate field**: organizationIdentifier (OID: 2.5.4.97)

**Required/Optional**: Optional

**Contents**: If present, this field MUST contain a Registration Reference for a Legal Entity assigned in accordance to the identified Registration Scheme.

The organizationIdentifier MUST be encoded as a PrintableString or UTF8String (see RFC 5280).

The Registration Scheme MUST be identified using the following structure in the presented order:

- 3 character Registration Scheme identifier;

- 2 character ISO 3166 country code for the nation in which the Registration Scheme is operated, or if the scheme is operated globally ISO 3166 code “XG” shall be used

- For the NTR Registration Scheme identifier, if required under Section 9.2.4, a two character ISO 3166-2 identifier for the subdivision (state or province) of the nation in which the Registration Scheme is operated, preceded by plus “+” (0x2B (ASCII), U+002B (UTF-8));

- a hyphen-minus “-” (0x2D (ASCII), U+002D (UTF-8));

- Registration Reference allocated in accordance with the identified Registration Scheme

Note: Registration References MAY contain hyphens, but Registration Schemes, ISO 3166 country codes, and ISO 3166-2 identifiers do not. Therefore if more than one hyphen appears in the structure, the leftmost hyphen is a separator, and the remaining hyphens are part of the Registration Reference.

As in section 9.2.4, the specified location information MUST match the scope of the registration being referenced.

Examples:

- NTRGB-12345678 (NTR scheme, Great Britain, Unique Identifier at Country level is 12345678)

- NTRUS+CA-12345678 (NTR Scheme, United States – California, Unique identifier at State level is 12345678)

- VATDE-123456789 (VAT Scheme, Germany, Unique Identifier at Country Level is 12345678)

- PSDBE-NBB-1234.567.890 (PSD Scheme, Belgium, NCA’s identifier is NBB, Subject Unique Identifier assigned by the NCA is 1234.567.890)

Registration Schemes listed in Appendix H are currently recognized as valid under these guidelines.

The CA SHALL:

1. confirm that the organization represented by the Registration Reference is the same as the organization named in the organizationName field as specified in Section 9.2.1 within the context of the subject’s jurisdiction as specified in Section 9.2.4;

1. further verify the Registration Reference matches other information verified in accordance with section 11;

1. take appropriate measures to disambiguate between different organizations as described in Appendix H for each Registration Scheme;

1. Apply the validation rules relevant to the Registration Scheme as specified in Appendix H.”

Insert new section 9.8 (renumbering following sections as necessary):

“9.8. Certificate Extensions

The extensions listed in the Section 9.8 are recommended for maximum interoperability between certificates and browsers / applications, but are not mandatory on the CAs except where indicated as “Required”. CAs may use other extensions that are not listed in this Section 9.8, but are encouraged to add them to this section by ballot from time to time to help increase extension standardization across the industry.

If a CA includes an extension in a certificate that has a Certificate field which is named in this Section 9.8, the CA must follow the format specified in that subjection. However, no extension or extension format shall be mandatory on a CA unless specifically stated as “Required” in the subsection that describes the extension.

9.8.1. Subject Alternative Name Extension

**Certificate field:** \_subjectAltName:dNSName\_

**Required/Optional:** Required

**Contents:** This extension MUST contain one or more host Domain Name(s) owned or controlled by the Subject and to be associated with the Subject’s server. Such server MAY be owned and operated by the Subject or another entity (e.g., a hosting service). Wildcard certificates are not allowed for EV Certificates.

9.8.2. CA/Browser Forum Organization Identifier Field

**Extension Name**: \_cabfOrganizationIdentifier\_ (OID: 2.23.140.3.1)

**Verbose OID**: {joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-extensions(3) cabf-organization-identifier(1) }

**Required/Optional**: Optional (but see below)

**Contents**: If the subject:organizationIdentifier is present, this field SHOULD be present.

Effective January 31, 2020, if the subject:organizationIdentifier field is present, this field MUST be present.

If present, this field MUST contain a Registration Reference for a Legal Entity assigned in accordance to the identified Registration Scheme.

The Registration Scheme MUST be encoded as described by the following ASN.1 grammar:

id-CABFOrganizationIdentifier OBJECT IDENTIFIER ::= { joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-extensions(3) cabf-organization-identifier(1) }

ext-CABFOrganizationIdentifier EXTENSION ::= { SYNTAX CABFOrganizationIdentifier IDENTIFIED BY id-CABFOrganizationIdentifier }

CABFOrganizationIdentifier ::= SEQUENCE {

registrationSchemeIdentifier  PrintableString (SIZE(3)),

registrationCountry           PrintableString (SIZE(2)),

registrationStateOrProvince   \[0\] IMPLICIT PrintableString OPTIONAL (SIZE(0..128)),

registrationReference         UTF8String

}

where the subfields and have the same meanings and restrictions described in Section 9.2.8. The CA SHALL validate the contents using the requirements in Section 9.2.8.”

Add new Appendix H – Registration Schemes

“The following Registration Schemes are currently recognised as valid under these guidelines:

**NTR**: The information carried in this field shall be the same as held in Subject Registration Number Field as specified in 9.2.5 and the country code used in the Registration Scheme identifier shall match that of the subject’s jurisdiction as specified in Section 9.2.4.

Where the Subject Jurisdiction of Incorporation or Registration Field in 9.2.4 includes more than the country code, the additional locality information shall be included as specified in sections 9.2.8 and/or 9.8.1.

**VAT**: Reference allocated by the national tax authorities to a Legal Entity. This information shall be validated using information provided by the national tax authority against the organisation as identified by the Subject Organization Name Field (see 9.2.1) and Subject Registration Number Field (see 9.2.5) within the context of the subject’s jurisdiction as specified in Section 9.2.4.

**PSD**: Authorization number as specified in ETSI TS 119 495 clause 4.4 allocated to a payment service provider and containing the information as specified in ETSI TS 119 495 clause 5.2.1. This information SHALL be obtained directly from the national competent authority register for payment services or from an information source approved by a government agency, regulatory body, or legislation for this purpose. This information SHALL be validated by being matched directly or indirectly (for example, by matching a globally unique registration number) against the organisation as identified by the Subject Organization Name Field (see 9.2.1) and Subject Registration Number Field (see 9.2.5) within the context of the subject’s jurisdiction as specified in Section 9.2.4. The stated address of the organisation combined with the organization name SHALL NOT be the only information used to disambiguate the organisation.”

**—MOTION ENDS—**

\*\** WARNING ***: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at:

[https://github.com/cabforum/documents/compare/Ballot-SC17—Alternative-registration-numbers-for-EV-certificates?diff=unified&expand=1][1]

Changes since version 5:

1. Remove Registration Reference Provider.

1. Note that Registration References MAY contain hyphens, and clarify that the first hyphen is the separator.

1. Fix cross-references in Appendix H.

A comparison of the changes since version 5:

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: May 6, 2019 4:00pm Eastern

End Time: May 13, 2019 4:15pm Eastern

Vote for approval (7 days)

Start Time: May 13, 2019 4:15pm Eastern

End Time: May 20, 2019 4:15pm Eastern

[1]: https://github.com/cabforum/documents/compare/Ballot-SC17---Alternative-registration-numbers-for-EV-certificates?diff=unified&expand=1