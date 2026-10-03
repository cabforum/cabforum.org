---
date: 2026-09-10 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-09-10 Minutes of the Forum
type: post
---

# 2026-09-10 Minutes of the Forum

**Minutes:**

## CA/B Forum Plenary Meeting - September 10, 2026

### 1. Opening

- Tim Callan (Sectigo) opened the plenary and the Note Well was read.
- Dustin Hollenback (Apple) took the minutes.
- Minutes Approval: Tim Callan (Sectigo) asked whether anyone opposed approval of the minutes of 2026-08-27. Hearing no opposition, those minutes were approved.

### 2. Working Group Updates

- **Server Certificate Working Group:** Dimitris Zacharopoulos (HARICA) reported that the working group had spent most of its previous meeting on reasons for revocation, a discussion led by Ben Wilson (Mozilla), who described a process for establishing why certificates are revoked and what problems revocation is intended to solve. Rather than create a subcommittee or ad hoc group, the working group decided to use the Server Certificate Working Group mailing list with specific subject tags to drive that discussion. The remainder of the time was spent on face-to-face agenda topics.
- **Validation Subcommittee:** Stephen Davidson (DigiCert) reported that the subcommittee's last teleconference went through a series of proposals from Rich Smith (DigiCert) on modernizing aspects of the EV Guidelines, now circulated as a fully formed set of redlines. He noted the redlines went to the Server Certificate Working Group list rather than the Validation Subcommittee list; Rich Smith (DigiCert) confirmed he had intended to send them to validation but that they went to servercert, and he left them there. Stephen Davidson (DigiCert) also reported that discussion has begun, and will continue at the face-to-face and beyond, on the use of AI-based tools in conducting validation. The white paper and presentation materials are on the Validation Subcommittee mailing list. He invited insight from anyone with a view on how AI can be used in support of validation tasks under the CA/Browser Forum standards, on what guardrails should be imposed, and on record-keeping changes that might be advisable when AI is used.
- **Code Signing Certificate Working Group:** Martijn Katerbarg (Sectigo) reported the working group started meeting again last week and has mainly planned for the face-to-face. Microsoft gave a short update on threat intelligence sharing, for which they are starting a pilot with a small number of Certification Authorities, with the expectation it will expand over time. Face-to-face topics will include clarifying ambiguous language on the organization name in Code Signing Certificates when combined with an individual Code Signing Certificate, concerns raised about the reuse of private keys and key pairs, and a proposal to align the Code Signing guidelines with the TLS documents on Section 7.
- **S/MIME Certificate Working Group:** Stephen Davidson (DigiCert) reported that SMC-018, a ballot realigning the multi-purpose use cases, passed and is in IPR review until 2026-09-24, and encouraged anyone wishing to conduct a review to do so. He noted that if the revocation reasons change in the Server Certificate Working Group there is a potential knock-on effect in other working groups, including S/MIME, which mirrored those requirements, and that the S/MIME working group would want to feed into that discussion. He also reported a narrowing under one root program of the guardrails around use of the email protection EKU: where a publicly trusted hierarchy is used for email protection, the leaf certificates must contain an email address and therefore fall automatically within the scope of the S/MIME Baseline Requirements. A discussion has begun on whether the entire scope of the S/MIME Baseline Requirements should be read that way, and on defining which types of Subordinate CA Certificates are automatically pulled into scope. There is an issue open in the S/MIME GitHub. A cleanup ballot is coming shortly with minor changes keeping pace with the TLS working group, which he characterized as non-controversial.
- **Network Security Working Group:** Clint Wilson (Apple) was not present. David Kluge (Google Trust Services) gave the update, reporting little change since the last one. The working group is preparing for the face-to-face, where the topics will be the future of the Network and Certificate System Security Requirements and the direction for further improvements, CP/CPS disclosure of the network and certificate system security requirements and how they are implemented, and the adoption of AI for security and audit-related purposes.
- **Definitions and Glossary Working Group:** Tim Callan (Sectigo) gave the update on behalf of Polina Glazyrina (Sectigo). A ballot went into a discussion period and received good feedback that the group considered worth taking and addressing. Rather than proceed to a vote on that version, the group will withdraw it and put a revised ballot into a new discussion period. The exact timing is not settled. The working group has been placed on the plenary agenda for the face-to-face so the community can hold an open discussion on its vision for the glossary.
- **Forum Infrastructure Subcommittee:** Jos Purvis (Fastly) reported the subcommittee did not meet last week, so there was no update.
- **IPR administration:** Ben Wilson (Mozilla) will confirm whether the reminder was sent to members who have not signed version 1.4 of the IPR Agreement, warning that their membership would otherwise be terminated. The outstanding tasks are to update the member tools list of those members and to ensure they are removed from the website.

### 3. Elections

- Nominations for the chairs have concluded. Three positions are contested: Forum Chair, Server Certificate Working Group Chair, and Network Security Working Group Chair. Three are uncontested and need only be confirmed: S/MIME Certificate Working Group Chair, Code Signing Certificate Working Group Chair, and Definitions and Glossary Working Group Chair.
- Tim Callan (Sectigo) reviewed the election timeline. Per the special elections ballot circulated 2026-09-07, the discussion period closes 2026-09-14 at 16:00 UTC, and voting runs from then until 2026-09-21 at 16:00 UTC. Candidates have the option, but not the obligation, to send a message to the list setting out their vision and qualifications; none had done so at the time of the call.

### 4. Face-to-Face 68, Vienna, Austria, hosted by eMudhra, 2026-09-22 to 2026-09-24

- About half a dozen registration spots remain. Final numbers have been given to the venues, but Scott Rea (eMudhra) confirmed sign-ups can stay open for the remaining spots, since not every attendee joins every session.
- Members who signed up for the social event but can no longer attend, or whose plus one can no longer attend, should notify Scott Rea (eMudhra). Late additions can also be accommodated.
- Transport has been arranged between the Parliament venue and the Beethoven House, so personal transport is not required.
- A tour of the Parliament is scheduled for 17:00 on the first day for those who wish to participate.

### 5. Upcoming Meetings

- Face-to-Face 69, Scottsdale, Arizona, hosted by Sectigo: 2027-02-23 to 2027-02-25. Dates confirmed. Sign-ups are open on the wiki.
- Face-to-Face 70, Zurich, Switzerland, hosted by SwissSign: 2027-09-21 to 2027-09-23. Dates newly confirmed. Tim Callan (Sectigo) thanked SwissSign and asked members to mark their calendars.

### 6. Any Other Business

None.

### 7. Next Call & Adjournment

- The next teleconference will be 2026-10-08. The next meeting is the face-to-face in Vienna in two weeks.
- Tim Callan (Sectigo) adjourned the meeting.

### Attendees

Aaron Gable (ISRG), Adriano Santoni (Actalis), Alvin Wang (SHECA), Antti Backman (Telia Company), Arman Asemani (Apple), Arnold Essing (Telekom Security), Atsushi INABA (GlobalSign), Ben Wilson (Mozilla), Chad Dandar (Cisco), Chris Clements (Google Chrome), Corey Rasmussen (OATI), David Kluge (Google Trust Services), Dimitris Zacharopoulos (HARICA), Eric Kramer (Sectigo), Fabien Hochstrasser (Google Trust Services), Inigo Barreira (Sectigo), Jaime Hablutzel (WISeKey), Jeff Ward (Aprio), Jos Purvis (Fastly), Jozef Nigut (Disig), Karolina Ruszczynska (Certum), Logan Mabe (Microsoft), Lucy Buecking (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Moritz Schaal (D-Trust), Nate Smith (GoDaddy), Nome Huang (TrustAsia), ONO Fumiaki (SECOM Trust Systems), Polina Glazyrina (Sectigo), Rajeev Mohindra (Microsoft), Rich Smith (DigiCert), Rob White (GoDaddy), Rollin Yu (TrustAsia), Ryan Dickson (Google Chrome), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko ITO (SECOM), Tim Callan (Sectigo), Tobias Josefowitz (Opera), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Zoey Wang (TrustAsia)
