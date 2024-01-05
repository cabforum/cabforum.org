---
aliases:
- /2013-07-29-ballot-105-technical-constraints-for-subordinate-certificate-authorities-yielding-broader-and-safer-pki-adoption/
author: Ben Wilson
date: 2013-07-29 18:38:28
tags:
- Ballot
- Server Certificates
title: Ballot 105 – Technical Constraints for Subordinate Certificate Authorities
  Yielding Broader and Safer PKI Adoption.
type: post
---

Ballot 105 – Technical Constraints for Subordinate Certificate Authorities Yielding Broader and Safer PKI Adoption. (Passed)

Motion

Steve Roylance made the following motion, and Gervase Markham from Mozilla and Stephen Davidson from QuoVadis endorsed it:

**Motion Begins**

EFFECTIVE IMMEDIATELY, this ballot provides clarity to the language covering external audits for Subordinate CAs, removing ambiguity as well as providing better alignment of the Baseline Requirements to the Mozilla CA Root program where the subject is already covered and accepted by the wider PKI community. In addition, the proposal sets out to aid wider and broader PKI adoption by Subordinate CAs by defining the use of Technical Constraints and highlighting how additional barriers to adoption within the guidelines can be optional when using Name Constraints, specifically the requirement for ‘OCSP Good’ responses originally proposed in Ballot 100. We propose amending the Baseline Requirements Guidelines as follows:

**Section 1 – Scope** _**(Adding scope)**_

These Requirements are applicable to all Certification Authorities within a chain of trust. They are to be flowed down from the Root Certification Authority through successive Subordinate Certification Authorities.

**Section 4 – Definitions** _**(Additional Definition)**_

**Technically Constrained Subordinate CA Certificate:** A Subordinate CA certificate which uses a combination of Extended Key Usage settings and Name Constraint settings to limit the scope within which the Subordinate CA Certificate may issue Subscriber or additional Subordinate CA Certificates.

**Section 9.2.7 Other Subject Attributes** _**(Moving to 9.2.8)**_

**Section 9.2.7 Subject Information – Subordinate CA Certificates** _**(Adding a new section)**_

By issuing a Subordinate CA Certificate, the CA represents that it followed the procedure set forth in its Certificate Policy and/or Certification Practice Statement to verify that, as of the Certificate’s issuance date, all of the Subject Information was accurate.

**Section 9.4 Validity Period** _**(Clarifying the Validity Period for Subscriber Certificates)**_

Was:-

**9.4 Validity Period** Certificates issued after the Effective Date MUST have a Validity Period no greater than 60 months. Except as provided for below, Certificates issued after 1 April 2015 MUST have a Validity Period no greater than 39 months. Beyond 1 April 2015, CAs MAY continue to issue Certificates with a Validity Period greater than 39 months but not greater than 60 months provided that the CA documents that the Certificate is for a system or software that:

Amended to:-

**9.4 Validity Period** **9.4.1 Subscriber Certificates** Subscriber Certificates issued after the Effective Date MUST have a Validity Period no greater than 60 months. Except as provided for below, Subscriber Certificates issued after 1 April 2015 MUST have a Validity Period no greater than 39 months. Beyond 1 April 2015, CAs MAY continue to issue Subscriber Certificates with a Validity Period greater than 39 months but not greater than 60 months provided that the CA documents that the Certificate is for a system or software that:

**9.5 Subscriber Public Key** _**(Alignment of Key checking for all certificates)**_

**9.5 Public Key**

**9.7 Additional Technical Requirement** _**(Moving to Section 9.8)**_

**9.7 Technical Constraints in Subordinate CA Certificates via Name Constraints & EKU** _**(New section)**_

**9.7 Technical Constraints in Subordinate CA Certificates via Name Constraints & EKU** For a Subordinate CA Certificate to be considered Technically Constrained, the certificate MUST include an Extended Key Usage (EKU) extension specifying all extended key usages that the Subordinate CA Certificate is authorized to issue certificates for. The anyExtendedKeyUsage [KeyPurposeId][1] MUST NOT appear within this extension. If the Subordinate CA Certificate includes the id-kp-serverAuth extended key usage, then the Subordinate CA Certificate MUST include the Name Constraints X.509v3 extension with constraints on dNSName, iPAddress and [DirectoryName][2] as follows:-

- (a) For each dNSName in permittedSubtrees, the CA MUST confirm that the Applicant has registered the dNSName or has been authorized by the domain registrant to act on the registrant’s behalf in line with the verification practices of section 11.1 (b) For each iPAddress range in permittedSubtrees, the CA MUST confirm that the Applicant has been assigned the iPAddress range or has been authorized by the assigner to act on the assignee’s behalf.(c) For each [DirectoryName][2] in permittedSubtrees the CA MUST confirm the Applicants and/or Subsidiary’s Organizational name and location such that end entity certificates issued from the subordinate CA Certificate will be in compliancy with section 9.2.4 and 9.2.5.

If the Subordinate CA Certificate is not allowed to issue certificates with an iPAddress, then the Subordinate CA Certificate MUST specify the entire IPv4 and IPv6 address ranges in excludedSubtrees. The Subordinate CA Certificate MUST include within excludedSubtrees an iPAddress [GeneralName][3] of 8 zero octets (covering the IPv4 address range of 0.0.0.0/0). The Subordinate CA Certificate MUST also include within excludedSubtrees an iPAddress [GeneralName][3] of 32 zero octets (covering the IPv6 address range of ::0/0). Otherwise, the Subordinate CA Certificate MUST include at least one iPAddress in permittedSubtrees.

A decoded example for issuance to the domain and sub domains of example.com by organization :- Example LLC, Boston, Massachusetts, US would be:-

X509v3 Name Constraints:

Permitted:

DNS:example.com [DirName][4]: C=US, ST=MA, L=Boston, O=Example LLC

Excluded:

IP:0.0.0.0/0.0.0.0 IP:0:0:0:0:0:0:0:0/0:0:0:0:0:0:0:0

If the Subordinate CA is not allowed to issue certificates with dNSNames, then the Subordinate CA Certificate MUST include a zero-length dNSName in excludedSubtrees. Otherwise, the Subordinate CA Certificate MUST include at least one dNSName in permittedSubtrees.

**Section 11.1.1 Authorization by Domain Name Registrant** _**(Adding clarification)**_

Note: FQDNs may be listed in Subscriber Certificates using dNSNames in the subjectAltName extension or in Subordinate CA Certificates via dNSNames in permittedSubtrees within the Name Constraints extension.

**Section 11.1.2 Authorization for an IP Address** _**(Adding clarification)**_

Note: IPAddresses may be listed in Subscriber Certificates using IPAddress in the subjectAltName extension or in Subordinate CA Certificates via IPAddress in permittedSubtrees within the Name Constraints extension.

**Section 13.2.6 Response for non-issued certificates** _**(Amending applicability)**_

Was:-

**13.2.6 Response for non-issued certificates** If the OCSP responder receives a request for status of a certificate that has not been issued, then the responder SHOULD NOT respond with a “good” status. The CA SHOULD monitor the responder for such requests as part of its security response procedures. Effective 1 August 2013, OCSP responders MUST NOT respond with a “good” status for such certificates.

Amended to:-

**13.2.6 Response for non-issued certificates** If the OCSP responder receives a request for status of a certificate that has not been issued, then the responder SHOULD NOT respond with a “good” status. The CA SHOULD monitor the responder for such requests as part of its security response procedures. Effective 1 August 2013, OCSP responders for CAs which are not Technically Constrained in line with Section 9.7 MUST NOT respond with a “good” status for such certificates.

**Section 17 Audit** _**(Clarification notes added to the section heading)**_

Certificates that are capable of being used to issue new certificates MUST either be Technically Constrained in line with section 9.7 and audited in line with section 17.9 only, or Unconstrained and fully audited in line with all remaining requirements from section 17. A Certificate is deemed as capable of being used to issue new certificates if it contains an X.509v3 basicConstraints extension, with the cA boolean set to true and is therefore by definition a Root CA Certificate or a Subordinate CA Certificate.

**Section 17.9 Regular Quality Assessment of Technically Constrained Subordinate CAs** _**(New Section)**_

During the period in which a Technically Constrained Subordinate CA issues Certificates, the CA which signed the Subordinate CA SHALL monitor adherence to the CA’s Certificate Policy and the Subordinate CA’s Certification Practice Statement. On at least a quarterly basis, against a randomly selected sample of the greater of one certificate or at least three percent of the Certificates issued by the Subordinate CA, during the period commencing immediately after the previous audit sample was taken, the CA shall ensure all applicable Baseline Requirements are met.

**Appendix B – Certificate Extensions (Normative)** _**(Clarify F and add G)**_

Was:-

**F. nameConstraints (optional)** If present, this extension SHOULD be marked critical\*. * Non-critical Name Constraints are an exception to RFC 5280 that MAY be used until the Name Constraints extension is supported by Application Software Suppliers whose software is used by a substantial portion of Relying Parties worldwide.

Amended to:-

**F. nameConstraints (optional)** If present, this extension SHOULD be marked critical\*. * Non-critical Name Constraints are an exception to RFC 5280 (4.2.1.10), however, they MAY be used until the Name Constraints extension is supported by Application Software Suppliers whose software is used by a substantial portion of Relying Parties worldwide. **G. extkeyUsage (optional)** For Subordinate CA Certificates to be Technically constrained in line with section 9.8, then either the value id-kp-serverAuth \[RFC5280\] or id-kp-clientAuth \[RFC5280\] or both values MUST be present**. Other values MAY be present. If present, this extension SHOULD be marked non-critical. ** Generally Extended Key Usage will only appear within end entity certificates (as highlighted in RFC 5280 (4.2.1.12)), however, Subordinate CAs MAY include the extension to further protect relying parties until the use of the extension is consistent between Application Software Suppliers whose software is used by a substantial portion of Relying Parties worldwide.

The review period for this ballot shall commence on July 15th, 2013 and will close on July 22nd, 2013. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at July 29, 2013. Votes must be cast by posting an on-list reply to this thread.

**Motion Ends**

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted.

[1]: /wiki/KeyPurposeId
[2]: /wiki/DirectoryName
[3]: /wiki/GeneralName
[4]: /wiki/DirName