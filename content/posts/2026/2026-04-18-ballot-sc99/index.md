---
aliases:
- /2026/04/18/ballot-sc-99-improve-recording-of-validation-method
author: Wayne Thayer
date: 2026-04-18
tags:
- Ballot
- Server Certificates
title: 'Ballot SC099: Improve Recording of Validation Method'
type: post
---

## Voting Results

### Certificate Issuers
29 votes in total:

 * 29 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, Kamu SM, Let's Encrypt, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA
 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
4 votes in total:

 * 4 voting YES: Apple, Cisco Systems, Google, Mozilla
 
 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 15 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC099: Improve Recording of Validation Method

[TBR-SC99.pdf](BR-SC099.pdf)

[TBR-SC99-redlined.pdf](BR-SC099-redline.pdf)

[TBR-SC99.docx](BR-SC099.docx)

[TBR-SC99-redlined.docx](BR-SC099-redline.docx)

**Start of Review Period: 2026-04-18 18:00:00 UTC**

**End of Review Period: 2026-05-18 18:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Summary of the Ballot

Remove ambiguous language from Section 3.2.2.4 and 3.2.2.5 requiring that CAs "record" the "relevant BR version number" when performing validation.

Replace this with unambiguous language in Section 5.4.1, requiring that CAs specifically audit log the information being validated and what validation method they are using to do so.

The new language has an Effective Date of July 15, 2026, giving CAs two months from the expected end of this ballot's IPR period to comply.

### Background of the Ballot

The current BRs contain the following text in Sections 3.2.2.4 and 3.2.2.5:

> CAs SHALL maintain a record of which [domain/IP] validation method, including relevant BR version number, they used to validate every [domain/IP Address].

This text is problematic for four reasons:
- it only applies to domains and IP addresses, not other things being validated like organization information;
- the requirement to "maintain a record" is unclear (in audit logs? in a database? in a document?);
- no one is sure what the "relevant BR version" is (the effective version when the validation happened? the version that the validation process believes it implements?); and
- the text is not in Section 5.4.1, which is where the BRs concentrate requirements about recording information.

To resolve these issues, we need to start from first principles. The goal, as evidenced by discussion when this requirement was introduced and recollections of CA/BF members who were participating at the time, is to ensure that CAs and auditors are able to definitively identify the validation process with which the CA was required to comply for any given validation.

To determine what rules governed any given validation, we need two pieces of information:
1. When they performed that validation. The current requirements in Section 5.4.1 already require the CA to audit log the time of every verification procedure.
2. What validation method the CA used. This ballot augments Section 5.4.1 to also require that the CA audit log the validation method used, as well as other useful information.

Because we can accomplish the goal with a small addition to Section 5.4.1, this ballot removes the current text from Sections 3.2.2.4 and 3.2.2.5.

Note that this ballot removes the requirement to "record" the "relevant BR version number". This is not considered a loss, for several reasons:
- No CA or auditor should be relying on a logged BR version number to determine which version of the BRs governed the validation. The logged version number is not enforceable; the only information which can be relied upon to map a validation to a BRs version is the time at which the validation was performed.
- If a new version of the BRs adds requirements to a validation method, but gates those new requirements behind a future effective date, the logged version number may indicate that the CA complies with that new version long before the CA has actually implemented the soon-to-be-required behavior.
- If a new version of the BRs adds requirements to a validation method immediately upon the new version becoming effective, then a CA must update their processes to comply before the new version of the BRs is even published, and therefore the logged version number will be out-of-date compared to the implemented behavior.
- Part of the original motivation behind these statements was to encourage CAs to actually read new versions of the BRs and ensure their processes comply with them. We now have other mechanisms to encourage this behavior, such as CCADB self-assessments.

Therefore we conclude that recording the relevant BRs version number is neither useful nor well-specified, and therefore should not be included in the BRs.

This issue was discussed on Mozilla dev-security-policy@ (https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/x4zRcboSDwU) as well as at the CA/BF Face-to-Face Meeting 67 in Houston on March 10, 2026. The conclusion of those discussions was that we should create this ballot. The discussion period thread for this ballot can be seen here: https://groups.google.com/a/groups.cabforum.org/g/servercert-wg/c/KnkGWHEhWAI/m/juiAtWOJBwAJ

This ballot is written by Aaron Gable (ISRG / Let's Encrypt) and endorsed by Gurleen Grewal (Google Trust Services), Trev Ponds-White (Amazon Trust Services), and Roman Fischer (SwissSign).

**--- Motion Begins ---**

Modify the "Baseline Requirements for the Issuance and Management of Publicly-Trusted Server Certificates", based on Version 2.2.6, per the following redline:

https://github.com/cabforum/servercert/compare/168e0aa8cafe753c85a94b5a8f28541beda48201...e3fc28ab09ffae2f83aa9316ff20108199c29692

**--- Motion Ends ---**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

Discussion (at least 7 days):

 * Start time: 2026-04-03 19:00 UTC
 * End time: 2026-04-10 19:00 UTC

Vote for approval (7 days):

 * Start time: 2026-04-10 19:30 UTC
 * End time: 2026-04-17 19:30 UTC
