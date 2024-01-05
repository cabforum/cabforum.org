---
aliases:
- /2015-02-18-ballot-144-validation-rules-dot-onion-names/
author: Ben Wilson
date: 2015-02-18 21:07:50
tags:
- Ballot
- Server Certificates
title: Ballot 144 – Validation rules for .onion names
type: post
---

Ballot 144 – Validation Rules for .onion Names – passed with 6 Yes votes, 2 No votes and 13 Abstentions from the CAs and 3 Yes votes from the browsers.

Detailed results are on the Forum’s ballot tracker (Ballot Results – Vote Tally at the bottom of the Ballots page on the Forum’s wiki).

Ballot 144 reads as follows:

Applicants want a CA-signed .onion address for several reasons, including:

–             Powerful web platform features are restricted to secure origins, which are currently not available to onion names (in part, because of the lack of IANA registration). Permitting EV certs for onion names will help provide a secure origin for the service, moving onion towards use of powerful web platform features.

–             Currently, access to .onion names over https from a standard browser results in the standard existing ‘Invalid Certificate’ warning. Training users to click through security warnings lowers the value of these warnings and will cause users to miss important security information. Removing these warnings for the user, through use of a digital certificate, will help users recognize and avoid real MITM attacks.

–             The public needs attribution of ownership of the .onion address to differentiate onion services, including potential phishing services. Because onion names are not easily recognizable strings, providing the public with additional information about the operator has significant security improvements, especially in regions where use of the incorrect name could have lethal consequences.

The following motion has been proposed by Jeremy Rowley of DigiCert and endorsed by Ryan Sleevi of Google and Wayne Thayer of GoDaddy.

———————

Motion Starts

———————

1. Amend Section 9.2.1 of the Baseline Requirements v. 1.2.3 as follows:

9.2.1 Subject Alternative Name Extension

Certificate Field: extensions:subjectAltName

Required/Optional: Required

Contents: This extension MUST contain at least one entry. Each entry MUST be either a dNSName containing the Fully-Qualified Domain Name or an iPAddress containing the IP address of a server. The CA MUST confirm that the Applicant controls the Fully-Qualified Domain Name or IP address or has been granted the right to use it by the Domain Name Registrant or IP address assignee, as appropriate.

Wildcard FQDNs are permitted. As of the Effective Date of these Requirements, prior to the issuance of a Certificate with a subjectAlternativeName extension or Subject commonName field containing a Reserved IP Address or Internal Name, the CA SHALL notify the Applicant that the use of such Certificates has been deprecated by the CA / Browser Forum and that the practice will be eliminated by October 2016. Also as of the Effective Date, the CA SHALL NOT issue a certificate with an Expiry Date later than 1 November 2015 with a subjectAlternativeName extension or Subject commonName field containing a Reserved IP Address or Internal Name. Effective 1 October 2016, CAs SHALL revoke all unexpired Certificates whose subjectAlternativeName extension or Subject commonName field contains a Reserved IP Address or Internal Name. Effective May 1, 2015, each CA SHALL revoke all unexpired Certificates with an Internal Name using onion as the right-most label in an entry in the subjectAltName Extension or commonName field unless such Certificate was issued in accordance with Appendix F of the EV Guidelines.

2. Amend Section 9.2.2 and 11.7.1 of the Guidelines for the Issuance and Management of Extended Validation Certificates v1.5.2 as follows:

9.2.2. Subject Alternative Name Extension Certificate field: subjectAltName:dNSName

Required/Optional: Required

Contents: This extension MUST contain one or more host Domain Name(s) owned or controlled by the Subject and to be associated with the Subject’s server. Such server MAY be owned and operated by the Subject or another entity (e.g., a hosting service). Wildcard certificates are not allowed for EV Certificates except as permitted under Appendix F.

11.7 Verification of Applicant’s Domain Name

11.7.1. Verification Requirements

(1) For each Fully-Qualified Domain Name listed in a Certificate, other than a Domain Name with .onion in the right-most label of the Domain Name, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant (or the Applicant’s Parent Company, Subsidiary Company, or Affiliate, collectively referred to as “Applicant” for the purposes of this section) either is the Domain Name Registrant or has control over the FQDN using a procedure specified in Section 11.1.1 of the Baseline Requirements, except that a CA MAY NOT verify a domain using the procedure described 11.1.1(7). For a Certificate issued to a Domain Name with .onion in the right-most label of the Domain Name, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant’s control over the .onion Domain Name in accordance with Appendix F.

(2) Mixed Character Set Domain Names: EV Certificates MAY include Domain Names containing mixed character sets only in compliance with the rules set forth by the domain registrar. The CA MUST visually compare any Domain Names with mixed character sets with known high risk domains. If a similarity is found, then the EV Certificate Request MUST be flagged as High Risk. The CA must perform reasonably appropriate additional authentication and verification to be certain beyond reasonable doubt that the Applicant and the target in question are the same organization.

3. Add a new Appendix F to the Guidelines for the Issuance and Management of Extended Validation Certificates v1.5.2:

Appendix F – Issuance of Certificates for .onion Domain Names

A CA may issue an EV Certificate with .onion in the right-most label of the Domain Name provided that issuance complies with the requirements set forth in this Appendix:

1. CAB Forum Tor Service Descriptor Hash extension (2.23.140.1.31)

The CAB Forum has created an extension of the TBSCertificate for use in conveying hashes of keys related to .onion addresses. The Tor Service Descriptor Hash extension has the following format:

cabf-TorServiceDescriptor OBJECT IDENTIFIER ::= { 2.23.140.1.31 }

TorServiceDescriptorSyntax ::=

SEQUENCE ( 1..MAX ) of TorServiceDescriptorHash

TorServiceDescriptorHash:: = SEQUENCE {

onionURI                UTF8String

algorithm                       AlgorithmIdentifier

subjectPublicKeyHash     BIT STRING     }

Where the AlgorithmIdentifier is a hashing algorithm (defined in RFC 6234) performed over the DER-encoding of an ASN.1 SubjectPublicKey of the .onion service and SubjectPublicKeyHash is the hash output.

2. The CA MUST verify the Applicant’s control over the .onion Domain Name using one of the following:

a. The CA MAY verify the Applicant’s control over the .onion service by posting a specific value at a well-known URL under RFC5785.

b. The CA MAY verify the Applicant’s control over the .onion service by having the Applicant provide a Certificate Request signed using the .onion public key if the Attributes section of the certificationRequestInfo contains:

(i)           A caSigningNonce attribute that (1) contains a single value with at least 64-bits of entropy, (2) is generated by the CA, and (3) delivered to the Applicant through a Verified Method of Communication and

(ii)          An applicantSigningNonce attribute that (1) contains a single value with at least 64-bits of entropy and (2) is generated by the Applicant.

The signing nonce attributes have the following format:

caSigningNonce ATTRIBUTE ::= {

WITH SYNTAX                                OCTET STRING

EQUALITY MATCHING RULE      octetStringMatch

SINGLE VALUE                               TRUE

ID                                                       { cabf-caSigningNonce }

}

cabf-caSigningNonce OBJECT IDENTIFIER ::= { cabf 41 }

applicantSigningNonce ATTRIBUTE ::= {

WITH SYNTAX                                OCTET STRING

EQUALITY MATCHING RULE      octetStringMatch

SINGLE VALUE                               TRUE

ID                                                       { cabf-applicantSigningNonce }

}

cabf-applicantSigningNonce OBJECT IDENTIFIER ::= { cabf 42 }

4. Each Certificate that includes a Domain Name where .onion is in the right-most label of the Domain Name MUST conform to the requirements of these Guidelines, including the content requirements in Section 9 and Appendix B of the Baseline Requirements, except that the CA MAY include a wildcard character in the Subject Alternative Name Extension and Subject Common Name Field as the left-most character in the .onion Domain Name provided inclusion of the wildcard character complies with Section 11.1.3 of the Baseline Requirements.

1. CAs MUST NOT issue a Certificate that includes a Domain Name where .onion is in the right-most label of the Domain Name with a validity period longer than 15 months. Despite Section 9.2.1 of the Baseline Requirements deprecating the use of Internal Names, a CA MAY issue a Certificate containing an .onion name with an expiration date later than 1 November 2015 after (and only if) .onion is officially recognized by the IESG as a reserved TLD.

1. On or before May 1, 2015, each CA MUST revoke all Certificates issued with the Subject Alternative Name extension or Common Name field that includes a Domain Name where .onion is in the right-most label of the Domain Name unless the Certificate was issued in compliance with this Appendix F.

—-

Motion Ends

—–

The review period for this ballot shall commence at 2200 UTC on Wednesday, 4 February 2015, and will close at 2200 UTC on Wednesday, 11 February 2015. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Wednesday, 18 February 2015. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently nine (9) members– at least nine members must participate in the ballot, either by voting in favor, voting against, or abstaining.