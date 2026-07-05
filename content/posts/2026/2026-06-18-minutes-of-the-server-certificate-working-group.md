---
author: Wayne Thayer
date: 2026-06-18 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-06-18 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

1. Roll Call – from recording

We also had the following persons present:

Naresh Charugundla (Microsoft), Rajeev Mohindra (Microsoft), Logan Mabe (Microsoft) who were not registered in the Member's tool.


2. Read note-well

The note-well was read by Dimitris.


3. Review of Agenda

The Agenda as provided on list prior to the call (see above).


4. Minutes

 * June 4, 2026 (Draft minutes were distributed on 2026-06-16) – are Approved

5. Membership Applications

 * No current Applications to review.

6. Ballot Status

 * SC101v2 (https://github.com/cabforum/servercert/pull/627) Clarify Authorization Domain Names (Aaron Gable)

Ballot moved to V2 with substantive change being effective date in 3.2.2.5.3. A couple of other editorial updates also. Expected to go to discussion period tomorrow.

 * SC103: (https://groups.google.com/a/groups.cabforum.org/g/servercert-wg/c/_jckTQAzHWQ/m/MmhaOhyYBgAJ) Require EKUs for Cross-Certified Subordinate CAs (Aaron)

 

This ballot discussed on the list, but not yet in this meeting. This ballot is prompted by an incident that lets Encrypt had a few weeks ago in which they issued some certificates that were in compliance with the profiles specified in the BRs, but not in compliance with the profile requirements specified in the CCADB policy. The goal is to migrate profiles from CCADB to the BRs with a particular focus on EKUs in cross-certified subCAs.

 

Some key elements include: EKUs present but NOT Critical, and no longer such a thing as “unrestricted EKU” – this is expected to be a much simpler table to validate compliance with what CCADB already requires. 

 

An extended discussion ensued which highlighted concerns about EKU requirements and interoperability challenges. Participants emphasized the need for clarity in definitions related to cross certificates and EKUs. EKU chaining is deemed reasonable for governance, but lacks clear agreements and documentation.

Current EKU usage primarily follows the 5280 standard, limiting its application in intermediate CA certificates.

 

Vagueness in the CCADB Policy is embodied in two elements: 1) CCADB defines cross certificates as only being relevant when the subject CA is operated by a different CA owner which doesn’t match with BRs definition; 2) and the EKU restrictions associated with dedicated hierarchies not actually having practical alignment with the individual root programs, and potentially creating interoperability challenges. 

 

With CCADB Steering Committee members as endorsers of this ballot, it is expected to have the right buy in for CCADB once final BR adjustments are considered and made.

 

 * New Version of BRs Published two days ago due to RFC8657 CAA Parameters

 

 * SC100: (https://github.com/cabforum/servercert/pull/667) DNSSEC Clarification and Consolidation – to be updated during plenary session since Rich is not on the call.

 

 * SC102: (https://github.com/cabforum/servercert/pull/669 ) EV Domain Reuse and Validity Alignment – Dustin: in 3.2.2.14.1 will be aligned with TLS BRs about reuse but taking into account the deprecation of WhoIs.

     
 * SC0XX: (https://github.com/cabforum/servercert/pull/622) Improve Certificate Problem Reports and Clarify the Meaning of Revocation – No updates from Martijn

 

 * SC0XX: (https://github.com/cabforum/servercert/pull/624) Allow MLDSA-87 – this ballot will now be pursued by Gurleen. 

 

Tadahiko expressed a desire to consider EKU chaining as per RFC 5280 model – as that relates to Aaron’s proposed SC103. This will take further exploration on the list.

 

7. Any other business

None.


8. Next Call

Next call is July 2nd, 2026. 

9. Meeting Adjournment

Meeting adjourned.

## Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (SSL.com), Andrea Holland (IdenTrust), Antti Backman (Telia Company), Arman Asemani (Apple), Arno Fiedler (ETSI), Ben Wilson (Mozilla), Chad Dandar (Cisco Systems), Corey Rasmussen (OATI), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Ethan Davis (Google), Georgy Sebastian (Amazon), Gregory Tomko (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Osses (Amazon), Mahua Chaudhuri (Microsoft), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Paul van Brouwershaven (Digitorus), Peter Miskovic (Disig), Polina Glazyrina (Sectigo), Rebecca Kelly (SSL.com), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum)).


Aaron Gable (Let's Encrypt), Aaron Poulsen (SSL.com), Adam Folson (IdenTrust), Adriano Santoni (Actalis S.p.A.), Alexandros Afentoulis (HARICA), Alvin Wang (SHECA), Andrea Holland (IdenTrust), Antti Backman (Telia Company), Arman Asemani (Apple), Ben Wilson (Mozilla), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Cynethia Brown (US Federal PKI Management Authority), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eamon Zhang (TrustAsia), Eleftheria Theologou (HARICA), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco Systems), Georgy Sebastian (Amazon), Grace Cimaszewski (Grace Cimaszewski (Private Person)), Gregory Tomko (GlobalSign), Gurleen Grewal (Google), Hazhar Ismail (MSC Trustgate Sdn Bhd), Henry Birge-Lee (Henry Birge-Lee (Private person)), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Jan Smith (US Federal PKI Management Authority), Jinhwan Shin (CPA Canada/WebTrust), Joe DeBlasio (Google), John Mason (Microsoft), Johnny Reading (GoDaddy), Joseph Cigin (Joseph Cigin (Private Person)), Jos Purvis (Fastly), Josselin Allemandou (Certigna (DHIMYOTIS)), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Apple), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft), Marijn Nagelkerke (360 Browser), Mark Gamache (Mark Gamache (Private Person)), Mark Nelson (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Masatoshi Shigaki (CPA Canada/WebTrust), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nate Smith (GoDaddy), Nick France (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Paul van Brouwershaven (Entrust), Paul van Brouwershaven (Digitorus), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rob Brady (SGNR, LLC), Rob Stradling (Sectigo), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Sven Rajala (Keyfactor), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Connelly (US Federal PKI Management Authority), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Crawford (CPA Canada/WebTrust), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Vikas Khanna (Microsoft), Vinay Kumar (OATI), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Zhao Kuisen (NovaVanguard Technology Co., Ltd.).
