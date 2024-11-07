---
author: Stephen Davidson
date: 2024-10-10 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-10-10 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG

October 10, 2024

These are the Draft Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google), An Yin (iTrusChina), Arvid Vermote (GlobalSign), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chorus Li (iTrusChina), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco Systems), Eva Vansteenberge (GlobalSign), Georgy Sebastian (Amazon), Hannah Sokol (Microsoft), Hans Metsoja (Opera Software AS), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (VikingCloud), Joanna Brawata (Asseco Data Systems SA (Certum)), John Okimoto (CommScope), Joseph Ramm (OATI), JP Hamilton (Cisco Systems), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Keshava Nagaraju (eMudhra), Kiran Tummala (Microsoft), Leo Grove (SSL.com), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Llew Curran (GoDaddy), Luis Cervantes (SSL.com), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mats Rosberg (Keyfactor), Michael Slaughter (Amazon), Michelle Coon (OATI), Miguel Sanchez (Google), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nick France (Sectigo), Nicol So (CommScope), Nikos Soumelidis (ACAB Council), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Renne Rodriguez (Apple), Rollin Yu (TrustAsia), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sissel Hoel (Buypass AS), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Xiu Lei (GDCA), Yamian Quintero (Microsoft)

## Approval of minutes
Minutes approval of September 25 was deferred. Minutes were prepared by Stephen Davidson.

## Discussion
Stephen Davidson presented, noting that S/MIME always wrapped up the long F2F meetings so the group would compress its discussion.
Stephen noted the Vice Chair elections and that Martijn Katerbarg has been nominated to continue in the role.

The WG discussed progress over the past quarter including SMC07 (Align logging requirement, key escrow clarification) and SMC08 (Deprecate Legacy Generation and minor updates).  

Stephen noted that when the SMCWG set out, there was very little data on the S/MIME market, which led to a cautious approach in enacting the S/MIME BR.  Since then the WG had received much feedback from CAs and their auditors, and the group sought where possible to roll up groups of changes to create an orderly implementation schedule through the year.

He noted that there were more than 30 bugs in Bugzilla relating to S/MIME BR and summarized some of the causes: 

*         Email domain validation issues
*         subjectDN formatting mistakes, like CN muddles, OrgID
*         Characters and SAN issues
*         Disallowed keyUsages
*         CP OID mixups
*         OCSP failures

He noted that many of the nonconformities would have been caught by linting.

Stephen noted that SMC09 had entered discussion period, dealing with:
*         Require pre-linting of leaf end entity Certificates starting September 15, 2025
*         Require WebTrust for Network Security for audits starting after April 1, 2025
*         Clarify that multiple certificatePolicy OIDs are allowed in end entity certificates
*         Clarify use of organizationIdentifer references
*         Update of Appendix A.2 Natural Person Identifiers

The WG also discussed ballot SMC10, which would soon proceed to maintain parity between the SBR and the TLS BR on the issue of Multi-Perspectice Issuance Corroboration (MPIC).  The ballot adopts MPIC for DNS validations including CAA but on a slightly delayed schedule compared to TLS.  The WG chose to do this as some CAs only issue S/MIME and may not be aware of the discussions that have taken place for TLS MPIC.  


Clint Wilson noted that he wished the WG would also consider MPIC in relation to checking MX records for emails sent as part of mailbox control validation in 3.2.2.2.  Stephen noted that the same might apply to emails sent under the TLS BR and the two groups should coordinate their approach.

The WG also discussed potential items on its roadmap for the coming months.  Topics included:

*         TLS ballot SC-081 as impact of reduced cache of domain control may require additional ballots to amend domain control text in the TLS BR or have a negative impact on Enterprise RAs which are scoped via prevalidated domains
*         EUID for OrgID
*         Review of vetting methods
   *   eSignatures proposal
   *   eID update
*         MPIC for mailbox
*         PQC feedback from Certificate Consumers
*         Other email domain validation methods (like MX+SMTP)
*         Charter refresh
   *   How do we get more info on actual use?
   *   Optimizing CAs is not enough: how do we better engage with other participants in the ecosystem?

Martijn invited SMCWG members to submit additional topics to the group.

## Any Other Business

Dimitris Zacharopoulos asked if eIDAS2 could be added to a future agenda.

## Next call

The next SMCWG call is October 23, 2024.
