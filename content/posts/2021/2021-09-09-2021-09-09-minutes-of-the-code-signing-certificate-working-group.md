---
aliases:
- /2021-09-09-2021-09-09-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-09-09 16:00:00
tags:
- Code Signing
title: 2021-09-09 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Atsushi Inaba, Ben Wilson, Bruce Morton, Corey Bonnell, Dean Coclin, Dimitris Zacharopoulos, Iñigo Barreira, Janet Hines, Joanna Fox, Roberto Quiñones, Sebastian Schulz, Tim Hollebeek, Tomas Gustavsson

## Minutes {.wp-block-heading}

Dean read the anti-trust statement.

Minute-taker: Joanna. Next minute taker: Corey

Prior meeting minutes of 26 August 2021 were approved.

- WordPress steps to update the CSCBRs

- Ben asked for a volunteer webmaster to do WP ballot page and be appointed to do the updates and publication. Ben has written up steps for Github; however, Dimitris mentioned we are not using Github (yet) in this group. Ben said that we can customize the instructions to our process. Officially there is a webmaster for this group, that’s Corey (and he volunteered). Ben organized the ballots and posts. CSC 9 is in draft form but not yet published.

- Steps for the WP process: Ballot goes out gets voted on, IPR notice goes out. Post in WP goes out with results of ballot and period for IPR review. This marks the date of the effective date. 30 days later the ballot comes out with the effective date, watermark removed, gets published to WP post. Using categories and tags in the future.

- Dimitris – procedure wise, when we vote on a ballot, the voting results, who is updating the website with the vote results before we start the IPR review period? Dean said we hadn’t done that yet, all the voting results are on the ballot tracker in email. Dimitris – It needs to link to the ballots table on the website. Ben – there will be a training session for how to do that for anyone who wants to attend, Dean agreed. Corey, Bruce, Dimitris and Ben to attend.

- Ballot Status:

- CSC-6: Subscriber Private Keys (Ian) Discussion on what’s acceptable for subscriber private key verification. Today it is, primarily for non EV attached to the subscriber agreement and recommendations bout the CA. For EV, Tim Crawford had called out that no one had ever done the suitable audit. Ian was looking to add level of guidance for how to obtain verification for key generation and storage with a cloud based key protection and key generation solution. Ian was looking to add CA witnesses to key creation live over Webex (or similar), Dimitris agreed. This is lower assurance than the remote station. Ian would love it if remote key attestation was viable, but it’s not right now due to those who run cloud protection solutions. It is on their roadmap. Tim, Dimitris, Tomas and Ian all see value in this. Ian is consistently following up. Roberto suggested that maybe everyone interested should put a word in to get this done, Ian can use the names listed for support. After CSC11 Ian wants to bring this discussion for common ground on what’s acceptable.

- CSC-9: Clean-up and Clarification ballot (Bruce) – in IPR till 8 September, no feedback on IPR. Effective date today.

- CSC-10: CSBR 2.0 WebTrust Audit Criteria (Bruce) – in IPR till 12 September, assumed no feedback on IPR. Bruce wants to do one update for both ballots. Dimitris – bylaws say you need to publish within 3 days, so will have to be separate. Bruce – it’s already written, push out 9 today and 10 Monday or Tuesday next week. Dimitris reminded effective date is date of publishing. Ben – wants a bylaw update that clarifies effective date. To say that the effective date is the 30 day, if there is no IPR objection, that the effective date is the date standard as the end of the public review period. This hasn’t been proposed yet. Tim would strongly support adding some clarity to define effective date. Dimitris – we have identified the problem, it’s in section 2 subsection 6, which says that the chair has 3 days to publish any possible exclusion notices. Tim – we could make it so the effective date is the end of that 3 day period, Ben agreed. Bruce brought up differences between requirement effective and effective date of the document. Ben – there are two dates, we should lock it down so it is known. Tim – has a blog post on his to do list asking if every BR change should have an effective date. Discussed various options for handling effective dates and combining with WebTrust, possibly roll up of changes on a managed release cycle. Dimitris found a proposal from Rich Smith about this issue and suggested we reintroduce the idea here. Bruce suggested doing it at the forum level so it is across all ballots. Tim and Tomas agreed to have a cadence. Tim – having a working group start it might be a good way to get traction in the forum. Dean – what if the chair doesn’t post the IPR in 3 days, then the VC needs to do it within 5, that was incorrect there is no provision.

- CSC-11: Update to log retention requirements (Ian) Viewing changes. Incorporated everyone’s feedback. Section 15 is different from BRs, very specific. Removed signing service. Section 15.2 added timestamp authority data records, make available to your auditor. Section 15.3, at least 2 years for data retention. Some discussion around the risk evaluation in note in this section. Ian removed entry from the revision table 2.6.

- Move CSCBRs to new format (Corey) Mapping document circulated on the list, green copied as is, yellow wordsmithing, red removed. Dimitris reviewed and changes made in the latest PR. Ian – Is it acceptable to introduce normative or still maintain language or take a pragmatic approach and just tighten up language? Dean point release, anything in those categories we put them in a table so everything comes as is in a new version. Bruce – we did a liberal merger, lots of time to review. Tim agreed to same bar, take out controversial. Corey – 2 areas Dimitris raised, Section 7 maintained allowance incorporated BR allowances. Dimitris – extensive changes, not normative suggesting to migrate what we have and follow up with a clean up ballot. Ben – big issue with blank or no stipulation Tim – has strong feelings, very important to put no stipulation in blank sections to make it clear, Dimitris agreed. Corey – we could make it more explicit as to when to go to the BRs, asked for feedback. Tim stated that banning RSA PSS is going too far. Corey will revert HEX encodings that were brought over. Dimitris brought up no future effective date. Tim suggested adding one to avoid problems from normative changes, has concerns about errors or misunderstandings. Corey says we could just delay the ballot for a few months. Bruce brought up that we could create a ballot later to fix any issues. Tim withdrew complaint. Corey – action items 1 – removing all the prescriptive encodings for the algorithms and reinsert the DSA allowance. 2 – review, go through blank sections does the BRs make sense and add no stipulation where applicable. Dimitris wants to hold off on new ballots and Tim responded to talk about that next meeting. Corey said mechanically its not that hard but understands his point.

- Other business – Dimitris wanted to talk about the mailing list revocation date discussion. Bruce doesn’t think it changes anything. Tim says clarify it. Bruce – sounds like you can backdate the revocation date (but you shouldn’t). Need to add the clarification of this to the parking lot.

- Next Meeting – September 23

- Adjourn