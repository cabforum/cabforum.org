---
author: Iñigo Barreira
date: 2024-10-24 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-10-24 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - ISRG, Aaron Poulsen - Amazon Trust Services, Andrea Holland - VikingCloud, Antti Backman - Telia Company, Atsushi INABA - GlobalSign, Ben Wilson - Mozilla, Bineesh Ambali Vadakkekandi - Microsoft, Bruce Morton - Entrust, Chad Dandar, Chris Clements - Google Chrome, Clint Wilson - Apple, Corey Bonnell - DigiCert, Corey Rasmussen - OATI, Dean Coclin - DigiCert, Dimitris Zacharopoulos - HARICA, Doug Beattie - GlobalSign, Dustin Hollenback - Microsoft, Enrico Entschew, Greg Tomko - GlobalSign, Jaime Hablutzel - WISeKey, Janet Hines - VikingCloud, Johnny Reading - GoDaddy, Jos Purvis - Fastly, Keshava N - eMudhra, Li-Chun Chen - Chunghwa Telecom, Llew Curran - GoDaddy, Lucy Buecking - IdenTrust, Luis Cervantes - SSL.com, Mads Henriksveen - Buypass AS, Mahua Chaudhuri - Microsoft, Marco Schambach - IdenTrust, Martijn Katerbarg - Sectigo, Michelle Coon - OATI, Mrugesh Chandarana - IdenTrust, Nargis Mannan - Viking Cloud, Nate Smith - GoDaddy, Nicol So - CommScope, Nome Huang - TrustAsia, Paul van Brouwershaven - Entrust, Rebecca Kelley - SSL.com, Rollin Yu - TrustAsia, Ryan Dickson - Google Chrome, Sandy Balzer - SwissSign, Scott Rea - eMudhra, Stephen Davidson - DigiCert, Steven Deitte - GoDaddy, Tadahiko Ito - SECOM, Thomas Zermeno - SSL.com, Tobias Josefowitz, Trevoli Ponds-White - Amazon Trust Services, Tsung-Min Kuo - Chunghwa Telecom, Wayne Thayer - Fastly, Yamian Quintero – Microsoft

## Roll Call

Dustin Hollenback - Microsoft drove the meeting in absence of Inigo and Kiran.

## Read Antitrust Statement

Dustin read the Note-well.

## Review Agenda

Dimitris reminds participants  that they must comply with the bylaws and that they can contact the chair Dimitris Zacharopoulos (HARICA) any questions or comments.

## Approval of minutes

-	September 12th meeting: have already been previously approved and circulated.
-	No other drafts since then
-	F2F 63: Status update in future meeting

## Membership

-	Dean Coclin-DigiCert confirms Abbott Kenyon is an individual participant, signed IPR, no need to check anything else, application approved..
-	Dean confirms that the Netflix application came in on the 17th, signed by Andrew Chen, and it was later confirmed by a statement from a corporate officer that Andrew had the authority to sign the document. Signature was a valid digital signature from the officer, who was validated via LinkedIn. No objections, application approved.


## Discussion on how to make discussion possible while not on GitHub

-	Ben proposes to discuss this later, but Dimitris asked for it to be discussed in Server Certificate WG, not in terms of the IPR Agreement, but purely how useful it is. 
-	Dimitris raises that some comments may be a violation of conduct, which is only binding for members, non-members can add comments. Code of conduct is not shared with non-members, not even in read-my files. Suggested we should look at mitigation and a permanent solution.
-	Aaron Gable agrees that having rules around participation is a good idea in the long term. He wasn’t sure if it was needed right now following the issues seen. He highlights that locking down discussion may have an opposite effect. Suggests that maybe it was better to ride this one out.
-	Multiple people agrees.
-	Wayne Thayer asks if a bot wouldn’t shut down discussions, but would just have to agree to the CLA.
-	Clint confirms that it would add some protection to discussions and add moderation. He agrees with Aaron that doing it now might cause issues.
-	Dimitris thanks Clint for the suggestion to explain to commenters on how they can join the forum. There is a worry that it might escalate further if we don’t have tools in place to stop it.
-	Ben agrees with what Aaron said, but highlights that there’s a risk of kicking the can down the road. Suggests that maybe we should prioritize getting a CLA in place and a CLA bot in place. Some language could be circulated within the forum and the IPR committee.
-	Tobias shares that the situation isn’t that bad, only 70 comments, so maybe there isn’t an immediate need for reaction, even if it does confirm that there is a problem. We should ask if CLA in a bot is the appropriate solution. For example, does it fit with the way the way users interact in GitHub? Ask if the bot will be effective in that way.
-	Trevoli makes the point that we may not have a quiet moment to work on this. Asks why we have GitHub open.
-	Dimitris confirms it is an administrative reason.
-	Trevoli explains that maybe the concern of shutting down community feedback isn’t that important, because we can’t act on it because they aren’t in the forum. Therefore, having them agree to a code of conduct and giving them a way to join, does that solve the problem? She highlights that there’s other ways to interact with the community.
-	Aaron responds that, on the one hand, none of the CLA bots work on comments, rather they work on pull requests. The only option to do that is to allow-list contributors, or having a bot that deletes comments from non-allowlisted contributors. Aaron shares that this will just worsen the situation.
-	Dimitris agrees that it’s not a great idea to take measures in the middle of the discussion. He would like to find some agreement on the notice to move the discussion elsewhere until we have a more permanent solution. This notice would show intentions: members should abide by code of conduct, same should apply to non-members.
-	Martijn Katerbarg (Sectigo) picks up on a previous point, that making the Github a private repo is a non-starter. 
-	Dimitris confirmed nobody suggested that.
-	Ben pointed out that in another discussion, this was one option, but the direction was allowing broad input and feedback. Ben likes Dimitris suggestion of at least having something in read-me. He suggested looking into the CLA functionality that could serve that purpose. On a separate note, he raised that within the IPR committee, there is a suggestion that we could have people sign-up in a lighter capacity, using terms of use, rather than signing up as formal interested parties and agreeing to the IPR agreement.
-	Tobias Josefowitz suggests that we may be overengineering the problem. He doesn’t mind putting something in the read-me, but it might not be effective. Some ballots might stir up emotions. He distinguishes two problems, the one about public participation (and rules of conduct), and the other about the IPR concern. He highlights that there are similar concerns to for example the CCADB public list. This could be solved by re-directing the discussion, excluding contributors, or label them as non-members. Tobias suggests that this may just be the easiest solution.
-	Aaron Poulsen largely agrees with Aaron Gables point about negative optics. And with Trev, that there never may be an ideal time. He likes the idea of periodic reminders, even just an effective date for enforcing mechanisms? It might be good to give people notice.
-	Clint similar agrees with many comments made, and believes that the majority of the problems will be solved by the IPR subcommittee formalizing a solution that covers GitHub interactions. He was not sure if everything currently in GitHub are contributions, except pull-requests that are initiated by forum members.
-	Trevoli says that doing nothing could be equally bad or worse compared to a reminder of how participation in the forum works.
-	Wayne points out that there’s a bigger issue, that we haven’t provided a way for the community to provide input. He suggests that maybe the better starting point would be discussing if and how we would want to provide that mechanism.
-	Action summary: discussion on public list to agreeing on notice, pushing people to CCADB list, and setting a date.

## Current status of ballots

a.	Ballot SC80: no update

b.	Ballot SC81: Clarification on the discussion item

- Aaron Gable - ISRG summarizes that some participants may find the 45 timeline to be too aggressive, but confirms that he is not of that opinion. Gives Clint an opportunity to explain the timeline, why it is what it is.

- Clint Wilson (Apple) confirms that the timelines will change a bit as he plans to incorporate Aaron’s suggestions. 

- Trevoli Ponds-White - Amazon Trust Services asks if the timelines have changed since the initial proposal. Clint confirms that no, he’s just aligning it to streamline it to three dates where changes take affect. Pushes back the 45 days to September rather than April 2027.

- Tadahiko Ito-SECOM raises that there may be legal risks to enforcing 45 days, specifically for CAs (less so for Browsers) within Japanese law.. Raises big impact on customers. Asks if the legal risks should be discussed, and if it would be possible to show the evidences of the positive impact of introducing the 45 days, in order to limit legal risks.

- Clint asks for additional information. Tadahiko confirms that all documentation is in Japanese. Suggestion from the forum that this topic would benefit from being in writing. Dimitris confirms that translations can be arranged.

- Tadahiko wonders if the quality of the documentation may not be great, so maybe not appropriate to be widely spread.

- Clint confirms that it can be shared wherever Tadahiko is comfortable sharing. Ideally the public list. Ben offered to look at it as well. He confirms that this is exactly the sort of substantiated concerns that should be raised.

- Ryan Dickson (Google) wants to understand how the risk differs from the risks CAs face today.

- Tadahiko explains that the limiting of validity to 45 days has a different impact on organizations (e.g. increase of cost of automation).

Question from Thomas Zermeno (SSL.com) if SC80 or SC81 are both on the wiki. Link shared in chat.
-	There may be IPR implications.



## Any Other Business

Martijn asks people to reach out if they have clean-up items.

## Next call

November 7th. Inigo gave notice that he won’t be present.

## Adjourn

Meeting adjourned.
