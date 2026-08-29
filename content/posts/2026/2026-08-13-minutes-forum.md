---
date: 2026-08-13 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-08-13 Minutes of the Forum
type: post
---

**Minutes:**

## CA/B Forum plenary Meeting - August 13, 2026

### 1. Roll Call – from recording

### 2. Read note-well

Dean Coclin chaired the meeting. The note-well had been read during the immediately preceding Server Certificate Working Group meeting.

### 3. Review of Agenda

No changes were made to the published agenda.

### 4. Minutes

 * July 30, 2026 teleconference minutes were approved without objection.

### 5. Server Certificate Working Group (Wayne)

 * Recent activity primarily consisted of approving prior minutes and reviewing ballot status.
 * Version 2.0.4 of the EV Guidelines was published earlier in the day.
 * Validation Subcommittee (Stephen):

   * Ballot work continues on changing the Subscriber Certificate AIA requirement from "MUST" to "SHOULD" to align the top-level requirement with its constituent requirements.
   * Work continues on removing the "high risk" language from both the TLS Baseline Requirements and EV Guidelines.
   * The subcommittee continues to review and modernize dated validation provisions in the EV Guidelines.
   * Rich recently presented on EV Guidelines requirements concerning the operational presence of organizations. The subcommittee is considering whether newer standards provide more appropriate approaches to addressing those requirements.
   * Additional EV Guidelines modernization work is expected to follow.

### 6. Code Signing Certificate Working Group (Martijn)

 * The regular August 6 meeting was canceled following an out-of-band meeting held on August 5.
 * Representatives from Microsoft's Digital Crimes Unit joined the August 5 meeting and presented on the "Fox Tempest" malware case.
 * The group discussed opportunities for increased threat intelligence sharing between CAs and Microsoft.
 * Work is underway on a proposed framework that could facilitate additional information sharing.
 * Dean noted that the meeting provided an opportunity to move the information-sharing initiative forward and that Microsoft's participation was encouraging.

### 7. SMIME Certificate Working Group (Stephen)

 * A new version of the S/MIME Baseline Requirements incorporating SMC-017 was published approximately one week ago.
 * SMC-017 requires new RSA S/MIME roots and issuing CAs created on or after September 15 to use keys of at least 4096 bits and begins the transition away from subscriber RSA keys smaller than 3072 bits.
 * SMC-018 has entered formal discussion. The ballot implements cross-certificate requirements reflected in CCADB policy and further restricts the EKUs permitted in the multipurpose certificate profile.
 * The working group is reviewing dependencies between the S/MIME Baseline Requirements and TLS Baseline Requirements, particularly for domain validation, CAA, and MPIC.
 * Recent restructuring of the TLS Baseline Requirements is being reviewed to ensure requirements referenced by the S/MIME Baseline Requirements have not inadvertently been omitted or affected.

### 8. NetSec Working Group (Clint)

 * An updated NetSec ballot is currently in the voting period, with voting ending Monday.
 * The ballot introduces a new Section 1 covering CA infrastructure inventory and renumbers the subsequent sections.
 * The group discussed potential work following the current and anticipated follow-on ballots. Members interested in leading new initiatives were encouraged to develop concrete proposals for consideration.
 * The group also discussed the upcoming elections and face-to-face meeting.

### 9. Definitions and Glossary Working Group (Polina)

 * Work experienced some delays due to the summer vacation period.
 * The glossary draft has now been finalized on GitHub.
 * A ballot is expected to be posted next week, with the goal of entering the discussion period shortly thereafter.
 * An email will be sent to the group inviting participation in the discussion.

### 10. Forum Infrastructure SubCommittee (Jos)

 * No meeting was held.
 * The next meeting is scheduled for August 19.

### 11. IPR Update (Ben)

 * Two or three additional IPR documents have been received since the previous call.
 * Work remains to reconcile the membership list with organizations and individuals that have completed the required IPR documentation.
 * Most outstanding cases are Interested Parties.
 * Ben and Martijn will coordinate on updating the membership records.
 * Dustin asked for clarification regarding the deadlines for members that have not completed the required IPR documentation.

   * Members may initially continue attending but cannot vote.
   * After September 1, affected members that have not completed the process will need to reapply.
   * Several CA owners have also fallen off the membership list, many of which have indicated that they no longer intend to issue publicly trusted certificates.

### 12. Any other business

 * Elections:

   * Dean reminded members that chair nominations will open on August 17 for the Forum and all Working Groups.
   * Current vice chairs will automatically be nominated for chair and may decline the nomination.
   * Members wishing to nominate another individual should confirm that person's willingness to serve before submitting the nomination.
   * Additional instructions will be distributed with the nomination announcement.

 * Face-to-Face Meeting:

   * The upcoming face-to-face meeting is approximately five weeks away.
   * Approximately 70 attendees have registered, with current capacity limited to 80.
   * Members intending to attend were encouraged to register promptly.

### 13. Next Call

The next Forum Plenary teleconference is scheduled for August 27, 2026.

### 14. Meeting Adjournment

Meeting adjourned.

### Attendees
Arman Asemani (Apple), Nate Smith (GoDaddy), Zoey Wang, Logan Mabe (Microsoft), Rollin Yu (TrustAsia), Jun Okura (Cybertrust), Andrea Holland (IdenTrust), Martijn Katerbarg (Sectigo), Gurleen Grewal (GTS), Hogeun Yoo (NAVER Cloud Trust Services), Alvin Wang (SHECA), Sándor Szőke (Microsec), Ben Wilson (Mozilla), Clint Wilson, Tobias Josefowitz (Opera), Moritz Schaal (D-Trust), Polina Glazyrina (Sectigo), Adam Jones (Microsoft), Kateryna Aleksieieva (Certum by Asseco), Sean Huang (TWCA), Lucy Buecking (IdenTrust), Dustin Hollenback, Scott Rea (eMudhra), Kiran Tummala, Paul van Brouwershaven (Digitorus), Karina Goodley, Cynetheia Brown (FPKIMA), Janet Hines (SSL.com), Nome Huang (TrustAsia), Chris Clements (Google Chrome), Daryn Wright, Li-Chun Chen (Chunghwa Telecom), Stephen Davidson (DigiCert), Atsushi Inaba (GlobalSign), Tsung-Min Kuo (Chunghwa Telecom), Rich Smith (DigiCert), Ryan Dickson (Google Chrome), Dean Coclin (DigiCert), Fumiaki Ono (SECOM Trust Systems), Steven Deitte (GoDaddy), Georgy Sebastian (Amazon Trust Services), Jos Purvis (Fastly), Sandy Balzer (SwissSign), Luis Cervantes (SSL.com), Aaron Poulsen (SSL.com), Rob White (GoDaddy), Wayne Thayer (Fastly)
