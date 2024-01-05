---
aliases:
- /2017-01-07-ballot-181-readopting-br-3-2-2-4-part-1/
author: Ben Wilson
date: 2017-01-07 18:56:22
tags:
- Ballot
- Server Certificates
title: Ballot 181 – Readopting BR 3.2.2.4 (Part 1)
type: post
---

Ballot 181 has **passed** – see results below. We will send out more information on what happens next.

**Ballot 181 Results**

CAs – 18 yes, 0 no, 3 abstain (plus 2 yes votes on the Management list, which will not be counted)

Browsers – 5 yes, 0 no, 0 abstain

Result: **Ballot 181 passes** (requires 2/3 affirmative vote by CAs and majority affirmative vote by browsers). Quorum is 10 votes – quorum achieved.

CA Votes on Ballot 181:

18 yes on Public list – Amazon, ANF Autoridad de Certif., Buypass, CFCA, Cisco, Comodo, Disig, D-Trust, Entrust, GDCA, GlobalSign, GoDaddy, Harica, Izenpe, SHECA, Symantec, Trustwave, TurkTrust.

3 abstain on Public list – Actalis, Chunghwa Telecom, DigiCert

2 yes on Management list (not counted in vote total) – Certinomis, CNNIC

Browser Votes on Ballot 181:

5 yes on Public list: Apple, Google, Mozilla, Opera, Qihoo 360

**Ballot 181 – Readopting BR 3.2.2.4 (Part 1)**

The following motion has been proposed by Kirk Hall of Entrust and endorsed by Peter Bowen of Amazon and Virginia Fournier of Apple as a Final Guideline:

— MOTION BEGINS –

In accordance with the Bylaws and Intellectual Property Rights (IPR) Policy of the CA/Browser Forum (the “Forum”), the Forum Baseline Requirements (BR) and Extended Validation Guidelines (EVGL), as previously approved by all ballots up to and including Ballot 176, are hereby readopted by this Ballot, with the following amendments.

1. BR 3.2.2.4 is amended to read in its entirety as follows:

**3.2.2.4 Validation of Domain Authorization or Control**

This section defines the permitted processes and procedures for validating the Applicant’s ownership or control of the domain.

The CA SHALL confirm that, as of the date the Certificate issues, either the CA or a Delegated Third Party has validated each Fully-Qualified Domain Name (FQDN) listed in the Certificate using at least one of the methods listed below.

Completed confirmations of Applicant authority may be valid for the issuance of multiple certificates over time. In all cases, the confirmation must have been initiated within the time period specified in the relevant requirement (such as Section 3.3.1 of this document) prior to certificate issuance. For purposes of domain validation, the term Applicant includes the Applicant’s Parent Company, Subsidiary Company, or Affiliate.

Note: FQDNs may be listed in Subscriber Certificates using dNSNames in the subjectAltName extension or in Subordinate CA Certificates via dNSNames in permittedSubtrees within the Name Constraints extension.

**3.2.2.4.1 \[Reserved\]**

**3.2.2.4.2 \[Reserved\]**

** 3.2.2.4.3 \[Reserved\]**

** 3.2.2.4.4 \[Reserved\]**

**3.2.2.4.5 Domain Authorization Document**

Confirming the Applicant’s control over the requested FQDN by relying upon the attestation to the authority of the Applicant to request a Certificate contained in a Domain Authorization Document. The Domain Authorization Document MUST substantiate that the communication came from the Domain Contact. The CA MUST verify that the Domain Authorization Document was either (i) dated on or after the date of the domain validation request or (ii) that the WHOIS data has not materially changed since a previously provided Domain Authorization Document for the Domain Name Space.

**3.2.2.4.6 Agreed-Upon Change to Website**

Confirming the Applicant’s control over the requested FQDN by confirming one of the following under the “/.well-known/pki-validation” directory, or another path registered with IANA for the purpose of Domain Validation, on the Authorization Domain Name that is accessible by the CA via HTTP/HTTPS over an Authorized Port:

1. The presence of Required Website Content contained in the content of a file or on a web page in the form of a meta tag. The entire Required Website Content MUST NOT appear in the request used to retrieve the file or web page, or

1. The presence of the Request Token or Request Value contained in the content of a file or on a webpage in the form of a meta tag where the Request Token or Random Value MUST NOT appear in the request.

If a Random Value is used, the CA or Delegated Third Party SHALL provide a Random Value unique to the certificate request and SHALL not use the Random Value after the longer of (i) 30 days or (ii) if the Applicant submitted the certificate request, the timeframe permitted for reuse of validated information relevant to the certificate (such as in Section 3.3.1 of these Guidelines or Section 11.14.3 of the EV Guidelines).

Note: Examples of Request Tokens include, but are not limited to: (i) a hash of the public key; (ii) a hash of the Subject Public Key Info \[X.509\]; and (iii) a hash of a PKCS#10 CSR. A Request Token may also be concatenated with a timestamp or other data. If a CA wanted to always use a hash of a PKCS#10 CSR as a Request Token and did not want to incorporate a timestamp and did want to allow certificate key re-use then the applicant might use the challenge password in the creation of a CSR with OpenSSL to ensure uniqueness even if the subject and key are identical between subsequent requests. This simplistic shell command produces a Request Token which has a timestamp and a hash of a CSR. E.g. echo date -u +%Y%m%d%H%M sha256sum |
BALLOT 181

Status: Final Guideline |
Start time (22:00 UTC) |
End time (22:00 UTC) |
 |
Discussion (7 days) |
Oct. 25, 2016 |
Nov. 1, 2016 |
 |
Review Period (Chair to send Review Notice) (60 days).

If Exclusion Notice(s) filed, PAG to be created and no further action until PAG recommendations received.

If no Exclusion Notice(s) filed, proceed to: |
Nov. 1, 2016 |
Dec. 31, 2016 |
 |
Vote for approval (7 days) |
Dec. 31, 2016 |
Jan. 7, 2017 |

Votes must be cast by posting an on-list reply to this thread on the Public list.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently ten (10) members – at least ten members must participate in the ballot, either by voting in favor, voting against, or abstaining.