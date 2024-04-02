---
aliases:
- /ev-certificate-contents/
date: 2024-04-02 18:28:58
title: EV Certificate Contents
---

**EV TLS Certificate Contents**

An EV TLS Certificate authenticates a web site (by domain name) and the entity controlling the web site. An EV TLS Certificate contains the following required fields:

1. **Subject Organization name** (Old EVG 9.2.1 - New EVG 7.1.4.2.1) – The “O” field must contain the full legal name of the entity controlling the web site as listed in the official records in the Subject’s Jurisdiction or as otherwise verified by the CA according to the EV Guidelines (EVG).

* A CA may abbreviate prefixes or suffixes in the organization name provided that such abbreviations are not misleading in that jurisdiction. For example, “Incorporated” may be abbreviated to “Inc.”

* An assumed name or DBA (doing business as) may be included at the beginning of this field, provided that it is followed by the organization’s legal name in parenthesis.

* If any combination of names exceeds 64 characters, then other parts of the organization name may be abbreviated or non-material words omitted so that the field does not exceed the 64-character limit; provided that the CA reviews the abbreviation and determines Relying Parties will not be misled into thinking that they are dealing with a different organization.

2. **Registration Number** (Old EVG 9.2.6 - New EVG 7.1.4.2.5) – This field must contain the unique Registration Number assigned by the Incorporating Agency / Registration Agency in the Jurisdiction of Incorporation / Registration.

3. **Address of Place of Business** (Old EVG 9.2.7 - New EVG 7.1.4.2.6) – This field must contain the address of the physical location for the Subject. City, state (if applicable), and country information are required. Street number and postal codes are optional.

4. **Business Category** (Old EVG 9.2.4 - New EVG 7.1.4.2.3) – This field must contain one of the following strings: “Private Organization”, “Government Entity”, “Business Entity”, or “Non-Commercial Entity”.

5. **Subject Jurisdiction of Incorporation or Registration** (Old EVG 9.2.5 - New EVG 7.1.4.2.4) This field contains only information relevant to the Jurisdiction of Incorporation or Registration. When performed at the country level, the field must include the country information and must not include the state or province or locality information. Similarly, when performed at the state or province level, it must include both country and state or province information, but must not include locality information. When incorporated or registered at the locality level, then it must include the country and state or province information, where the state or province regulates the registration of the entities at the locality level, as well as the locality information. Country information must be specified using the applicable ISO country code. State, province, or locality information (where applicable) must use the full name of the applicable jurisdiction.

6. **Domain name in Subject Alternative Name** – (Old EVG 9.8.1 - New EVG 7.1.2.1) This field must contain one or more host domain name(s) owned or controlled by the Subject for association with the Subject’s publicly accessible server. Such server may be owned and operated by the Subject or another entity (e.g., a hosting service). Wildcard characters in domain names are not allowed for EV TLS Certificates (unless the FQDN portion of the Wildcard Domain Name is an Onion Domain Name).

7. **EV Certificate Policy Object Identifier** – (Old EVG 9.3.2 - New EVG 7.1.6.1) Each EV TLS Certificate must also contain the CA/Browser Forum's EV Certificate Policy Identifier (EV CP OID) of 2.23.140.1.1 (or a policy identifier that, by
pre‐agreement with an Application Software Supplier, marks the Certificate as being an EV Certificate).
