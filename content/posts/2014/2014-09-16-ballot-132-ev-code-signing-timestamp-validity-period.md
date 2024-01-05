---
aliases:
- /2014-09-16-ballot-132-ev-code-signing-timestamp-validity-period/
author: Ben Wilson
date: 2014-09-16 15:28:25
tags:
- Code Signing
- Ballot
title: Ballot 132 – EV Code Signing Timestamp Validity Period (passed)
type: post
---

Voting on Ballot 132 (amending the EV Code Signing Timestamp Validity Period) closed 16 September 2014. Voting in favor were: Actalis, Comodo, DigiCert, Disig, Entrust, GlobalSign, GoDaddy, OpenTrust, Symantec, Trend Micro, WoSign, ANF, Certum, Mozilla and Microsoft. There were no votes against and no abstentions. Therefore, Ballot 132 passed.

**Ballot 132 – EV Code Signing Timestamp Validity Period**

**Rationale for Ballot 132**

1. Ideally, TSA services should be consistent across the multiple services that rely on them (Code Signing, EV Code Signing, AATLs, etc.)

1. Time stamps are used not just to time-stamp code, but other objects, such as signed financial reports and other digital objects.

3 The EV Guidelines and some government archival systems require that signatures be capable of automatic verification for approximately ten years.

4. When the EV Guidelines for code signing were developed, it was thought that a 123-month period would provide a three-month cushion (120 months plus 3). But because the BRs for Code Signing anticipate that a new key pair will be cycled every 15 months, then a 15-month period should be added to the 10-year TSA certificate validity, not just for code signing, but for all other uses where those extra months can add a longer period for automatic validation of the time-stamp. This would equal 135 months (120 months plus 15).

1. A longer validity period for the TSA certificate is also justified because the requirement of a new key pair every 15 months will reduce the risk severity due to a key compromise.

1. There are additional reasons to allow a longer period, including from Japan, the time-stamping regulations of the METI pursuant to Article 435 of the Japanese Companies Act, subsection 2 (Preparation and Retention of Financial Statements, etc.), subsection 4 (financial schedules to be retained for ten years from the time of preparation). See

Steve Roylance of Globalsign made the following motion and Ben Wilson of Digicert and Rob Stradling of Comodo endorsed it:

–Motion Begins —

In Sections 8.2.1 and 9.4 of the EV Code Signing Guidelines replace “one hundred and twenty three months” with “one hundred and thirty five months” (in three places in each section) as follows:

8.2.1 Implementation

Each Issuer MUST develop, implement, enforce, display prominently on its Web site, and periodically update as necessary its own auditable EV Code Signing Object practices, policies and procedures, such as a Certification Practice Statement (CPS) and Certificate Policy (CP) that:

(A) Implement the requirements of these Guidelines as they are revised from time-to-time;

(B) Implement the requirements of (i) the then-current [WebTrust](/wiki/WebTrust) Program for CAs, and (ii) the then-current [WebTrust](/wiki/WebTrust) EV Program or ETSI TS 102 042 V2.1.1; and

(C) Specify the Issuer’s (and applicable Root CA’s) entire root certificate hierarchy including all roots that its EV Code Signing Certificates depend on for proof of those EV Code Signing Certificates’ authenticity. With the exception of revocation checking for time-stamped and expired certificates, platforms are expected to validate signed code in accordance with RFC 5280.

When a platform encounters a certificate that fails to validate due to revocation, the platform should reject the code. When a platform encounters a certificate that fails to validate for reasons other than revocation, the platform should treat the code as it would if it had been unsigned. Ordinarily, a code signature created by a Subscriber may be considered valid for a period of up to thirty-nine months. However, a code signature may be treated as valid for a period of up to one hundred and thirty five twenty three months by means of one of the following methods: the “Timestamp” method or the “Signing Authority” method.

(A) Timestamp Method: In this method, the Subscriber signs the code, appends its EV Code Signing Certificate (whose expiration time is less than thirty-nine months in the future) and submits it to an EV Timestamp Authority to be time-stamped. The resulting package can be considered valid up to the expiration time of the timestamp certificate (which may be up to one hundred and thirty five twenty three months in the future).

(B) Signing Authority Method: In this method, the Subscriber submits the code, or a digest of the code, to an EV Signing Authority for signature. The resulting signature is valid up to the expiration time of the Signing Authority certificate (which may be up to one hundred and thirty five twenty three months in the future).

9.4 Maximum Validity Period For EV Code Signing Certificate

Code may be signed at any point in the development or distribution process, either by a software publisher or a user organization. Signed code may be verified at any time, including during: download, unpacking, installation, reinstallation, or execution, or during a forensic investigation. Subscribers may obtain an EV Code Signing Certificate with a validity period not exceeding thirty-nine months. Timestamp Authorities and Signing Authorities may obtain an EV Timestamp Certificate or EV Code Signing Certificate (respectively) with a validity period not exceeding one hundred and thirty five twenty three months. The validity period for an EV Code Signing Certificate issued to a Subscriber MUST NOT exceed thirty-nine months. The validity period for an EV Code Signing Certificate issued to a Signing Authority that fully complies with these Guidelines MUST NOT exceed one hundred and thirty five twenty three months. The validity period for an EV Timestamp Certificate issued to a Timestamp Authority that fully complies with these Guidelines MUST NOT exceed one hundred and thirty five twenty three months.

— Motion Ends —

The review period for this ballot shall commence at 2100 UTC on Tuesday, 2 September 2014, and will close at 2100 UTC on Tuesday, 9 September 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2100 UTC on Tuesday, 16 September 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Also, at least seven members must participate in the ballot, either by voting in favor, voting against, or abstaining.