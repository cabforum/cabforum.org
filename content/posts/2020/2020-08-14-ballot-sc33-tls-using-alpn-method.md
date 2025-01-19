---
aliases:
- /2020/08/14/ballot-sc33-tls-using-alpn-method/
author: Wayne Thayer
date: 2020-08-14 22:25:18
tags:
- Ballot
- Server Certificates
title: 'Ballot SC033: TLS Using ALPN Method'
type: post
---

The voting period for Ballot SC33 has ended and **the Ballot has Passed**. Here are the results:

## Voting by Certificate Issuers – 22 votes total including abstentions

– 22 **Yes votes**: Buypass, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, D-TRUST, Disig, eMudhra, Entrust Datacard, Firmaprofesional, GlobalSign, GoDaddy, HARICA, Izenpe, Kamu SM, Let’s Encrypt, NAVER, SHECA, SSL.com, TWCA, TrustCor, SecureTrust (former Trustwave), Visa
– **0 No votes**:
– **0 Abstain**:

100% of voting Certificate Issuers voted in favor.

## Voting by Certificate Consumers – 6 votes total including abstentions

– 6 **Yes vote**s: Apple, Cisco, Google, Microsoft, Mozilla, Opera
– 0 **No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

## Relevant Bylaw references

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11** votes – quorum was met.”

Purpose of Ballot:

In January 2018, a vulnerability affecting the ACME TLS-SNI-01 method of domain validation [was disclosed](https://groups.google.com/d/msg/mozilla.dev.security.policy/RHsIInIjJA0/LKrNi35aAQAJ). That method is an implementation of BR 3.2.2.4.10, which is still permitted by the BRs despite the vulnerability. Some Browsers have banned the use of method 10 unless mitigations for the vulnerability have been put into place, and one approach to mitigation – using application-layer protocol negotiation (ALPN) – has now been standardized by the IETF as RFC 8737. This ballot replaces the poorly specified and potentially insecure ‘method 10’ with a new ‘method 20’ based on RFC 8737.

The ballot proposed no transition period during which method 10, or validations performed using method 10 may continue to be relied upon. The only known current use of method 10 is an implementation of RFC 8737 that would remain compliant (although it may require changes to the CA’s CPS and the identifier of the method that is being logged when performing validations).

This ballot also limits the use of the new method to the specific FQDN that was validated – different subdomains require new validations, and wildcards are not permitted. This requirement is not the result of a specific known risk but rather stems from a belief that DNS-based validation methods are more appropriate for verifying control over an entire subdomain.
The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Roland Shoemaker of Let’s Encrypt and Tim Hollebeek of DigiCert.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.7.0:

MODIFY section 3.2.2.4 as defined in the following redline: [[https://github.com/cabforum/documents/compare/df5bd3b00e3a215202dedafa68bf8f608d47041b...26913aa7f75a78eff1af5cb628451b9433011a67][1]](https://github.com/cabforum/documents/compare/df5bd3b00e3a215202dedafa68bf8f608d47041b...26913aa7f75a78eff1af5cb628451b9433011a67)

## Motion ends

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 31-July, 2020 17:00 UTC

End Time: not before 7-August, 2020 17:00 UTC

Vote for approval (7 days)

Start Time: 7-August, 2020 20:00 UTC

End Time: 14-August, 2020 20:00 UTC

[1]: https://groups.google.com/d/msg/mozilla.dev.security.policy/RHsIInIjJA0/LKrNi35aAQAJ