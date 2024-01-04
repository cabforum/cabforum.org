---
aliases:
- /2017-03-08-ballot-187-make-caa-checking-mandatory/
author: Ben Wilson
date: 2017-03-08 13:44:23
tags:
- Server Certificates
title: Ballot 187 – Make CAA Checking Mandatory
type: post
---

The voting period for Ballot 187 has ended. Here are the results.

**Voting by CAs – 19 votes total, including abstentions**

17 Yes votes: Let’s Encrypt, Izenpe, Comodo, GoDaddy, HARICA, GDCA, Trustwave, SwissSign, Symantec, SHECA, CFCA, SSC, GlobalSign, Cisco, Buypass, DigiCert, Disig

1 No vote: Sertifitseerimiskeskus

1 Abstain: Actalis

94% of voting CAs voted in favor

**Voting by browsers – 3 votes total, including abstentions**

3 Yes votes: Mozilla, Google, Apple

0 No votes:

0 Abstain:

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**Ballot 187 passes.**

**Ballot 187 v2 – Make CAA Checking Mandatory**

The following motion has been proposed by Gervase Markham of Mozilla and endorsed by Jeremy Rowley of DigiCert and Ryan Sleevi of Google:

**Statement of Intent**

Certificate Authority Authorization (CAA) is a DNS Resource Record defined in RFC 6844 – , published in January 2013. It allows a DNS domain name holder to specify one or more Certification Authorities (CAs) authorized to issue certificates for that domain and, by implication, that no other CAs are authorized.

The intent of this motion is to make it mandatory for CAs to check CAA records at issuance time for all certificates issued (except in a few special cases), and to prevent issuance if a CAA record is found which does not permit issuance by that CA. This therefore allows domain owners to set an issuance policy which will be respected by all publicly-trusted CAs, and allows them to mitigate the problem that the public CA trust system is only as strong as its weakest CA.

Note that CAA is already a defined term in the BRs and so does not need definitional text to be provided by this motion.

**— MOTION BEGINS —**

Add the following text as a new section 3.2.2.8 (titled “CAA Records”) of the Baseline Requirements:

This section is effective as of 8 September 2017.

As part of the issuance process, the CA must check for a CAA record for each dNSName in the subjectAltName extension of the certificate to be issued, according to the procedure in RFC 6844, following the processing instructions set down in RFC 6844 for any records found. If the CA issues, they must do so within the TTL of the CAA record, or 8 hours, whichever is greater.

This stipulation does not prevent the CA from checking CAA records at any other time.

When processing CAA records, CAs MUST process the issue, issuewild, and iodef property tags as specified in RFC 6844. Additional property tags MAY be supported, but MUST NOT conflict with or supersede the mandatory property tags set out in this document. CAs MUST respect the critical flag and reject any unrecognized properties with this flag set.

RFC 6844 requires that CAs “MUST NOT issue a certificate unless either (1) the certificate request is consistent with the applicable CAA Resource Record set or (2) an exception specified in the relevant Certificate Policy or Certification Practices Statement applies.” For issuances conforming to these Baseline Requirements, CAs MUST NOT rely on any exceptions specified in their CP or CPS unless they are one of the following:

- CAA checking is optional for certificates for which a Certificate Transparency pre-certificate was created and logged in at least two public logs, and for which CAA was checked.
- CAA checking is optional for certificates issued by a Technically Constrained Subordinate CA Certificate as set out in Baseline Requirements section 7.1.5, where the lack of CAA checking is an explicit contractual provision in the contract with the Applicant.
- CAA checking is optional if the CA or an Affiliate of the CA is the DNS Operator (as defined in [RFC 7719][1]) of the domain’s DNS.

CAs are permitted to treat a record lookup failure as permission to issue if:

- the failure is outside the CA’s infrastructure;
- the lookup has been retried at least once; and
- the domain’s zone does not have a DNSSEC validation chain to the ICANN root.

CAs MUST document potential issuances that were prevented by a CAA record in sufficient detail to provide feedback to the CAB Forum on the circumstances, and SHOULD dispatch reports of such issuance requests to the contact(s) stipulated in the CAA iodef record(s), if present. CAs are not expected to support URL schemes in the iodef record other than mailto: or https:.

Update section 2.2 (“Publication of Information”) of the Baseline Requirements, to remove the following text:

Effective as of 15 April 2015, section 4.2 of a CA’s Certificate Policy and/or Certification Practice Statement (section 4.1 for CAs still conforming to RFC 2527) SHALL state whether the CA reviews CAA Records, and if so, the CA’s policy or practice on processing CAA Records for Fully Qualified Domain Names. The CA SHALL log all actions taken, if any, consistent with its processing practice.

and replace it with:

Effective as of 8 September 2017, section 4.2 of a CA’s Certificate Policy and/or Certification     Practice Statement (section 4.1 for CAs still conforming to RFC 2527) SHALL state the CA’s policy or practice on processing CAA Records for Fully Qualified Domain Names; that policy shall be consistent with these Requirements. It shall clearly specify the set of Issuer Domain Names that the CA recognises in CAA “issue” or “issuewild” records as permitting it to issue. The CA SHALL log all actions taken, if any, consistent with its processing practice.  Add the following text to the appropriate place in section 1.6.3 (“References”):

RFC6844, Request for Comments: 6844, DNS Certification Authority Authorization (CAA) Resource Record, Hallam-Baker, Stradling, January 2013.

**— MOTION ENDS —
**

The procedure for approval of this Final Maintenance Guideline ballot is as follows:

| | | |
| --- | --- | --- | |
BALLOT 187

Status: Maintenance Guideline |
Start time (22:00 UTC) |
End time (22:00 UTC) | |
Discussion (7 to 14 calendar days) |
2017-02-22 |
2017-03-01 | |
Vote for approval (7 calendar days) |
2017-03-01 |
2017-03-08 | |
If vote approves ballot: Review Period (Chair to send Review Notice) (30 calendar days).

If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created.

If no Exclusion Notices filed, ballot becomes effective at end of Review Period. |
Upon filing of Review Notice by Chair |
30 days after filing of Review Notice by Chair |

From Section 2.3 of the Bylaws: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Section 2.3(j) of the Bylaws.

Votes must be cast by posting an on-list reply to this thread on the Public Mail List. A vote in favor of the motion must indicate a clear “yes” in the response. A vote against must indicate a clear “no” in the response. A vote to abstain must indicate a clear “abstain” in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds (2/3) or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must vote “yes”. Quorum is shown on CA/Browser Forum wiki. Under Section 2.2(g) of the Bylaws, at least the required quorum number of voting members must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.

[1]: https://tools.ietf.org/html/rfc7719