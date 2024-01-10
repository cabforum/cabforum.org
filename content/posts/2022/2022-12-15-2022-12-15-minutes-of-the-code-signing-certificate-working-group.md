---
aliases:
- /2022/12/15/2022-12-15-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-12-15 17:00:00
tags:
- Minutes
- Code Signing
title: 2022-12-15 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Andrea Holland, Brianca Martin, Bruce Morton, Corey Bonnell, Dean Coclin, Dimitris Zacharopoulos, Inigo Barreira, Michael Sykes Mohit Kumar, Rollin Yu, Tim Crawford, Trevoli Ponds-White

## Minutes

Antitrust statement was read.

Minutes approved for last meeting 1-Dec-22 and F2F.

There was discussion on how we can make minutes more effective – in general with a suggestion on recapping along discussion by chair or minute taker for summary.

### Ballot around Malware protection

Updates made to draft to suggest that subscriber can provide a different date based on impact. And also, software application provider can check for possible impact. Based on these 2, CA can decide on revocation date.

It was mentioned that section 4 is confusing and not clear.

Clarification provided that if CA receives a report of malware being signed, they will report it to subscriber. If subscriber reports within 72 hours, CAs can do impact assessment else they have to revoke in 24 hours. In any case, CA has to revoke in 7 days

Alternate proposal was presented that if subscriber or Software application asks CA to revoke, it should be revoked in 24 hours else in 7 days.

The critical element of the actual process is deciding what will be the revocation date i.e. the back date from which we expect malware to be signed. For this reason, we had procedure for impact analysis.

CA should have date of previously signed suspected code or evidence to show that private key was compromised. That way we can backdate the revocation

If we go to the back date of issue of certificate, then it impacts all the drivers signed till date so CA need a different timestamp.

Need to be improved and discussion to be kept in progress.

### Signing Service

No updates

### Removing SSL BRs references

Concerns highlighted in redline in Github. Pull request to be shared with the group.

Next meeting will be on 12-Jan-23