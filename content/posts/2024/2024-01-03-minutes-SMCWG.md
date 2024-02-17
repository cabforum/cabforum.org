---
aliases:
- /2024/01/03/2024-01-03-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2024-01-03 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-01-03 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

January 3, 2024

These are the Draft Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Adriano Santoni - (Actalis S.p.A.), Andrea Holland - (VikingCloud), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Cade Cairns - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Dimitris Zacharopoulos - (HARICA), Don Sheehy - (CPA Canada/WebTrust), Enrico Entschew - (D-TRUST), Inaba Atsushi - (GlobalSign), Janet Hines - (VikingCloud), Judith Spencer - (CertiPath), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Matt Cooper - (CertiPath (Private Person)), Mrugesh Chandarana - (IdenTrust), Nome Huang - (TrustAsia), Rebecca Kelley - (Apple), Rollin Yu - (TrustAsia), Russ Housley - (Vigil Security LLC), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Crawford - (CPA Canada/WebTrust), Tsung-Min Kuo - (Chunghwa Telecom)

## 1. Roll Call

The Roll Call was taken.

## 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda

Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference

The minutes for the teleconference of December 20 were approved.

## 5. Discussion

Stephen Davidson noted that “Ballot SMC05: Adoption of CAA for S/MIME” would enter discussion period.  The ballot is proposed by Corey Bonnell of DigiCert and endorsed by Dimitris Zacharopoulos of HARICA and Ben Wilson of Mozilla.  The proposed text may be found at https://github.com/cabforum/smime/pull/228/files.

The WG then began the beginnings of a new Ballot SMC06, a clarification and correction ballot based on feedback from Certificate Issuers and their experience rolling out the S/MIME BR.  The text may be found at https://github.com/srdavidson/smime/blob/Ballot-SMC06/SBR.md.

Stephen noted that the Issues board of the main SMCWG repo was the best place to track these changes at https://github.com/cabforum/smime/issues.  The WG discussed the following proposed changes:

-   a)	Clarification of geographic fields in the Subject (issue 211)
-   b)	Rules re Pseudonym (issue 203)
-   c)	Intermediate ICA as Extant CAs (issue 215)
-   d)	Clarification in keyUsage table in 7.1.2.3(e) (issue 208)
-   e)	Appendix A country match language for LEI and INT (issue 216)
-   f)	Clarification that LEI is a global scheme (XG) in 7.1.4.2.2 (d) (issue 216)
-   g)	New definitions for Registration Reference and Registration Scheme (issue 216)
-   h)	Clarification of OU for Affiliate in 3.2.3.1 (issue 226)
-   i)	Update 1.2 for Mailbox-validated to allow CN (issue 227)
-   j)	Adding EL as Registration scheme in 7.1.4.2.2 (d) and Appendix A (issue 229)

It was decided regarding item (a) that postal code should require country rather than the current requirement of locality or state/province.

It was noted regarding item (j) that the rules in the S/MIME BR and the EVG for the OrgID deviated slightly from the ETSI requirements in from which the attribute originated.  This has caused problems for CAs that issue both ETSI style certificates as well as S/MIME BR and EVG certificates.  It was suggested that the WG seek to reduce the divergence in use of the OrgID.  Dimitris agreed to work with Stephen on a proposal as a separate ballot for the S/MIME BR, and to work with ETSI as required. 

In future calls the WG will address other issues on the GitHub list.  

The WG discussed the topic of time accuracy which is also occurring at the SCWG.  It was noted that the topic had previously been intensively debated in SCWG; it was decided to wait until discussion had settled down in that group before proceeding.

Ashish Dhiman noted the recent issue added, wherein the EVG allow the country in the subject:country field to differ from that used in the OrgID, while the S/MIME BR require them to match.  Stephen noted that the group had discussed this issue at length before, both for corporate entities and the address of individuals in Sponsor certs.  It was agreed at that time to keep it simple for the registration of the O.  Stephen requested examples where a company was registered in one jurisdiction but had operations in another (typically there would be an affiliate registered in the other jurisdiction). He said the group could return to the topic at a future meeting.

The WG discussed Issue 223 on country codes for countries that do not have official ISO codes.  Stephen asked if this was an issue; examples were noted for Northern Cyprus.  The WG will return to the Issues from GitHub on future calls.

## 6. Any Other Business

None

## 7. Next call

Next call: Wednesday, January 17, 2024 at 11:00 am Eastern Time

## Adjourned
