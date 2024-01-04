---
aliases:
- /about-the-baseline-requirements/
author: Ben Wilson
date: 2013-09-04 03:20:27
title: About the Baseline Requirements
type: page
---

**About the Baseline Requirements**

The Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates describe a subset of the requirements that a certification authority must meet in order to issue digital certificates for SSL/TLS servers to be publicly trusted by browsers. Except where explicitly stated otherwise, the requirements apply only to events that occur on or after the requirement’s effective date.

The requirements do not address all of the issues relevant to the issuance and management of publicly-trusted certificates, and the CA/Browser Forum may update the requirements to address both existing and emerging threats to online security.

The current version of the requirements only addresses certificates used for authenticating servers accessible through the Internet. Similar requirements for code signing, S/MIME, time-stamping, VoIP, IM, Web services, etc. may be covered in future versions.

The requirements also do not address the issuance, or management of certificates by enterprises that operate their own Public Key Infrastructure for internal purposes only and where the root certificate is not distributed by browsers.

**Vetting of Certificate Applicants pursuant to the Baseline Requirements**

The Baseline Requirements require CAs to verify all contents of a certificate, except information contained in the organizational unit field, to a minimum degree of diligence. For certificates issued to domain names only, the CA confirms that, as of the date the Certificate was issued, the applicant either is the registrant of the domain name or has control over the FQDN. This can be done through an automated, challenge-response email. A similar requirement applies for verifying the assignment or control of IP addresses. Certification Authorities issuing organizationally-vetted certificates (certificates with subject identity information) verify the name and address of the applicant using reliable information sources, such as a government agency in the jurisdiction of the Applicant’s legal creation, existence, or recognition or a reliable third party database. The CA also confirms the authenticity of the certificate request through some means of reliable communication with the organization (i.e. they verify that the certificate requester is an authorized employee/agent within the subscribing organization). For certificates issued to individuals, the CA verifies the individual’s identity using a government-issued photo ID that is inspected for indication of alteration or falsification.

Since 2012, the Baseline Requirements have been incorporated by reference into, and form part of, the CA/Browser Forum’s [Extended Validation Guidelines][1].

[1]: /?page_id=90 "Extended Validation"