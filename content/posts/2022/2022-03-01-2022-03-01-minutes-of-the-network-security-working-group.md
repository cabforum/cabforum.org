---
aliases:
- /2022/03/01/2022-03-01-minutes-of-the-network-security-working-group/
author: Clint Wilson
date: 2022-03-01 12:00:00
tags:
- Minutes
- Network Security
title: 2022-03-01 Minutes of the Network Security Working Group
type: post
---

## NetSec Working Group – March 1, 2022

## Attendees:

- Antti Backman
- Ben Wilson
- Brittany Randall
- Bruce Morton
- Clint Wilson
- Corey Bonnell
- Daryn Wright
- Don Sheehy
- Dustin Hollenback
- Jillian Karner
- Joanna Fox
- Jozef Nigut
- Kati Davids
- Niko Carpenter
- Prachi Jain
- Pedro Fuentes
- Rebecca Kelley
- Ruben Anne
- Ryan Dickson
- Tim Crawford
- Tobias Josefowitz
- Trevoli Ponds-White
- Tyler Myers
- Christophe Bonjean

1. Read Antitrust Statement

Clint Wilson read the antitrust statement.

2. Roll Call

Clint Wilson read the roll.

3. Review Agenda

No changes were made to the agenda.

4. Approval of Minutes from last meeting
No objections. Minutes were approved from Feb-15th call.

5. Discussion around definitions of zones

Ben mentioned that there are 2 issues that can be separated out – one is the issue of zones and other is the term ‘high security zone’ (offline high security CA physical environment). There has been some pushback around this term. Ben talked about the different tiers/zones/layers of security.
Trev re-iterated why we wanted to get rid of the term ‘zones’. Initial criticism is that some people think that a high security zone details some minimum security requirements but it doesn’t do so in the NSRs. Further discussions were done regarding how to fix this.
Trev mentioned there hasn’t been a broad opposition to removing either of the zones terms (except one person).
Clint clarified the problem statement is that the NSRs don’t actually impose any security requirements on the HSMs and how they are used, stored and managed.
The proposed fix is to replace and provide new definitions and terminologies around how HSMs are managed and connected. Trev clarified that we are not proposing new terms but trying to remove the ‘high security zone’ term since it is being used in different ways in different places in the NSRs. The idea is to replace them with the detailed sentence instead of using that term to clarify what we mean. Clint further added that it is definitely a very worrisome problem statement. Trev brought up the air gapped ballot ([https://lists.cabforum.org/pipermail/netsec/2020-November/000420.html](https://lists.cabforum.org/pipermail/netsec/2020-November/000420.html))
Tim Crawford clarified that the initial issue was that right now everything applies to offline environments which shouldn’t be the case and we should separate out the controls around offline environments. Ben mentioned that we should create separate ballots for all these issues. Brittany Randall supported the change.
Trev mentioned that Ben should resurface the old ballot where we replace all the zones/high security zones with the whole sentence. It was also mentioned that the criticism was that we are lowering the security by removing that term and by just replacing it with its definition. Ben went through the old air-gapped ballot and shared all the changes.

Dustin Hollenback asked what was the pushback in the past and Ben explained how striking out ‘high security zone’ was being considered as a step backwards in terms of security.
There was general agreement that there is a need to define physical security for offline roots. Clint suggested that it would be beneficial to have ‘physically secure environment’ as a defined term. There was further discussion around the past comments and how to address those. A proposal for changes to BR section 5 was discussed around improving the logical and physical security.

At the end, we have 3 draft ballots currently – one draft ballot around ‘high security zones’, another one to address the lack of definition of air gapped or what it entails and what’s required for something to be considered as air gapped and last one to introduce improved definitions around logical and physical controls.
Brittany added some comments around air gapped systems monitoring.

Corey added that in the BRs there is a requirement for the CA to log all entries and exit from a secure zone and that encompasses logging of any kind of physical access. Further discussion was done around logging physical access. Final outcome was that Ben will draft a small initial ballot addressing high security zone and offline root CA key protection physical security.

7. Any Other Business

None

9. Next call:

March 15th, 2022