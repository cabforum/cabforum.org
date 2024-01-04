---
aliases:
- /2023-06-22-2023-06-22-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-06-22 00:41:50
tags:
- Forum
title: 2023-06-22 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Attendees:**
Aaron Poulsen – (Amazon), Abhishek Bhat – (eMudhra), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Clint Wilson – (Apple), Corey Rasmussen – (OATI), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Marcelo Silva – (Visa), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Nate Smith – (GoDaddy), Nicol So – (CommScope), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Roman Fischer – (SwissSign), Ryan Dickson – (Google), Scott Rea – (eMudhra), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wendy Brown – (US Federal PKI Management Authority), Yashwanth TM – (eMudhra), Yoshiro Yoneya – (Japan Registry Services).
Dimitris read the **note-well**
**Approval of minutes:**

- May 25th, circulated June 7th: approved

**Updates:**
**Server Cert Working Group Update** – Iñigo Barreira (Sectigo)

- Last meeting was during f2f and the following topics were discussed:

- - Membership applications

- - WebTrust automation

- - Validation Subcommittee will continue discussion on MPDV proposed by Google

- - Subscriber Agreements/Terms of Use

- Ballots in process

- - Weak Keys Guidance – Tom Zermeno (SSL.com) is about to send for a vote

- - OCSP is optional – Still under discussion

**Code Signing Certificate Working Group** – Bruce Morton (Entrust)

- Last meeting was during f2f and the following topics were discussed:

- - Certificate Transparency discussion

- - SCITT presentation

- - Time stamp change and time stamp requirements

- - Will try to remove High Risk changes language – generating keys in hardware will mitigate the issues

- EV – Not much value for EV certificates for Code Signing. Discussed if it should be removed or pieces blended with OV certs.

- - Dimitris asked what happens with individuals who want to request Code Signing Certificates.

- - Bruce responded that Code Signing does not have a specific IV certificate. DV and OV allow individuals. EV does not. We do not have an IV policy, but we do allow certificates to be issued for individuals. We never broke it up into non-EV. As an example, S/MIME BRs have org ID in subject. This has multiple pieces of information within one field rather than multiple fields and includes org ID. This was applied to OV certificates. For an individual, we would need to have separate definitions for individuals and organizations since individuals do not have an org ID.

**S/MIME Working Group** – Stephen Davidson (Digicert)

- Proceeding to create a ballot in the next week or so. Clint suggested that when CA/B Forum has new requirements, the transition arrangements should be stipulated in the requirement. One thing that will be included in ballot is new defined term for extent CA (existing or legacy). Giving another year for those to be rebuilt with fully compliant subordinate CAs. Defines what is ineligible and other items to parameters of practice. Email with Diff of text will be going to S/MIME list. Goal is to get through ballot and IP in advance of effective date so clarifications are fully available from effective date.

**Forum Infrastructure Subcommittee** – Jos Purvis (Fastly)

- Meeting last week. Discussed wiki and other issues related to site. Establishment of new page in wiki – Infrastructure – Current Issues and Projects. The issues section of GitHub was too difficult to track, so this page will be easier for the group to follow.
- Process to be member of Forum and Working Group. It currently gets muddled between requesting to join and when they get membership.
- Attendance tracking improvements. Voting and participation in meetings and ballots that does not require a spreadsheet.
- Adjusting Markdown assembly with tables. Section 7 of BR has large tables.
- Trying to track person who raised the question, plus who is working on it.

**Bylaws changes** – Dimitris Zacharopoulos (HARICA)

- Discussion period for Ballot 18 is under discussion. Ends June 26th. If no questions or comments, voting period will start immediately afterwards.

**Network Security Working Group** – Ben Wilson (Mozilla)

- Ballot change proposed to adopt portions of Cloud Control Matrix language that referred to organizationally managed assets language and how we can adopt those CCM requirements as part of Network Security Requirements. This will include verbatim adoption of CCM language with an additional notes section to include interpretation of phrases and language. We will hopefully eventually get to common terminology to avoid this problem where CCM and NSRs use different terms or definitions.

- Trev (Amazon Trust Services) and Wendy (FPKI) talked with Clint (Apple) about splitting up items from his presentation into 3 separate ballots

- - Section 4 – Vulnerability Detection and Patch Management

- - Introduce Section 5 – Offline or Air Gapped CAs

- - Restructuring of some of the language

**Server Cert Working Group charter update** – Ben Wilson (Mozilla)

- There is focus on the Membership tool and membership tracking to reduce overhead for chairs to track participation criteria.
- Dimitris asked about the timeline for charter updates. Ben said moratorium expires on December 1st and will work towards completing by then.

**Any Other Business** – Dimitris Zacharopoulos (HARICA)

- F2F Minutes

- - There are still missing presentations. Recordings have been sent to minute takers. All etherpad notes have been moved to draft minutes on wiki. He asked presenters to ensure minutes are accurate.

- - Dean asked if the minutes posted include the working group minutes. Working Group minutes are still in etherpad or validation subcommittee. Those are still there and need to be posted separately.

- Future f2f meetings

- - Possible hosting of f2f for Spring 2025. Secom will confirm meeting in Japan. Also received confirmed proposal for Summer 2025 for CPA Canada in Toronto.

Next meeting is July 6, 2023
Meeting Adjourned