---
aliases:
- /2020-03-30-ballot-sc26v2-pandoc-friendly-markdown-formatting-changes/
author: Wayne Thayer
date: 2020-03-30 15:41:57
tags:
- Server Certificates
title: 'Ballot SC26v2: Pandoc-Friendly Markdown Formatting Changes'
type: post
---

The voting period for Ballot SC26v2 has ended and **the Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 16 votes total including abstentions**

– **16 Yes votes**: Buypass, Certum (Asseco), D-TRUST, DigiCert, Entrust Datacard, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, Kamu SM, SSL.com, SwissSign, TrustCor, SecureTrust (former Trustwave)
– **0 No votes**:
– **0 Abstain**:

100% of voting Certificate Issuers voted in favor.

**Voting by Certificate Consumers – 5 votes total including abstentions**

– **5 Yes vote**s: Apple, Cisco, Google, Microsoft, Mozilla
– 0 **No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

**Relevant Bylaw references**

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **11**, so quorum was **12** votes – quorum was met.”

**BALLOT SC26v2: Pandoc-Friendly Markdown Formatting Changes**

The following ballot is proposed by Jos Purvis of Cisco Systems and has been endorsed by Ryan Sleevi (Google) and Dimitris Zacharopoulos (HARICA).

**Purpose:** This ballot modifies the formatting of the Baseline Requirements in order to make the presentation of content consistent and aligned with “vanilla” Markdown. This will permit the use of pandoc as a format-translation tool to automatically produce a PDF, DOCX, and HTML version of the Baseline Requirements document with each update and allow the Forum to use the Markdown-formatted version as the canonical version of the Baseline Requirements. This ballot does NOT declare any version canonical: it merely paves the way to the possibility of doing so in the future by making the document formatting cleaner. In addition, the ballot is not intended to change the meaning of the Baseline Requirements—much effort has been spent in ensuring the meaning and wording of the Requirements has not changed in reformatting the presentation elements.

**Changes:** The changes involved in the ballot are small formatting changes but large in number. As a result, rather than listing the changes individually, members are requested to review the redline of the ballot to see the differences. The pull request containing the set of changes to be implemented can be seen here:

https://github.com/cabforum/documents/pull/165

More specifically, the set of changes to the Baseline Requirements document being proposed in this ballot is shown in this comparison:

https://github.com/cabforum/documents/compare/4f3f38d..8b70d19

In addition to the above changes, some template files are being added to Github that will assist in formatting but not change any BR content. A copy of the resulting formatting changes in each document format can be seen in the attached documents (ref. BR-26.pdf, BR-26.html, BR-26.docx). These changed versions can be compared to the current versions of the document found at .

**Ballot Conflicts:**

- **Ballot SC29** does not conflict with this ballot, as SC29 only modifies the NCSSRs and not the Baseline Requirements.
- **Ballot SC27:**
- If Ballot SC27 is adopted, the modifications to the Baseline Requirements shall be as shown in the above comparison ().
- If Ballot SC27 fails to be adopted following the IP review period, the modifications shall be as above, _except as follows_: Section 3.2.2.4 shall be unmodified from its current form in v1.6.8, and Appendix C, which will not have been adopted, shall not be modified or added as part of this ballot.

Discussion period to start on Monday, 16 March at 1400 UTC, completing discussion Monday, 30 March at 1400 UTC

Voting period:

Start: 1500 UTC 23 March 2020

End: 1500 UTC 30 March 2020