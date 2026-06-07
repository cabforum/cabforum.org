---
author: Wayne Thayer
date: 2026-05-21 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-05-21 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

## 1. Begin Recording - Roll Call

Meeting called to order by Dimitris Zacharopoulos.

## 2. Reading of Note-well

Dimitris read the note-well.

## 3. Review of Agenda

No changes

## 4. Minutes approval

 * April 9, 2026 - Approved

 * April 23, 2026 - Approved

 * May 7, 2026  - Approved

## 5. Membership applications

No application

## 6. Ballot Status

### In Discussion Period

 * SC087: Registration Number Improvement for EV Certificates (Corey)

Ben Wilson asked if we should delay the voting period given the upcoming deadline for submitting the new IPR agreement.

Corey Bonnell agreed to hold off on voting until we have more new IPR agreements from members.

Ben asked what happens if we don’t meet quorum. Dimitris said that quorum should be adjusted based on members in good standing, but Martijn noted that these rules are not entirely clear.

Corey said that due to the timing of some other changes to EV guidelines we may need to modify the ballot if it doesn’t pass by mid-June.

Dimitris advised Corey to go ahead with voting after all. He and Ben will follow up with members on IPR agreements.

### In Voting Period

None

### Under IPR Review

 * SC098v2: Process RFC 8657 CAA Parameters (IPR Review ends 2026-06-12 15:00:00 UTC)

### Cleared IPR Review, New Guidelines

 * SC099: Improve Recording of Validation Method (BRs version 2.2.7 was published)

### Draft / Under Consideration

 * SC101: Clarify Authorization Domain Names (Aaron)

Aaron Gable will confirm endorsements and then move to a discussion period with a revised effective date.

Trevoli Ponds-White plans to send out minutes from a Validation SC meeting where this topic was discussed.

 * SC100: DNSSEC Clarification and Consolidation (Rich)

Rich Smith said that he needs to incorporate SC-098 changes, and he is looking for endorsers

Trev said that Amazon would endorse

 * SC0XX: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)

Martijn Katerbarg said that he is finalizing the text of the ballot.

 * SC0XX: Allow ML-DSA [PR#622 (Gurleen), PR#624 (Corey)]

Gurleen Grewal said that they assumed that traditional X509 certificates would be part of the post quantum transition, but it’s now understood that not everyone agrees with this. The concerns over CT logs are noted.

Trev asked Gurleen about publishing an updated ballot and Gurleen agreed that this is the next step.

Karina Sirota Goodley said that Microsoft is planning to move ahead with their pilot of ML-DSA X509 certificates and Microsoft supports this ballot, even though use cases may be separate from Web PKI. Karina suggested excluding these certificates from CT logs.Karina said that she would review the updated ballot.

Chris Clements said that ML-DSA trust anchor support for private PKI in TLS 1.3 will ship in Chrome 150 and is currently available in Canary. He referenced: https://chromestatus.com/feature/5174590524489728 in chat.

Dimitris asked what will happen to Corey’s PR? Gurleen said that it will be incorporated into the updated ballot

Martijn asked if Microsoft is considering support for Merkle Tree Certificates. Karina said that they are investigating it.

Gurleen asked if excluding CT logging from these certificates would address Dustin’s concerns? Trev said that this is a root program policy.

Aaron said that each CCADB root program would need to implement this carve-out. Dimitris suggested forbidding SCTs in these certificates, but others said that this doesn’t prevent submission to CT logs.

Chris asked that the ballot proposers address these issues in the ballot preamble.

## 7. Any other business

## 8. Next call

June 4, 2026 cancelled to allow time for presentations in the CAB Forum call. Next meeting will be on June 18, 2026.

## 9. Adjourn

## Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adam Jones (Microsoft), Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Arman Asemani (Apple), Ben Wilson (Mozilla), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Daryn Wright (Apple), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Kramer (Sectigo), Ethan Davis (Google), Georgy Sebastian (Amazon), Gregory Tomko (GlobalSign), Gurleen Grewal (Google), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (SSL.com), Jeanette Snook (Visa), John Mason (Microsoft), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Apple), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Luis Osses (Amazon), Lynn Jeun (Visa), Martijn Katerbarg (Sectigo), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Miguel Sanchez (Google), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rob White (GoDaddy), Roman Fischer (SwissSign), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority).
