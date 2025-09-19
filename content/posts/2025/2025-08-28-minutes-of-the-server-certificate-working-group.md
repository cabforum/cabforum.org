---
author: Wayne Thayer
date: 2025-08-28 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-08-28 Minutes of the Server Certificate Working Group
type: post
---


# Final Minutes – Server Certificate Working Group Teleconference (28 August 2025)

## 1. Roll Call

For attendance, see Item 11 below.

## 2. Note-Well

Dimitris Zacharopoulos reminded participants of the CA/Browser Forum bylaws, including the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review of Agenda

The agenda was reviewed, and no changes or amendments were proposed.

## 4. Minutes Approval

The group considered the approval of previous minutes. The minutes from the 17 July 2025 teleconference, prepared by Scott Rea, are nearly complete but pending attendance verification. The minutes from the 31 July 2025 call, prepared by Aaron Gable, appear to have been distributed but had not been reviewed by the Chair. Approval of both sets of minutes was therefore deferred until the next meeting.

## 5. Membership Applications

The first application was from Baker Tilly in Malaysia, seeking Interested Party status. Discussion clarified that audit firms are not automatically included under the WebTrust associate membership umbrella and may therefore apply independently. Baker Tilly’s application was accepted without objection.

The second application was from Cybertrust Japan, seeking an upgrade from Associate Member to Voting Member status. Having met the necessary requirements, their application was approved by consensus. Their status will be updated, and they will be notified accordingly.

## 6. DNSSEC Checks for E-Mail Based Domain Validation (Ballot SC-085)

Roman Fischer of SwissSign had raised a question about whether DNSSEC applies to MX record lookups in the context of e-mail domain validation.

- Clint Wilson (Apple) explained that DNSSEC should apply to these lookups, although the Baseline Requirements do not make this explicit, and therefore amendments may be needed.
- Ryan Dickson (Google Chrome) agreed, noting that Chrome expects DNSSEC to apply to mail transfer agent lookups. He emphasized that failing to do so would create a weaker security posture. He also mentioned that Chrome is considering a plan to sunset e-mail and phone-based domain validation methods entirely by March 2028.
- Martijn Katerbarg (Sectigo) observed that while enabling DNSSEC checks may be relatively straightforward, the logging requirements could prove burdensome. It is unclear whether every DNSSEC check must be logged, and if so, this could create significant operational complexity.
- Roman Fischer (SwissSign) added that as CAs increasingly rely on cloud-based services, the DNSSEC considerations may become more complicated, although the sunset of e-mail validation in 2028 could reduce the relevance of this issue.

The Chair concluded that the discussion should continue on the mailing list. The effective date for DNSSEC enforcement is March 2026, leaving time for clarification.

## 7. Ballot Status

It was noted that version 2.17 of the TLS Baseline Requirements had been published earlier in the week.

- SC-086 – Sunset of ARPA Names: Progress has stalled due to concerns raised by ICANN. A possible revision would limit the prohibition to IPv4 and IPv6 labels only. If consensus cannot be achieved, the ballot may be withdrawn.
- SC-087 – EV Registration Number Improvements: This ballot affects only the EV Guidelines. Members agreed it can proceed in parallel with other ballots.
- SC-088 – Persistent DNS DCV: Expected to enter discussion shortly. A separate ballot will be needed for IP address validation.
- RFC 8657 CAA Parameters: Wayne expressed concern about “change fatigue,” given the volume of recent mandatory requirements. Members agreed that staggering effective dates would help manage implementation while still allowing improvements to proceed.
- Validation Methods: A draft exists, but progress has been delayed. Clint hopes to resume work in September.

## 8. Any Other Business

Dimitris noted there was a Bugzilla incident requesting clarification of the definition of “Authorization Domain Name” in Method 3.2.2.4.2. Members agreed that this topic is best suited for the Validation Subcommittee, with potential coordination with the Definitions and Glossary Working Group, as different interpretations of the term could lead to inconsistency.

## 9. Next Call

The next Server Certificate Working Group call will be held on 11 September 2025.

## 10. Adjourn

The meeting was adjourned.

## 11.  Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Alvin Wang (SHECA), Ben Wilson (Mozilla), Brianca Martin (Amazon), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Enrico Entschew (D-TRUST), Eric Kramer (Sectigo), Gregory Tomko (GlobalSign), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kate Xu (TrustAsia), Kiran Tummala (Microsoft), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon), Michelle Coon (OATI), Miguel Sanchez (Google), Mohd Redha Hamzah (Pos Digicert Sdn. Bhd.), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Roman Fischer (SwissSign), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum)).