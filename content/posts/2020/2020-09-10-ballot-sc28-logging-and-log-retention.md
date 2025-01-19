---
aliases:
- /2020/09/10/ballot-sc28-logging-and-log-retention/
author: Wayne Thayer
date: 2020-09-10 18:03:17
tags:
- Ballot
- Server Certificates
title: 'Ballot SC028: Logging and Log Retention'
type: post
---

The voting period for Ballot SC28v6 has ended and **the Ballot has Passed**. Here are the results:

## Voting by Certificate Issuers – 19 votes total including abstentions

– 19 **Yes votes**: Actalis, Amazon, Buypass, Certigna (DHIMYOTIS), Certum (Asseco), Chunghwa Telecom, D-TRUST, DigiCert, Entrust Datacard, GDCA, GlobalSign, iTrusChina, NAVER, OISTE, SSL.com, SwissSign, TrustCor, SecureTrust (former Trustwave), Visa
– **0 No votes**:
– **0 Abstain**:

100% of voting Certificate Issuers voted in favor.

## Voting by Certificate Consumers – 5 votes total including abstentions

– 5 **Yes vote**s: Cisco, Microsoft, Mozilla, Opera, 360
– 0 **No votes**:
– **0 Abstain**:

100% of voting Certificate Consumers voted in favor.

## Relevant Bylaw references

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.
– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was **10**, so quorum was **11** votes – quorum was met.”

**Purpose of Ballot:**

The proposed changes seek to clarify the relationship between audit logging obligations under Network and Certification System Security Requirements and Baseline Requirements and to reduce the retention period for log data, when appropriate. The proposed change also provides clarification by specifically cross-referencing the Baseline Requirements.

The current log retention requirements for subscriber certificates require certificate validation and certificate activity to be retained for seven years, while the lifetime of a certificate is only two years. There does not seem to be a justification for retaining logs three times as long as the lifetime of the certificate. As certificate lifetimes move to one year this further supports a reduction in log retention; this ballot proposes a sorting of the logged events into logical categories, together with a requirement of CAs to retain the data for two years after the event has passed (as opposed to the blanket seven years which exists as a duty currently).

The benefit of this ballot is to reduce data retention requirements for those log elements which most CAs consider as having limited long-term value. As an example, firewall and router activity logs are of significant size and thus impose significant storage requirements. These logs serve a benefit when investigating a potential security event, however, these logs lose value with the passage of time. Logs containing firewall traffic that is several years old provide little value in the investigation of a contemporary incident. Additionally, certificate validation and issuance logs have little value after a certificate has expired. The log size for many CAs is measured in terabytes, each year and the overhead of storing these logs and monitoring for compliance is significant. The benefit for reducing retention is considered high.

The discussion document which forms the basis of the ballot is attached as a PDF to this email – previous attempts to link to the Google Drive document ran up against permission problems in the past. Proposal The following ballot is proposed by Neil Dunbar of TrustCor Systems and endorsed by Trevoli Ponds-White of Amazon and Dustin Hollenback of Microsoft.

```
*- MOTION BEGINS -*

**Delete the following Section 5.4.1. from the “Baseline Requirements for
the Issuance and Management of Publicly-Trusted Certificates”, version
1.6.7, which currently reads as follows:**

The CA and each Delegated Third Party SHALL record details of the
actions taken to process a certificate request and to issue a
Certificate, including all information generated and documentation
received in connection with the certificate request; the time and date;
and the personnel involved. The CA SHALL make these records available
to its Qualified Auditor as proof of the CA’s compliance with these
Requirements.
 The CA SHALL record at least the following events: 
1. CA key lifecycle management events, including: 
 a. Key generation, backup, storage, recovery, archival,
and destruction; and 
 b. Cryptographic device lifecycle management events. 
2. CA and Subscriber Certificate lifecycle management events, including:
 a. Certificate requests, issuance, renewal, and re-key requests,
 and revocation;
 b. All verification activities stipulated in these Requirements
 and the CA’s Certification Practice Statement;
 c. Date, time, phone number used, persons spoken to, and end
 results of verification telephone calls;
 d. Acceptance and rejection of certificate requests; Frequency
 of Processing Loge. Issuance of Certificates; and
 f. Generation of Certificate Revocation Lists and OCSP entries.
3. Security events, including:
 a. Successful and unsuccessful PKI system access attempts;
 b. PKI and security system actions performed;
 c. Security profile changes;
 d. System crashes, hardware failures, and other anomalies;
 e. Firewall and router activities; and
 f. Entries to and exits from the CA facility.

**Insert in Section 1.6.1 (Definitions) of the “Baseline Requirements for the
Issuance and Management of Publicly-Trusted Certificates”, the following (after
the definition of “Certification Practice Statement”):**

Certificate Profile: A set of documents or files that defines requirements for
Certificate content and Certificate extensions in accordance with Section 7 of
the Baseline Requirements. e.g. a Section in a CA’s CPS or a certificate
template file used by CA software.

**Insert, as Section 5.4.1. (Types of events recorded) of the “Baseline Requirements
for the Issuance and Management of Publicly-Trusted Certificates”, the following:**

## Section 5.4.1
The CA and each Delegated Third Party SHALL record details of the actions taken
to process a certificate request and to issue a Certificate, including all information
generated and documentation received in connection with the certificate request;
the time and date; and the personnel involved. The CA SHALL make these records
available to its Qualified Auditor as proof of the CA’s compliance with these
Requirements.

The CA SHALL record at least the following events:

1. CA certificate and key lifecycle events, including:
1. Key generation, backup, storage, recovery, archival, and destruction; 
2. Certificate requests, renewal, and re-key requests, and revocation;
3. Approval and rejection of certificate requests; 
4. Cryptographic device lifecycle management events;
5. Generation of Certificate Revocation Lists and OCSP entries;
6. Introduction of new Certificate Profiles and retirement of existing Certificate Profiles.
2. Subscriber Certificate lifecycle management events, including:
1. Certificate requests, renewal, and re-key requests, and revocation;
2. All verification activities stipulated in these Requirements and the CA's Certification Practice Statement;
3. Approval and rejection of certificate requests; 
4. Issuance of Certificates; and
5. Generation of Certificate Revocation Lists and OCSP entries.
3. Security events, including:
1. Successful and unsuccessful PKI system access attempts;
2. PKI and security system actions performed;
3. Security profile changes;
4. Installation, update and removal of software on a Certificate System; 
5. System crashes, hardware failures, and other anomalies;
6. Firewall and router activities; and
7. Entries to and exits from the CA facility.

**Delete the following Section 5.4.3. from the “Baseline Requirements for the Issuance
and Management of Publicly-Trusted Certificates”, version 1.6.7, which currently
reads as follows:**

 The CA SHALL retain any audit logs generated for at least seven years. The CA
 SHALL make these audit logs available to its Qualified Auditor upon request.

**Insert, as Section 5.4.3. Retention Period for Audit Logs of the “Baseline Requirements
for the Issuance and Management of Publicly-Trusted Certificates”, the following:**

 The CA SHALL retain, for at least two years:

1. CA certificate and key lifecycle management event records (as set forth in Section 5.4.1 (1)) after the later occurrence of:
 a. the destruction of the CA Private Key; or
 b. the revocation or expiration of the final CA Certificate in that set of Certificates that have an X.509v3 basicConstraints extension with the cA field set to true and which share a common Public Key corresponding to the CA Private Key; 
2. Subscriber Certificate lifecycle management event records (as set forth in Section 5.4.1 (2)) after the revocation or expiration of the Subscriber Certificate.
3. Any security event records (as set forth in Section 5.4.1 (3)) after the event occurred. 

**Delete from “Network and Certificate Systems Security Requirements”, Version 1.3,
Section 3.b**
 b. Identify those Certificate Systems under the control of CA or Delegated
 Third Party Trusted Roles capable of monitoring and logging system activity
 and enable those systems to continuously monitor and log system activity;

**Insert new “Network and Certificate Systems Security Requirements”, Version 1.3,
Section 3.b with the following text:**

 b. Identify those Certificate Systems under the control of CA or Delegated
 Third Party Trusted Roles capable of monitoring and logging system activity,
 and enable those systems to log and continuously monitor the events specified
 in Section 5.4.1 (3) of the Baseline Requirements for the Issuance and
 Management of Publicly-Trusted Certificates;

*- MOTION ENDS -*
```

Discussion (7+ days)

Start Time: 2020-07-10 17:00:00 UTC

End Time: 2020-08-28 17:00:00 UTC

Vote for approval (7 days)

Start Time : 2020-09-03 17:00:00 UTC

End Time: 2020-09-10 17:00:00 UTC