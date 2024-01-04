---
aliases:
- /2020-07-16-ballot-sc30v2-disclosure-of-registration-incorporating-agency/
author: Wayne Thayer
date: 2020-07-16 22:41:25
tags:
- Server Certificates
title: 'Ballot SC30v2: Disclosure of Registration / Incorporating Agency'
type: post
---

The voting period for Ballot SC30v2 has ended and **the Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 17 votes total including abstentions**

– 17** Yes votes**: Buypass, Certum (Asseco), CFCA, Chunghwa Telecom, D-TRUST, eMudhra, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, OISTE, SHECA, SSL.com, SwissSign, SecureTrust (former Trustwave)
– **0 No votes**:
– **0 Abstain**:

100% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 5 votes total including abstentions**

– 5** Yes vote**s: Apple, Cisco, Google, Microsoft, Mozilla
– 0** No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

**Relevant Bylaw references**

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was** 11** votes – quorum was met.”

**Purpose of Ballot:
**
The EV Guidelines aim to ensure a consistent and repeatable level of validation for certificates, regardless of the CA performing the validation, providing Relying Parties consistency for all certificates complying with these Guidelines. Although the Guidelines attempt to specify objective requirements, areas remain that rely on a subjective determination by the CA. One such area is determining whether a given Incorporating Agency or Registration Agency fulfills these Requirements.

As currently specified, it’s possible for one CA to make a determination that a given Registration Agency or Incorporating Agency does meet the requirements of the EV Guidelines, while a different CA determines that same Agency does not. As the reliability of the information validated within the Certificate is tied to the reliability of the data source used to verify this information, this inconsistency undermines the assurance that EV Certificates are meant to provide.

While there is utility in being able to identify precisely what datasource(s) were used with a given Certificate, this ballot does not involve such work. It merely seeks to ensure that, for any given Organization, it can be validated consistently and to the same degree, regardless of the CA, by working to achieve consistency among all CAs in their selection of data sources.

Much like the work to remove “Any other method” from the validation of domain names, ensuring consistency, transparency, and objectivity in validating domain names, this ballot is the first step to doing the same for organization information.

A potential roadmap of ballots to to address these issues involves:

- CAs publish the list of Registration Agencies / Incorporating Agencies they use (this ballot)
- Create an allowed list of Registration Agencies / Incorporating Agencies and associated values, along with a process for updating and adding new ones, and requiring issuance exclusively use Agencies on this list.
- If useful and relevant to Relying Parties, ensure each Certificate can be tied back to their Registration Agency / Incorporating Agency, such as disclosure within the Certificate itself, so they can unambiguously and uniquely determine the organization that has been validated.

A similar process may then be repeated for other forms of verification data sources, such as the QIIS, QTIS, and QGIS within the EV Guidelines, or the Reliable Data Sources within the Baseline Requirements.

This was originally drafted in  , and as a pull request is available at

The difference between v1 of this ballot and v2 has been to modify the language to be clearer for those where English is not the first/primary language. The redline between v1 and v2 is available at

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Ben Wilson of Mozilla and Dimitris Zacharopoulos of HARICA.

**— MOTION BEGINS —**

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EV Guidelines”) as follows, based on version 1.7.2:

ADD a paragraph to Section 9.2.4 of the EV Guidelines as defined in the following redline:

ADD a paragraph to Section 9.2.5 of the EV Guidelines as defined in the following redline:

ADD a Section 11.1.3 to the EV Guidelines as defined in the following redline:

The Chair or Vice-Chair is permitted to update the Relevant Dates of the EV Guidelines as appropriate, such as in the following redline:

**— MOTION ENDS —**

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)
Start Time: 26-June 2020 19:00 UTC
End Time: after 4-July 2020 00:00 UTC

Vote for approval (7 days)
Start Time: 6-July 2020 14:20 UTC
End Time: 13-July 2020 20:00 UTC