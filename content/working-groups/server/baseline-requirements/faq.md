---
aliases:
- /faq-about-the-baseline-requirements/
author: Ben Wilson
date: 2013-09-04 03:33:24
title: FAQ for Baseline Requirements
type: page
---

# Frequently Asked Questions about the Baseline Requirements {#Frequently_Asked_Questions_about_the_Baseline_Requirements}

**1. What are the CA/Browser Forum Baseline Requirements (BR) and how did they come about?**

The widespread use of the Internet for online transactions, the need to secure them, the proliferation of Certification Authorities (CA), and the varying criteria used by browsers to determine whether to embed CAs as trust anchors in software has driven the critical need for a standard baseline on SSL business operations and authentication processes to ensure the continued success and viability of the trust model. During the course of several years, CAs and Browsers worked to develop stricter and more uniform standards for the management of CAs and issuance of SSL Certificates. Baseline Requirements 1.0 went into effect on July 1, 2012. They were designed to strengthen the security around authentication processes and SSL issuance operations. The requirements include identity vetting, certificate content and profiles, CA security, certificate revocation mechanisms, use of algorithms and key sizes, audit requirements, liability, privacy and confidentiality, and delegation of authority.

**2. What are in the Baseline Requirements?**

****Examples of practices covered in the Baseline Requirements include: o Differentiation between Domain Validated (DV) and Organizational Validated (OV) certificates that are compliant to the CA/B Baseline Requirements, a practice similar to Extended Validation (EV) certificates. o Validity period for certificates issued after July 1, 2012 must not exceed 60 months and issued after April 1, 2015 must not exceed 39 months. o Each entry for Subject Alternative Name (SAN) extension must contain a Fully-Qualified Domain Name (FQDN) or the IP address of a server that belongs to the organization. o Certificates with a SAN or Common Name (CN) field containing a Reserved IP Address or Internal Server Name are being phased out and such certificates will no longer be valid after October 2016.

The Baseline Requirements can be reviewed by clicking the Baseline Requirements link above, or the one here: [CA/B Forum Baseline Requirements][1].

**3. Why are the Baseline Requirements important?** ****

Baseline Requirements are important to both CA service providers and consumers. CA service providers will have a clear understanding of the standards that they need to adhere to when providing SSL and authentication services. In turn, auditors will use the criteria to measure whether the CA meets industry minimum expectations. A CA with an audit indicating that it is compliant with the Baseline Requirements will have less risk of being rejected by the leading browsers (i.e. their certificates will be more widely accepted).  Consumers will be assured of a certain level of security when they encounter SSL certificates offered by CAs that have adopted the CA/B Baseline Requirements.  The Baseline Requirements will lead to more frequent use of SSL to secure websites with stronger encryption and fewer certificate-related vulnerabilities.

**4. With the issuance of Baseline Requirements, does it mean that all CAs have the same security standards?**

Baseline Requirements provide a minimal standard for CAs with regards to their SSL operations and business processes. However, CAs are encouraged to go beyond the baseline standards to provide stringent authentication practices and high standards which makes for stronger security for organizations and users. In summary, users and consumers sharing and transacting on the Internet will have better protection and visibility into the trust level of the websites they visit.

**5. How can I tell if a certificate is compliant to the Baseline Requirements?**

Section 9.3.4 of the Baseline Requirements states that the CA must disclose that Certificates it issues containing its specified Baseline Requirements policy identifier are managed in accordance with these Requirements. The CA must include a statement in its Certificate Policy or Certification Practices Statements that it complies with Baseline Requirements, and the audit criteria of all major audit schemes check whether the CA performs in accordance with such disclosed practices. The CA can identify those certificates issued in compliance with the Baseline Requirements by using the CA/Browser Forum certificate policy object identifier (CP OID). The CP OID is typically in the Details tab and one can get there by clicking on the padlock and “View certificates” link, then scroll down to Certificate Policies. CP OIDs are displayed in the certificate similar to the example below from Internet Explorer.

**6. How do I know the Baseline Requirements CP OID for a particular CA?**

A CA can use one of the generic CP OIDs provided by the Baseline Requirements:

- 2.23.140.1.2   (Certificate issued in compliance with the Baseline Requirements)
- 2.23.140.1.2.1 (Compliant with Baseline Requirements – No entity identity asserted)
- 2.23.140.1.2.2 (Compliant with Baseline Requirements – Entity identity asserted)

Only certificates from CAs that comply with the Baseline Requirements can display the CA/Browser Forum OIDs above, but most commercial CAs maintain their own CP OIDs. If a CA has created its own proprietary CP OIDs when to assert compliance with the BRs, they will list them in their CP or CPS, or the CA/Browser Forum also maintains a list of these OIDs here, in the CA/Browser Forum’s own [Object Registry][2].

[1]: /working-groups/server/baseline-requirements/ "Baseline Requirements"
[2]: /resources/object-registry/ "Object Registry"