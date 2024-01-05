---
aliases:
- /2021-02-26-ballot-sc41-reformatting-the-brs-evgs-and-ncssrs/
author: Jos Purvis
date: 2021-02-26 20:24:01
tags:
- Ballot
- Server Certificates
title: 'Ballot SC41: Reformatting the BRs, EVGs, and NCSSRs'
type: post
---

The voting period for Ballot SC41v2 has concluded and the **Ballot has Passed**.

## Voting Results 

### Certificate Issuers 

**2****1 votes total, with no abstentions**

- 21 Yes votes: Buypass, Certum, D-TRUST, DigiCert, Disig, eMudhra, Entrust, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, ISRG (Let’s Encrypt), Izenpe, Kamu SM, Sectigo, SecureTrust, SwissSign, Telia Company, TrustCor, Visa
- 0 No Votes
- 0 Abstentions

### Certificate Consumers 

**6 votes total, with no abstentions**

- 6 Yes votes: Apple, Cisco, Google, Microsoft, Mozilla, 360
- 0 No votes
- 0 Abstentions

### Bylaw Requirements 

1. Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose.
  _This requirement was met for both Certificate Issuers and Certificate Consumers_.
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted.
  _This requirement was also met_.

2. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining quorum. Half of the currently active members at the start of voting was 12, so the quorum was 13 for this ballot.
   _This requirement was met._

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.

## Ballot Text 

Bylaws Note: Although this Ballot modifies how the documents internally express the Guideline version number, it does not explicitly change the value of the Guideline version number in a manner that would constitute an “update” pursuant to CA/Browser Forum Bylaws 2.3, Section 2.4 (8). As such, the Chair or Vice-Chair are permitted to make changes permitted by that Section as necessary.
Purpose of Ballot:

This ballot attempts to align the Baseline Requirements (BRs), EV Guidelines (EVGs), and the Network and Certificate System Security Requirements (NCSSRs) to a common format, to allow for the automatic generation of final documents without requiring third-party tooling being installed locally.

It is a continuation of the work started in SC26 \[1\], and is within the work started originally by Ballots 154 and 155 \[2\]. If this ballot succeeds, the Server Certificate Working Group will use the version-controlled documents in GitHub as the authoritative source of requirements, avoiding issues that resulted from exchanging various versions of Microsoft Office files via e-mail or the Wiki.

The following changes are made, and are explicitly called out, beyond changes to font/styling

- Baseline Requirements
- Formatting issues in Sections 3.2.2.4.18, 3.2.2.4.19, 4.10.1, 6.1.6, Appendix B are resolved (see \[3\] \[4\] \[5\])
- Section 9.6.1 referenced a non-existent Section 11.2, which was a bug introduced in BRs v1.3.0. This is fixed to the correct section, which is 7.1.4.2.2. \[6\]
- Section 3.2.2.4.7 referenced Section 3.3.1, rather than the intended Section 4.2.1 \[7\]
- The BRs consistently incorrectly refer to Section 8.1 for audit schemes, when the correct reference in Section 8.4 \[8\]
- Extended Validation Guidelines
- The EVGs are aligned to common language when referencing other sections, removing variations like “this Section X”, “the Section X of these Guidelines”, “Section X herein”, etc. Ambiguity is avoided by ensuring these references will also be internal document links that are structurally enforced.
- Network and Certificate System Security
- The structure is aligned to the BRs and EVGs, by listing Scope and Applicability followed by Document History and Definitions.
- Section 2, Items (g), (k), and (o) and Section 4, Item (c) and (f), have the sub-items renumbered to Arabic numerals (1, 2, 3, 4) instead of Roman numerals (i, ii, iii, iv), for consistency and to avoid ambiguity with I/(i)/i.

This ballot attaches derived versions of these documents in PDF and Microsoft Office, as produced by these changes. However, these documents are INFORMATIVE only, as per the Ballot text, and are provided to assist Members in review. For the avoidance of doubt, the attached documents do not constitute Ballot Versions, as defined within the CA/Browser Forum Bylaws, Section 2.4(1).
If there are any inconsistencies, the balloted text redline shall decide the definitive version. However, Members are encouraged to raise any such presentation issues, to ensure they can be reasonably addressed as part of this Ballot.
The following motion has been proposed by Ryan Sleevi of Google and endorsed by Ben Wilson of Mozilla and Dimitris Zacharopoulos of HARICA.
Version 2 of this Ballot introduces language to address potential conflicts with Ballot SC39v3, due to modifying the same section of the NCSSRs, as well as addresses one small Markdown lint pointed out by Aaron Gable of ISRG/Let’s Encrypt with respect to fenced code blocks.
The comparison between v1 and v2 of this ballot is available at \[9\] \[1\]
\[2\]
\[3\]
\[4\]
\[5\]
\[6\]
\[7\]
\[8\] \[9\]

– MOTION BEGINS –

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.7.3:

MODIFY the Baseline Requirements as defined in the following redline to BR.md:

https://github.com/cabforum/documents/compare/2b7720f7821764f0ea9d0d583ec5c61896a3f4cd..8f0a3b5038ff2911c50741ded594d403ec868803

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” (“EV Guidelines”) as follows, based on Version 1.7.4:

MODIFY the EV Guidelines as defined in the following redline to EVG.md:

https://github.com/cabforum/documents/compare/2b7720f7821764f0ea9d0d583ec5c61896a3f4cd..8f0a3b5038ff2911c50741ded594d403ec868803

This ballot modifies the “Network and Certificate System Security Requirements” (“Network Security Controls”) as follows, based on Version 1.5

IF Ballot SC39v3 FAILS to be adopted by the Server Certificate Chartered Working Group:

- MODIFY the Network Security Controls as defined in the following redline to NSR.md:

IF Ballot SC39v3 SUCCEEDS and is adopted by the Server Certificate Chartered Working Group

- MODIFY the Network Security Controls as defined in the following redline to NSR.md:

On the successful adoption of this Ballot, the Forum shall recognize the CA/Browser Forum Server Certificate Chartered Working Group Git repository, as the authoritative and canonical source for the Baseline Requirements, EV Guidelines, and Network Security Controls. Alternative presentation formats may be used and provided, such as PDF/A, Office Open XML, or HTML, but in the event of any inconsistency in presentation, the documents as committed to the official Git repository shall be authoritative.

At the time of this ballot, the Git repository may be browsed at  and cloned via

– MOTION ENDS –

This ballot proposes three Final Maintenance Guidelines.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2021-02-08 16:00:00 UTC
End Time: 2021-02-17 22:30:00 UTC

Vote for approval (7 days)

Start Time: 2021-02-17 22:30:00 UTC
End Time: 2021-02-24 22:30:00 UTC