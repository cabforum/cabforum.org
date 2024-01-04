---
aliases:
- /2023-01-05-2023-01-05-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-01-05 17:17:03
tags:
- Forum
title: 2023-01-05 Minutes of the CA/Browser Forum Teleconference
type: post
---

Minutes prepared by Andrea Holland (VikingCloud).

**Forum Meeting: January 5, 2023**

**Attendance (in alphabetical order):**

Aaron Gable (ISRG), Aaron Poulsen (Amazon Trust Services), Adam Jones (Microsoft), Andrea Holland (VikingCloud), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Clements (Google Chrome), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (GoDaddy), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Microsoft), Ellie (TrustAsia), Enrico Entschew (D-TRUST), Eva Van Steenberge (GlobalSign), Fumi Yoneda (JPRS), Hazhar Ismail (MSC Trustgate), Inigo Barreira (Sectigo), Jamie Mackey (FPKI), Janet Hines (VikingCloud), Joanna Fox (TrustCor), Jos Purvis (Fastly), Karina Sirota Goodley (Microsoft), Kiran Tummala (Microsoft), Lynn Jeun (Visa), Mads Henriksveen (Buypass), Marcelo Silva (Visa), Marco Schambach (IdenTrust), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Peter Miskovic (Disig), Rich Smith (DigiCert), Rollin Yu (Trust Asia), Sissel Hoel (Buypass), Stephen Davidson (DigiCert), Steve Topletz (Cisco), Tadahiko Ito (SECOM), Tim Hollebeek (DigCert), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon Trust Services), Wayne Thayer (Fastkt), Wendy Brown (FPKI), Yoshiro Yoneya (JPRS)

**Minutes**

1. **Roll called**
1. **Antitrust statement read**
1. **Reviewed Agenda**
1. **Approval of minutes**: December 29th meeting minutes approved
1. **Forum Infrastructure Subcommittee** – Jos P.

- Did not meet last week, no significant updates
- Working on migration to new wiki which involves archiving the existing wiki and pulling items from there into the new wiki
- Will be posting details and invitations to the management list

6. **Code Signing Certificate Working Group** – Dean C. and Bruce M.

- Did not meet last week, no significant updates
- Continuing to work on ballot for cert revocation due to malware, signing service requirements and removing TLS BR references from CS BRs

7. **S/MIME Certificate Working Group** – Dean C., Corey B., Inigo B., Dimitris Z.

- IPR period finished for the new BRs
- Discussion on auditors developing audit criteria for the new requirements. WebTrust is aware and will do further discussions during their Toronto meeting
- CAA discussion in IETF’s LAMPs WG, general support for adopting draft proposal for CAA for SMIME
- Stephen also had some ERATA for future updates, he is generating GitHub issues for these minor issues

8. **NetSec Working Group** – Clint W.

- Did not meet last week
- Continued discussion around the separation of concepts of offline vs air gapped vs unpowered HSMs and key materials to make sure the BRs clearly address the differences
- Organization of NSRs to provide better introduction of NSRs without changing the goals but language to describe the intent of the various sections and components
- Trev P.: Issues with the meeting it looked to be cancelled
- Clint W.: Wiki has latest calendar invite for the meeting
- Dimitris Z.: Same issue with forum calendar invite. An alias was created, so that whenever there is a change in chair positions only the password needs to be reset. This allows for management of the invitations without needing to create a new series of meetings. This would be a good idea for other meetings as well. But for WebEx best way to cancel the meetings is through the UI so all registrants get the notice.
- GitHub Approvals
- Dimitris Z.: Each WG has its own repository with review and approval from Chair and Vice Chair
- Jos P.: A Code owner’s file exists in each of the repositories for each of the working groups. To publish anything to the main branch of that repository (to formally update the BRs) requires two people to approve and one must be on the code owners list. So if someone wants to make a change, they go through the balloting process and then the chair approves the update and it requires another person for approval for sanity purposes to add to the main branch. At the moment only the Chair and Vice Chair can approve, so if either of them is out (especially for a long period) then we cannot get approval. If for instance, the Chair does the pull request, then the Chair cannot approve those changes and there is only one person, the Vice Chair, able to approve. There is no guidance or formal policy in this instance.
- Dimitris Z.: That is the only corner case. If someone else (not the Chair or Vice Chair) does the pull request, then there are two people available to approve.
- Jos P.: Yes, that could be one workaround making sure neither the Chair or Vice Chair does the pull request. Another idea is to leave the previous Chair and Vice Chair in the approvers group for use only in the corner case.
- Dimitris Z.: The bylaws are clear on who does the change and it’s either the chair or the vice chair. So, if we want to consider the GitHub repository as a normative, um, for the documents, I think we need to find a work around that. Absolutely requires one of the Chair or Vice Chair to perform an action there.
- Aaron G.: The difference is between who can approve and who can merge. A larger group of people could perform the code review effectively, but only the Chair or Vice Chair is allowed to click the merge button. We limit it to only the Chair or Vice Chair can merge to the repository, so we remain within the bylaws.
- Tim H.: I agree with that. I think we’re fine with the bylaws as long as the Chair/Vice Chair is the one actively making the change they can ask whoever they want for review. The bylaws don’t say anything about who needs to review the change. I don’t like the idea of giving any weight to previous chairs as we have moved on from previous chairs.
- Dimitris Z.: Aaron’s proposal great. Any comments on that?
- Jos P.: That would be fine. Anybody can do any of the work and it’ll be a four eye’s approval process but only the Chair/Vice Chair can actually merge the code.
- Dimitris Z.: Aaron can work with Jos to make the changes.

9. **Any Other**

- Dean C.: F2F has guest speaker lined up to discuss BGP hijacking and requested to have an additional person join with knowledge on the subject. They will be sharing the same timeslot.
- Dimitris Z.: No objections.
- Dimitris Z.: Other F2F
- June 6-8 in Redmond, WA hosted by Microsoft
- Sept/Oct in Portsmouth, NH hosted by GlobalSign

10. **Next Meeting**: Jan 19th with Ben Wilson for minutes
01. **Adjourned**