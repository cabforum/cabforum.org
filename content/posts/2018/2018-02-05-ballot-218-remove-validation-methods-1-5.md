---
aliases:
- /2018-02-05-ballot-218-remove-validation-methods-1-5/
author: Jos Purvis
date: 2018-02-05 18:35:26
tags:
- Ballot
- Server Certificates
title: Ballot 218 – Remove validation methods 1 and 5
type: post
---

The voting period for Ballot 218 has ended and the ballot has passed. Here are the results.

**Voting by CAs – 22 votes total including abstentions**

14 Yes votes: CFCA, Cisco, Comodo CA, D-TRUST, DigiCert, GDCA, GlobalSign, GoDaddy, Izenpe, Let’s Encrypt, Logius PKIoverheid, SSL.com, TrustCor, Trustwave

4 No votes: Buypass, Chunghwa Telecom, Entrust Datacard, SwissSign

4 Abstain: Actalis, Disig, HARICA, OATI

78% of voting CAs voted in favor

**Voting by browsers – 5 votes total including abstentions**

5 Yes votes: Apple, Comodo Security Solutions, Google, Microsoft, Mozilla

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 9, so quorum was 10 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**The ballot passes.**

______________________________________________________________________

**Ballot 218: Remove validation methods #1 and #5**

**Purpose of Ballot:** Section 3.2.2.4 says that it “defines the permitted processes and procedures for validating the Applicant’s ownership or control of the domain.” Most of the validation methods actually do validate ownership and control, but two do not, and can be completed solely based on an applicant’s own assertions.

Since these two validation methods do not meet the objectives of section 3.2.2.4, and are actively being used to avoid validating domain control or ownership, they should be removed, and the other methods that do validate domain control or ownership should be used.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Ryan Sleevi of Google and Rich Smith of Comodo.

**— MOTION BEGINS –**

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based upon Version 1.5.4:

In Section 1.6.1, in the definition of “Domain Contact”, after “in a DNS SOA record”, add “, or as obtained through direct contact with the Domain Name Registrar”

In Section 3.2.2.4.1, add text at the end: “For certificates issued on or after August 1, 2018, this method SHALL NOT be used for validation, and completed validations using this method SHALL NOT be used for the issuance of certificates.”

In Section 3.2.2.4.5, add text at the end: “For certificates issued on or after August 1, 2018, this method SHALL NOT be used for validation, and completed validations using this method SHALL NOT be used for the issuance of certificates.”

After Section 3.2.2.4.10, add following two new subsections:

“3.2.2.4.11 Any Other Method

This method has been retired and MUST NOT be used.

3.2.2.4.12 Validating Applicant as a Domain Contact

Confirming the Applicant’s control over the FQDN by validating the Applicant is the Domain Contact. This method may only be used if the CA is also the Domain Name Registrar, or an Affiliate of the Registrar, of the Base Domain Name.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.“

In Section 4.2.1, after the paragraph that begins “After the change to any validation method”, add the following paragraph: “Validations completed using methods specified in Section 3.2.2.4.1 or Section 3.2.2.4.5 SHALL NOT be re-used on or after August 1, 2018.”

**— MOTION ENDS –**

For the purposes of section 4.2.1, the new text added to 4.2.1 from this ballot is “specifically provided in a \[this\] ballot.”

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2017-01-22  21:30:00 UTC

End Time: 2017-01-29 21:50:00 UTC

Vote for approval (7 days)

Start Time: 2017-01-29 21:50:00 UTC

End Time: 2017-02-05 21:50 UTC