---
aliases:
- /2014-06-05-ballot-120-affiliate-authority-verify-domain/
author: Ben Wilson
date: 2014-06-05 18:03:05
tags:
- Ballot
- Server Certificates
title: Ballot 120 – Affiliate Authority to Verify Domain (passed)
type: post
---

Voting closed on June 5, 2014. We received votes in favor from Actalis, ANF, Buypass, DigiCert, Disig, Firmaprofesional, GlobalSign, GoDaddy.com, Logius PKIoverheid, Mozilla, QuoVadis, StartCom, Symantec, Trend Micro, TURKTRUST, OpenTrust, and WoSign. There were no votes against and no abstentions.

Therefore, Ballot 120 passed.

Kirk Hall of TrendMicro made the following motion and Jeremy Rowley of DigiCert and Cecilia Kam of Symantec have endorsed it:

**Ballot 120 – Affiliate Authority to Verify Domain**

**Reasons for proposed ballot**

Ballot 72 in May 2012 reorganized the EV Guidelines by moving certain definitions and common provisions to the Baseline Requirements and replacing them with cross references to the Baseline Requirements.  In July 2013, Ballot 104 was a similar replacement with a cross reference to avoid unnecessary duplication between the two sets of guidelines , but it inadvertently removed domain verification through a parent or subsidiary from EV Guidelines Sec. 11.6.2 (now renumbered as EVGL 11.6.1), which had listed it as part of the allowed verification process. Ballot 104 essentially deleted the separately listed EVGL 11.6.2 methods for verifying domain ownership, and instead inserted a cross-reference to the methods of verifying domain ownership in BR 11.1.1 (except for subsection (7) – “any other method of confirmation” – which was not deemed reliable enough for EV).

There was no discussion to indicate that the removal was intentional, and no one caught the mistake during the review period.  (If you want to see EVGL 11.6.2 before the changes deleting the former parent/subsidiary language, see [/uploads/EV-V1_4_2.pdf][1].)

Because Ballot 104 inadvertently wiped out the ability to rely on parent-subsidiary/affiliate ownership of domains for all types of certs, previously only found in EVGL 11.6.2, the EV WG determined that corrections to both the EVGL and BR are needed.

“Affiliate” was copied over to the BR definitions and removed from the EVGL, but other related definitions were not.  We allow use of “affiliate” data for EV vetting in other contexts, and many CAs have applied the parent-subsidiary/affiliate rule in former EVGL 11.6.2 to vetting domains for both DV and OV certs, on the grounds that some companies have specially designated affiliates for holding intellectual property, like domain names, and also if the domain vetting method was good enough for EV certs, it was good enough for DV and OV certs as well.

Ballot 120 would simply restore the prior rule of former EVGL 11.6.2, inadvertently wiped out by Ballot 104, and fix the copying and updating of definitions that were not done in Ballot 72.  This will clarify that (1) domain ownership by a parent, subsidiary, or affiliate (under both the BRs and EVGL) would again be sufficient to let a customer obtain a certificate for its domain, and (2) ensure the corrected rule applies to all classes of server certs – EV, OV, and DV. Ballot 120 is not intended to change prior approved practices for domain confirmation.

****

**—MOTION BEGINS—**

****

The Baseline Requirements would be amended as follows:

**(1) MOVE definitions** for “Control”, “Country”, “Parent Company,” “Sovereign State,” and “Subsidiary Company” from the EV Guidelines to the Baseline Requirements, and

****

**DELETE the following definitions from the EV Guidelines as redundant** (because the definitions already exist or will exist in the Baseline Requirements):

“Control”, “Country”, “Government Entity,” “Parent Company,” “Sovereign State,” and “Subsidiary Company” ;

**(2) Amend BR 11.1.1 to read as follows:**

BR 11.1.1 Authorization by Domain Name Registrant

\_ \_

For each Fully-Qualified Domain Name listed in a Certificate, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant **(or the Applicant’s Parent Company, Subsidiary Company, or Affiliate, collectively referred to as “Applicant” for the purposes of this section)** either is the Domain Name Registrant or has control over the FQDN by:

1. Confirming the Applicant as the Domain Name Registrant directly with the Domain Name Registrar;

1. Communicating directly with the Domain Name Registrant using an address, email, or telephone number provided by the Domain Name Registrar;

1. Communicating directly with the Domain Name Registrant using the contact information listed in the WHOIS record’s “registrant”, “technical”, or “administrative” field;

1. Communicating with the Domain’s administrator using an email address created by pre-pending ‘admin’, ‘administrator’, ‘webmaster’, ‘hostmaster’, or ‘postmaster’ in the local part, followed by the at-sign (“@”), followed by the Domain Name, which may be formed by pruning zero or more components from the requested FQDN;

1. Relying upon a Domain Authorization Document;

1. Having the Applicant demonstrate practical control over the FQDN by making an agreed-upon change to information found on an online Web page identified by a uniform resource identifier containing the FQDN; or

1. Using any other method of confirmation, provided that the CA maintains documented evidence that the method of confirmation establishes that the Applicant is the Domain Name Registrant or has control over the FQDN to at least the same level of assurance as those methods previously described. \***

**(3) Amend EVGL 11.6.1(1) to read as follows:**

EVGL 11.6.1 Verification Requirements

(1) For each Fully-Qualified Domain Name listed in a Certificate, the CA SHALL confirm that, as of the date the Certificate was issued, the Applicant **(or the Applicant’s Parent Company, Subsidiary Company, or Affiliate, collectively referred to as “Applicant” for the purposes of this section)** either is the Domain Name Registrant or has control over the FQDN using a procedure specified in Section 11.1.1 of the Baseline Requirements, except that a CA MAY NOT verify a domain using the procedure described 11.1.1(7). \***

**—MOTION ENDS—**

****

The review period for this ballot shall commence at 2200 UTC on Thursday, May 22, 2014, and will close at 2200 UTC on Thursday, May 29, 2014.

Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Thursday, June 5, 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response.

A vote against must indicate a clear ‘no’ in the response.

A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted.

The latest vote received from any representative of a voting member before the close of the voting period will be counted.

Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and more than one half of the votes cast by members in the browser category must be in favor. Quorum is currently six (6) members– at least six members must participate in the ballot, either by voting in favor, voting against, or by abstaining for the vote to be valid.

[1]: /uploads/EV-V1_4_2.pdf