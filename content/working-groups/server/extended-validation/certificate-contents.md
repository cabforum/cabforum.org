---
aliases:
- /ev-certificate-contents/
date: 2013-09-04 03:28:58
title: EV Certificate Contents
---

**EV SSL Certificate Contents**

An EV SSL Certificate authenticates a web site (by domain name) and the entity controlling the web site. An EV SSL Certificate contains the following required fields:

**Subject Identity**

1. **Subject Organization name** (EVG 9.2.1) – The “O” field must contain the full legal name of the entity controlling the web site as listed in the official records in the Subject’s Jurisdiction or as otherwise verified by the CA according to the EV Guidelines (EVG). 1. A CA may abbreviate prefixes or suffixes in the organization name provided that such abbreviations are not misleading in that jurisdiction. For example, “Incorporated” may be abbreviated to “Inc.”

1. An assumed name or DBAs (doing business as) may be included at the beginning of this field, provided that it is followed by the organization’s legal name in parenthesis.

1. If any combination of names exceeds 64 characters, then other parts of the organization name may be abbreviated or non-material words omitted so that the field does not exceed the 64-character limit; provided that the CA reviews the abbreviation and determines Relying Parties will not be misled into thinking that they are dealing with a different organization.

1. **Registration Number** (EVG 9.2.6) – This field must contain the unique Registration Number assigned by the Incorporating Agency in the Jurisdiction of Incorporation. For EV Code Signing, this number serves as part of the **Permanent Identifier** to carry information over between certificates. This identifier is used to retain reputation scores when switching certificate providers or when ordering a new certificate from the same provider. The permanent identifier is a special code that includes information about the certificate subject’s jurisdiction of incorporation and registration information.

1. **Address of Place of Business** (EVG 9.2.7) – This field must contain the address of the physical location for the Subject. City, state and country information are required. Street number and postal codes are optional.

1. **Business Category** (EVG 9.2.4) – This field must contain one of the following strings: “Private Organization”, “Government Entity”, “Business Entity”, or “Non-Commercial Entity”.

1. **Subject Jurisdiction of Incorporation or Registration** (EVG 9.2.5) **–** This field contains only information relevant to the Jurisdiction of Incorporation or Registration. When performed at the country level, the field must include the country information and must not include the state or province or locality information. Similarly, when performed at the state or province level, it must include both country and state or province information, but must not include locality information. When incorporated or registered at the locality level, then it must include the country and state or province information, where the state or province regulates the registration of the entities at the locality level, as well as the locality information. Country information must be specified using the applicable ISO country code. State, province, or locality information (where applicable) must use the full name of the applicable jurisdiction.

**Domain name** – This field must contain one or more host domain name(s) owned or controlled by the Subject for association with the Subject’s publicly accessible server. Such server may be owned and operated by the Subject or another entity (e.g., a hosting service). Wildcard characters in domain names are not allowed for EV SSL Certificates.

**EV Certificate Policy Object Identifier** – Each EV SSL Certificate must also contain the CA/Browser Forum's EV Certificate Policy Identifier (EV CP OID), which is 2.23.140.1.1.
