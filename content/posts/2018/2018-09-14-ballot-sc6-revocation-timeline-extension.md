---
aliases:
- /2018-09-14-ballot-sc6-revocation-timeline-extension/
author: Ben Wilson
date: 2018-09-14 19:24:30
tags:
- Ballot
- Server Certificates
title: Ballot SC6 – Revocation Timeline Extension
type: post
---

Voting by CAs – 23 votes total including abstentions

23 Yes votes: Actalis, Amazon, Buypass, Camerfirma, Certigna (DHIMYOTIS), Certinomis, certSIGN, Certum (Asseco), CFCA, Chunghwa Telecom, Comodo CA, Comsign, D-TRUST, Disig, Entrust Datacard, E-TUGRA, Firmaprofesional, GDCA, GlobalSign, Kamu Sertifikasyon Merkezi, Logius PKIoverheid, OATI, SECOM, SHECA, SK ID Solution, SSL.com, SSC, TWCA, TrustCor, Trustwave, TurkTrust, Visa
0 No votes:
0 Abstain:
100% of voting CAs voted in favor

Voting by browsers – 5 votes total including abstentions

5 Yes votes: Cisco, Google, Microsoft, Mozilla, 360
0 No votes:
0 Abstain:
100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 11, so quorum was 12 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

The ballot passes.

**Ballot SC6 version 3: Revocation Timeline Extension**

**Purpose of Ballot:**
Section 4.9.1.1 of the Baseline Requirements currently requires CAs to revoke a Subscriber certificate within 24 hours of identifying any of 15 issues affecting the certificate. In cases where there is not an immediate threat of misuse of the certificate, this requirement can cause undue harm to a Subscriber that isn’t capable of replacing the certificate prior to revocation. This ballot makes a number of improvements to the revocation rules imposed by the Baseline Requirements:

- Primarily, it creates a tiered timeline for revocations. The most critical “reasons” still require revocation within 24 hours, but for many others 24 hours becomes a SHOULD and the CA has 5 days before they MUST revoke.
- A new “reason for revocation” was added to address the fact that there is currently no requirement for CAs to revoke a certificate when requested by the domain name registrant. After considering some more specific language that required CAs to follow 3.2.2.4 to validate domain control, I settled on the following more general “reason”: “The CA obtains evidence that the validation of domain authorization or control for any Fully-Qualified Domain Name or IP address in the Certificate should not be relied upon.”
- Reason #10 states “The CA determines that any of the information appearing in the Certificate is inaccurate or misleading;” This ballot removes “or misleading” because that is a subjective judgement that could effectively be used to justify censorship, as discussed at length in relation to the “Stripe, Inc of Kentucky” EV certificates.
- Current reasons #11 and #13 were removed from the section on subscriber certificates because they address cases where the intermediate and/or root must be revoked, so there isn’t much sense (and some possible harm) in requiring revocation of all the leaf certs.
- It requires CAs to disclose their problem reporting mechanisms in a standard location: CPS section 1.5.2.
- Within 24 hours of receiving a problem report, the CA is now required to report back to both the entity reporting the problem and the Subscriber on the CA’s findings, and to work with the reporter and Subscriber to establish a date by which the CA will revoke the certificate.

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Tim Hollebeek of DigiCert and Dimitris Zacharopoulos of Harica.

— MOTION BEGINS —This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based on Version 1.6.0:

** Modify the definition of Key Compromise as follows:**
Key Compromise: A Private Key is said to be compromised if its value has been disclosed to an unauthorized person or an unauthorized person has had access to it.

** Modify Section 4.9.1 to read as follows:**

**4.9.1.1 Reasons for Revoking a Subscriber Certificate**

The CA SHALL revoke a Certificate within 24 hours if one or more of the following occurs:

1. The Subscriber requests in writing that the CA revoke the Certificate;
1. The Subscriber notifies the CA that the original certificate request was not authorized and does not retroactively grant authorization;
1. The CA obtains evidence that the Subscriber’s Private Key corresponding to the Public Key in the Certificate suffered a Key Compromise; or
1. The CA obtains evidence that the validation of domain authorization or control for any Fully-Qualified Domain Name or IP address in the Certificate should not be relied upon.

The CA SHOULD revoke a certificate within 24 hours and MUST revoke a Certificate within 5 days if one or more of the following occurs:

1. The Certificate no longer complies with the requirements of Sections 6.1.5 and 6.1.6;
1. The CA obtains evidence that the Certificate was misused;
1. The CA is made aware that a Subscriber has violated one or more of its material obligations under the Subscriber Agreement or Terms of Use;
1. The CA is made aware of any circumstance indicating that use of a Fully-Qualified Domain Name or IP address in the Certificate is no longer legally permitted (e.g. a court or arbitrator has revoked a Domain Name Registrant’s right to use the Domain Name, a relevant licensing or services agreement between the Domain Name Registrant and the Applicant has terminated, or the Domain Name Registrant has failed to renew the Domain Name);
1. The CA is made aware that a Wildcard Certificate has been used to authenticate a fraudulently misleading subordinate Fully-Qualified Domain Name;
1. The CA is made aware of a material change in the information contained in the Certificate;
1. The CA is made aware that the Certificate was not issued in accordance with these Requirements or the CA’s Certificate Policy or Certification Practice Statement;
1. The CA determines or is made aware that any of the information appearing in the Certificate is inaccurate;
1. The CA’s right to issue Certificates under these Requirements expires or is revoked or terminated, unless the CA has made arrangements to continue maintaining the CRL/OCSP Repository;
1. Revocation is required by the CA’s Certificate Policy and/or Certification Practice Statement; or
1. The CA is made aware of a demonstrated or proven method that exposes the Subscriber’s Private Key to compromise, methods have been developed that can easily calculate it based on the Public Key (such as a Debian weak key, see http://wiki.debian.org/SSLkeys), or if there is clear evidence that the specific method used to generate the Private Key was flawed.

**4.9.1.2 Reasons for Revoking a Subordinate CA Certificate**

The Issuing CA SHALL revoke a Subordinate CA Certificate within seven (7) days if one or more of the following occurs:

1. The Subordinate CA requests revocation in writing;
1. The Subordinate CA notifies the Issuing CA that the original certificate request was not authorized and does not retroactively grant authorization;
1. The Issuing CA obtains evidence that the Subordinate CA’s Private Key corresponding to the Public Key in the Certificate suffered a Key Compromise or no longer complies with the requirements of Sections 6.1.5 and 6.1.6;
1. The Issuing CA obtains evidence that the Certificate was misused;
1. The Issuing CA is made aware that the Certificate was not issued in accordance with or that Subordinate CA has not complied with this document or the applicable Certificate Policy or Certification Practice Statement;
1. The Issuing CA determines that any of the information appearing in the Certificate is inaccurate or misleading;
1. The Issuing CA or Subordinate CA ceases operations for any reason and has not made arrangements for another CA to provide revocation support for the Certificate;
1. The Issuing CA’s or Subordinate CA’s right to issue Certificates under these Requirements expires or is revoked or terminated, unless the Issuing CA has made arrangements to continue maintaining the CRL/OCSP Repository; or
1. Revocation is required by the Issuing CA’s Certificate Policy and/or Certification Practice Statement.
   ** Modify section 4.9.3 as follows:**

The CA SHALL provide a process for Subscribers to request revocation of their own Certificates. The process MUST be described in the CA’s Certificate Policy or Certification Practice Statement. The CA SHALL maintain a continuous 24×7 ability to accept and respond to revocation requests and Certificate Problem Reports.

The CA SHALL provide Subscribers, Relying Parties, Application Software Suppliers, and other third parties with clear instructions for reporting suspected Private Key Compromise, Certificate misuse, or other types of fraud, compromise, misuse, inappropriate conduct, or any other matter related to Certificates. The CA SHALL publicly disclose the instructions through a readily accessible online means and in section 1.5.2 of their CPS.

** Modify section 4.9.5 to read as follows:**

Within 24 hours after receiving a Certificate Problem Report, the CA SHALL investigate the facts and circumstances related to a Certificate Problem Report and provide a preliminary report on its findings to both the Subscriber and the entity who filed the Certificate Problem Report.

After reviewing the facts and circumstances, the CA SHALL work with the Subscriber and any entity reporting the Certificate Problem Report or other revocation-related notice to establish whether or not the certificate will be revoked, and if so, a date which the CA will revoke the certificate. The period from receipt of the Certificate Problem Report or revocation-related notice to published revocation MUST NOT exceed the time frame set forth in Section 4.9.1.1. The date selected by the CA SHOULD consider the following criteria:

1. The nature of the alleged problem (scope, context, severity, magnitude, risk of harm);
1. The consequences of revocation (direct and collateral impacts to Subscribers and Relying Parties);
1. The number of Certificate Problem Reports received about a particular Certificate or Subscriber;
1. The entity making the complaint (for example, a complaint from a law enforcement official that a Web site is engaged in illegal activities should carry more weight than a complaint from a consumer alleging that she didn’t receive the goods she ordered); and
1. Relevant legislation.

— MOTION ENDS —

This ballot proposes a Final Maintenance Guideline.

A comparison of the changes can be found at: https://github.com/cabforum/documents/compare/master…wthayer:patch-1

The procedure for approval of this ballot is as follows:
Discussion (7 days)
Start Time: 2018-08-31 20:00 UTC
End Time: 2018-09-07 20:00 UTC
Vote for approval (7 days)
Start Time: 2018-09-07 20:00 UTC
End Time: 2018-09-14 20:00 UTC