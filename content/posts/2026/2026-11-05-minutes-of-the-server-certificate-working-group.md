---
author: Wayne Thayer
date: 2026-11-05 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-11-05 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting — 2026-11-05 Minutes

## Minutes

### 1. Opening

- The meeting was recorded and roll call was taken.
- Dimitris Zacharopoulos (HARICA) read the Note Well: all participants are reminded that they must comply with the CA/Browser Forum's Bylaws, which include an Antitrust Policy, a Code of Conduct, and an Intellectual Property Rights Agreement.
- The agenda was reviewed with no changes. The only addition was a new applicant for Interested Party membership.

### 2. Minutes Approval

- The minutes of the October 8, 2026 teleconference have not been distributed yet and remain outstanding. Dean Coclin (DigiCert) will follow up with Eva Van Steenberge (GlobalSign) regarding the outstanding draft minutes.
- The draft minutes of the October 22, 2026 teleconference were distributed on 2026-10-23 and were approved. Dimitris Zacharopoulos (HARICA) will publish the approved minutes to the public mailing list.

### 3. Membership Applications

- Chad Schieken applied for membership as an Interested Party (Individual).
  - The group discussed whether to require a better "signature" than a scribble on the application. This was not considered necessary, as the application was approved by consensus.
  - **Outcome:** Chad Schieken was approved as an Interested Party.
- Nobuo Otoi applied for membership as an Interested Party (Individual).
  - **Outcome:** Nobuo Otoi was approved as an Interested Party. Wayne Thayer (Fastly) will contact the new member.

### 4. Ballot Status

**In Discussion Period:**

- SC-103: Require EKUs for Cross-Certified Subordinate CAs. Aaron Gable (ISRG) reported that the ballot requires further revision. Clarifying language will be introduced, and the revised ballot will need to enter a new discussion period. Aaron Gable (ISRG) will prepare SC-103v2, with the intention of updating the text within approximately one to two weeks and then opening a new discussion period.
- SC-107: Improve Certificate Problem Reports and Clarify the Meaning of Revocation. SC-107v2 has been opened for comments. Recent comments need to be addressed before proceeding to the next discussion period. Martijn Katerbarg (Sectigo) will address the latest comments and proceed with the new discussion period, expected to last approximately one and a half weeks.

**In Voting Period:** None.

**Under IPR Review:**

- SC-105: Remove High Risk language from TLS BR and EVG. The ballot has entered IPR Review. The review period ends 2026-12-02 11:00:00 UTC.

**Draft / Under Consideration:**

- SC-1XX: EVG Cleanup and BR Sync. Rich Smith (DigiCert) was not on the call. Stephen Davidson (DigiCert) noted this.
- SC-1XX: Reorganize key quality checking and add ECDSA small private scalar check. Aaron Gable (ISRG) and Dimitris Zacharopoulos (HARICA) are the authors. A substantial technical discussion took place on the proposed key-quality ballot. Topics included:
  - checks intended to detect small private scalars;
  - appropriate minimum values/cut-offs for ECDSA;
  - RSA public exponent requirements, including the possibility of requiring e = 65537;
  - reorganization of the relevant requirements currently associated with Sections 6.1.5 and 6.1.6;
  - applicability of the requirements to certificates issued before the ballot's effective date; and
  - appropriate effective dates and associated revocation consequences.

  A possible ECDSA small-scalar cut-off of 2^16 was discussed. Further technical justification and feedback are needed before the ballot text is finalized.

  The group also discussed aligning the implementation dates. Dates in early 2027 were considered, including 15 March 2027, with the intention of ensuring that the effective dates provide sufficient implementation time and that the dates applying to the RSA requirements are consistent with the remainder of the ballot.

  Action items:
  - Aaron Gable (ISRG) will continue restructuring the key-quality checking requirements and small-private-scalar text on GitHub, and will develop a stronger recommendation for the small-scalar cut-off (potentially 2^16) for further discussion.
  - Aaron Gable (ISRG) will revise the effective-date language, including alignment of the RSA dates.
  - Relevant Server Certificate Working Group participants will examine their certificate populations and plan for any revocations that may become necessary once the new requirements take effect.
- SC-1XX: Add Domain Validation method for DNS TXT Record with Persistent Value - ACME. Michael Slaughter (Amazon Trust Services) was not on the call.

### 5. Any Other Business

- Ryan Dickson (Google Chrome) raised three new proposals he has created:
  - Improve consistency and transparency of CA key generation;
  - Prohibit CA Private Key material in plaintext outside a validated cryptographic module; and
  - Prohibit reuse of domain validation data following certificate revocation.
- Stephen Davidson (DigiCert) noted that the Validation Subcommittee will place prohibiting reuse of domain validation data after revocation on its next agenda, and will continue the AI governance discussion in the coming weeks.

### 6. Next Call

- The meeting was adjourned.
- The next Server Certificate Working Group teleconference is scheduled for 2026-11-19.

## Attendees:
Aaron Gable (Let's Encrypt), Adam Jones (Microsoft), Andrea Holland (IdenTrust), Antti Backman (Telia Company), Arman Asemani (Apple), Arnold Essing (Deutsche Telekom Security GmbH), Ben Wilson (Mozilla), Chris Clements (Google), Chya-Hung Tsai (TWCA), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Gregory Tomko (GlobalSign), Gurleen Grewal (Google), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Janet Hines (SSL.com), Jian Wang (HUAWEI), Jos Purvis (Fastly), Karina Goodley (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kiran Tummala (Apple), Lilia Dubko (CPA Canada/WebTrust), Luis Cervantes (SSL.com), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mike Agrenius Kushner (Keyfactor), Moritz Schaal (D-Trust), Naresh Charugundla (Microsoft), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Polina Glazyrina (Sectigo), Rajeev Mohindra (Microsoft), Rebecca Kelley (DigiCert), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Sarah Sherrard (Sectigo), Sean Huang (TWCA), Stefan Kirch (Deutsche Telekom Security GmbH), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Zoey Wang (TrustAsia)
