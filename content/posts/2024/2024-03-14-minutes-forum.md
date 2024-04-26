---
aliases:
- /2024/03/14/2024-03-14-minutes-forum/
author: Wayne Thayer (Fastly)
date: 2024-03-14 00:00:00
tags:
- Forum
- Minutes
title: 2024-03-14 Minutes of the CA/Browser Forum Teleconference
type: post
---

# CA/Browser Forum Teleconference

## March 14, 2024

**Attendees:** Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adrian Mueller - (SwissSign), Antti Backman - (Telia Company), Brianca Martin - (Amazon), Bruce Morton - (Entrust), Chris Clements - (Google), Clint Wilson - (Apple), Corey Rasmussen - (OATI), David Kluge - (Google), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Dong Wha Shin - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Fumi Yoneda - (Japan Registry Services), Gregory Tomko - (GlobalSign), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Johnny Reading - (GoDaddy), Jos Purvis - (Fastly), Jozef Nigut - (Disig), Karina Sirota - (Microsoft), Mads Henriksveen - (Buypass AS), Marcelo Silva - (Visa), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Nargis Mannan - (VikingCloud), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Rebecca Kelley - (Apple), Rich Kapushinski - (CommScope), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Sandy Balzer - (SwissSign), Stephen Davidson - (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yoshihiko Matsuo - (Japan Registry Services).

**1.  Roll Call**

Dimitris Zacharopoulos read the roll.

**2. Read Note-well**

Dimitris determined that it was not necessary to repeat the note-well statement.

**3. Review Agenda**

No updates were suggested

**4. Approval of Minutes from Last Teleconference**

There were no minutes to approve

**5. Server Certificate Working Group Update**

Dimitris asked if we need this agenda item given that the SCWG call just happened? Inigo Barreira said that we can cover the Validation subcommittee.

Wayne Thayer said that the following topics were discussed at last week’s Validation Subcommittee meeting:

* Chris Clements said that he will soon begin discussion on the MPIC ballot. He expects there to be an extended period of discussion. Meanwhile, comments on the PR are encouraged
* It was noted that Michael Slaughter continues work on a ballot to modify 3.2.2.4.7 to allow CNAME delegation to the CA
* Corey Bonnell presented a slide deck titled Identifying Delegated Third Parties in the context of domain validation. The presentation ended with a proposed process for clarifying the BRs that the subcommittee agreed to follow in upcoming meetings after prioritizing domain validation methods to evaluate.
* Wayne described the proposal to add a new validation method supporting the proposed ACME dns-account-01 challenge defined in draft-ietf-acme-scoped-dns-challenges-00. Next step is to evaluate the stability of the draft based on feedback received at the upcoming IETF meeting.

Dimitris asked if the draft RFC is stable? Wayne said that it is roughly the 3rd version but it has significant changed to align with similar work happening in another IETF working group.

**6. Code Signing Working Group Update**

Bruce Morton said that the WG didn’t meet last week. At the F2F, we discussed certificate transparency for code signing. reducing validity period to 15 months from 39, a ballot to import EV requirements into the CSBRs, and time stamping requirements. Dimitris said that Microsoft also announced a policy change at the F2F and they are still trying to determine what it means to the CSBRs. Bruce said that it appears that the plan is to eliminate EV code signing, but we’re also working on simplifying EV, so the goal is not clear.

**7. S/MIME Working Group Update**

Steven Davidson said that a corrections & clarifications ballot will go to a vote soon, based on learnings from the first round of audits. Next up is potential deprecation of legacy profiles. This requires developing a better understanding of blockers to implementation of the stricter profiles.

**8. Forum Infrastructure Subcommittee Update**

Jos Purvis said that we reviewed the new GitHub project that will be used for issues and a place to ask questions. Reviewed email infrastructure and are working on mailman upgrades. Martijn also volunteered to look at Google Groups as another option. Martijn is also working on a feature to automatically send out meeting minutes.

Trevoli Ponds-White said that Google Groups is a good idea. Do we need to discuss it? Jos said yes, if it proves to be viable.

**9. NetSec Working Group Update**

David Kluge said that they discussed the section 4 ballot concerning vulnerability management. Want to make the requirements more comprehensive, requiring a vulnerability management program, to require remediation plans to address all vulnerabilities with SLOs, and to let CAs create an inventory of in-scope systems.

**10. IPR Update Subcommittee**

Dimitris said that we are considering creating a subcommittee to address IPR issues. Apple and Mozilla are interested. We should draft a charter so that we have timelines and goals defined.

**11. Minutes for F2F 61 (New Delhi)**

Dimitris said that he pulled in the information from Etherpad to the wiki and he uploaded the presentations to the website. Please review and edit the minutes on the wiki so that they can be published soon. Everyone is encouraged to propose changes. The plan is to approve them at the next meeting.

**12. Any Other Business**

Dimitris said that we have discussed releasing meeting recordings to members with specific expectations. There have been concerns about downloading recordings. We’ve enabled an option in Webex to disable downloading of recordings. Are there any concerns? Dean Coclin asked why we’re sending out recordings? Dimitris said that the purpose is to allow members who were not able to attend meetings to listen to the discussion afterwards. Paul said that we have members across the globe and we want to be more inclusive. Dean asked and Dimitris clarified that this includes meetings and teleconferences. Recordings will be deleted after 90 days, or after minutes are approved. Dimitris asked if there are objections and none were raised.

Please register for the Bergamo meeting.

Amazon has confirmed meeting dates of 1-3 Oct in downtown Seattle.

Next call: 28-March 2024

Meeting adjourned