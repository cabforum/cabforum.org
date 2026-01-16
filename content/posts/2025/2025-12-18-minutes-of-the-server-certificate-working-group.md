---
author: Wayne Thayer
date: 2025-12-18 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-12-18 Minutes of the Server Certificate Working Group
type: post
---


**Minutes:**

1.  **Opening:**

    *   Dimitris Zacharopoulos (HARICA) welcomed attendees and waited for more participants to join.

    *   Roll call was taken from Webex. Dustin Hollenback (Apple) was confirmed as the minute taker.

    *   Dimitris Zacharopoulos (HARICA) confirmed the meeting was being recorded and the Notewell was read.

    *   Dimitris Zacharopoulos (HARICA) noted the agenda was short and asked for any additions or changes. None were proposed.

2.  **Minutes Approval:**

    *   Minutes from the previous teleconference (2025-12-04) had not been distributed. Dimitris Zacharopoulos (HARICA) will send a reminder to Eva to complete them for the next meeting.

3.  **Membership Applications:**

    *   Microsec submitted a new membership application for the Server Certificate Working Group.

    *   Dustin Hollenback (Apple) confirmed Microsec is trusted by Apple.

    *   Dimitris Zacharopoulos (HARICA) also confirmed Microsec is trusted, based on information in CCADB.

    *   Dimitris Zacharopoulos (HARICA) asked if there were any objections to approving Microsec as a probational member for the Server Certificate Working Group, as per the charter. No objections were raised.

    *   Microsec was approved, and announcements will be sent.

4.  **Ballot Status:**

    *   **In Discussion Period:**

        *   **SC-094: DNSSEC exception for email DCV methods (Dimitris).** Dimitris Zacharopoulos (HARICA) addressed some concerns raised on the mailing list regarding inconsistencies in the text. He stated that if no further concerns are raised after the call, he will submit version 2 of the ballot and start the discussion.

        *   **SC-095: Clean-up 2025:.** Kateryna Aleksieieva (Certum by Asseco) reported she started the discussion on Monday and had not received feedback. Chris Clements (Chrome) asked for additional time to review, explaining that there is a significant amount of changes made and have not yet completed reviewing the pull request. Trevoli Ponds-White (Amazon Trust Services) suggested not ending the discussion sooner than 2026-01-05 or the Monday after, and not starting the voting period until 2026-01-08. Scott Rea (eMudhra) and Dimitris Zacharopoulos (HARICA) agreed. Kateryna Aleksieieva (Certum by Asseco) confirmed she would postpone the voting period until January. Kateryna Aleksieieva (Certum by Asseco) also mentioned that Karolina did most of the work on the ballot and is interested in similar cleanup work for code signing.

        *   **SC-096: Carve-out for DNSSEC verification logging requirements.** Martijn Katerbarg (Sectigo) explained this is a one-line addition to carve out the logging of responses, which does not cause massive additional logging. The discussion period will not end before 2026-01-07. Martijn Katerbarg (Sectigo) stated he would start the voting period in the first week of 2026 if there are no further comments.

    *   **In Voting Period:** None.

    *   **Under IPR Review:**

        *   **SC-090: Gradually sunset all remaining email-based, phone-based, and 'crossover' validation methods from Sections 3.2.2.4 and 3.2.2.5.** The IPR review ends on 2025-12-20 at 16:00:00 UTC. Dimitris Zacharopoulos (HARICA) mentioned that he released new IPR versions (v2.2.0 and v2.2.1) during the week, based on SC-086 and SC-091, respectively. He attempted to combine them but encountered difficulties with GitHub.

    *   **Draft / Under Consideration:**

        *   **SC-087:** Registration Number Improvement for EV Certificates.

        *   **SC-0XX:** Cleanup for ADN CNAME use (PR 619 from Rich Smith (DigiCert) and PR 627 from Jacob).

        *   **SC-0XX:** Improve Certificate Problem Reports and Clarify the Meaning of Revocation.

        *   **SC-0XX:** Validation method in TLS Certificates.

        *   **SC-0XX:** Update Revocation timeline for errors affecting CP/CPS deviations but in accordance with the BRs.

    *   **Pull Request 635:**

        *   Chris Clements (Chrome) mentioned that Pull Request 635 aims to sunset all remaining uses of SHA-1. He noted they were still looking for one more endorser. Dimitris Zacharopoulos (HARICA) offered to endorse it.

5.  **Any Other Business:**

    *   The working group agreed to cancel the 2026-01-01 teleconference.

6.  **Next Call & Handover:**

    *   The next call is scheduled for 2026-01-15.

    *   Dimitris Zacharopoulos (HARICA) wished everyone happy holidays and a happy new year, then handed the meeting over to Dean Coclin (DigiCert).

7.  **Adjourn**

    **Attendees**

*   Aaron Gable (ISRG)

*   Aaron Poulsen (Amazon Trust Services)

*   Adam Jones (Microsoft)

*   Adriano Santoni (Actalis)

*   Alvin Wang (SHECA)

*   Antti Backman (Telia Company)

*   Arman Asemani (Apple)

*   Atsushi INABA (GlobalSign)

*   Ben Wilson (Mozilla)

*   Brianca Martin (Amazon)

*   Brittany Randall (GoDaddy)

*   Chris Clements (Chrome)

*   Dean Coclin (DigiCert)

*   Dimitris Zacharopoulos (HARICA)

*   Dustin Hollenback (Apple)

*   Greg Tomko (GlobalSign)

*   Inigo Barreira (Sectigo)

*   Jaime Hablutzel (WISeKey)

*   Jun Okura (Cybertrust)

*   Kate Xu (TrustAsia)

*   Kateryna Aleksieieva (Certum by Asseco)

*   Luis Cervantes (SSL.com)

*   Mahua Chaudhuri (Microsoft)

*   Marco Schambach (IdenTrust)

*   Martijn Katerbarg (Sectigo)

*   Michelle Coon (OATI)

*   Mrugesh Chandarana (IdenTrust)

*   Nargis Mannan (Viking Cloud)

*   Nate Smith (GoDaddy)

*   Nome Huang (TrustAsia)

*   ONO Fumiaki (SECOM Trust Systems)

*   Paul van Brouwershaven (Digitorus)

*   Peter Miskovic (Disig)

*   Rich Smith (DigiCert)

*   Scott Rea (eMudhra)

*   Sean Huang (TWCA)

*   Steven Deitte (GoDaddy)

*   Sven Rajala (Keyfactor)

*   Tadahiko ITO (SECOM)

*   Tathan Thacker (IdenTrust)

*   Tim Callan (Sectigo)

*   Tobias Josefowitz (Opera)

*   Thomas Zermeno (SSL.com)

*   Trevoli Ponds-White (Amazon Trust Services)

*   Wayne Thayer (Fastly)

*   Wendy Brown (FPKIMA)