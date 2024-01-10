---
aliases:
- /2019/09/10/ballot-sc22-reduce-certificate-lifetimes-v2/
author: Jos Purvis
date: 2019-09-10 20:26:45
tags:
- Ballot
- Server Certificates
title: Ballot SC22 – Reduce Certificate Lifetimes (v2)
type: post
---

## Results

The voting period for Ballot SC22 has ended and the **Ballot has Failed**. Here are the results:

### Voting by Certificate Issuers

**33 votes total including abstentions**

- **11 Yes votes:** Amazon, Buypass, Certigna (DHIMYOTIS), certSIGN, Sectigo (former Comodo CA), eMudhra, Kamu SM, Let’s Encrypt, Logius PKIoverheid, SHECA, SSL.com

- \*\*20 No votes: \*\*Camerfirma, Certum (Asseco), CFCA, Chunghwa Telecom, Comsign, D-TRUST, DarkMatter, Entrust Datacard, Firmaprofesional, GDCA, GlobalSign, GoDaddy, Izenpe, Network Solutions, OATI, SECOM, SwissSign, TWCA, TrustCor, SecureTrust (former Trustwave)

- \*\*2 Abstain: \*\*HARICA, TurkTrust

35% of voting Certificate Issuers voted in favor.

### Voting by Certificate Consumers

**7 votes total including abstentions:**

- **7 Yes votes:** Apple, Cisco, Google, Microsoft, Mozilla, Opera, 360
- **0 No votes:**
- \*\*0 Abstain: \*\*

100% of voting Certificate Consumers voted in favor.

### Relevant Bylaw references

Bylaw 2.3(f) requires:

- A “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. _This requirement was met_ for both Certificate Issuers and Certificate Consumers.
- At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. _This requirement was also met._
-
- Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum.
- 18 member companies attended the last teleconference, and quorum was updated accordingly. Half of currently active Members as of the start of voting was **9**, so quorum was\*\* 10 votes\*\* –\_ quorum was met\_.

## Ballot SC22: Reduce Certificate Lifetimes (v2)

**Motivation:**
Since the adoption of the Baseline Requirements, the CA/Browser Forum has discussed and debated the merits and value in reducing certificate lifetimes, in order to adequately respond to changes in the TLS ecosystem.

## Benefits of reduced lifetime

- Issues that result from the misinterpretation or misapplication of the Baseline Requirements are able to be more promptly resolved. Despite the best efforts of Browsers to ensure unambiguous requirements, there continue to be issues with CAs and their understanding and successful implementation of existing requirements. At present, due to the fact that validations may be reused for up to 825 days, and when they are reused, may be used to issue certificates valid for another 825 days, it may take up to four and a half years before issues are resolved. This proposal would halve that time, to a little more than two years, and represents a significant improvement.
- Even when the Baseline Requirements are clear and unambiguous, implementation issues by CAs routinely introduces risks of improperly formed or validated certificates, allowing CAs to issue certificates which have never been permitted and should never have been issued. Reducing certificate lifetimes reduces the overall risk that the ecosystem is exposed to these improperly formed certificates, both in terms of usage and in the need for Relying Parties to support such certificates.
- CRLs and OCSP have long been shown to be non-viable at Internet-scale, in terms of how they externalize costs like privacy, performance, and stability to Subscribers and Relying Parties. While alternative, browser-specific methods also exist, they also allow CAs to externalize the cost of their practices onto users and browsers, growing as the number of unexpired certificates grow. Reducing certificate lifetimes meaningfully protects users, regardless of the revocation method used, and helps reduce the overall costs paid by users.
- Operationally, the current extensive certificate lifetime has repeatedly led to issues, in that Subscribers frequently forget how or when to replace certificates. Aligning on an annual basis helps ensure and streamline continuity of operations, reducing the number of errors users see and disruptions that sites face.
- Operationally, the prolonged reuse of validation information creates challenges in replacing certificates due to security risks identified with the existing validation methods permitted by the Baseline Requirements. Reducing this validity period similarly helps streamline the validation process, allowing site operators to ensure for relying parties that the certificates they use were meaningfully validated.
- As shown by issues such as BygoneSSL, the misalignment between certificate lifetime and the domain name system poses availability and security risks to site operators. Despite such research being presented directly to the CA/Browser Forum, there have been no efforts by CAs, as an industry, to mitigate the risks posed to users. Certificate lifetimes currently represent the greatest mitigation to these risks.
- Existing certificate validity periods create risk for Relying Parties wishing to enforce the Baseline Requirements or Root Program requirements, by allowing CAs to “backdate” certificates in order to attempt to bypass date-based program requirements. Reducing certificate lifetimes reduces the window of exposure to such bypasses. As this has happened multiple times, by past and present members of the CA/Browser Forum, reducing certificate lifetimes represents the safest way to detect and counter this risk.

While this ballot sets forward a proposal for an effective annual renewal and annual revalidation, both periods should be seen as a starting point for further improvements. In particular, multiple Browsers have noted that the current reuse of domain validation information represents a substantial security risk, and thus will seek to further reduce this in subsequent ballots. In general, CAs and Subscribers are recommended to pursue interoperable solutions for automation, such as RFC 8555, which allow for easier and seamless validation and replacement of certificates, and thus helping ensure users and Relying Parties are adequately secured.

While Browsers will be able to technically enforce these reduced validities as early as April 2020, they will not fully benefit from the reduction until 825 days after the last day such certificates can be issued, or June 2022. As a consequence, any further delays to the implementation period of April 2020 would represent an even greater security risk to users and Relying Parties.

This ballot further attempts to resolve ambiguities between the expectations of Root Programs and the interpretations of CAs. Namely, it attempts to clarify time periods in days and seconds, to avoid confusion with respect to months, fractional seconds, leap seconds, and other forms of date calculation, while also allowing an additional 86,400 seconds between the recommended period and the required period. To address issues with Validity Period, it defines the Validity Period in a way that can be objectively technically enforced and verified, by measuring the period between the notBefore and notAfter of certificates, as specified by RFC 5280. While historically the Forum has not specified timezones for effective dates, and thus this ballot continues the trend, consistent with the requirements of X.690, X.680, and X.509, the time and timezone for effective dates shall be interpreted as midnight, Coordinated Universal Time.

#### Changes since SC22 (V1)

**(Informative) Redline:** [https://github.com/sleevi/cabforum-docs/compare/0a72b35f7c877e6aa1e7559f712ad9eb84b2da12…sleevi:069f785ebbdc82b819dcd045330ce61542097158][1]
This updates the date from March 2020 to April 2020. While the adoption of this Ballot does not require functional or operational changes of Subscribers for 18 months, and thus ample time to evaluate and prepare for changes, concerns were shared that customers with freeze periods that last through February may feel unprepared, particularly once the changes begin to impact them in 2021. To account for this, an additional month of breathing room is provided, allowing for approximately 19 months until any organizational impact.
Prior to this change, there was a functional difference between the Baseline Requirements’ maximum information reuse period (835 days) and the EV Guidelines’ maximum information reuse period (13 months), although both shared the same maximum Validity Period. The EV Guidelines included provisions to allow for the issuance of additional EV certificates, subject to the reuse period specified by the Baseline Requirements (Section 11.14.1), including issuing additional certificates with different keys (“rekey” or “re-issuance”, Section 11.14.2). The alignment of the Validity Period between DV, OV, and EV certificates, and the alignment of the reuse of information between DV, OV, and EV certificates, renders this special case unnecessary. To avoid confusion that may lead CAs to believe that the EV Guidelines contradict or supercede the Baseline Requirements, which could result from the special accomodations specific to the EV Guidelines, Section 11.14.3 has been modified to reduce and resolve any ambiguity. This attempts to be the smallest possible change, clarifying existing expectations. All certificates, whether DV, OV, or EV, are subject to the same information reuse period set forth in the Baseline Requirements, including permitting a CA to issue additional certificates for additional domain names, and without requiring additional validation for organizational information.

An interpretation of the Bylaws has been put forward that voting cannot start until an additional message is sent following the conclusion of discussion; that is, that the may that is specified within the Bylaws is, in fact, a MUST and a normative requirement. To avoid confusion or conflict with such an interpretation, and until such a matter can be resolved by Ballot, this v2 ballot does not specify a voting period start or end, and will not do so until after the conclusion of (or modification of) the discussion period.

The following motion has been proposed by Ryan Sleevi of Google and endorsed by Curt Spann of Apple and Jacob Hoffman-Andrews of ISRG / Let’s Encrypt.

#### -– MOTION BEGINS -–

This ballot modifies the Baseline Requirements, version 1.6.5, to incorporate the following changes:

https://github.com/cabforum/documents/compare/master…sleevi:069f785ebbdc82b819dcd045330ce61542097158?diff=split#diff-7f6d14a20e7f3beb696b45e1bf8196f2

This ballot modifies the EV SSL Certificate Guidelines, version 1.7.0, to incorporate the following changes:
[https://github.com/cabforum/documents/compare/master…sleevi:069f785ebbdc82b819dcd045330ce61542097158?diff=split#diff-4d3fa7e751e9cac20a3014852be12e82][2]

Should this ballot be adopted, the Chair or Vice Chair shall be directed to modify “SCXX” to “SC22” and “XX-Xxx-2019” within both documents’ informative tables to the date of the completed ballot, prior to or following the IP Review Period, and “Xxxx XX” to the effective date/date of publication of the Final Maintenance Guidelines.
In addition, the Chair or Vice Chair shall be directed to modify X.X.X within both documents to an appropriate version, at the Chair or Vice Chair’s discretion. The Chair is recommended to not use directly sequential or continuous numbering from prior versions, in order to ensure there is additional review by CAs as to the substance of these changes.

#### -– MOTION ENDS -–

[1]: https://github.com/sleevi/cabforum-docs/compare/0a72b35f7c877e6aa1e7559f712ad9eb84b2da12...sleevi:069f785ebbdc82b819dcd045330ce61542097158
[2]: https://github.com/cabforum/documents/compare/master...sleevi:069f785ebbdc82b819dcd045330ce61542097158?diff=split#diff-4d3fa7e751e9cac20a3014852be12e82