---
aliases:
- /2017-03-02-ballot-188-clarify-use-term-ca-baseline-requirements/
author: Ben Wilson
date: 2017-03-02 08:02:18
tags:
- Ballot
- Server Certificates
title: Ballot 188 – Clarify use of term “CA” in Baseline Requirements
type: post
---

**Results on Ballot 188**

The voting period for Ballot 188 has ended. Here are the results.

**Voting by CAs – 10 votes total including abstentions**

3 Yes votes: Digicert, HARICA, and SwissSign

6 No votes: Entrust, GlobalSign, Symantec, Cisco, GDCA, and SHECA

1 Abstain: ANF Autoridad de Certificación

33.33% of voting CAs voted in favor

**Voting by browsers – 2 votes total including abstentions**

0 Yes votes:

2 No votes: Mozilla, Google

0 Abstain:

0% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was not met for either CAs or browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was not met.

**The ballot fails.**

**Ballot 188 – Clarify use of term “CA” in Baseline Requirements**

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Ben Wilson of Digicert and Tim Hollebeek of Trustwave.

Background:

The Policy Review Working Group has completed its review of the Baseline Requirements for purposes of clarifying use of the term “CA” and related terminology. The term “CA” is used in the Baseline Requirements and other documents to refer to “CA” as an organization or “CA” as a CA Certificate. The Policy Review WG decided to update the Baseline Requirements first, and then update the EV Guidelines and other documents so that the updated terms are used consistently in all CA/B Forum documents.

One of the proposed changes is not related to “CA” terminology. That proposed change is in Section 4.9.10. Also, in section 6.1.7, some legacy language related to 1024-bit RSA usage from Root CA, was removed.

Some incorrect references (pointing to Section 3.3.1 instead of 4.2.1) are also corrected in Sections 3.2.2.4 and 4.1.2

In accordance with the Bylaws, a PDF with redlines to the Baseline Requirements as they currently exist is attached to assist your review.

— MOTION BEGINS —

In Section 1.1 (Overview)

- Delete the last sentence of section 1.1, which reads, “These Requirements are applicable to all Certification Authorities within a chain of trust. They are to be flowed down from the Root Certification Authority through successive Subordinate Certification Authorities.”
- Insert as the last sentence of section 1.1 the following: “These requirements are applicable to all CAs that can issue a Certificate that appears in a particular certificate chain from a Root Certificate that is publicly trusted. They are to be flowed down from a Root Certificate through successive Subordinate CA Certificates.”

In Section 1.6.1 (Definitions)

- Insert a new definition for “CA Certificate” as: “A Certificate in which the basicConstraints field has the cA attribute set to TRUE.”
- Replace the definition of “Certificate Revocation List” with: “A regularly updated time-stamped list of revoked Certificates that is created and digitally signed by the Private Key associated with the Root CA Certificate or Subordinate CA Certificate that issued the revoked Certificates.”
- Replace the definition of “Certification Authority” with: “An organization that is responsible for the creation, issuance, revocation, and management of Certificates. The term applies equally to Root CA Operators and Subordinate CA Operators.”
- Replace the definition of “Cross Certificate” with: “A CA Certificate that is used to establish a trust relationship between two Root CA Certificates.”
- Insert a new definition for “Externally Operated Subordinate CA” as: “A third party Subordinate CA Operator, not the Root CA Operator or its Affiliate, that is in possession or control of the Private Key associated with the Subordinate CA Certificate.”
- Insert a new definition for “Internally Operated Subordinate CA” as: “A Subordinate CA Operator, operated by a Root CA Operator or its Affiliate, that is in possession or control of the Private Key associated with the Subordinate CA Certificate.”
- Replace the definition of “Issuing CA” with: “The Root CA Operator or the Subordinate CA Operator that is in possession or control of the Private Key of the “Issuer” named in a particular Certificate.”
- Replace the definition of “Key Generation Script” with: “A documented plan of procedures for the generation of the Key Pair to be associated with a CA Certificate.”
- Replace the definition of “OCSP Responder” with: “A system that provides Online Certificate Status Protocol responses. See also, Online Certificate Status Protocol.”
- Replace the definition of “Root CA” with a new definition for “Root CA Operator” as: “The top-level Certification Authority (i.e. an organization) whose CA Certificate (or associated Public Key) is distributed by Application Software Suppliers as a trust anchor.”
- Replace the defined term “Root Certificate” with “Root CA Certificate” and replace the definition with: “A CA Certificate in which the Public Key has been digitally signed by its corresponding Private Key.”
- Insert a new definition for “Subordinate CA Operator” as “A Certification Authority in possession or control of the Private Key associated with a Subordinate CA Certificate. A Subordinate CA Operator is either an Externally Operated Subordinate CA or an Internally Operated Subordinate CA.”
- Replace the definition for “Subordinate CA” with “Subordinate CA Certificate” as: “A CA Certificate that has been signed by the Private Key associated with a Root CA Certificate or a different Subordinate CA Certificate.”
- Replace the definition of “Technically Constrained Subordinate CA Certificate” with: “A Subordinate CA Certificate which uses a combination of Extended Key Usage settings and Name Constraint settings to limit the scope within which the Subordinate CA Certificate may issue Subscriber or additional Subordinate CA Certificates.”

In Section 1.6.2 (Acronyms)

- Insert a new acronym EKU –> “Extended Key Usage”

In Section 3.2.2.4 (Validation of Domain Authorization or Control)

- In the third paragraph, replace “Section 3.3.1” with “Section 4.2.1”.

In Section 3.2.2.4.6 (Agreed-Upon Change to Website)

- In the 2nd paragraph, replace “Section 3.3.1 of these Guidelines” with “Section 4.2.1 of this document”.

In Section 4.1.2 (Enrollment Process and Responsibilities)

- In the 3rd paragraph, replace “Section 3.3.1” with “Section 4.2.1”.

In Section 4.9.1.1 (Reasons for Revoking a Subscriber Certificate)

- Replace subsection 13 with: “The CA is made aware of a possible compromise of the Private Key that signed the Certificate”.

In Section 4.9.1.2 (Reasons for Revoking a Subordinate CA Certificate)

Replace with:

The Issuing CA SHALL revoke a Subordinate CA Certificate within seven (7) days if one or more of the following occurs:

1. The Externally Operated Subordinate CA requests revocation in writing;
1. The Externally Operated Subordinate CA notifies the Issuing CA that the original certificate request was not authorized and does not retroactively grant authorization;
1. The Issuing CA obtains evidence that the Private Key corresponding to the Public Key in the Subordinate CA Certificate suffered a Key Compromise or no longer complies with the requirements of Sections 6.1.5 and 6.1.6;
1. The Issuing CA obtains evidence that the Private Key corresponding to the Public Key in the Subordinate CA Certificate was misused;
1. The Issuing CA is made aware that the Subordinate CA Certificate was not issued in accordance with, or that the Externally Operated Subordinate CA has not complied with these Requirements or the applicable Certificate Policy or Certification Practice Statement;
1. The Issuing CA determines that any of the information appearing in the Subordinate CA Certificate is inaccurate or misleading;
1. The Issuing CA or the Subordinate CA ceases operations for any reason and has not made arrangements for another CA to provide revocation support for the Subordinate CA Certificate;
1. The Issuing CA’s or Externally Operated Subordinate CA’s right to issue Certificates under these Requirements expires or is revoked or terminated, unless the Issuing CA has made arrangements to continue maintaining the CRL/OCSP Repository;
1. Revocation is required by the Issuing CA’s Certificate Policy and/or Certification Practice Statement; or
1. The technical content or format of the Subordinate CA Certificate presents an unacceptable risk to Application Software Suppliers or Relying Parties (e.g. the CA/Browser Forum might determine that a deprecated cryptographic/signature algorithm or key size presents an unacceptable risk and that such Subordinate CA Certificates should be revoked and replaced by CAs within a given period of time).

In Section 4.9.9 (On-line revocation/status checking availability)

Replace with:

OCSP responses MUST conform to RFC6960 and/or RFC5019. OCSP responses MUST either:

1. Be signed by the Private Key associated with the Root CA Certificate or the Subordinate CA Certificate that issued the Certificates whose revocation status is being checked, or
1. Be signed by an OCSP Responder whose Certificate is issued by the Root CA Certificate or Subordinate CA Certificate that issued the Certificate whose revocation status is being checked.

In the latter case, the OCSP signing Certificate MUST contain an extension of type id-pkix-ocsp-nocheck, as defined by RFC6960.

In Section 4.9.10 (On-line revocation checking requirements)

- Replace the first sentence with “Each CA SHALL support an OCSP capability using the GET method for Certificates issued in accordance with these Requirements”.
- Replace the last sentence, which currently reads: “Effective 1 August 2013, OCSP responders for CAs which are not Technically Constrained in line with Section 7.1.5 MUST NOT respond with a ‘good’ status for such certificates.” with: “OCSP Responders for Subordinate CA Certificates that are Technically Constrained in accordance with Section 7.1.5 are exempt from this prohibition on responding “good” to OCSP requests for the status on Certificates that have not been issued.”

In Section 5.2.2 (Number of Individuals Required per Task)

- Replace with: “The Private Key associated with a Root CA Certificate or Subordinate CA Certificate SHALL be backed up, stored, and recovered only by personnel in trusted roles using, at least, dual control in a physically secured environment.”

In Section 5.4.1 (Types of events recorded)

Replace subsections 1 and 2 in the second paragraph of so that they read:

The CA SHALL record at least the following events:

1. Private Key lifecycle management events for the Root CA Certificate or Subordinate CA Certificate, including:

1. Certificate lifecycle management events for the Root CA Certificate, Subordinate CA Certificate, and Subscriber Certificates, including:

a. Certificate requests, renewal, and re-key requests, and revocation;
b. All verification activities stipulated in these Requirements and the CA’s Certification Practice Statement;
c. Date, time, phone number used, persons spoken to, and end results of verification telephone calls;
d. Acceptance and rejection of certificate requests; Frequency of Processing Log
e. Issuance of Certificates; and
f. Generation of Certificate Revocation Lists and OCSP entries.

In Section 5.7.1 (Incident and compromise handling procedures)

- Delete the word “organizations” in the first sentence of so that it reads, “CAs shall have an Incident Response Plan and a Disaster Recovery Plan.”

In Section 6.1.1.1 (CA Key Pair Generation)

Replace the first two paragraphs with the following:

For a Key Pair generated to be associated with either (i) a Root CA Certificate or (ii) a Subordinate CA Certificate to be operated by an Externally Operated Subordinate CA, the CA SHALL:

1. prepare and follow a Key Generation Script,
1. have a Qualified Auditor witness the Key Pair generation process or record a video of the entire Key Pair generation process, and
1. have a Qualified Auditor issue a report opining that the CA followed its key ceremony during its Key and Certificate generation process and the controls used to ensure the integrity and confidentiality of the Key Pair.

For a Key Pair generated to be associated with a Subordinate CA Certificate to be operated by the Root CA Operator or its Affiliates, the CA SHOULD:

1. prepare and follow a Key Generation Script and
1. have a Qualified Auditor witness the Key Pair generation process or record a video of the entire Key Pair generation process.

In all cases, the CA SHALL:

1. generate the Key in a physically secured environment as described in the CA’s Certificate Policy and/or Certification Practice Statement;
1. generate the Key using personnel in trusted roles under the principles of multiple person control and split knowledge;
1. generate the Key within cryptographic modules meeting the applicable technical and business requirements as disclosed in the CA’s Certificate Policy and/or Certification Practice Statement;
1. log its Key generation activities; and
1. maintain effective controls to provide reasonable assurance that the Private Key was generated and protected in conformance with the procedures described in its Certificate Policy and/or Certification Practice Statement and (if applicable) its Key Generation Script.

Change the title of Section 6.1.7 as “Key usage purposes (as per X.509 v3 key usage field)”

In Section 6.1.7 replace with:

Private Keys associated with Root CA Certificates MUST NOT be used to sign Certificates except in the following cases:

1. Self-signed Root CA Certificates themselves;
1. Subordinate CA Certificates and Cross Certificates;
1. Certificates for infrastructure purposes (e.g. administrative role certificates, internal CA operational device certificates, and OCSP Response verification Certificates); and
1. Certificates issued solely for the purpose of testing products with Certificates issued by a Root CA Certificate.

In Section 6.2.5 (Private key archival)

Replace with:

“Parties other than the Subordinate CA Operator SHALL NOT archive the Private Keys associated with the Subordinate CA Certificate without authorization by the Subordinate CA Operator.”

In Section 6.2.6 (Private key transfer into or from a cryptographic module)

Replace with:

If the Issuing CA generated the Private Key on behalf of an Externally Operated Subordinate CA, then the Issuing CA SHALL encrypt the Private Key for transport to the Externally Operated Subordinate CA.

If the Issuing CA becomes aware that an Externally Operated Subordinate CA’s Private Key has been communicated to an unauthorized person or an organization not affiliated with the Externally Operated Subordinate CA, then the Issuing CA SHALL revoke all Subordinate CA Certificates that include the Public Key corresponding to the communicated Private Key.

In Section 7.1.2.1 (Root CA Certificate)

Replace subsection b. (keyUsage), with:

“This extension MUST be present and MUST be marked critical. Bit positions for keyCertSign and cRLSign MUST be set. If the Private Key associated with the Root CA Certificate is to be used for signing OCSP responses, then the digitalSignature bit MUST be set.”

In Section 7.1.2.2 (Subordinate CA Certificate)

Replace subsection a. through c, subsections e. and g. with the following:

a. certificatePolicies

This extension MUST be present and SHOULD NOT be marked critical.

- certificatePolicies:policyIdentifier (Required)
- The following fields MAY be present:

certificatePolicies:policyQualifiers:policyQualifierId (Optional)

- id-qt 1 \[RFC 5280\]

certificatePolicies:policyQualifiers:qualifier:cPSuri (Optional)

- HTTP URL for the CA’s Certificate Policy, Certification Practice Statement, Relying Party Agreement, or other pointer to online policy information provided by the CA.

b. cRLDistributionPoints

- This extension MUST be present and MUST NOT be marked critical. It MUST contain the HTTP URL of the Issuing CA’s CRL service where revocation of the Subordinate CA Certificate will be published.

c. authorityInformationAccess

- With the exception of stapling, which is noted below, this extension MUST be present. It MUST NOT be marked critical, and it MUST contain the HTTP URL of the Issuing CA’s OCSP responder that provides the status of the Subordinate CA Certificate (accessMethod = 1.3.6.1.5.5.7.48.1). It SHOULD also contain the HTTP URL of the Issuing CA’s CA Certificate (accessMethod = 1.3.6.1.5.5.7.48.2).
-
- The HTTP URL of the Issuing CA’s OCSP responder MAY be omitted, provided that the Subscriber “staples” the OCSP response for the Certificate in its TLS handshakes \[RFC4366\].

e. keyUsage

- This extension MUST be present and MUST be marked critical. Bit positions for keyCertSign and cRLSign MUST be set. If the Private Key that corresponds to the Subordinate CA Certificate is used for signing OCSP responses, then the digitalSignature bit MUST be set.

g. extkeyUsage (optional)

For Subordinate CA Certificates to be Technically constrained in line with section 7.1.5, then either the value id-kp-serverAuth \[RFC5280\] or id-kp-clientAuth \[RFC5280\] or both values MUST be present**.

Other values MAY be present.

If present, this extension SHOULD be marked non-critical.

** Generally Extended Key Usage will only appear within end entity certificates (as highlighted in RFC 5280 (4.2.1.12)), however, Subordinate CA Operators MAY include the extension to further protect relying parties until the use of the extension is consistent between Application Software Suppliers whose software is used by a substantial portion of Relying Parties worldwide.

In Section 7.1.2.3 (Subscriber Certificate)

Replace subsection a. with the following:

a. certificatePolicies

This extension MUST be present and SHOULD NOT be marked critical.

- certificatePolicies:policyIdentifier (Required)
- A Policy Identifier, defined by the issuing CA, that indicates a Certificate Policy asserting the issuing CA’s adherence to and compliance with these Requirements. The following extensions MAY be present: certificatePolicies:policyQualifiers:policyQualifierId (Recommended)
- id-qt 1 \[RFC 5280\]. certificatePolicies:policyQualifiers:qualifier:cPSuri (Optional)
- HTTP URL for the Subordinate CA Operator’s Certification Practice Statement, Relying Party Agreement or other pointer to online information provided by the CA.

Replace subsection c. with the following:

c. authorityInformationAccess

With the exception of stapling, which is noted below, this extension MUST be present. It MUST NOT be marked critical, and it MUST contain the HTTP URL of the Issuing CA’s OCSP responder that provides the status of the Certificate (accessMethod = 1.3.6.1.5.5.7.48.1). It SHOULD also contain the HTTP URL of the Issuing CA’s CA Certificate (accessMethod = 1.3.6.1.5.5.7.48.2).

The HTTP URL of the Issuing CA’s OCSP responder MAY be omitted provided that the Subscriber “staples” OCSP responses for the Certificate in its TLS handshakes \[RFC4366\].

In Section 7.1.3 (Algorithm object identifiers)

Replace the first paragraph with:

“CAs MUST NOT sign Certificates using the SHA-1 hash algorithm. This Section (7.1.3) does not apply to existing Root CA Certificates or Cross Certificates. CAs MAY continue to use their existing SHA-1 Root CA Certificates. SHA-2 Subscriber Certificates SHOULD NOT chain up to a SHA-1 Subordinate CA Certificate”.

In Section 7.1.4.1 (Issuing CA Certificate Subject)

Replace with:

“The content of the Certificate Issuer Distinguished Name field MUST match the Subject DN of the Issuing CA’s CA Certificate to support name chaining as specified in RFC 5280, section 4.1.2.4.”

In Section 7.1.5 (Name Constraints)

Replace the last paragraph with:

If the Subordinate CA Operator is not allowed to issue certificates with dNSNames, then the Subordinate CA Certificate MUST include a zero-length dNSName in excludedSubtrees. Otherwise, the Subordinate CA Certificate MUST include at least one dNSName in permittedSubtrees.

In Section 7.1.6.1 (Reserved Certificate Policy Identifiers)

Replace the first sentence with:

This section describes the content requirements for the Root CA Certificates, Subordinate CA Certificates, and Subscriber Certificates, as they relate to the identification of Certificate Policy.

In Section 7.1.6.3 (Subordinate CA Certificates)

Replace with:

A Subordinate CA Certificate issued after the Effective Date to an Externally Operated Subordinate CA:

1. MUST include one or more explicit policy identifiers that indicates the Externally Operated Subordinate CA’s adherence to and compliance with these Requirements (i.e. either the CA/Browser Forum reserved identifiers or identifiers defined by the CA in its Certificate Policy and/or Certification Practice Statement) and
1. MUST NOT contain the “anyPolicy” identifier (2.5.29.32.0).

A Subordinate CA Certificate issued after the Effective Date to an Internally Operated Subordinate CA:

1. MAY include the CA/Browser Forum reserved identifiers or an identifier defined by the CA in its Certificate Policy and/or Certification Practice Statement to indicate the Internally Operated Subordinate CA’s compliance with these Requirements and
1. MAY contain the “anyPolicy” identifier (2.5.29.32.0) in place of an explicit policy identifier.

All CAs SHALL represent, in their Certificate Policy and/or Certification Practice Statement, that all Certificates containing a policy identifier indicating compliance with these Requirements are issued and managed in accordance with these Requirements.

In Section 8.1 (Frequency or circumstances of assessment)

Replace the first paragraph with:

CA Certificates MUST either be (a) Technically Constrained in line with section 7.1.5 and be audited in line with section 8.7 only, or (b) be fully audited in line with all requirements of this section (8). A Certificate is deemed capable of being used to issue certificates for server authentication if it contains an X.509v3 basicConstraints extension with the CA boolean set to true and has no EKU, the id-kp-anyExtendedKeyUsage \[RFC5280\] EKU, or the id-kp-serverAuth \[RFC5280\] EKU.

In Section 8.7 (Self-Audits)

Replace the last paragraph with:

During the period in which a Technically Constrained Externally Operated Subordinate CA issues Certificates, the Issuing CA SHALL monitor adherence to the Issuing CA’s Certificate Policy and/or Certification Practice Statement and the Externally Operated Subordinate CA’s Certificate Policy and/or Certification Practice Statement. On at least a quarterly basis, against a randomly selected sample of the greater of one certificate or at least three percent of the Certificates issued by the Externally Operated Subordinate CA, during the period commencing immediately after the previous audit sample was taken, the CA SHALL ensure adherence to all applicable Certificate Policies and/or Certification Practice Statements.

In Section 9.6.1 (CA representations and warranties)

Replace subsection 2 with:

“2. All Application Software Suppliers with whom the Root CA Operator has entered into a contract for inclusion of its Root CA Certificate in software distributed by such Application Software Supplier; and”

Replace the last paragraph with:

The Root CA Operator SHALL be responsible for the performance and warranties of its Externally Operated Subordinate CAs, for the Externally Operated Subordinate CAs’ compliance with these Requirements, and for all liabilities and indemnification obligations of the Externally Operated Subordinate CAs under these Requirements, as if the Root CA Operator were the Externally Operated Subordinate CA issuing the Certificates.

— MOTION ENDS —

The procedure for this ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

BALLOT 188 Status: Clarify use of term “CA” in Baseline Requirements

Start time (22:00 UTC)

End time (22:00 UTC)

Discussion (7 days)

16 Feb. 2017

23 Feb. 2017

Vote for approval (7 days)

23 Feb. 2017

2 Mar. 2017

If vote approves ballot: Review Period (Chair to send Review Notice) (30 calendar days). If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created. If no Exclusion Notices filed, ballot becomes effective at end of Review Period.

Upon filing of Review Notice by Chair

30 days after filing of Review Notice by Chair

This is a Draft Guideline Ballot that proposes a Final Maintenance Guideline. In accordance with Section 2.3 of the Bylaws this ballot includes a full set of the Baseline Requirements with a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline. Such redline or comparison has been made against the Final Guideline section(s) as they exist at the time that this ballot is proposed.

Votes must be cast by posting an on-list reply to this thread on the Public Mail List.

A vote in favor of the ballot must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting Member before the close of the voting period will be counted. Voting Members are listed here: /about/membership/members/

In order for the ballot to be adopted, two thirds or more of the votes cast by Members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently ten (10) Members – at least ten Members must participate in the ballot, either by voting in favor, voting against, or abstaining.