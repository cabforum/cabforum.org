---
aliases:
- /2021/09/23/2021-09-23-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-09-23 16:00:00
tags:
- Minutes
- Code Signing
title: 2021-09-23 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Atsushi Inaba, Ben Wilson, Bruce Morton, Corey Bonnell, Dimitris Zacharopoulos, Ian McMillan, Iñigo Barreira, Janet Hines, Joanna Fox, Roberto Quiñones, Sebastian Schulz, Tim Crawford, Tomas Gustavsson

## Minutes

Bruce read the antitrust statement.

Meeting minutes from Sept 9th were approved.

Ballot status:

CSC-9 and CSC-10 both completed IPR and were published.

CSC-6:

Ian said to wait to discuss in favor of discussing CSC-11.

CSC-11:

Ian shared current redline on the list for the discussion period. Voting will start on the 24th.

Invalidity Date ballot:

There has been good discussion on the list. Ian confirmed that the current and previous versions of Windows ignore the Invalidity Date and instead use revocation date. One of the main open questions is how to handle the Invalidity Date extension and its value since it serves no purpose in the CRL. Rob suggested that we prohibit the extension from appearing, since it increases CRL size.

It was agreed that it is strange for the invalidity date value to be different from the revocation date value given Windows’s processing, so the requirement in the proposed ballot for them to be equal starting from the effective date will remain. Bruce and Ian indicated that the current proposal of February is too aggressive. The group agreed for a summer 2022 effective date.

On the point raised on the list for adding a “Application of RFC 5280” section, there was a concern that adding that section and defining the revocationDate semantics there would define the CRL profile specification in multiple separate locations, which may be confusing. The group agreed to add some language calling out the practice of backdating the revocationDate as violating the SHOULD NOT of RFC 5280 in the current CRL profile section and will potentially move this content to an “Application of RFC 5280” section as part of the 3647 reformat.

F2F Agenda:

– Have a brief WG status overview

– Reserve most of the time for signing service. Ian said there are a lot of inconsistencies and oddities in the CSBRs surrounding Signing Services that need to be addressed.

The meeting likely will be held on October 7th but may be cancelled if there are no agenda items.

There was no other business; meeting was adjourned.