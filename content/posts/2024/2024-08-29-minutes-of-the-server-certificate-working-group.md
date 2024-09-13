---
author: Iñigo Barreira
date: 2024-08-29 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-08-29 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Andrea Holland (VikingCloud), Antti Backman (Telia Company), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brianca Martin (Amazon), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Josselin Allemandou (Certigna (DHIMYOTIS)), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lucy Buecking (IdenTrust), Luis Cervantes (GoDaddy), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Michael Slaughter (Amazon), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Paul van Brouwershaven (Entrust), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Ryan Dickson (Google), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

## Roll Call

Inigo started the roll call. 

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

No review.

## Approval of minutes

August 1st meeting minutes were approved.

## Membership

Reviewed and approved application of SGNR, LLC as an Interested Party. Ben to send email related to closing out GoDaddy IPR claim.

## Discussion

### GitHub open issues

450 - Agreed to close issue

451 - Without browser support, CA/B allowance isn’t meaningful. Browser resources are more focused on post-quantum cryptography currently. Firefox may have support for ed25519, however (https://bugzilla.mozilla.org/show_bug.cgi?id=1804788).

452 - While a normative change, should not have any actual impact given contributing requirements and aligns well with most similar definitions in e.g. RFC 5280. Agreed to address in a future clean-up ballot.

453 - Has already been addressed; agreed to close issue.

456 - The phrase “hosting service relationship” is unclear, both in its meaning and intent. Ben clarified that this something partially addressed in SC-071, but it was intended to provide stipulations or coverage where multiple parties are involved in the procurement of certificates. Agreed to wait on the results of SC-071 to pursue this issue further.

457 - Agreed to address in future clean-up ballot.

458 - Discussion confirmed this is still an issue which should be addressed, with potentially multiple areas that should be improved. Changing ‘Applicant’ to ’Subscriber’ had no objection. Altering the interaction between a domain name not being renewed and this requirement that associated certificates be revoked had rough consensus that it can be removed, but further discussion and confirmation (along with a specific proposal) would be the next step. One option would be to simply remove the second and third examples from sub-bullet 9 in Section 4.9.1.1 and to break up the sentence a bit more. Aaron’s proposed language on the issue (https://github.com/cabforum/servercert/issues/458#issuecomment-2318208466) had no objections and seemed to achieve rough consensus of being included in a future clean-up ballot.


### PAG

Discussed final actions necessary to close out GoDaddy IPR claim.  

## Current status of ballots

No update

## Any Other Business

No other business.

## Next call

September 12th.

## Adjourn

Meeting adjourned.
