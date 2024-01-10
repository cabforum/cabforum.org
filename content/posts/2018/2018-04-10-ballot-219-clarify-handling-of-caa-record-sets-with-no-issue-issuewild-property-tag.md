---
aliases:
- /2018/04/10/ballot-219-clarify-handling-of-caa-record-sets-with-no-issue-issuewild-property-tag/
author: Jos Purvis
date: 2018-04-10 17:23:21
tags:
- Ballot
- Server Certificates
title: Ballot 219 – Clarify handling of CAA Record Sets with no “issue”/”issuewild”
  property tag
type: post
---

The voting period for Ballot 219 has ended and the ballot has passed. Here are the results.

## Voting by CAs – 18 votes total including abstentions

**18 Yes votes:** Actalis, Amazon, Buypass, CFCA, Chunghwa Telecom, Cisco, D-TRUST, Entrust Datacard, GDCA, GlobalSign, HARICA, Kamu Sertifikasyon Merkezi, OATI, QuoVadis, SHECA, SSL.com, TrustCor, Trustwave

**0 No votes:**

**0 Abstain:**

**100% of voting CAs voted in favor**

## Voting by browsers – 3 votes total including abstentions

**3 Yes votes:** Apple, Microsoft, Mozilla

**0 No votes:**

**0 Abstain:**

**100% of voting browsers voted in favor**

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes. There were 21 votes total – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

## The ballot passes.

## Purpose of this ballot

RFC 6844 contains an ambiguity in regard to the correct processing of a non-empty CAA Resource Record Set that does not contain any issue property tag (and also does not contain any issuewild property tag in the case of a Wildcard Domain Name). It is ambiguous if a CA must not issue when such a CAA Resource Record Set is encountered, or if such a Resource Record Set is implicit permission to issue.

Given that the intent of the RFC is clear (such a CAA Resource Record Set is implicit permission to issue), we are proposing the following change to allow for CAA processing consistent with the intent of the RFC.

The following motion has been proposed by Corey Bonnell of Trustwave and endorsed by Tim Hollebeek of Digicert and Mads Egil Henriksveen of Buypass.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based upon Version 1.5.6:

In section 3.2.2.8, add this sentence:

CAs MAY treat a non-empty CAA Resource Record Set that does not contain any issue property tags (and also does not contain any issuewild property tags when performing CAA processing for a Wildcard Domain Name) as permission to issue, provided that no records in the CAA Resource Record Set otherwise prohibit issuance.

To the end of this paragraph:

When processing CAA records, CAs MUST process the issue, issuewild, and iodef property tags as specified in RFC 6844, although they are not required to act on the contents of the iodef property tag. Additional property tags MAY be supported, but MUST NOT conflict with or supersede the mandatory property tags set out in this document. CAs MUST respect the critical flag and not issue a certificate if they encounter an unrecognized property with this flag set.

## Motion ends

The procedure for approval of this ballot is as follows:

_**Discussion (7+ days)**_

**Start Time:** 2018-03-07 19:00:00 UTC

**End Time:** 2018-04-03 19:00:00 UTC

_**Vote for approval (7 days)**_

**Start Time:** 2018-04-03 19:00:00 UTC

**End Time:** 2018-04-10 19:00:00 UTC