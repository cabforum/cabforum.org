---
aliases:
- /2023-03-30-2023-03-30-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-03-30 22:36:24
tags:
- Forum
title: 2023-03-30 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Attendance:** Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Chris Kemmerer – (SSL.com), Clint Wilson – (Apple), Corey Rasmussen – (OATI), Daryn Wright – (GoDaddy), Dimitris Zacharopoulos – (HARICA), Ellie Lu – (TrustAsia Technologies, Inc.), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Iñigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Joanna Fox – (TrustCor Systems), Johnny Reading – (GoDaddy), Jos Purvis – (Fastly), Jozef Nigut – (Disig), Kiran Tummala – (Microsoft), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Marcelo Silva – (Visa), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Stephen Davidson – (DigiCert), Steven Deitte – (GoDaddy), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tobias Josefowitz – (Opera Software AS), Wayne Thayer – (Fastly).

Dimitris read the list of attendees.

Dimitris read the **note-well**.

**Minutes of March 16** meeting to be reassigned.
F2F minutes are nearing completion and hopefully can be considered for approval soon.

Iñigo gave the **Server Certificate WG meeting update**. Last time, the membership application of CommScope was discussed. It was suggested they be accepted as associate members, due to not being included by any root store. The requirement for a 3rd party website certificate was also discussed, with regards to the challenges it poses for CAs not yet included in a browser in comparison to the value it brings. GitHub Open Issues were also briefly brought up as needing further organization. The Validation Subcommittee discussed an example CDN workflow of certificate issuance last week.

Bruce gave the **Code Signing Certificate WG meeting update**. A ballot for updating revocation was discussed. The associated section of the CSBRs was broken up to a greater extent than made sense, and a draft ballot has been created to better align the process with what’s required by the TLS BRs.

Stephen gave the **S/MIME Certificate WG meeting update**. The group reviewed text for a potential “erratum” ballot, including minor fixes and clarification changes. One change is to add more specific detail for key usages for EdDSA, which was an omission. Other changes clarify the applicability of ETSI audits and the capabilities granted to an Enterprise RA, originating from questions asked by members and resulting discussion determining clarifications were warranted. Discussion has also occurred related to allowing for additional data sources to be used for checking telephone numbers to establish a reliable method of communication. This addition, if it happens, will be a separate ballot. Finally, we partially revisited the survey that Corey Bonnell shared about “lost and found” S/MIME certificates assessed against compliance with the S/MIME Baseline Requirements. That survey used an internally developed tool, not based on zlint or other extant linting tools, for doing linting against the S/MIME Baseline Requirements, and it was announced that DigiCert will move towards open sourcing that tool and making it available to the community. An invitation to collaborate on this S/MIME linting tool was extended as well.

Jos gave the **Forum Infrastructure Subcommittee meeting update**. The group discussed the Wiki migration, the tail end of the work remaining, such as account creation, and the plans for executing that migration. The old, read-only wiki remains available, and all its content has been ported over to the new wiki.
Dimitris raised an issue with finding information in the new wiki, which tends to point to the archive. Dimitris provided a few examples of pages that were challenging to find and Jos confirmed they’d look into it further.
Jos also confirmed resolution to an issue related to ensuring associate members are automatically able to access the wiki.

Clint gave the **Networking Security Working Group meeting update**. An update was provided from the Cloud group, which has reached a rough consensus to incorporate some of the controls from Cloud Security Alliance’s Cloud Controls Matrix. The specifics of how those requirements are incorporated, including addressing license concerns, is ongoing. The remainder of the time was spent discussing introductory section headings for each of the sections in the NSRs, working to align any potentially aspirational wording better reflected in the individual sections.

Dimitris did not have a specific update related to Bylaws changes. There have been some changes proposed to the Server Certificate Working Group charter.

Clint highlighted that no further feedback has been provided related to the draft Definitions and Glossary Working Group charter. Specifically, we need volunteers for Chair and Vice-Chair in order to bring the draft to Ballot.

No further business was raised and the meeting was adjourned.