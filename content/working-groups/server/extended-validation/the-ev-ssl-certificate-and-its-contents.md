---
aliases:
- /the-ev-ssl-certificate-and-its-contents/
date: 2013-12-02 16:02:50
title: The EV SSL Certificate and its Contents
---

Extended Validation (EV) SSL Certificates will contain the following required fields:

**Organization name** – This field must contain the Subject’s (i.e., certificate holding entity’s) full legal organization name as listed in the official records of the Incorporating Agency in the Subject’s Jurisdiction of Incorporation. In addition, an assumed name or d/b/a (doing business as) name used by the Subject may be included at the beginning of this field, provided that it is followed by the full legal organization name in parenthesis. If the combination of the full legal organization name and the assumed or d/b/a name exceeds 64 bytes as defined by RFC 3280, the CA should use only the full legal organization name in the certificate.

**Domain name** – This field must contain one or more host domain name(s) owned or controlled by the Subject and to be associated with Subject’s publicly accessible server. Such server may be owned and operated by the Subject or another entity (e.g., a hosting service). Wildcard certificates are not allowed for EV SSL Certificates.

**Jurisdiction of Incorporation** – These fields must contain information only to the level of the Incorporating Agency – e.g., the Jurisdiction of Incorporation for an Incorporating Agency at the country level would include country information but would not include state or province or city or town information; the Jurisdiction of Incorporation for an Incorporating Agency at the state or province level would include both country and state or province information, but would not include city or town information; and so forth. Country information must be specified using the applicable ISO country code. State or province information, and city or town information (where applicable) for the Subject’s Jurisdiction of Incorporation must be specified using the full name of the applicable jurisdiction.

**Registration Number** – This field must contain the unique Registration Number assigned to the Subject by the Incorporating Agency in its Jurisdiction of Incorporation (for Private Organization Subjects only).

**Address of Place of Business** – This field must contain the address of the physical location of the Subject’s Place of Business. City, state and country information is required. Street number and ZIP/postal are optional.