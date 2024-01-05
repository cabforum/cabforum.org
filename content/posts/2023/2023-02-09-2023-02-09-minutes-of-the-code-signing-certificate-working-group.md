---
aliases:
- /2023-02-09-2023-02-09-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-02-09 17:00:56
tags:
- Code Signing
- Minutes
title: 2023-02-09 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Andrea Holland (VikingCloud), Atsushi Inaba (GlobalSign), Ben Dewberry (Keyfactor), Brianca Martin (Amazon Trust Services), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Martijn Katerbarg (Sectigo), Mohit Kumar (GlobalSign), Roberto Quinones (Intel), Rollin Yu (TrustAsia), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert)

# Minutes

1. **Antitrust statement read**
1. **Approval of minutes**: Jan 26th minutes have not been sent out
1. Ballot: Malware base revocation (Martijn)

- Received some pushback on the mailing list.
- Discussion from Martijn K., Bruce M., Ian M., and Tim H. around revamping the entire revocation section.
- Agreed to pull revocation sections from the TLS and SMIME BRs and removing unnecessary items and added necessary sections like backdating and revocation investigations.

4. Ballot: Signing Service Update (Bruce)

- Previous action item was to change the definition of Signing Service to align what a signing service does and its models.
- Proposed definition- **Subscriber Key Protection Service**: An organization that generates the Key Pair and securely generates and manages the Private Key associated with a Subscriber’s Code Signing Certificate.
- Discussion from Bruce M., Tim H., Ian M., Inigo B., and Martijn K. on the requirements for signing service: who generates, who activates, who stores, how it is stored and how is it managed. Discussion around adjusting the name from Signing Service to Subscriber Key Protection Service as the focus of the Signing Service is on protection not the artifact being signed.
- Next step is to close out the comments, push through the new definition, get a second proposal, and effective date.

5. Ballot: Remove SSL BR References – tabled discussion
1. Other business – F2F prep

- Top 3 Goals are being worked on

* 1. 1. Revocation ballot
        2\. Subscriber Key Protection Service ballot
        3\. SSL BR reference ballot
*
* - Additional goals:
* 1. 1. timestamp updates
        2\. high risk applicants
        3\. validity period
        4\. shorter lived certificates
        5\. certificate transparency

7. Next Meeting – Potentially cancel the meeting on 23 February

1. Adjourn