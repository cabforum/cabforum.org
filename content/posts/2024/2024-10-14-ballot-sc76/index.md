---
aliases:
- /2024/10/14/ballot-sc-76-Clarify and improve OCSP requirements
author: Iñigo Barreira
date: 2024-10-14
tags:
- Ballot
- Server Certificates
title: 'Ballot SC076v2: Clarify and improve OCSP requirements'
type: post
---

## Voting Results

### Certificate Issuers

20 votes total, with no abstentions:

- **20 Issuers voting YES**: Amazon, Buypass, Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Disig, Entrust, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, JPRS, Let's Encrypt / ISRG, OISTE, SECOM, Sectigo, Telia Company, TWCA
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

### Certificate Consumers

2 votes total, with no abstentions:

- **2 Consumers voting YES**: Apple, Mozilla
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
the quorum was 13 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**: Ballot SC-76: Clarify and improve OCSP requirements

[TBR-SC76.pdf](BR-SC76.pdf)

[TBR-SC76-redlined.pdf](BR-SC76-redlined.pdf)

[TBR-SC76.docx](BR-SC76.docx)

**Start of Review Period**: 14 october 2024 at 13:30 UTC

**End of Review Period**: 14 November 2024 at 13:30 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair, Iñigo Barreira, inigo.barreira at sectigo.com, and also must submit a copy to the CA/B Forum public mailing list, (public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

This is v2 of this ballot; you can see the discussion thread for v1 here: https://lists.cabforum.org/pipermail/servercert-wg/2024-August/004798.html

This ballot attempts to address three concerns:
- The confusion around "reserved" serials, which do not actually exist because all Precertificate serials are assumed to also exist in corresponding Certificates and are therefore actually "assigned";
- Confusion around whether, and how quickly, OCSP responders must begin providing authoritative responses for Certificates and Precertificates; and
- Confusion around whether and how the OCSP requirements apply to Certificates which do not contain an AIA OCSP URL, but for which the CA's OCSP responder is still willing to provide responses.

It addresses these concerns by:
- Stating that OCSP responses must be available within 15 minutes of signing a certificate containing an AIA OCSP URL;
- Removing the concept of a "reserved" serial entirely;
- Moving all OCSP requirements into Section 4.9.9, leaving Section 4.9.10 (which RFC 3647 says is meant to place requirements on relying parties, not on CAs) empty; and
- Organizing the requirements in Section 4.9.9 into three clusters:
  - Definitions of "validity interval", "assigned", and "unassigned";
  - Requirements on OCSP Responders, which apply only to responses from AIA OCSP URLs found in issued certs; and
  - Requirements on OCSP Responses, which apply to all responses regardless of whether the certificate in question has an AIA OCSP URL.

GitHub PR representing this ballot: https://github.com/cabforum/servercert/pull/535
Rendered view of the resulting text: https://github.com/cabforum/servercert/blob/a8a36690802250cdbe508a6c1f99f700a5357bd3/docs/BR.md#499-on-line-revocationstatus-checking-availability

 
The following motion has been proposed by Aaron Gable (Let's Encrypt / ISRG), and is endorsed by Ben Wilson (Mozilla) and Antonis Eleftheriadis (HARICA).


### Motion begins

Modify the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates", based on Version 2.0.6, as specified in the following redline:

https://github.com/cabforum/servercert/compare/929d9b4a1ed1f13f92f6af672ad6f6a2153b8230...a8a36690802250cdbe508a6c1f99f700a5357bd3



### Motion ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:
 
Discussion (at least 7 days)
•	Start time: 2024-08-29 19:00 UTC
•	End time: 2024-09-26 19:00 UTC
 
Vote for approval (7 days)
•	Start time: 2024-09-26 19:00 UTC
•	End time: 2024-10-03 19:00 UTC





