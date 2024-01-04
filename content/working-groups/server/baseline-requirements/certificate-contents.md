---
aliases:
- /baseline-requirements-certificate-contents/
author: Ben Wilson
date: 2013-09-04 03:30:54
title: Certificate Contents for Baseline SSL
type: page
---

# Baseline Requirements for Contents of Publicly Trusted SSL/TLS Certificates {#Baseline_Requirements_for_Contents_of_Publicly_Trusted_SSL.2BAC8-TLS_Certificates}

Certificates conforming to the Baseline Requirements must comply with sections 9.1 and 9.2 of the Baseline Requirements as well as Appendices A and B. Here are the general requirements found in those parts of the Baseline Requirements:

## CA Certificates {#CA_Certificates}

Recommended key strengths are at least 2048-bit RSA using SHA-256, SHA-384 or SHA-512 or Elliptic Curve using NIST P-256, P-384, or P-521.

No MD5, and 1024-bit RSA and SHA1 are grandfathered. — SHA-1 MAY be used with RSA keys until SHA-256 is supported widely by browsers used by a substantial portion of relying-parties worldwide, and a Root CA Certificate issued prior to 31 Dec. 2010 with an RSA key size less than 2048 bits may still serve as a trust anchor for Subscriber Certificates.

- **basicConstraints**

This extension MUST be present and MUST be marked critical. The cA field MUST be set true. The pathLenConstraint field MAY be present.

- **keyUsage**

This extension MUST be present and MUST be marked critical. Bit positions for keyCertSign and cRLSign MUST be set. If the Private Key is used for signing OCSP responses, then the digitalSignature bit MUST be set.

## All Certificates {#All_Certificates}

CA shall not issue Certificates containing a keyUsage flag, extendedKeyUsage value, Certificate extension, or other data not specified unless the CA is aware of a reason for including the data in the Certificate. CAs SHALL NOT issue a Certificate with: (a)    Extensions that do not apply in the context of the public Internet (such as an extendedKeyUsage value for a service that is only valid in the context of a privately managed network), unless: i. such value falls within an OID arc for which the Applicant demonstrates ownership, or ii. the Applicant can otherwise demonstrate the right to assert the data in a public context; or (b)    semantics that, if included, will mislead a Relying Party about the certificate information verified by the CA (such as including extendedKeyUsage value for a smart card, where the CA is not able to verify that the corresponding Private Key is confined to such hardware due to remote issuance).

## Subscriber Certificates {#Subscriber_Certificates}

- **certificatePolicies**

This extension MUST be present and SHOULD NOT be marked critical. certificatePolicies:policyIdentifier (Required)

- A Policy Identifier, defined by the issuing CA, that indicates a Certificate Policy asserting the issuing CA’s adherence to and compliance with these Requirements.

The following extensions MAY be present: certificatePolicies:policyQualifiers:policyQualifierId (Recommended)

- id-qt 1 \[RFC 5280\].

certificatePolicies:policyQualifiers:qualifier:cPSuri (Optional)

- HTTP URL for the Subordinate CA’s Certification Practice Statement, Relying Party Agreement or other pointer to online information provided by the CA.
- **cRLDistributionPoints**

This extension MAY be present. If present, it MUST NOT be marked critical, and it MUST contain the HTTP URL of the CA’s CRL service. See Section 13.2.1 for details.

- **authorityInformationAccess**

With the exception of stapling, which is noted below, this extension MUST be present. It MUST NOT be marked critical, and it MUST contain the HTTP URL of the Issuing CA’s OCSP responder (accessMethod = 1.3.6.1.5.5.7.48.1). It SHOULD also contain the HTTP URL of the Issuing CA’s certificate (accessMethod = 1.3.6.1.5.5.7.48.2). See Section 13.2.1 for details. The HTTP URL of the Issuing CA’s OCSP responder MAY be omitted provided that the Subscriber “staples” OCSP responses for the Certificate in its TLS handshakes \[RFC4366\].

- **basicConstraints (optional)**

If present, the cA field MUST be set false.

- **keyUsage (optional)**

If present, bit positions for keyCertSign and cRLSign MUST NOT be set.

- **extKeyUsage (required)**

Either the value id-kp-serverAuth \[RFC5280\] or id-kp-clientAuth \[RFC5280\] or both values MUST be present. id-kp-emailProtection \[RFC5280\] MAY be present. Other values SHOULD NOT be present.