---
aliases:
- /2025/04/11/ballot-sc-81v3-Introduce-Schedule-of-Reducing-Validity-and-Data-Reuse-Periods

author: Wayne Thayer
date: 2025-04-11
tags:
- Ballot
- Server Certificates
title: 'Ballot SC081v3: Introduce Schedule of Reducing Validity and Data Reuse Periods'
type: post
---

## Voting Results

### Certificate Issuers

30 votes in total:

- **25 voting YES**: Amazon, Asseco Data Systems SA (Certum), Buypass AS, Certigna (DHIMYOTIS), Certinomis, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, iTrusChina, Izenpe, NAVER Cloud Trust Services, OISTE Foundation, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, VikingCloud, Visa
- 0 voting NO:
- 5 ABSTAIN: Entrust, IdenTrust, Japan Registry Services, SECOM Trust Systems, TWCA

### Certificate Consumers

4 votes total, with no abstentions:

- **4 voting YES**: Apple, Google, Microsoft, Mozilla
- 0 voting NO
- 0 ABSTAIN

## Bylaws Requirements

Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- At least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
The quorum was 16 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review

**Ballot for Review**:  SC-081v3: Introduce Schedule of Reducing Validity and Data Reuse Periods

[TBR-SC81.pdf](BR-SC081v3.pdf)

[TBR-SC81-redlined.pdf](BR-SC081v3-redlined.pdf)

[TBR-SC81.docx](BR-SC081v3.docx)

**Start of Review Period**: 2025-04-13 03:00:00 UTC

**End of Review Period**: 2025-05-13 03:00:00 UTC

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair (email to Dimitris Zacharopoulos ) and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.

For details, please see the current version of the [CA/Browser Forum Intellectual Property Rights Policy](/uploads/CABF-IPR-Policy-v.1.3_4APR18.pdf).

(An optional template for submitting an Exclusion Notice is available [here](/uploads/Template-for-Exclusion-Notice.pdf))

## Ballot Contents

**Overview**
- Expand Section 4.2.1 to detail the allowed data reuse periods for validation data (both for domains/IPs and for everything else in Section 3.2)
    - Eventual reduction of non-SAN validation data reuse from 825 to 398 days
    - Eventual reduction of SAN validation data reuse from 398 days to 10 days
- Expand Section 6.3.2 to detail a schedule for reducing Public TLS certificate maximum validity periods in coming years
    - Eventual reduction of maximum validity period from 398 days to 47 days
- These reductions are proposed to occur starting in March 2026 and concluding in March 2029

**Background**

The Web PKI is a complex, integral, and actively maintained ecosystem underpinning the foundational security properties of the internet. Since the TLS Baseline Requirements (TBRs) were first adopted in the CA/Browser Forum and subsequently incorporated into various Root Programs as an interoperable, basic threshold for participation, the topic of certificate validity and data reuse periods has been a near constant point of discussion — in large part because of the cascading impact changes to these aspects of the TBRs have on the overall health and stability of the Web PKI.

The focus of this ballot is a set of changes to the TBRs. The TBRs address requirements only for certificates which are “intended to be used for authenticating servers accessible through the Internet” [1]. Certificates which match or are compatible with the profiles described in the TBRs can be (and are) used for a variety of purposes not addressed by the TBRs, but these use-cases are not directly in scope of the TBRs nor the changes proposed in this ballot.

The TBRs maintain a requirement for CAs to revoke certificates they have issued within 24 hours under certain circumstances. It can reasonably be inferred from this that certificates issued in compliance with the TBRs are understood to be managed in such as a way as to allow for certificate replacement within any given 24 hour period. While this requirement has been part of the TBRs since its first adopted version, the reality of certificate management practices — whether policy, practice, or technology — has not necessarily reflected such an expectation. Nonetheless, this is and has been the requirement presented by the TBRs.

**Approach**

Because the reduction of certificate validity and data reuse periods requires changes far beyond the direct scope of the CA/Browser Forum, it is functionally impossible to determine all possible variables and factors impacted prior to adopting associated changes. Because we need to address known unknowns as well as unknown unknowns [2], it’s important to provide mechanisms for 1) substantiating previously unassessed risks and 2) altering course when necessary. Similarly, in order to shift more unknown unknowns towards known unknowns and known knowns over times, it is useful to ensure broad awareness prior to changes taking effect. In an effort to meet these goals, this ballot proposes multiple changes over an extended period of time with the intent of setting reasonable and attainable timelines upfront, while still allowing for future alterations if determined to be necessary [3].

**Benefits**

The value of continuing to reduce maximum certificate validity and data reuse periods remains evident today, as described in prior ballots which proposed similar changes [4] [5]. In particular, the following are perceived benefits to the Web PKI:
1. Certificates are representations of a point in time state of reality. That is, at the point of certificate issuance, all data certified therein is correct and the process followed for that certification is accurately documented for that point in time (with some exceptions). The more time passes from that moment of issuance, the more likely it becomes that data represented in the certificate diverge from reality. Thus, a reduction to both certificate lifetimes and data reuse periods increases the average net reliability of certificates [6].
2. The existence of certificates with formerly-correct contents poses real risk to websites, domain owners, and relying parties. Both past [7] and recent research reinforces this risk, whether with domain expiration, key access/control by third parties, or other “security-relevant events that enable a third-party to impersonate a domain outside their control” [8]. A reduction to both certificate lifetimes and data reuse periods decreases the likelihood of a certificate remaining valid after the information contained therein is no longer accurate and decreases the period of time in which such inaccurate information would remain in a valid certificate, independent of any additional action by any involved stakeholder.
3. As alluded to above, at times CAs do not issue certificates in accordance with the policies, requirements, or specifications which govern such issuance. Requiring more frequent validation of information used in the issuance of certificates and lowering the maximum validity period of certificates reduces the risk of improper validation, the scope of improper validation perpetuation, and the opportunities for misissued certificates to negatively impact the ecosystem and its relying parties.
4. While not intended to be a primary benefit of this ballot, it is also worth noting that an ancillary benefit to these changes is expected in increased consistency of quality, stability, and availability of certificate lifecycle management components which enable automated issuance, replacement, and rotation of certificates. Increased deployment of robust, bi-directional automation is not a panacea for challenges in the Web PKI, but it certainly helps [9].
5. Certificate status services, such as CRLs and OCSP, are technologies which do not adequately protect relying parties at the current scale of the internet, whether due to privacy concerns, performance impacts, timeliness of relevant statuses, the accuracy (and usability) of data, or other inadequacies. A reduction to certificate lifetimes provides firm protection to users, independent of certificate status services, further reducing the associated costs to internet users.
6. Deprecating cryptographic algorithms used in the generation or certification of keys is typically a complex process affecting security-critical properties of certificate use. When factoring in the ever-present risk that a weakness may be identified with an algorithm, library, or similar component of the ecosystem at any time, with or without forewarning, it is vital that the Web PKI structure itself such that a response can be made rapidly and effectively. A reduced maximum validity period for TLS certificates provides substantial support for smoothly — and, when necessary, swiftly — transitioning between deployed and supported cryptography.

These are all existing problems in the Web PKI space for which this Ballot provides a mitigating solution. While the problems will remain, their size, scope of impact, and rate of prevention are all improved through this Ballot.

**Adjacent Solutions**

There are often multiple possibilities when exploring the solutions which might address a given problem. Taken individually, each of the above problems may be mitigated by some other mechanism. Collectively, however, no single solution is able to address the corpus of issues in a like manner or with a similar level of efficacy.

**Revocation**

Certificate status services, or revocation of certificates, provides a complementary reactive risk mitigation, while this Ballot focuses on improving proactive mitigation of these identified risks. As noted above, relying solely on revocation is untenable for a number of reasons.
1. Scalability:
    - Certificate revocation services need to handle a large volume of requests, especially as the number of certificates in use continues to grow. This growth can and does overwhelm existing infrastructure, leading to delays and failures in checking the validity of certificates. By reducing the validity period, the percentage of certificates revoked during their lifetime decreases and the gap between when a certificate is revoked and when it expires decreases.
2. Reliability:
    - The reliability of certificate status services is often inconsistent, as a global population accessing websites hosted semi-locally are required to make additional connections to third-party systems unassociated with the website itself. Generally, this problem has increased with the adoption of distributed certificate status services, but does still remain an issue with many website connections.
    - Certificate status services are unreliable also due to the need for action to be taken by multiple parties in order for those statuses to be effective. Not every potentially problematic certificate is revoked, let alone revoked in a timely manner. Even when populations of certificates which must be revoked within a very specific timeframe are clearly identified, revocation does not consistently occur as expected.
    - Both real-time access to certificate status services and the correctness/completeness of the information provided by those certificate status services are unreliable to some degree. Certificate validity periods, and their enforcement by relying parties, are incredibly reliable.
3. User Impact:
    - Certificate status services impose a cost on relying parties and website users. When connecting to a webpage loading content from multiple domains, each connection queries for the status of its associated TLS certificate. Sometimes those queries can hit local caches, but often require waiting for several (and, in some cases, dozens) of queries to either return a response, or to timeout. The rate of timeouts and/or retries increases under a variety of conditions, resulting in either significantly increased page load times or in abandoning the attempts to query certificate status services.

As with the problems described under Benefits, the problems associated with the use of certificate status services may be addressed with a variety of solutions, each requiring action by multiple parties — not all of which are represented within the CA/Browser Forum nor are those solutions fully within the scope of the Forum’s ability to guarantee adoption. Regardless, however, those problems are adjacent to, rather than encompassed by, the proactive measures sought within this Ballot.

**Conclusion**

Since its first version, the TLS Baseline Requirements have set timelines to reduce the validity period and restrict the data reuse period for the certificates issued under them. The value of doing so then remains largely the same as the value in doing so now. The value of doing so in Ballot 185 remains largely the same as doing so now. The value of doing so in Ballot SC-022 remains largely the same as doing so now. This Ballot takes a somewhat different approach than any prior reduction, but does so with the aim of providing early and clear communication around both near and far-term changes needed by Web PKI participants while retaining the space to assess and incorporate new information as it becomes available.

[1] - https://github.com/cabforum/servercert/blob/main/docs/BR.md#11-overview

[2] - https://static.cambridge.org/binary/version/id/urn:cambridge.org:id:binary:20211028135554557-0735:9781009039604:51076fig13_1b.png?pub-status=live

[3] - This follows a pattern present since Version 1 of the TBRs (which established an initial maximum validity period of 60 months along with a future reduction to 39 months) and most recently in Ballot SC-063 (which introduced an initial Short-Lived Subscriber Certificate validity period of 10 days with a future reduction to 7 days).

[4] - https://cabforum.org/2017/02/24/ballot-185-limiting-the-lifetime-of-certificates/

[5] - https://cabforum.org/2019/09/10/ballot-sc22-reduce-certificate-lifetimes-v2/#ballot-sc22-reduce-certificate-lifetimes-v2

[6] - Fundamentally, the above property of certificates is not something which can be addressed through revocation of certificates without much more substantial changes to the ecosystem.

[7] - https://insecure.design/

[8] - https://zanema.com/papers/imc23_stale_certs.pdf

[9] - https://www.hezmatt.org/~mpalmer/blog/2024/01/30/why-certificate-automation-matters.html

**Motion**

The following motion has been proposed by Clint Wilson (Apple) and endorsed by Nick France (Sectigo), Ryan Dickson (Google Chrome), and Ben Wilson (Mozilla)

You can view and comment on the Github pull request representing this ballot here.

**Motion Begins**

MODIFY the "Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates" ("TLS Baseline Requirements") based on Version XXX as specified in the following redline:

https://github.com/cabforum/servercert/compare/b7fd69b36171d81930e7758482984ce957a1ce7a...91724f5f705443a73306f875149177aec304e376 

**Motion Ends**

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

**Discussion (at least 7 days)**

Start time: Tuesday, January 28, 2025 17:00 UTC (2025-01-28T17:00:00Z)

End time: on or after Tuesday, April 01, 2025 17:00 UTC (2025-04-01T17:00:00Z)

**Vote for approval (7 days)**

Start time: Friday, April 04, 2025 19:30 UTC (2025-04-04T19:30:00.000Z)

End time: Friday, April 11, 2025 19:30 UTC (2025-04-11T19:30:00.000Z)
