---
aliases:
- /2019/02/01/ballot-sc15-remove-validation-method-number-9/
author: Wayne Thayer
date: 2019-02-01 03:04:17
tags:
- Ballot
- Server Certificates
title: 'Ballot SC15: Remove Validation Method Number 9'
type: post
---

The voting period for Ballot SC15 has ended and the **Ballot has Passed**. Here are the results:
**Voting by Certificate Issuers – 23 votes total including abstentions**

- **23 Yes votes:** Amazon, Buypass, Camerfirma, Certum (Asseco), Chunghwa Telecom, D-TRUST, DarkMatter, DigiCert, Disig, eMudhra, Entrust Datacard, GDCA, GoDaddy, HARICA, Izenpe, Kamu SM, Let’s Encrypt, SHECA, SSL.com, SSC, TrustCor, SecureTrust (former Trustwave), Visa

- **0 No vote:**

- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.
**Voting by Certificate Consumers – 5 votes total including abstentions**

- **5 Yes votes:** Apple, Google, Microsoft, Mozilla, 360
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor
**Relevant Bylaw references **
Bylaw 2.3(f) requires:

a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.
Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **9**, so quorum was **10 votes** – quorum was met

**Purpose of Ballot:** Method 9, Test Certificate, is insecure when web hosting platforms use a single IP address for more than one Domain Name, so this method must not be used.

The following motion has been proposed by Doug Beattie of GlobalSign and endorsed by Bruce Morton of Entrust Datacard and Ryan Sleevi of Google.

## Motion begins

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.2:

Replace the content of section 3.2.2.4.9 with:

This method has been retired and MUST NOT be used. Prior validations using this method and validation data gathered according to this method SHALL NOT be used to issue certificates.

## Motion ends

\*\\*\* WARNING \*\**: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at: [https://github.com/dougbeattie/documents/compare/master…dougbeattie:SC15-Remove-Method-9](https://github.com/dougbeattie/documents/compare/master...dougbeattie:SC15---Remove-Method-9)

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2019-01-22 08:15 Eastern

End Time: 2019-01-29 08:15 Eastern

Vote for approval (7 days)

Start Time: 2019-01-29 15:00 Eastern

End Time: 2019-02-05 15:00 Eastern