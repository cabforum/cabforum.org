---
author: Wayne Thayer
date: 2026-08-13 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-08-13 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting — 2026-09-10 Minutes

## Minutes

### 1. Opening

- Dimitris Zacharopoulos (HARICA) opened the Server Certificate Working Group teleconference of 2026-09-10.
- Dimitris Zacharopoulos (HARICA) confirmed the meeting was being recorded and took roll call from Webex. Dustin Hollenback (Apple) took the minutes.
- The Note Well was read: all participants are reminded that they must comply with the CA/Browser Forum's Bylaws, which include an Antitrust Policy, a Code of Conduct, and an Intellectual Property Rights Agreement. Participants were directed to contact the Forum Chair with any comments or concerns.
- The agenda had been sent the previous day. No changes were proposed.

### 2. Minutes Approval

- No minutes were available to approve. Daryn Wright (Apple) will circulate the minutes of the previous teleconference as soon as he can.

### 3. Membership Applications

- Huawei submitted an application to join the Server Certificate Working Group as a Certificate Consumer.
- Dimitris Zacharopoulos (HARICA) reported that Dean Coclin (DigiCert) had confirmed the authority of the seal attached to the IPR acceptance letter. Dimitris Zacharopoulos (HARICA) stated he had given the remainder of the application only a quick review and had hoped another member of the working group would review it in detail.
- Dimitris Zacharopoulos (HARICA) asked whether there were any objections to approving Huawei as a Certificate Consumer, and initially heard none.
- Tobias Josefowitz (Opera) then asked whether anyone had examined the "provided to the public" element of the membership requirements, noting that some device makers maintain operating systems they do not deploy.
- Dimitris Zacharopoulos (HARICA) shared his screen and read the charter's Certificate Consumer definition, which requires that the applicant "provides software intended to be used by the general public for browsing the web securely."
- Chad Dandar (Cisco) suggested that, to satisfy Tobias Josefowitz's question, the group simply read what the applicant had written in that section of the application.
- Dimitris Zacharopoulos (HARICA) reviewed that section and reported the applicant offers what it calls the Huawei Browser and HarmonyOS, and includes a link to its root certificate program documentation. He noted he had not tested the browser and did not know who could.
- Tobias Josefowitz (Opera) said that satisfied him.
- Ryan Dickson (Google Chrome) asked whether the group should first verify that the Certificate Consumer requirements had been met, saying it felt premature to call for objections before confirming the minimum requirements.
- Tobias Josefowitz (Opera) clarified that he did not necessarily have an objection. His concern was that device makers sometimes maintain operating systems they do not deploy, and he was not certain whether anyone is currently using this one. If people are, he was satisfied on the public requirement.
- Dimitris Zacharopoulos (HARICA) said it would help him, and help the minutes, to record specifically what the working group considers missing so the applicant can supply it.
- Tobias Josefowitz (Opera) proposed asking the applicant in which way it makes the browser available and which user group would be using it.
- Rich Smith (DigiCert) suggested asking how many devices the browser is currently deployed to.
- Tim Callan (Sectigo) observed that the charter language says "intended to be used," which would also cover software in advance of deployment, so the number of current users may not be the relevant test. Tobias Josefowitz (Opera) and Rich Smith (DigiCert) both accepted the point. Rich Smith (DigiCert) added that some form of due diligence was still warranted. Tim Callan (Sectigo) responded that if the language is to remain, the group should find a way to verify it, and that revising the language could be an action item, noting he could see a member working toward a deployment it fully intends to make and seeing no reason to discourage that.
- Wayne Thayer (Fastly) reported that the applicant's message of 2026-08-27 never reached his inbox and that he had therefore not reviewed the application. He suggested that many members were likely in the same position and proposed either asking the applicant questions or taking another two weeks, reviewing it at the face-to-face. Dimitris Zacharopoulos (HARICA) confirmed the application is in the mailing list archive.
- Martijn Katerbarg (Sectigo) noted the application states the browser can be downloaded through the Huawei AppGallery, which appears to be the default application store on Huawei devices, comparable to the Samsung app store on Samsung smartphones.
- Tobias Josefowitz (Opera) performed a web search during the call and reported that the Huawei Browser does appear to be used on Huawei devices, which he considered sufficient to qualify.
- Chris Clements (Google Chrome) stated that the group does not appear to have a clear standard operating procedure for a new Certificate Consumer. He proposed that the working group offer guidance and assign somebody, or some people, responsibility for verifying the seven charter criteria and presenting that to the group before calling for objections. Dimitris Zacharopoulos (HARICA) agreed to address this at the next meeting.
- Recorded in the meeting chat, Ryan Dickson (Google Chrome) wrote: "To be clear, my concern was less about this specific request and moreso related to the procedural due diligence that takes place between receiving one of these applications and collecting community objections. Like others said, it would be helpful that if before we ask for objections, someone has reviewed the applicant against the charter criteria and presented that to the group for review before we ask for objections."
- Aaron Gable (ISRG) gave a detailed assessment. He noted that Huawei is a major smartphone and operating system vendor and that its browser and TLS validation work, adding that he saw no meaningful quality difference between the Huawei operating system and browser and those of other major Android-based smartphone vendors. He considered criteria one through five clearly met: the applicant provides a software product for browsing the web, provides regular updates, provides documentation requiring certificate issuers to comply with the Baseline Requirements, validates chains of trust, and publishes documentation of the Certification Authorities in its trust store. He identified concerns with criteria six and seven. On criterion six, the applicant's root program requirements direct issuers to submit an application to an email address but give no indication of what the application is or where to obtain a form. On criterion seven, the requirements direct issuers to report misissuance immediately but provide no contact address or method. He also noted that ISRG's Root CA Certificates are included in the Huawei trust store without any communication to ISRG about when or why, and that ISRG has never disclosed an incident directly to Huawei.
- **Outcome:** the application was not approved. The working group will seek clarification from the applicant on criteria six and seven, a member will verify that the browser functions, and the application will be discussed at the face-to-face meeting.

### 4. Face-to-Face 68 Agenda

- Ryan Dickson (Google Chrome) had circulated a list of four proposed topics: (1) Section 7 cleanup and modernizing certificate profile expectations, including revisiting the legacy framing around technically constrained Subordinate CAs; (2) profile-specific linting expectations, moving beyond generic Baseline Requirements minimums toward validating against a CA Owner's explicitly stated commitments and profiles; (3) aligning the Baseline Requirements with dedicated hierarchy expectations, defining TLS-specific Subordinate CA profiles and a future timeline requiring certificates chaining to them to lead to Root CA Certificates serving TLS use cases exclusively; and (4) domain transparency and issuance information, revisiting the SC-093 discussion of domain control validation methods in certificates.
- Dimitris Zacharopoulos (HARICA) had separately proposed a topic on CP versus CPS versus CP/CPS and on expectations for RFC 2119 language.
- Dimitris Zacharopoulos (HARICA) said he will open the working group session at the face-to-face with a summary of activity since the previous face-to-face, covering the changes and the pull requests released since.
- Ben Wilson (Mozilla) is working on the revocation circumstances topic and has started preparing a small task force for that area.
- Topic 1, Section 7 cleanup and modernizing certificate profile expectations, was added to the agenda, the group having previously been in favor.
- Aaron Gable (ISRG) stated he was most interested in topic 1 and second most interested in topic 3, which aligns with his SC-103 ballot. He considered topics 2, 3, and 4 low priority and did not want to displace other business by including them.
- Ryan Dickson (Google Chrome) considered topic 4 premature and said it should not be discussed. He reported he has started slides and a GitHub pull request covering topics 1, 2, and 3, which he considers interrelated because they all touch Section 7. He described four or five concrete proposed changes: consolidating the current tabular inheritance, where reading one certificate profile requires consulting roughly ten tables, into a single table per profile carrying all fields and extensions with no cross-references unless absolutely necessary, which he described as preventing the wild goose chase implementers face today; identifying profiles that could be removed or sunset, making no commentary on timing; and establishing a clear expectation that Certification Authorities define in their policies exactly what they do, which creates a path to CA-specific linting and should dramatically reduce the likelihood of mass misissuance events.
- Dimitris Zacharopoulos (HARICA) suggested discussing the topics in the sequence 1, then 3, then 2, so that linting expectations come after the hierarchies and content expectations are settled. Ryan Dickson (Google Chrome) said the group could take them in any order but asked that they be considered collectively, since each influences the others, and that it would be useful to state what the finished product is hoped to look like even if that is years away.
- Dimitris Zacharopoulos (HARICA) proposed inviting two external parties who have worked on machine-readable profile formats and linting to participate in that portion of the meeting as interested parties. Ryan Dickson (Google Chrome) asked first whether existing working group members had already thought about or implemented such solutions and would share their experience as both an issuer and an implementer.
- Dimitris Zacharopoulos (HARICA) said HARICA is designing such a solution as part of an action plan for a recent incident but has nothing concrete to present or discuss beyond design issues.
- Aaron Gable (ISRG) said ISRG has spent time on this, and that one of its recent incident reports involved writing custom linters to enforce each of its CP/CPS profiles. He was reticent to commit to presenting because the Server Certificate Working Group session at the face-to-face is at 04:30 his local time and he did not know how much of it he would attend.
- Rich Smith (DigiCert) said he is working on something in the same subject area but could not guarantee it would be ready to demonstrate at the face-to-face. Dimitris Zacharopoulos (HARICA) asked him to send a message if it is, so that time could be allocated for a presentation.
- Dimitris Zacharopoulos (HARICA) will update the wiki to reflect the decisions taken, and asked that any further proposed topics be sent to the list or to him directly. He noted the topics already agreed will cover the working group's two-hour allocation at the face-to-face.

### 5. Ballot Status

**In Discussion Period:**

- SC-103: Require EKUs for Cross-Certified Subordinate CAs. Aaron Gable (ISRG) reported no progress, attributing the delay entirely to his own schedule rather than to any blocker.

**In Voting Period:** None.

**Under IPR Review:**

- SC-104: Set presence of AIA extension to SHOULD for Subscriber Certificates. Moved to the IPR review period.
- SC-100: DNSSEC Clarification and Consolidation. IPR review cleared. Dimitris Zacharopoulos (HARICA) published Baseline Requirements version 2.3.0 on 2026-09-07.

**Draft / Under Consideration:**

- Improve Certificate Problem Reports and Clarify the Meaning of Revocation. Martijn Katerbarg (Sectigo) reported that discussions were essentially settled until two or three further comments arrived. Those need addressing, after which the ballot will move to the discussion phase. The open comments are minor language clarifications.
- SC-106: Allow ML-DSA. Michael Slaughter (Amazon Trust Services), who is proposing the ballot, reported no updates this week.
- SC-105: Remove High Risk language from the TLS BR and EV Guidelines. Stephen Davidson (DigiCert) reported no developments. The next step is to move to ballot for a formal discussion period. Draft language is linked in the pull request for review and comment on GitHub.
- SC-1XX: EV Guidelines Cleanup and BR Sync. Rich Smith (DigiCert) reported that the EV Guidelines have become substantially out of date and out of sync with the Baseline Requirements, producing conflicting requirements and confusion. He considered two approaches: multiple ballots addressing separate sets of issues, or a single omnibus ballot. He rejected the multiple-ballot approach because it would leave the documents in a more confused state than at present for up to eight months while the ballots worked through voting and IPR. He has drafted an omnibus ballot, posted it as a pull request, and sent it to the Server Certificate Working Group list last week. A decision he made in drafting is that the Baseline Requirements should carry all profile information, so he moved all of EV Guidelines Section 7 into the Baseline Requirements, and believes he has addressed the concerns raised on that point the previous week. Roman Fischer (SwissSign) had commented on the pull request. Dimitris Zacharopoulos (HARICA) had begun reviewing it but was interrupted by other priorities, and noted it is a large ballot with a substantial amount of material moving between documents. Rich Smith (DigiCert) asked that members review it and provide feedback.

### 6. Any Other Business

None.

### 7. Next Call & Handover

- The last scheduled teleconference is 2026-10-08. The next meeting will be the face-to-face in Vienna.
- Dimitris Zacharopoulos (HARICA) adjourned the Server Certificate Working Group and handed the meeting over to Tim Callan (Sectigo) for the plenary.

**Attendees:** Aaron Gable (ISRG), Adriano Santoni (Actalis), Alvin Wang (SHECA), Antti Backman (Telia Company), Arman Asemani (Apple), Arnold Essing (Telekom Security), Atsushi INABA (GlobalSign), Ben Wilson (Mozilla), Chad Dandar (Cisco), Chris Clements (Google Chrome), Corey Rasmussen (OATI), David Kluge (Google Trust Services), Dimitris Zacharopoulos (HARICA), Eric Kramer (Sectigo), Fabien Hochstrasser (Google Trust Services), Inigo Barreira (Sectigo), Jaime Hablutzel (WISeKey), Jeff Ward (Aprio), Jos Purvis (Fastly), Jozef Nigut (Disig), Karolina Ruszczynska (Certum), Logan Mabe (Microsoft), Lucy Buecking (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Moritz Schaal (D-Trust), Nate Smith (GoDaddy), Nome Huang (TrustAsia), ONO Fumiaki (SECOM Trust Systems), Polina Glazyrina (Sectigo), Rajeev Mohindra (Microsoft), Rich Smith (DigiCert), Rob White (GoDaddy), Rollin Yu (TrustAsia), Ryan Dickson (Google Chrome), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko ITO (SECOM), Tim Callan (Sectigo), Tobias Josefowitz (Opera), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Zoey Wang (TrustAsia)


