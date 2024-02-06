---
aliases:
- /2024/02/01/ballot-sc-68-allow-vatel-and-vatxi-for-organizationidentifier/
author: Dimitris Zacharopoulos
date: 2024-02-01
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-68: Allow VATEL and VATXI for organizationIdentifier'
type: post
---
## Voting Results

### Certificate Issuers

23 votes total, with no abstentions:
- **23 Issuers voting YES**: Actalis, Buypass, CFCA, CommScope, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Fastly, GDCA, GlobalSign, GoDaddy, HARICA, iTrusChina, Izenpe, OISTE, SECOM, Sectigo, SSL.com, SwissSign, Telia Company and Viking Cloud
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

4 votes total, with no abstentions:
- **4 Consumers voting YES**: Apple, Google, Microsoft, Mozilla
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 11 for this ballot. This requirement was **MET**.

 
## Ballot Contents

### Purpose of the Ballot

The EV Guidelines have strict rules in the organizationIdentifier values and require the country code of all currently-allowed Registration Schemes (NTR, VAT, PSD) to follow the ISO 3166-1 for the 2-letter country prefix.

The organizationIdentifier language mainly came from ETSI EN 319 412-1 and then the SCWG made several modifications. However, there is an exception for Greece specifically for the VAT Registration Scheme that is aligned with Article 215 of [Council Directive 2006/112/EC](https://eur-lex.europa.eu/eli/dir/2006/112/oj) that allows Greece to use the country prefix “EL”. In practice, Greece uses the prefix “EL” to identify itself next to the VAT number of all Legal Entities registered/incorporated/established in Greece, and all other European Countries use this prefix to identify Greek VAT numbers. This can easily be verified in the [VIES VAT number validation website](https://ec.europa.eu/taxation_customs/vies/#/vat-validation) where Greece is listed as”EL”.

There is also [Council Directive 2020/1756](https://eur-lex.europa.eu/eli/dir/2020/1756/oj) amending Directive 2006/112/EC that requires the prefix “XI” for the identification of taxable persons in Northern Ireland.

This [pull request](https://github.com/cabforum/servercert/pull/473) proposes updates to the EV Guidelines to allow those additional prefixes. It also fixes some formatting issues.

The following motion has been proposed by Dimitris Zacharopoulos of HARICA and endorsed by Ben Wilson of Mozilla and Corey Bonnell of Digicert.

### MOTION BEGINS

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EV Guidelines”), based on Version 1.8.0.

MODIFY the EV Guidelines as specified in the following Redline:

[https://github.com/cabforum/servercert/compare/da89d0e9700c6dd89a8263526addc39f472bf54c](https://github.com/cabforum/servercert/compare/da89d0e9700c6dd89a8263526addc39f472bf54c).

### MOTION ENDS

The procedure for this ballot is as follows:

||Start time (8:00 UTC) |	End time (8:00 UTC)|
|------|------|------|
|Discussion (at least 7 days)| 	2024-01-16 |	2024-01-23|
|Expected Vote for approval (7 days)| 	2024-01-23 |	2024-01-30|-
