---
aliases:
- /2019-11-12-ballot-sc24-fall-cleanup-v2/
author: Jos Purvis
date: 2019-11-12 20:51:18
tags:
- Ballot
- Server Certificates
title: 'Ballot SC24: Fall Cleanup V2'
type: post
---

## Ballot Results 

The voting period for Ballot SC24 has ended and the **Ballot has Passed**. Here are the results:

### Voting by Certificate Issuers 

**29 votes total including abstentions**

** 24 votes total including abstentions**

- **24 Yes votes:** Actalis, Amazon, Buypass, Camerfirma, Certum (Asseco), CFCA, Chunghwa Telecom, D-TRUST, DarkMatter, Disig, DigiCert, Entrust Datacard, Firmaprofesional, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, Kamu SM, Let’s Encrypt, SSL.com, TrustCor, SecureTrust (former Trustwave), TurkTrust
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Issuers voted in favor.

### Voting by Certificate Consumers 

**5 votes total including abstentions**

- **5 Yes votes:** Apple, Cisco, Google, Microsoft, Mozilla
- **0 No votes:**
- **0 Abstain:**

100% of voting Certificate Consumers voted in favor

### Relevant Bylaw references 

Bylaw 2.3(6) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. _This requirement was met for both Certificate Issuers and Certificate Consumers._
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. _This requirement was also met._
- Under Bylaw 2.3(7), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. 20 member companies attended the last teleconference, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **10**, so quorum was** 11 votes** –_quorum was met._

## Ballot SC24: Fall Cleanup V2 

### Purpose of Ballot 

This ballot proposes to correct a number of minor errata that have been discovered in the BRs and EVGLs. The specific list of changes and motivations is as follows:

To the BRs:

- Remove overall ‘1 July 2012’ effective date for the BRs
- Correct the authorized port descriptive label (http -> https)
- Correct a few typos (contract -> contact, assigns -> assignees)
- Clarify the Request Token should be documented in the CP/CPS (or a document referenced from the CP/CPS)
- Move the construction examples of a Request Token to the definition of a Request Token
- Remove the definition of Test Certificate, as it is no longer used in the BRs
- Correct some of our acronyms
- Remove effective dates that are in the past
- Remove validation methods that are no longer permitted
- Note: This also involves typographical changes to section 3.2.2.4; the sections were inconsistent in their use of boiler plate, and so this simply aligned the formatting and line spacing, since this ballot is for changes that are non-normative in impact
- Correct some unnecessarily gendered language to be gender-neutral
- Clarify that the usable OIDs in a certificatePolicies are what the CA documents, and not simply restricted to a CA’s own OID arc.
- This is to make it clear that it’s fine to use the CABF-defined OIDs for DV/OV/IV/EV
- Add the OID for organizationalUnitName, matching the rest of the Subscriber DN documentation
- Clean up the algorithm requirements
- Section 6.1.5 is rewritten to reflect what is permitted. This is especially important to clarify the requirements are about when it’s issued, and not simply the validity period expressed in the certificate.
- Section 7.1.3 is partially rewritten. The MUST NOT is still kept, even though Section 6.1.5 clearly omits it, in order to avoid any ambiguity.
- It also removes the now-expired grandfathering for OCSP responders.
- Referring to “RFC5280” vs “RFC 5280”

To the EVGs:

- Unify the references to BRs to consistently say Baseline Requirements

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Ryan Sleevi of Google and Jacob Hoffman-Andrews of Let’s Encrypt.

**— MOTION BEGINS –**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as defined in the following redline, based on Version 1.6.6:

[https://github.com/cabforum/documents/compare/master@%7B10-25-19%7D…sleevi:2019-07-Cleanups@%7B10-25-19%7D][1]

This ballot modifies the “Guidelines for the Issuance and Management of Extended Validation Certificates” as defined in the following redline, based on Version 1.7.0:

[https://github.com/cabforum/documents/compare/master@%7B10-25-19%7D…sleevi:2019-07-Cleanups@%7B10-25-19%7D][1]

**— MOTION ENDS —**

[1]: https://github.com/cabforum/documents/compare/master@%7B10-25-19%7D...sleevi:2019-07-Cleanups@%7B10-25-19%7D