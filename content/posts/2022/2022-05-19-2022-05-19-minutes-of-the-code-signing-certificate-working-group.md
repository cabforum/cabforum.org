---
aliases:
- /2022-05-19-2022-05-19-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-05-19 12:00:00
tags:
- Code Signing
title: 2022-05-19 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Atsushi Inaba, Bruce Morton, Corey Bonnell, Dean Coclin, Dimitris Zacharopoulos, Ian McMillan, Inigo Barreira, Joanna Fox, Michael Sykes, Tomas Gustavsson

## Minutes {.wp-block-heading}

Minute-taker: Corey

Dean read the anti-trust statement.

Minutes of the 2022-05-05 meeting were approved.

### CSC-13 {.wp-block-heading}

This ballot went through IPR and v2.8 has been published with an effective date of May 9th. The normative changes in the ballot are effective November 15th.

### CSC-14 Voting {.wp-block-heading}

Bruce noted that we have already reached quorum.

Inigo noticed a formatting issue on page 38 and 39. It was agreed that we can fix this presentation issue after approval at the same time we add the effective date, as it is not a material change. (Minute-taker’s note: the Bylaws actually prohibit this change, so a separate ballot is needed to fix)

### F2F Agenda {.wp-block-heading}

Code Signing meeting is Tuesday afternoon at 5 PM Poland time. Currently slated for 1-hour meeting.

Bruce mentioned that we should discuss incorporating the TLS BR content directly in the CSBRs. Dimitris said that we have previously agreed to take on this work and that the next step is to actually create the draft text. Ian and Bruce volunteered to assist Dimitris with this effort.

Dimitris said his team wanted to discuss timestamping requirements, specifically the requirement whether the timestamping ICA needs to be offline or not. Bruce said he’d support a comprehensive timestmaping “clean-up” ballot that would address this and other points raised recently.

Dimitris raised the discussion on the Root Policy change proposal to restrict the scope of audit to those timestamp ICAs and responder certificates to be used for the CSBRs. It was agreed that there needs to be an additional mechanism beyond the EKU (namely, policy OID) that can bifurcate the policy as well as provide an indicator to Relying Party software so it can reject timestamp tokens not signed by an in-scope TSA. It was further agreed to discuss this specific issue and timestamping as a whole at the F2F.

Ian suggested we will have a 1.5 hour meeting and there was consensus.

### Amazon Trust Services application {.wp-block-heading}

ATS would like to join the CSCWG as an Associate Member. It was raised that they may qualify for Full Membership status. They have trusted roots in Windows, so they may be eligible for Full membership. However, they note that are not actively issuing Code Signing Certificates. For next steps, Dean will ask Trev to submit their Associate Member application to the questions mailing list.

### Other business {.wp-block-heading}

The 2022-06-02 meeting will be cancelled.

Next meeting is at the F2F.

Meeting adjourned.