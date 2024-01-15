---
aliases:
- /2012/06/15/ballot-78-updates-to-domain-and-ip-validation-high-risk-requests-and-data-source-in-the-baseline-requirements/
author: Ben Wilson
date: 2012-06-15 21:49:20
tags:
- Ballot
- Server Certificates
title: Ballot 78 – Updates to Domain and IP Validation, High Risk Requests, and Data
  Source in the Baseline Requirements
type: post
---

Ballot 78 – Updates to Domain and IP Validation, High Risk Requests, and Data Source in the Baseline Requirements (Passed Unanimously)

Motion

Jeremy Rowley made the following motion, and Dean Coclin and Richard Smith endorsed it:

… Motion begins….

Effective immediately.

### Erratum begins

_A. Replace the definition of “Domain Authorization” in Section 4 of the Baseline Requirements with the following:_

“**Domain Authorization Document**: Documentation provided by, or a CA’s documentation of a communication with, a Domain Name Registrar, the Domain Name Registrant, or the person or entity listed in WHOIS as the Domain Name Registrant (including any private, anonymous, or proxy registration service) attesting to the authority of an Applicant to request a Certificate for a specific Domain Namespace.

_B. Add the following new definitions to Section 4 of the Baseline Requirements:_

**High Risk Certificate Request**: A Request that the CA flags for additional scrutiny by reference to internal criteria and databases maintained by the CA, which may include names at higher risk for phishing or other fraudulent usage, names contained in previously rejected certificate requests or revoked Certificates, names listed on the Miller Smiles phishing list or the Google Safe Browsing list, or names that the CA identifies using its own risk-mitigation criteria.

**Reliable Data Source**: An identification document or source of data used to verify Subject Identity Information that is generally recognized among commercial enterprises and governments as reliable, and which was created by a third party for a purpose other than the Applicant obtaining a Certificate.”

_C. Replace Section 11.1 of the Baseline Requirements with the following:_

“**11.1.1 Authorization by Domain Name Registrant**

For each Fully-Qualified Domain Name listed in a Certificate, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant either is the Domain Name Registrant or has control over the FQDN by:

1. Confirming the Applicant as the Domain Name Registrant directly with the Domain Name Registrar;

1. Communicating directly with the Domain Name Registrant using an address, email, or telephone number provided by the Domain Name Registrar;

1. Communicating directly with the Domain Name Registrant using the contact information listed in the WHOIS record’s “registrant”, “technical”, or “administrative” field;

1. Communicating with the Domain’s administrator using an email address created by pre-pending ‘admin’, ‘administrator’, ‘webmaster’, ‘hostmaster’, or ‘postmaster’ in the local part, followed by the at-sign (“@”), followed by the Domain Name, which may be formed by pruning zero or more components from the requested FQDN;

1. Relying upon a Domain Authorization Document;

1. Having the Applicant demonstrate practical control over the FQDN by making an agreed-upon change to information found on an online Web page identified by a uniform resource identifier containing the FQDN; or

1. Using any other method of confirmation, provided that the CA maintains documented evidence that the method of confirmation establishes that the Applicant is the Domain Name Registrant or has control over the FQDN to at least the same level of assurance as those methods previously described.

Note: For purposes of determining the appropriate domain name level or Domain Namespace, the registerable Domain Name is the second-level domain for generic top-level domains (gTLD) such as .com, .net, or .org, or, if the Fully Qualified Domain Name contains a 2 letter Country Code Top-Level Domain (ccTLD), then the domain level is whatever is allowed for registration according to the rules of that ccTLD.

If the CA relies upon a Domain Authorization Document to confirm the Applicant’s control over a FQDN, then the Domain Authorization Document MUST substantiate that the communication came from either the Domain Name Registrant (including any private, anonymous, or proxy registration service) or the Domain Name Registrar listed in the WHOIS. The CA MUST verify that the Domain Authorization Document was either (i) dated on or after the certificate request date or (ii) used by the CA to verify a previously issued certificate and that the Domain Name’s WHOIS record has not been modified since the previous certificate’s issuance.

**11.1.2 Authorization for an IP Address**

For each IP Address listed in a Certificate, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant has control over the IP Address by:

1. Having the Applicant demonstrate practical control over the IP Address by making an agreed-upon change to information found on an online Web page identified by a uniform resource identifier containing the IP Address;

1. Obtaining documentation of IP address assignment from the Internet Assigned Numbers Authority (IANA) or a Regional Internet Registry (RIPE, APNIC, ARIN, AfriNIC, LACNIC);

1. Performing a reverse-IP address lookup and then verifying control over the resulting Domain Name under Section 11.1.1; or

1. Using any other method of confirmation, provided that the CA maintains documented evidence that the method of confirmation establishes that the Applicant has control over the IP Address to at least the same level of assurance as the methods previously described.”

_D. Replace Section 11.3 of the Baseline Requirements with the following:_

“**11.3 Age of Certificate Data**

Section 9.4 limits the validity period of Subscriber Certificates. The CA MAY use the documents and data provided in Section 11 to verify certificate information, provided that the CA obtained the data or document from a source specified under Section 11 no more than thirty-nine (39) months prior to issuing the certificate.”

_E. Replace Section 11.5 of the Baseline Requirements with the following:_

“**11.5 High Risk Requests**

The CA SHALL develop, maintain, and implement documented procedures that identify and require additional verification activity for High Risk Certificate Requests prior to the Certificate’s approval, as reasonably necessary to ensure that such requests are properly verified under these Requirements.”

_F. Replace Section 11.6 of the Baseline Requirements with the following:_

**11.6 Data Source Accuracy**

Prior to using any data source as a Reliable Data Source, the CA SHALL evaluate the source for its reliability, accuracy, and resistance to alteration or falsification. The CA SHOULD consider the following during its evaluation:

1. The age of the information provided,

1. The frequency of updates to the information source,

1. The data provider and purpose of the data collection,

1. The public accessibility of the data availability, and

1. the relative difficulty in falsifying or altering the data.

Databases maintained by the CA, its owner, or its affiliated companies do not qualify as a Reliable Data Source if the primary purpose of the database is to collect information for the purpose of fulfilling the validation requirements under Section 11.

_G. Replace Section 14.2.1 of the Baseline Requirements with the following:_

“**14.2.1 General**

The CA MAY delegate the performance of all, or any part, of Section 11 of these Requirements to a Delegated Third Party, provided that the process as a whole fulfills all of the requirements of Section 11. Before the CA authorizes a Delegated Third Party to perform a delegated function, the CA SHALL contractually require the Delegated Third Party to:

1. Meet the qualification requirements of Section 14.1, when applicable to the delegated function;

1. Retain documentation in accordance with Section 15.3.2;

1. Abide by the other provisions of these Requirements that are applicable to the delegated function; and

1. Comply with (a) the CA’s Certificate Policy/Certification Practice Statement or (b) the Delegated Third Party’s practice statement that the CA has verified complies with these Requirements.

The CA SHALL verify that the Delegated Third Party’s personnel involved in the issuance of a Certificate meet the training and skills requirements of Section 14 and the document retention and event logging requirements of Section 15.

If a Delegated Third Party fulfills any of the CA’s obligations under Section 11.5 (High Risk Requests), the CA SHALL verify that the process used by the Delegated Third Party to identify and further verify High Risk Certificate Requests provides at least the same level of assurance as the CA’s own processes.”

_H. Replace Section 11.2.1 of the Baseline Requirements with the following:_

“**11.2.1 Identity**

If the Subject Identity Information is to include the name or address of an organization, the CA SHALL verify the identity and address of the organization and that the address is the Applicant’s address of existence or operation.

The CA SHALL verify the identity and address of the Applicant using documentation provided by, or through communication with, at least one of the following:

1. A government agency in the jurisdiction of the Applicant’s legal creation, existence, or recognition;

1. A third party database that is periodically updated and considered a Reliable Data Source;

1. A site visit by the CA or a third party who is acting as an agent for the CA; or

1. An Attestation Letter.

The CA MAY use the same documentation or communication described in 1 through 4 above to verify both the Applicant’s identity and address.

Alternatively, the CA MAY verify the address of the Applicant (but not the identity of the Applicant) using a utility bill, bank statement, credit card statement, government-issued tax document, or other form of identification that the CA determines to be reliable.”

_I. Replace Section 11.2.2 of the Baseline Requirements with the following:_

“**11.2.2 DBA/Tradename**

If the Subject Identity Information is to include a DBA or tradename, the CA SHALL verify the Applicant’s right to use the DBA/tradename using at least one of the following:

1. Documentation provided by, or communication with, a government agency in the jurisdiction of the Applicant’s legal creation, existence, or recognition;

1. A Reliable Data Source;

1. Communication with a government agency responsible for the management of such DBAs or tradenames;

1. An Attestation Letter accompanied by reliable documentary support; or

1. A utility bill, bank statement, credit card statement, government-issued tax document, or other form of identification that the CA determines to be reliable.”

_J. Replace Section 11.2.4 of the Baseline Requirements with the following:_

“**11.2.4 Verification of Individual Applicant**

If an Applicant subject to this Section 11.2 is a natural person, then the CA SHALL verify the Applicant’s name, Applicant’s address, and the authenticity of the certificate request.

The CA SHALL verify the Applicant’s name using a legible copy, which discernibly shows the Applicant’s face, of at least one currently valid government-issued photo ID (passport, drivers license, military ID, national ID, or equivalent document type). The CA SHALL inspect the copy for any indication of alteration or falsification.

The CA SHALL verify the Applicant’s address using a form of identification that the CA determines to be reliable, such as a government ID, utility bill, or bank or credit card statement. The CA MAY rely on the same government-issued ID that was used to verify the Applicant’s name.

The CA SHALL verify the certificate request with the Applicant using a Reliable Method of Communication.”

### Erratum ends

The ballot review period comes into effect at 21:00 UTC on 7 June 2012 and will close at 21:00 UTC on 15 June 2012. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 21:00 UTC on 22 June 2012. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.

## Motion ends