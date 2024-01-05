---
aliases:
- /2023-05-25-2023-05-25-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2023-05-25 00:38:34
tags:
- Minutes
- Forum
title: 2023-05-25 Minutes of the CA/Browser Forum Teleconference
type: post
---

Minutes prepared by Eva Van Steenberge (Globalsign).

**Attendees:**

Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Cade Cairns – (Google), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), Daryn Wright – (GoDaddy), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Jamie Mackey – (US Federal PKI Management Authority), Joanna Fox – (TrustCor Systems), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Kiran Tummala – (Microsoft), Kyle Duren – (Yahoo Inc), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Marco Schambach – (IdenTrust), Michelle Coon – (OATI), Miguel Sanchez – (Google), Nate Smith – (GoDaddy), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Ryan Dickson – (Google), Scott Rea – (eMudhra), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services).

**Approval of minutes:**

- April 27th, circulated may 12th: approved
- March 30th, ciculated may 8th: approved
- May 11th, circulated May 12th: approved

**Updates:
**Server cert working group** – Iñigo Barreira (Sectigo)

- Membership application of Yahoo (interested party, waiting for IPR), QikFox (certificate consumer consumer) which has been affected by the member moratorium by Mozilla.
- Log-use from server certs to SMIME
- Validation sub:
- topic of domain validation: Chrome to prepare document and circulate
- upcoming f2f items: mainly on delegation of domain validation
- Ben Wilson (Mozilla) and Justin working on something on Subscribers.
- No meeting next week.
- Dean Coclin (DigiCert) confirmed that Comscope responded, forwarded, with updated IPR.

**CodeSign cert WG** – Bruce Morton (Entrust)

- Malware based revocation ballot: passed, in IPR period
- Working on other ballots.
- External question on subject name stability – Microsoft will address that and will get back to reporter
- F2f agenda
- Dimitris Zacharopoulos (HARICA) had an update: completed the work on import of SSL BRs in CodeSign BRs, few controversial topics, working with Martin to resolve, hopefully ballot soon.

**SMIME**: Update to follow

**Forum infrastructure**: No update

**Netsec**: Trevoli Ponds-White (Amazon Trust Services): review agenda of the f2f

**Bylaws changes** – Dimitris Zacharopoulos (HARICA)

- Dimitris Zacharopoulos (HARICA) and Tim Hollebeek (DigiCert) working on changes.
- Changes to election changes, all on github. Workingon addressing comments.
- Introduction of class of probationary member as discussed on F2F
- Ben Wilson (Mozilla) wanted to widen scope to certificate consumers.
- Split probationary members and link them to consumers and issuers.
- If voting member loses qualifying membership criteria, currently suspension, losing voting rights, rights to propose ballots/endorse ballots.
- Map exactly to probationary members as well. To be presented at F2F.
- Discussion period to start next week, there’s 2 endorsers, just checking language.
- Tim Hollebeek (DigiCert) asked if we could use prospective member instead of probationary? He suggested that there may be possible negative connotations, maybe not appropriate for excited new member.
- Dimitris Zacharopoulos (HARICA) confirmed that he was happy to change the name, and that’s exactly the sort of discussion that’s needed.
- Ben Wilson (Mozilla) raised the consideration that there’s a group of members that after suspension are on probation. Associate member has already been taken.
- Dimitris mentioned the opportunity to discuss at F2F.

**Server cert charter update** (Ben Wilson):

- updating requirements for consumers, only three new requirements: mandatory compliance to BRs, maintain of a list of CA, having criteria for adding and removing CAs from the list. Some other vague ones have been removed (or not clear what objectives were).

- “Probationary members”: Attend 30% of the teleconference and at least 1 F2F (which can be virtual), in a year, or at least before voting on the membership.

- Updated language to conform to suggestions made by Aaron and Dimitris, so it’s more based on meeting the requirements.

- Update on attendance language, 1st of January 2024 as a start date, difficult to accomplish, trying to find a date of mandate this requirement.

- Dimitris Zacharopoulos (HARICA) reminded the group that the charter needs to be discussed at a forum level, of course these discussions can be held in the groups. He suggested to combine the two discussions, server cert update and bylaws – break 1 slot into 2 for guest speaker.

- Dimitris Zacharopoulos (HARICA) reminded of the registration of the F2F attendance.

- Dimitris Zacharopoulos (HARICA) said that for the approval agenda of F2F, we don’t have the titles of the guest speaker presentations.

- Tim Hollebeek (DigiCert) raised that there may be IPR issues with regards to forum presentations? Suggested to take this to the list.

- Dimitris Zacharopoulos (HARICA) mentioned he wasn’t sure what the titles are on the presentations, so was not sure to which level they relate to.

- Background: presentations that are scheduled in a timeslot under forum level part, Tim Hollebeek (DigiCert) was concerned to move that to server cert slot, similar for guest speakers, move to relevant slots . Forum level not protected by IPR.

- Trevoli Ponds-White (Amazon Trust Services) explained that the presentation was just going to talk about TLS, and she didn’t particularly care which slot.

- Tim Hollebeek (DigiCert) was mostly concerned about this presentation. Guest speakers, less of a concern, historically done on forum level, no change needed.

- Karina Sirota (Microsoft) confirmed there was not a topic yet, not on specific cert type.

- Tim Hollebeek (DigiCert) mentioned that the forum is supposed to be charters and working groups, not technical or policy, and that it’s not appropriate forum for those discussions that relate to multiple working groups. He reiterated that the forum was intended to protect people from discussions they’d like to avoid. Path forward to more cross cutting working groups, within well defined scopes that protect everyone, like Netsec and the discussions about the definitions working group. Perhaps good for putting forward to discussions.

- Paul van Brouwershaven (Entrust) gave the example of the presentation of AWS on CA rotation, that it could apply to multiple WGs, so that’s why it was decided to do that on forum level, to take it into the working group, and discuss if needed. But definitely to consider on how to move forward.

- Trevoli Ponds-White (Amazon Trust Services) notes that Amazon trust services is presenting, not AWS.

- Tim Hollebeek (DigiCert) suggested taking 15 minutes for a governance overview.

- Trevoli Ponds-White (Amazon Trust Services) asked that you don’t have to be part to part of a group attend in f2f, functionally?

- Dimitris Zacharopoulos (HARICA) confirmed yes, but can’t contribute, the can listen in.

- Paul van Brouwershaven (Entrust) confirmed that that’s why the presentation was suggested at forum level, and discussions in WG.

- Tim Hollebeek (DigiCert) highlighted that being in room when discussion happen can expose you to legal risk. If you choose to attend, then the risk on you. But we shouldn’t put people at risk because they are listening in and then the discussion veers off into another working group’s topic, good to keep things in chartered working groups.

- Dimitris Zacharopoulos (HARICA) suggested to make some changes to agenda. Add a 15 slot for governance issue?

- Paul van Brouwershaven (Entrust) suggested moving governance issue on day one, and bylaws changes to one session and shift the agenda later the day.

- Dimitris Zacharopoulos (HARICA) proposed to make slot 3.1 for governance, 20 min slot, lead by Tim? Only have bylaws update for 40 minutes on Wednesday. There’s still 20 minute slot for website? Are there significant updates? There’s no updates – maybe we make that one governance, slot number 4?

No other business.

Next meeting: June 22nd