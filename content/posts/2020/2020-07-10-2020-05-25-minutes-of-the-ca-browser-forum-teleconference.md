---
aliases:
- /2020/07/10/2020-05-25-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2020-07-10 18:23:17
tags:
- Forum
- Minutes
title: 2020-05-25 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Attendees (in alphabetical order)

Andrea Holland (SecureTrust), Inaba Atsushi (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Dean Coclin (DigiCert), Dimitris Zacharopolous (HARICA) \[Chair\], Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Encrico Entschew (D-TRUST), Janet Hines (SecureTrust), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass), Mike Reilly (Microsoft), Neil Dunbar (TrustCor), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (Wisekey), Peter Miskovic (Disig), Ryan Sleevi (Google), Shelley Brewer (DigiCert), Taconis Lewis (Protiviti), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon), Wendy Brown (FPKI).

## Minutes

### 1. Roll Call

The Chair took attendance.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda, Assign Minute Taker

Mike Reilly will take the minutes for the July 9th. No changes to the agenda were noted.

### 4. Approval of minutes from previous teleconference

The minutes were already approved.

### 5. Forum Infrastructure Subcommittee update

Jos Purvis reported that there has been no meeting since F2F. Work continues on documenting the process of launching a new Working Group, led by Steven Davidson, who has identified the gaps in the process documentation.

Dimitris has created a draft page on the wiki, attempting to gather information from various WGs, attempting to generalise it for future WGs. This process started with the Code Signing Working Group, and continues with results of newer WG launches.

Ryan Sleevi asked for an update on SC26 (Pandoc). Jos replied that the code was working on all current documents, minus a few tweaks. This should then allow the BRs to be published via Pandoc. Following that, a ballot will follow allowing the EV documents and NCSSRs to be translated into the same Pandoc friendly format. This will finally mean that all CA/B documents can share the same publication process.

Ryan added that after that, emanating from the SC30 and SC31 discussions, the next step should be to make it easier to produce redline diffs, since not everyone was happy with GitHub redlines, or would prefer an alternative mechanism. The current Pandoc software can emit PDFs, DOCX and HTML documents, so the work should be done to create redlines corresponding to those formats. There is a roadmap for this work to be done, but Ryan acknowledges that redlines are a known gap in document production.

Tim suggested, by way of assisting the S/MIME and Code Signing Working Groups, a Pandoc friendly bare RFC 3647 template document would be very handy. Jos indicated support for this idea.

Neil suggested that CAs who use Pandoc with RFC 3647 to produce their CPSes might be a good starting point for this. Jos indicated that couldn’t hurt – while it might not be useful for producing the BRs, it would certainly be useful for other CAs to produce their CPS in that format.

Ryan said that he has added the ability to support per-workng group/subcommitte tags to Github. This allows issues and pull requests to be categorized by working group interest. This moves us closer to the goal of allowing appropriate Github activity to be sent to the relevant working group or subcomittee memberships. Thus there is now a tag for Validation subcomittee and a similar one for Netsec. There are tags for documents as well as workign group tags. Ryan has iterated over the open issues, and tagged them as appropriate.

Thus anyone looking at Github will see lots of different colours in the issues list.

Dimitris said that he was looking forward merging these changes and getting the prepared documents ready, resulting in both PDFs and Word documents of the BRs when we propose ballots.

### 6. Code Signing Working Group update

Dean said that they were amost ready to go to ballot with the combined document. Some minor errors were discovered which Bruce Morton has fixed. Since Bruce is away for the week, further progress will need to wait for a little while.

Ian from Microsoft and Bruce have added some text on Parking Lot items; specifically on private key protection and high risk requests. The considerations for high risk requests will be presented on July 15th when Ian returns.

Tim Crawford from Webtrust talked about auditing of the combined document, based on the text which is current, assuming that it passes as a ballot.

RFC3647 reformat will be upcoming on a future meeting.

The July 6th meeting will be cancelled in favour of a July 7th date, owing to the US holiday, but will resume normal schedule after that.

### 7. S/MIME Working Group update

Stephen Davidson was absent, so Tim Hollebeek updated in his stead.

Tim said that they were going through the correct process to establish the working group per its charter – the charter has a clause indicating restart of process if irregularities are found in establishment. After that the call for participation will commence and meetings will proceed from that.

Dimitris said that mailing lists and wiki space are being created, as well as a page on the public website, so things are moving.

### 8. Update Action Items (added items from F2F 50)

Dimitris: Introduces agenda for the plenary. It includes 1 ½ Hours on Wednesday (updates from different working groups and subcommittees). An additional slot was added to give everyone a reminder of the elections process scheduled for this summer. No proposals for new topics were received.

Tim: Proposes adding half an hour for discussion of the differences in various charters. We are going to have three chartered working groups. There are various differences in the Charters and the way they handle e.g. the Bylaws and the charter templates. A discussion of those issues and some of the issues found recently while reviewing Charters and what people think about fixing those issues could take place.

Dimitris: There is already a slot for that. 20 minutes are allocated for that and time from the “any other business” can be used.

Tim agrees.

Dimitris: Time will be sufficient, because most of the Bylaw issues have been solved with the 2.3 update.

Tim: There are a couple of new ones.

Dimitris: OK.

No objections. Agenda is approved.

### 9. Eligibility for WG chairs for upcoming elections

Dimitris wanted clarity on whether it was permitted for existing WG chairs to be candidates to the position in upcoming elections (which are due for the SCWG, the CSCWG and the overall Forum). He believed that the position for the Forum chair was clear, but it was unclear if this equally applied to the Working Groups themselves.

Dean Coclin replied that the CSC Working Group had discussed this, and the consensus was that there is no restriction preventing reelection for the CSCWG.

Dimitris asked if this would be the case for SCWG. Since it is not explicitly mentioned in SCWG charter, he assumed it would be permissible. Dean said that it was a matter for the SCWG. Dimitris replied that charters are a matter for the Forum, since charters are approved at that level.

Dean’s answer was that if the charter was being revised it goes to the Forum. Since no charter is being changed, it remains within the SCWG’s purview.

Dimitris thought that the CSCWG’s interpretation probably was acceptable, and thus should apply more broadly. He felt that this should be minuted so that the elections can proceed with clarity.

Dean replied that he had consulted previous minutes, and the same conclusion was drawn, that absent a particular restriction, an existing chair could stand for re-election.

### 10. Any Other Business

Mike Reilly asked for any updates on the Tokyo meeting (ie, whether it should be virtual). Dimitris replied that he was unaware of any updates.

Doug Beattie thought that we should get this discussed soon, owing to logistical challenges, such as internation travel restrictions. Trev Ponds-White said that she couldn’t imagine any country wanting visitors from the US at this time.

It was resolved to have a final decision on the agenda for the next call.

### 11. Next call

The next call will take place on July 9th, 2020 at 11.30am Eastern Time.