---
aliases:
- /internal-names/
author: Ben Wilson
date: 2013-10-01 15:05:47
title: Guidance on Internal Names
type: page
---

## Guidance on the Deprecation of Internal Server Names and Reserved IP Addresses

The use of internal names in SSL/TLS Certificates is being phased out by Certification Authorities and Browsers. Elimination of such internal names is taking place as follows:

**New gTLDs**

No new certificates containing a new gTLD under consideration by ICANN should be issued. For more information, see **[https://gtldresult.icann.org/][1]**.

If ICANN has announced that a new gTLD is being consider for delegation, the CA MUST provide a warning to the applicant that the gTLD may soon become resolvable and that, at that time, the CA will revoke the Certificate unless the applicant promptly registers the domain name.

Within 30 days after ICANN has signed a contract with the operator for the new gTLD, **[https://www.icann.org/en/about/agreements/registries][2]**, all CAs MUST (1) compare the new gTLD against records of valid certificates and (2) cease issuing Certificates containing a Domain Name that includes the new gTLD until after the CA has first verified the Subscriber’s control over or exclusive right to use the Domain Name. Then, within 120 days after publication of registry agreement at the URL referenced above, all CAs MUST revoke those Certificates containing a Domain Name that includes the new gTLD unless the Subscriber is either the Domain Name Registrant or can demonstrate control over the Domain Name.

**All Other Uses of Internal Names**

For internal names not covered by the above-referenced ICANN gTLD process, on November 11, 2015, the issuance of certificates with a reserved IP address or internal server name is prohibited. On October 1, 2016, all publicly trusted SSL/TLS certificates with an internal name or reserved IP address will be revoked and/or blocked by browser software. As of July 1, 2012, all CAs were required to notify customers applying for internal name certificates that the use of such certificates has been deprecated by the CA / Browser Forum and that the practice will be eliminated by October 2016.

The document linked below explains the changes to Certification Authority support for internal server names and reserved IP addresses and the reasons behind the new rules that were introduced in the Baseline Requirements for the Issuance and Management of Publicly Trusted Certificates, Version 1.0, which took effect effect on July 1, 2012:  **[Internal Server Names and IP Address Requirements for SSL: Guidance on the Deprecation of Internal Server Names and Reserved IP Addresses, June 2012, CA/Browser Forum Version 1.0][3]** (pdf)

[1]: https://gtldresult.icann.org/ "New gTLD Application Status "
[2]: https://www.icann.org/en/about/agreements/registries "ICANN Registry Agreements for gTLDs"
[3]: /uploads/Guidance-Deprecated-Internal-Names.pdf