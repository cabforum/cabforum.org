---
aliases:
- /2023-03-17-ballot-sc62v2-certificate-profiles-update/
author: Iñigo Barreira
date: 2023-03-17 12:44:51
tags:
- Server Certificates
title: Ballot SC62v2-Certificate profiles update
type: post
---

**Voting Results**

**Certificate Issuers**

30 votes total, with no abstentions:

- 30 Issuers voting YES: Fastly, iTrusChina, HARICA, Certinomis, OISTE, SSL.COM, eMudhra, GoDaddy, Actalis, Digicert, GlobalSign, JPRS, Entrust, NAVER, SwissSign, Certum, Tubitak Kamu, Telia, Izenpe, VikingCloud, Let’s Encrypt, SECOM, e-Tugra, GDCA, Chunghwa Telecom, Buypass, CFCA, Disig, Sectigo, Amazon
- 0 Issuers voting NO
- 0 Issuers ABSTAIN

**Certificate Consumers**

3 votes total, with no abstentions:

- 3 Consumers voting YES: Google, Mozilla, Apple
- 0 Consumers voting NO
- 0 Consumers ABSTAIN

**Bylaws Requirements**

1. Bylaw 2.3(6) requires:

- In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favour of the ballot. This requirement was **MET**.
- at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favour of the ballot. This requirement was **MET**.
- At least one (1) Voting Member in each category must vote in favour of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

- A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.
- Half of the currently active members at the start of voting was 14, so the quorum was 15 for this ballot. This requirement was **MET**.

# Ballot Contents

## Purpose of Ballot SC-062 V2

Over the past three years, members of the Server Certificate Working Group Validation Subcommittee have collaborated on an update to the _Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates_ focused on improving the clarity of Section 7 (“Certificate, CRL, and OCSP Profiles”).

The update:

1. better aligns certificate content expectations across certificate issuers and consumers,
1. reduces the opportunity for confusion resulting from the absence of a more precise certificate profile specification, and
1. promotes more consistent and reliable implementations across the ecosystem.

While most of the proposed updates focus on Section 7, changes were not limited to only this section.

Technical discussion related to the proposed changes, along with high-level change summaries have been documented in:

- open GitHub pull requests (originally [here][1], and more recently [here][2]),
- several closed GitHub pull requests made against the “[profiles][3]” branch of the servercert GitHub repository (most recently [here][4]), and
- Validation Subcommittee meeting minutes (to include sessions held at Face-to-Face meetings).

Due to a small number of changes proposed in the ballot that is otherwise focused on clarifying existing requirements, an “all-encompassing” effective date makes these changes normative beginning 2023-09-15.

The following motion has been proposed by Ryan Dickson of Google and endorsed by Clint Wilson of Apple and Dimitris Zacharopoulos of HARICA.

# Motion Begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” (“Baseline Requirements”), based on Version 1.8.6.

**Notes:**

- Upon beginning discussion for SC-62 V2 on 2/17, Version 1.8.6 was the latest approved version of the BRs. During the discussion period, the SC-61 V4 vote was [approved][5], incrementing the soon to be latest version of the BRs to 1.8.7. These changes are in the process of being merged into the main Github repository.
- The changes introduced in [SC-62 V2][6] do not conflict with those added in [SC-61 V4][7].
- As observed with other ballots in the past, minor administrative updates must be made to the proposed ballot text before publication such that the appropriate Version # and Change History are accurately represented (e.g., to indicate these changes will be represented in Version 1.8.8).

MODIFY the Baseline Requirements as specified in the following Redline: [https://github.com/cabforum/servercert/compare/2c63814fa7f9f7c477c74a6bfbeb57e0fcc5dd5b..aa9fc5d0b2b59504a31638e880cb81c69aefa018][7]

# Motion Ends

This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:

# Discussion (11+ days)

- Start time: 2023-02-17 19:00:00 UTC
- End time: 2023-03-09 18:59:00 UTC

# Vote for approval (7 days)

- Start time: 2023-03-09 19:00:00 UTC
- End time: 2023-03-16 19:00:00 UTC

# Ballot Status

This ballot now enters the IP Rights Review Period to permit members to review the ballot for relevant IP rights issues.

[1]: https://github.com/sleevi/cabforum-docs/pull/36
[2]: https://github.com/cabforum/servercert/pull/373
[3]: https://github.com/cabforum/servercert/tree/profiles
[4]: https://github.com/cabforum/servercert/pull/418
[5]: https://lists.cabforum.org/pipermail/servercert-wg/2023-February/003600.html
[6]: https://github.com/cabforum/servercert/compare/e87bc5fcf35f533e58899311e538e6ffe959102e
[7]: https://github.com/cabforum/servercert/compare/2c63814fa7f9f7c477c74a6bfbeb57e0fcc5dd5b..aa9fc5d0b2b59504a31638e880cb81c69aefa018