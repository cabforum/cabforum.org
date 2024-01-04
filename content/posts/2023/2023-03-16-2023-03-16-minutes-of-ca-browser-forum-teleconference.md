---
aliases:
- /2023-03-16-2023-03-16-minutes-of-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-03-16 16:11:41
tags:
- Forum
title: 2023-03-16 Minutes of CA/Browser Forum Teleconference
type: post
---

**Final Minutes of Teleconference March 16, 2023**

Prepared by Tom Zermeno (SSL.com).

**Attendees**: Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Chris Kemmerer – (SSL.com), Christophe Bonjean – (GlobalSign), Clint Wilson – (Apple), Corey Rasmussen – (OATI), David Kluge – (Google), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Kiran Tummala – (Microsoft), Mads Henriksveen – (Buypass AS), Marcelo Silva – (Visa), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Peter Miskovic – (Disig), Rollin Yu – (TrustAsia Technologies, Inc.), Ryan Dickson – (Google), Sissel Hoel – (Buypass AS), Steven Deitte – (GoDaddy), Steve Topletz – (Cisco Systems), Tadahiko Ito – (SECOM Trust Systems), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Vijayakumar (Vijay) Manjunatha – (eMudhra), Wayne Thayer – (Fastly).

**Roll Call**: Dimitris Zacharopoulos read the attendance.

**Antitrust Statement**: Dimitris reminded everyone that they must comply with the CA/B Forum Antitrust Policy, Code of Conduct and Intellectual Property Rights Agreement, which can be found in the Bylaws.

**Review Agenda**: The Agenda was approved with no changes.

1. Begin Recording – Roll Call
1. Read Antitrust Statement
1. Review Agenda
1. Status of F2F minutes
1. Server Certificate Working Group update
1. Code Signing Certificate Working Group update
1. S/MIME Certificate Working Group update
1. Forum Infrastructure Subcommittee update
1. NetSec Working Group update
1. Bylaws changes
1. Any Other Business
1. Next call: 30 March 2023
1. Adjourn

**Status of F2F minutes**: The next topic was the F2F meeting minutes. Minutes were pending for the Google Root Program update, CCADB update and the Definitions and Glossary working Group. Trevoli is working on the Google minutes, Daryn Wright (GoDaddy) has been assigned the other minutes, but he was not in attendance at the meeting; Dimitris will contact him directly and ask for updates. Also, waiting on presentations from Clint and Karina. Approximately 90% of the minutes have been updated. No other updates to the F2F minutes.

**Server Certificate Working Group update**: Inigo joined late, but was able to provide the update: The SCWG met at the F2F and the Validation Subcommittee met on 3/9/23. At the F2F Google presented speaker from Princeton University who discussed multi perspective domain validation. This is a topic that Inigo would like explored and discussed further. There was also discussion about different certification flows, specifically the “Traditional Hosting Provider” flow.

Dimitris handled the minutes for that call, which were about 90% complete at the time of the 3/16 call. It is very interesting and important discussion about the subscriber agreement, acceptance of the agreement, legal issues, and the enforceability of the click-through agreement. Other groups might want to consider the concerns mentioned in the discussion and the current language in the BRs. Dimitris pledged to submit the minutes later that day.

Inigo went on to list some topics of the next Server Cert Working Group meeting, later that day: Issues with GitHub and “what to do with the EV Guidelines”.

Tim Hollebeek clarified that the SCWG meeting takes place at the end of the CA/B Forum meeting, in the same teleconference, but it is not reflected in the calendar. Dimitris asked if the Outlook entry for the Forum-level meeting should be extended to reflect the full duration of the combined meetings, or if a new entry should be generated specifically for the SCWG meeting. Dimitris and Inigo will discuss the update off-line.

**Code Signing Working Group Update**: Bruce provided the update to the meeting held the previous week. No significant progress was made on ballots, but they did discuss many of the same topics from the F2F meeting. It was a good refresher on the topics that helped to guide the pathway forward. The group had no questions for Bruce.

**S/MIME Certificate working group**: Steven was not in attendance, so Martijn presented the update. The call took place on 3/15 with discussions on the ETSI requirements (thanks to Dimitris), the use of pseudonyms in the CN for legacy profiles, a discrepancy in the BRs which may be fixed by a random ballot, which, if adopted, would include EdDSA key usage table and the clarification on the enterprise for RA text.  No other questions/discussions from the Forum.

**Forum Infrastructure Subcommittee**: Jos reported on the solid meeting held the previous week. They discussed adjusting the date for the Wiki changeover, which was delayed to accommodate the F2F. The changeover will take place on Monday, March 20. The original wiki will be placed on “read-only” and the content moved over to the new server. Members will receive a message that their account is able to access the new wiki. Jos went on to advise anyone submitting notes for the F2F to hold off on submitting them to the Wiki until the new server is active. There was also discussion at the last full CA/B Forum meeting about the problem with approvals of mergers in GitHub. Currently, the chair does most of the implementation work, but then cannot approve the change, since the change must be approved by someone else. The proposed solution is that anyone who is authorized may create a branch, pull content, etc., but only the chair can push the merge button to merge the content. This way the other members can do the “heavy lifting” and the chair can focus on publishing the document.

Dimitris asked about the situation where a chair wanted to write a ballot. Would someone else be needed to do an approval? Jos answered that the chair would develop a branch, develop a pull request, and once the ballot was passed, the chair would do the work (or someone else could do it) of taking the branch and re-basing it on the main, but it would still be the responsibility of the chair to push the button. Andrea Holland clarified that the Chair or the Vice Chair would push the button. Martijn asked if that was the setup, currently; Jos explained that a summary of the configuration changes that need to be made exists and the change can be made within GitHub at any time. Dimitris gave the go-ahead to move forward with this change.

Finally, there as a discussion about minutes and minute publication and ways to adjust the process to better meet the bylaws, which may be clarified. An adjustment to the list-serve management may be in order so that everyone had a private space to work on minutes and a public space where those minutes can be published.  That was all.

Dimitris thanked Jos and mentioned that there was discussion on some bylaws changes at the F2F. It was clarified that the working group meetings and the Forum plenary minutes need to be reviewed on a private/members list before being published. Only working group minutes need to be published on a public website, but not subcommittee minutes.

**NetSec Working Group**: Clint stated that the group met on Tuesday and that they discussed RPKI. There was a firm consensus that the group would not be taking on RPKI work, although a good discussion was held on the topic. The topic may be approached again in the future.

Trevoli suggested that the Clint tell us why RPKI should be avoided by the NetSec working group. The reason is that the NetSec requirements apply to all working groups, while RPKI does not have clear overlap with all of the working groups. The RPKI scope was smaller than the NetSec scope, and instead focused on the TLS domain requirements (and S/MIME) only.

Tim agreed with the solution, but not the analysis.  He says that the NetSec charter explicitly calls out that the group should occasionally provide proposals to other working groups. But he does agree that it would be better to leave the discussion to the Sever working group, as that seems to be the focus of RPKI. Clint conceded that if there was a desire to provide guidance to both the TLS and S/MIME groups, then NetSec would be a good place to do that, but without signals from both groups that such guidance was desired, it would be best to leave the discussion in the TLS group.

Trevoli added that sometimes any topic dealing with the word “network” means that it has to do with the internet and therefore should be oved to NetSec. However, she mentioned Corey’s proposal that NetSec should inform how to secure infrastructure, regardless – like network infrastructure. But whether it (RPKI) gets required and how that works is better considered a server certificate topic. Tim Agreed.
Clint stated that this isn’t the last you’ll hear about RPKI in the Forum, but likely the last time it gets discussed in NetSec (for some time, at least).

Clint went on to detail the continued work that was made to the introductions to sections of the NetSec, the addition of 2 new sections, and the reorganization of some of the prior draft updates of the NSRs. This was all that the group had time for in their meeting.

**Bylaws Changes**: Dimitris spent a little time writing/improving minutes on the topic, but was not able to make much progress after the F2F. Tim was also unable to make progress on the topic after the F2F. Dimitris still needs to generate a doodle poll related to the time required to draft minutes. The link will be sent to the management list when it is ready. There were no other questions on the topic of Bylaws.

**Any other Business**: none.

**Next Face-to-Face**: June 6 in Redmond, Washington, USA. The meeting will be hosted by Microsoft. The wiki page is ready and individuals desiring to go may start making travel plans as the dates are fixed. Please register if you plan on attending.

Inigo asked if we should wait to use the wiki, but Dimitris said that people should just be cautious about using the wiki on/around the switch over time.

Meeting adjourned.