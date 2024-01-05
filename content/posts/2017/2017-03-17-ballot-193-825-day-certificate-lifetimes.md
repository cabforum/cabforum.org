---
aliases:
- /2017-03-17-ballot-193-825-day-certificate-lifetimes/
author: Ben Wilson
date: 2017-03-17 14:24:09
tags:
- Ballot
- Server Certificates
title: Ballot 193 – 825-day Certificate Lifetimes
type: post
---

The voting period for Ballot 193 has ended. The ballot **passed**.

**Voting by CAs – 27 votes total including abstentions**

24 Yes votes: Entrust Datacard, TurkTrust, Izenpe, Certinomis, DigiCert, Amazon, CNNIC, HARICA, GlobalSign, GDCA, Disig, Trustwave, Let’s Encrypt, Quo Vadis, SHECA, CFCA, OATI, Comodo, Buypass, Logius PKIoverheid, Cisco, Symantec, Certum, SwissSign

0 No votes:

3 Abstain: ANF Autoridad de Certificación, Secom, Actalis

100% of voting CAs voted in favor

**Voting by browsers – 6 votes total including abstentions**

5 Yes votes: Apple, Qihoo 360, Microsoft, Opera, Google

0 No votes:

1 Abstain: Mozilla

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**The ballot passes.**

**Ballot 193 – 825-day Certificate Lifetimes (REVISED v2 – March 2, 2017)**

**Purpose of Ballot:** Recent Ballot 185 demonstrated a consensus among Forum members to reduce the maximum lifetime for DV and OV certificates from 39 months to 825 days (roughly 27 months). This ballot reflects that consensus, and also reduces the maximum period for reuse of vetting data for DV and OV certificates from 39 months to 27 months.

The following motion has been proposed by Chris Bailey of Entrust Datacard and endorsed by the following CA/B Forum member representatives (listed in alphabetical order) Robin Alden of Comodo, Ben Wilson of DigiCert, and Doug Beattie of GlobalSign to introduce new Final Maintenance Guidelines for the “Baseline Requirements Certificate Policy for the Issuance and Management of Publicly-Trusted Certificates” (Baseline Requirements) and the “Guidelines for the Issuance and Management of Extended Validation Certificates” (EV Guidelines).

— MOTION BEGINS —

**BR 4.2.1. Performing Identification and Authentication Functions**

The certificate request MAY include all factual information about the Applicant to be included in the Certificate, and such additional information as is necessary for the CA to obtain from the Applicant in order to comply with these Requirements and the CA’s Certificate Policy and/or Certification Practice Statement. In cases where the certificate request does not contain all the necessary information about the Applicant, the CA SHALL obtain the remaining information from the Applicant or, having obtained it from a reliable, independent, third‐party data source, confirm it with the Applicant. The CA SHALL establish and follow a documented procedure for verifying all data requested for inclusion in the Certificate by the Applicant.

Applicant information MUST include, but not be limited to, at least one Fully‐Qualified Domain Name or IP address to be included in the Certificate’s SubjectAltName extension.

Section 6.3.2 limits the validity period of Subscriber Certificates. The CA MAY use the documents and data provided in Section 3.2 to verify certificate information, provided that the CA obtained the data or document from a source specified under Section 3.2 no more than **825 days** _thirty‐nine (39) months_ prior to issuing the Certificate.

The CA SHALL develop, maintain, and implement documented procedures that identify and require additional verification activity for High Risk Certificate Requests prior to the Certificate’s approval, as reasonably necessary to ensure that such requests are properly verified under these Requirements.

If a Delegated Third Party fulfills any of the CA’s obligations under this section, the CA SHALL verify that the process used by the Delegated Third Party to identify and further verify High Risk Certificate Requests provides at least the same level of assurance as the CA’s own processes.

**BR 6.3.2. Certificate Operational Periods and Key Pair Usage Periods**

Subscriber Certificates issued after **March 1, 2018 **_the Effective Date_ MUST have a Validity Period no greater than **825 days** _60 months_. **Subscriber Certificates issued after 1 July 2016 *April 2015* but prior to 1 March 2018 MUST *NOT* have a Validity Period no greater than thirty-nine (39) months.**

_Except as provided for below, Subscriber Certificates issued after 1 April 2015 MUST have a Validity Period no greater than 39 months._

_Until 30 June 2016, CAs MAY continue to issue Subscriber Certificates with a Validity Period greater than 39 months but not greater than 60 months provided that the CA documents that the Certificate is for a system or software that:_

_(a) was in use prior to the Effective Date;_

_(b) is currently in use by either the Applicant or a substantial number of Relying Parties;_

_(c) fails to operate if the Validity Period is shorter than 60 months;_

_(d) does not contain known security risks to Relying Parties; and_

_(e) is difficult to patch or replace without substantial economic outlay._

**EVGL 9.4. Maximum Validity Period For EV Certificate**

The validity period for an EV Certificate SHALL NOT exceed **825 days** _twenty seven months_. It is RECOMMENDED that EV Subscriber Certificates have a maximum validity period of twelve months.

— MOTION ENDS —

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

| | | |
| --- | --- | --- | |
BALLOT 193

Status: Final Maintenance Guideline |
Start time (23:00 UTC) |
End time (23:00 UTC) | |
Discussion (7 to 14 days) |
March 3 |
March 10 | |
Vote for approval (7 days) |
March 10 |
March 17 | |
If vote approves ballot: Review Period (Chair to send Review Notice) (30 days).

If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created.

If no Exclusion Notices filed, ballot becomes effective at end of Review Period. |
Upon filing of Review Notice by Chair |
30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.