---
aliases:
- /2023-02-16-2023-02-16-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-02-16 14:14:23
tags:
- Forum
title: 2023-02-16 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Meeting of the CA/Browser Forum**

**February 16, 2023**

**Attendees:** Aaron Gable – (Let’s Encrypt), Aaron Poulsen – (Amazon), Adrian Mueller – (SwissSign), Andrea Holland – (SecureTrust), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Chris Kemmerer – (SSL.com), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Daryn Wright – (GoDaddy), David Kluge – (Google), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (SecureTrust), Joanna Fox – (TrustCor Systems), Johnny Reading – (GoDaddy), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Kiran Tummala – (Microsoft), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (SecureTrust), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Roman Fischer – (SwissSign), Ryan Dickson – (Google), Stephen Davidson – (DigiCert), Steve Topletz – (Cisco Systems), Thomas Zermeno – (SSL.com), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Vijayakumar (Vijay) Manjunatha – (eMudhra), Wayne Thayer – (Fastly), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services)

**Next Minute Taker:** Chris Kemmerer after the face-to-face meeting.

**Antitrust Statement:** Dimitris Zacharopoulos reminded all participants that they must comply with the CA/Browser Forum anti-trust policy, code of conduct, and intellectual property rights agreement. Please contact the chair with any comments or concerns about these policies.

**Review of Agenda:** There were no changes.

**Approval of Minutes:** Approved from the last call on February 2, 2023.

**Forum Infrastructure Subcommittee update:** Jos stated the subcommittee had a good meeting this past week. They discussed the wiki updates, which are now on hold until after the face-to-face meeting, which gives them a chance to finish fine tuning. They are trying to consolidate the number of EC2 instances they are running, resulting in fewer things to manage. They are creating a separate webpage for face-to-face minutes because those seem to be something that many people like to refer to specifically. Ben will be working on that and is looking at changing the titles for face-to-face meeting minutes so that they are consistent and easier to find. No major GitHub updates to report and the recent vulnerability did not affect any of the hosts currently running. They do not intend to have a separate infrastructure meeting at the face-to-face meeting in Ottawa, although they will be providing an update to the plenary meeting.

**Code Signing Certificate Working Group update:** Bruce stated they had the bi-weekly meeting and discussed the three ballots they are working on. They are going to update the whole revocation area to make it more in line with the SSL and S/MIME baseline requirements. They are working on the signing service and refocusing the signing service to be less on signing and more on key protection. They are discussing changing the name from “signing service” to something else. They discussed content for the face-to-face meeting.

**S/MIME Certificate Working Group update:** Stephen stated the group has been consumed with reaching a point of clarity on the language in section 1.3.2.1, which describes what an enterprise RA can do. They are considering the possibilities of CAA for S/MIME with a goal of introducing this in 2024 to allow CAs to target a September effective date. The WebTrust criteria exists in draft and should be published in March (these are available now upon request). The ETSI equivalent is in progress with the goal of an early May release. This would provide both the WebTrust and ETSI audit ability to be ready for the September effective date.

Dimitris asked if additional time at the face-to-face is needed. Stephen will go back and take a look but basically there have been some attempts to relitigate discussions that were litigated at length a year ago. The group has a version 1.0 and that is what they have validated successfully. If people wish to introduce a ballot to change that, that’s a different thing. At this time he is trying to maintain the discussion on clarifying what was agreed and what the document attempts to say, which he wants to maintain separate from people who may want to change the intent. This can be put on the agenda but it is one of several items for the agenda.

**NetSec Working Group update:** Clint stated they met on Tuesday and had a focused discussion on aligning further desired outcomes of the NetSec requirements, which intended to be conveyed within the document itself at some point. They will be presenting and sharing where they are at the face-to-face meeting.

**Bylaws changes:** Dimitris met with Tim two weeks ago and covered the topics in the Google doc. They isolated priority items and plan to create a separate branch on GitHub and start working on some language.

**F2F 58 agenda:** Dimitris added a slot to go over the lessons learned from ballot 60. He created a slot for the definitions and glossary working group. Clint confirmed the slot was appropriate and can be used. Dimitris did not receive any comments or changes on the draft agenda for the face-to-face and assumes the agenda is ready. Bruce asked if more time could be added for the CS BRs. Dimitris suggested doing fine tuning the following week and then approving the agenda the Monday before the face-to-face meeting.

**Definitions and Glossary WG:** Clint sent a message last night to the management list introducing the topic and sharing the draft charter. The draft charter is very focused on delivering a document that encapsulates the terms we use throughout the forum and their definitions. The charter is focused on this single deliverable. He does not expect it to be needed by each working group and some groups may want to alter the definitions themselves, but the charter allows for flexibility to be incorporated or not by each working group. He appreciates thoughts and feedback on the draft.

Clint used the template for a working group charter that is in the bylaws forum working group documents. He noticed several items that could be improved in the template. Wherever we land on this draft charter we may want to update the template. Tim stated the improvement to the templates is on the bylaws cleanup.

Dimitris asked how the new working group would deal with definitions that include some requirements (normative requirements). Clint said part of the charter is to explicitly state that this working group cannot set normative requirements. He will set the charter up in a GitHub repo. Tim hopes we follow the interpretation that if there are requirements or requirements like language in a definition that it is okay for the working group to move that requirement out of the definition and into a more appropriate location as long as they don’t change the requirement.

**Any other business:** None

**Next Meeting:** March 16, 2023

Meeting adjourned.