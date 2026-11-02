---
aliases:
- /2026/10/28/ballot-sc-remove-high-risk-language-from-tls-br-and-evg
date: 2026-10-28
tags:
- Ballot
- Server Certificates
title: 'Ballot SC105: Remove High Risk language from TLS BR and EVG'
type: post
---

## Voting Results

### Certificate Issuers
27 votes in total:

 * 27 voting YES: Amazon, Asseco Data Systems SA (Certum), Cybertrust Japan, DigiCert, Disig, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, Kamu SM, Let’s Encrypt, Microsec, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA 
 * 0 voting NO: 

 * 0 ABSTAIN:

### Certificate Consumers
2 votes in total:

 * 2 voting YES: Apple, Mozilla
 
 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 11 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC104: Set presence of AIA extension to SHOULD for Subscriber Certificates

[TBR-SC105.pdf](TBR-SC105.pdf)

[TBR-SC105-redlined.pdf](TBR-SC105-redline.pdf)

[TBR-SC105.docx](TBR-SC105.docx)

[TBR-SC105-redlined.docx](TBR-SC105-redline.docx)

[EVG-SC105.pdf](EVG-SC105.pdf)

[EVG-SC105-redlined.pdf](EVG-SC105-redline.pdf)

[EVG-SC105.docx](EVG-SC105.docx)

[EVG-SC105-redlined.docx](EVG-SC105-redline.docx)

**Start of Review Period:** 2026-11-02 11:00:00 UTC

**End of Review Period:** 2026-12-02 11:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Ballot Summary

This ballot removes the High Risk Certificate Request language from the TLS Baseline Requirements and the EV Guidelines. The requirement in Section 4.2.1 that CAs develop, maintain, and implement documented procedures to identify and require additional verification for High Risk Certificate Requests has long been criticized as vague and unenforceable. It does not define what constitutes a high risk request, gives CAs and auditors no objective basis for assessing compliance, and has been overtaken by the concrete controls added to the BRs in recent years, including CAA processing, DNSSEC validation, Multi-Perspective Issuance Corroboration, pre-issuance linting, and the sunset of weaker validation methods.

The ballot deletes the definition of High Risk Certificate Request and the related requirements in TLS BR Section 4.2.1, and removes EVG Section 3.2.2.12.1 (High Risk Status), which applied the BR High Risk requirements to EV Certificates. Remaining cross-references are updated accordingly. CAs remain free to operate risk-based controls under their own CP/CPS; this ballot removes only the undefined obligation from the Forum's requirements.

This ballot is proposed by Stephen Davidson (DigiCert) and endorsed by Trevoli Ponds-White (Amazon Trust Services) and Roman Fischer (SwissSign).
 
**--- Motion Begins ---**

 
MODIFY the Baseline Requirements and EV Guidelines as specified in the following Redline:

https://github.com/cabforum/servercert/compare/3574ae809e5f909b58ee4c26b7bac4a3b9e78421..52d751a49af6737a486e9bd45818c65e6d53bb79
 
**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline and will be subject to a 30-day IPR Review Period following a successful vote.

Discussion:

 * Start time: 2026-10-14 15:00 UTC
 * End time: 2026-10-21 15:00 UTC

Vote for approval (7 days):

 * Start time: 2026-10-21 16:00 UTC
 * End time: 2026-10-28 16:00 UTC
