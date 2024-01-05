---
aliases:
- /2023-08-03-2023-08-03-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-08-03 00:55:18
tags:
- Minutes
- Forum
title: 2023-08-03 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Attendance**

*Present:*

- Aaron Gable – (Let’s Encrypt)
- Aaron Poulsen – (Amazon)
- Adrian Mueller – (SwissSign)
- Andrea Holland – (VikingCloud)
- Brianca Martin – (Amazon)
- Bruce Morton – (Entrust)
- Clint Wilson – (Apple)
- Corey Bonnell – (DigiCert)
- Corey Rasmussen – (OATI)
- Daryn Wright – (GoDaddy)
- David Kluge – (Google)
- Dean Coclin – (DigiCert)
- Dimitris Zacharopoulos – (HARICA)
- Dustin Hollenback – (Microsoft)
- Enrico Entschew – (D-TRUST)
- Fumi Yoneda – (Japan Registry Services)
- Hannah Sokol – (Microsoft)
- Inaba Atsushi – (GlobalSign)
- Inigo Barreira – (Sectigo)
- Joanna Fox – (TrustCor Systems)
- Marco Schambach – (IdenTrust)
- Michelle Coon – (OATI)
- Nargis Mannan – (VikingCloud)
- Nate Smith – (GoDaddy)
- Nome Huang – (TrustAsia Technologies, Inc.)
- Paul van Brouwershaven – (Entrust)
- Pedro Fuentes – (OISTE Foundation)
- Peter Miskovic – (Disig)
- Rollin Yu – (TrustAsia Technologies, Inc.)
- Scott Rea – (eMudhra)
- Stephen Davidson – (DigiCert)
- Tadahiko Ito – (SECOM Trust Systems)
- Thomas Zermeno – (SSL.com)
- Tobias Josefowitz – (Opera Software AS)
- Wayne Thayer – (Fastly)
- Yashwanth TM – (eMudhra)
- Yoshiro Yoneya – (Japan Registry Services)

**1. Introductory**

- Dimitris read the roll for the call.
- The Notewell was read by the Chair.
- The agenda for the meeting was reviewed and no changes were made.
- The minutes from the 20 July meeting were approved.

**2. Working Group Updates**

**Server Certificate Working Group**

Iñigo reported they had a standard meeting two weeks ago. They discussed the open issues and pull requests on GitHub, in particular any items identified for inclusion in a clean-up ballot. The EV Guidelines have been converted to RFC3647 format and a pull request has been submitted to update them in GitHub. Corey reported that there was no Validation Subcommittee meeting the previous week, so they had no updates to report.

**Code Signing Certificate Working Group**

Bruce reported that they had a short meeting: Dimitris’ ballot to remove the SSL Server Cert references from the CSCWG Baseline Requirements has passed and is now in IPR review. Based on that ballot, Bruce drafted language that can be used for 3 more ballots in the future, updating the guidelines to address code-signing services, high-risk requests, and time-stamping (from the last Face-to-Face meeting). That draft text is available from Bruce, but he’ll need help getting those into GitHub to get ballots in process. Dean was going to reach out to DigiCert to follow up on getting a presentation on certificate transparency for code-signing, but there isn’t a status update on that yet. Dimitris noted some discussions on the code-signing language about aligning language to be consistent between the TLS Guidelines and the Code-Signing language, but the group resolved these were actually about aligning the TLS Guidelines with the Mozilla Root Store policy.

**S/MIME Certificate Working Group**

Stephen noted that SMC-03, the Clarifications and Corrections ballot, emerges from IPR on 11 August (Friday), and encouraged members to review for IPR conflicts. That should be contemporaneous with the issuance of the S/MIME BRs on 1 September. Various audit groups have asked to review the new BR version to update audit criteria. Ben Wilson also posted on the Mozilla Wiki about the transitions for existing S/MIME issuing CAs: Mozilla has released their guidance relating to the re-issuance of an existing CA in order to bring it into compliance with the new S/MIME BRs. Stephen noted that most CAs are very busy updating themselves into compliance with the ballots and there have been many questions requesting clarifications or interpretations of the BR text. He thanked everyone for their perseverance and patience with the process, and looked forward to a successful launch of the BRs, and the forthcoming discussions of S/MIME ballot SMC-62.

**Forum Infrastructure Subcommittee**

There was no update from Infrastructure; there was no meeting held prior to this call.

**Network Security Working Group**

David was not on the last call of the NSWG, but was on the Cloud Services call. He and Dimitris offered from the Cloud Services subcommittee that they were continuing with a ballot to adopt some language from the Cloud Security Alliance’s (CSA) Cloud Controls Matrix into the NSWG Requirements, particularly into section 4. They are preparing a memorandum of understanding with the CSA to sort out licensing concerns and considerations and whether the two groups might want to work together further in the future. Dimitris noted that this was a new process for the Forum: while some language had been adopted from ETSI in the past, this was the first time we were adopting language from an entirely-outside organization. He recommended that they prepare a Forum-level ballot to describe the memorandum and agreement and then approve that and the language of the NSWG requirements updates, once a stable draft was ready.

Aaron Poulsen volunteered that he had attended the NSWG meeting and could provide an update. There’s a lot of work going on in cleanup of the NSRs: Clint has started going through section 1 and intends to proceed through the whole requirements document to clean up language and terminology and consolidate requirements. There is some discussion going about whether to make those changes in an upcoming ballot around section 4 around vulnerability management. Hopefully updates will be presented on this in the next few weeks. Dimitris noted that Clint had sent out some proposed red-line changes to various sections of the NSRs, but felt that more discussion needed to take place before those were ready for inclusion. Aaron anticipates that the changes and cleanups will likely fall into a separate ballot to isolate them from the section-4 changes that are more focused on changes to specific requirements.

**3. Server Certificate Working Group Charter Changes**

Dimitris noted that there is a proposal afoot to change the charter of the Server Certificate Working Group, proposed by Ben Wilson. Ben was not on the call, so the group opted to move this discussion forward to the next Plenary call.

**4. Any Other Business**

Dimitris said the next Forum call is on 17 August, but he will be unable to attend. After discussion with Vice-Chair Paul van Brouwershaven, Dimitris proposed cancelling the next meeting since many people will be on vacation. The consensus of the group was to cancel the 17 August meeting and resume on 31 August.

There were no further updates or business; Dimitris closed the meeting.