---
author: Wayne Thayer
date: 2025-11-06 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-11-06 Minutes of the Server Certificate Working Group
type: post
---

1. Begin Recording - Roll Call (as noted)
2. Read note-well.  Note well read by Dimitris
3. Review of Agenda. Agenda reviewed, no changes
4. Minutes approval

  - October 16, 2025, F2F#66 (Draft minutes have not been distributed yet). Nothing to review yet. Will be reviewed at future meeting.

5. Membership applications

  - Ronald Koorn (Interested Party, individual). Approved

  - Saudi Data and Artificial Intelligence Authority (SDAIA), previously known as National Center for Digital Certification (NCDC) (Root Certificate Issuer). Question: Is this a meaningful transfer of key material and should this be reviewed again? Answer: No, this is not what happened. It’s a reorg within the Saudi government. The root is trusted by Microsoft and CCADB shows the root is now listed as SDAIA. Membership approved.

  - Digitorus (Interested Party, organization). Approved, however, applicant has asked for a standing invite to all meetings. Chairs were reminded that they have discretion to decide if an interested party should attend every meeting. A question regarding adding this exception for this applicant came up and whether we should have rules around this. Dean commented that he is working on a proposal that may accommodate this. For SCWG, Digitorus was accepted to attend all meetings.

6. Ballot Status – see list below
7. Any Other Business: None
    Next call: November 20, 2025
8. Adjourn

## Current status of Ballots

This is the latest status of ballots since the last meeting.
### In Discussion Period

 - SC090: Gradually sunset all remaining email-based, phone-based, and 'crossover' validation methods from Sections 3.2.2.4 and 3.2.2.5 (Ryan).
 - SC091: Sunset 3.2.2.5.3 Reverse Address Lookup Validation, proposal of new DNS-based validation using Persistent DCV TXT Record for IP addresses: Now in voting period.

### In Voting Period

 - SC086: Sunset the Inclusion of Address and Routing Parameter Area Names (Corey)

### Under IPR review

 - SC088: Persistent DNS DCV (Slaughter) (IPR Review ends 2025-11-08 18:00:00 UTC)

### Cleared IPR review, new Guidelines

 - SC092: Sunset use of Precertificate Signing CAs (BRs 2.1.8 was published)

### Draft / Under Consideration

 - SC087: Registration Number Improvement for EV Certificates (Corey). No changes.
 - SC0XX: Cleanup for ADN CNAME use (Rich). Rich/Martijn will writeup some examples for review and discussion. Jacob from Let’s Encrypt (https://github.com/cabforum/servercert/pull/627) has put together an alternative to this for review. Dimitris said he’s not sure this addresses all the corner cases. Details of this proposal can be presented on the next call.
 - SC0XX: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn). No progress.
 - SC0XX: Validation method in TLS Certificates (Clint). Writeup has been drafted and will be shared to the list soon.
    Katerina and Carolina from Asseco have volunteered to help with an upcoming cleanup ballot (2025).

## Attendees

 Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adam Jones

(Microsoft), Adrian Mueller (SwissSign), Alvin Wang (SHECA), Antti

Backman (Telia Company), Ben Wilson (Mozilla), Chris Clements (Google),

Clint Wilson (Apple), Daryn Wright (Apple), Dean Coclin (DigiCert),

Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin

Hollenback (Apple), Enrico Entschew (D-TRUST), Gurleen Grewal (Google),

Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign),

Jeanette Snook (Visa), Jos Purvis (Fastly), Jun Okura (Cybertrust

Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lilia

Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes

(SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust),

Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt),

Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan

(VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Nome Huang

(TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig),

Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Roman Fischer

(SwissSign), Ryan Dickson (Google), Sean Huang (TWCA), Stephen Davidson

(DigiCert), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker

(IdenTrust), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software

AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management

Authority).
