---
aliases:
- /2014-10-16-ballot-123-reuse-information/
author: Ben Wilson
date: 2014-10-16 23:48:31
tags:
- Server Certificates
title: Ballot 123 – Reuse of Information (passed)
type: post
---

Voting on Ballot 123 – Reuse of Information closed on 16 October 2014.

The Chair received “yes” votes from Actalis, ANF, Buypass, Certinomis, Chunghwa Telecom, Comodo, DigiCert, Disig, Entrust, GlobalSign, GoDaddy, Google, Izenpe, Kamu Sertifikasyon Merkezi, Logius PKIoverheid, Microsoft, Mozilla, Opentrust, QuoVadis, SSC, Symantec, Trend Micro, TURKTRUST, TWCA, and WoSign.

Opera abstained.

Therefore, Ballot 123 passed.

This is the ballot from the EV working group that attempts to clarify the language in 11.14 (11.13 previous to the verified method of communication ballot) without changing any of the requirements. Previous section 11.13 was poorly organized with lots of semi-conflicting statements on when data re-verification was required. Changes were not tracked in this ballot as every single section was moved or rewritten, making any comparison futile.

———

**Ballot 123 – Reuse of Information**

Revised Section 11.14 (previous 11.13)

Jeremy Rowley of DigiCert made the following motion, and Cecilia Kam of Symantec and Joanna Fox of GoDaddy have endorsed it.

Motion Begins

Section 11.14 is amended to read as follows:

**11.14 Requirements on the Re-use of Documentation**

For each EV Certificate Request, including requests to renew existing EV Certificates, the CA MUST perform all authentication and verification tasks required by these Guidelines to ensure that the request is properly authorized by the Applicant and that the information in the EV Certificate is still accurate and valid. This section sets forth the age limitations on for the use of documentation collected by the CA.

**11.14.1 Validation For Existing Subscribers**

If an Applicant has a currently valid EV Certificate issued by the CA, a CA MAY rely on its prior authentication and verification of:

(1) The Principal Individual verified under Section 11.2.2 (4) if the individual is the same person as verified by the CA in connection with the Applicant’s previously issued and currently valid EV Certificate;

(2) The Applicant’s Place of Business under Section 11.4.1;

(3) The Applicant’s Verified Method of Communication required by Section 11.5, provided that the CA verifies the communications as required by Section 11.4.2 (2)(A);

(4) The Applicant’s Operational Existence under Section 11.6;

(5) The Name, Title, Agency, and Authority of the Contract Signer and Certificate Approver under Section 11.8; and

(6) The Applicant’s right to use the specified Domain Name under Section 11.7, provided that the CA verifies that the WHOIS record still shows the same registrant as when the CA verified the specified Domain Name for the initial EV Certificate.

**11.14.2 Re-issuance Requests**

A CA may rely on a previously verified certificate request to issue a replacement certificate, so long as the certificate being referenced was not revoked due to fraud or other illegal conduct, if:

(1) The expiration date of the replacement certificate is the same as the expiration date of the EV Certificate that is being replaced, and

(2) The Subject Information of the Certificate is the same as the Subject in the EV Certificate that is being replaced.

**11.14.3 Age of Validated Data**

(1) Except for reissuance of an EV Certificate under Section 11.14.2 and except when permitted otherwise under Section 11.14.1, the age of all data used to support issuance of an EV Certificate (before revalidation is required) SHALL NOT exceed the following limits:

(A) Legal existence and identity – thirteen months;

(B) Assumed name – thirteen months;

(C) Address of Place of Business – thirteen months;

(D) Applicant’s telephone number – thirteen months;

(E) Operational existence – thirteen months;

(F) Domain Name – thirteen months;

(G) Name, Title, Agency, and Authority– thirteen months, unless a contract between the CA and the Applicant specifies a different term, in which case, the term specified in such contract controls. For example, the contract MAY include the perpetual assignment of EV roles until revoked by the Applicant or CA, or until the contract expires or is terminated.

(2) The thirteen-month period set forth above SHALL begin to run on the date the information was collected by the CA.

(3) The CA MAY reuse a previously submitted EV Certificate Request, Subscriber Agreement, or Terms of Use, including use of a single EV Certificate Request in support of multiple EV Certificates containing the same Subject, to the extent permitted under Sections 11.9 and 11.10.

(4) The CA MUST repeat the verification processes required in these Guidelines for any information obtained outside the time limits specified above except when permitted otherwise under section 11.14.1.

Motion Ends

—–
The review period for this ballot shall commence at 2200 UTC on October 2 2014, and will close at 2200 UTC on October 9, 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on October 16, 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Also, at least seven members must participate in the ballot, either by voting in favor, voting against, or abstaining.