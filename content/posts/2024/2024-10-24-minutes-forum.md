---
title: 2024-10-24 Minutes of the CA/Browser Forum Teleconference
author: Martijn Katerbarg
summary: Final minutes of the CA/B Forum call held on October 24, 2024.
date: 2024-10-24
tags:
  - Forum
  - Minutes
type: post
---

Eva Van Steenberge (GlobalSign) compiled minutes after the meeting from Webex

## Attendees

Aaron Gable - ISRG, Aaron Poulsen - Amazon Trust Services, Andrea Holland - VikingCloud, Antti Backman - Telia Company, Atsushi INABA - GlobalSign, Ben Wilson - Mozilla, Bineesh Ambali Vadakkekandi - Microsoft, Bruce Morton - Entrust, Chad Dandar, Chris Clements - Google Chrome, Clint Wilson - Apple, Corey Bonnell - DigiCert, Corey Rasmussen - OATI, Dean Coclin - DigiCert, Dimitris Zacharopoulos - HARICA, Doug Beattie - GlobalSign, Dustin Hollenback - Microsoft, Enrico Entschew, Greg Tomko - GlobalSign, Jaime Hablutzel - WISeKey, Janet Hines - VikingCloud, Johnny Reading - GoDaddy, Jos Purvis - Fastly, Kateryna Aleksieieva - Certum by Asseco, Keshava N - eMudhra, Li-Chun Chen - Chunghwa Telecom, Llew Curran - GoDaddy, Lucy Buecking - IdenTrust, Luis Cervantes - SSL.com, Mads Henriksveen - Buypass AS, Mahua Chaudhuri - Microsoft, Marco Schambach - IdenTrust, Martijn Katerbarg - Sectigo, Michelle Coon - OATI, Mrugesh Chandarana - IdenTrust, Nargis Mannan - Viking Cloud, Nate Smith - GoDaddy, Nicol So - CommScope, Nome Huang - TrustAsia, Paul van Brouwershaven - Entrust, Rebecca Kelley - SSL.com, Rollin Yu - TrustAsia, Ryan Dickson - Google Chrome, Sandy Balzer - SwissSign, Scott Rea - eMudhra, Stephen Davidson - DigiCert, Steven Deitte - GoDaddy, Tadahiko Ito - SECOM, Thomas Zermeno - SSL.com, Tobias Josefowitz, Trevoli Ponds-White - Amazon Trust Services, Tsung-Min Kuo - Chunghwa Telecom, Wayne Thayer - Fastly, Yamian Quintero – Microsoft

## Note Well

Notewell is read.

## Agenda Review

No additional topics for the agenda.

## Working Group Updates

- Server cert working group: no update
- Validation Subcommittee: no update
- Network security: 
  - NS004 in discussion
  - NS005: IPR review
  - NS006 (definitions + part of section 2: to move into discussion shortly.
  - Will be touched on simultaneously, as they relate to different part of the document.
  - Next workitems:
    - MPIC requirements in TLS BRs. There is some overlap with NETSEC requirements. Discussion on how to align between the two documents, and how to help support ongoing discussions to avoid conflict of expectations.
    - Trevoli raised that it was also decided that this last topic would be raised for the server cert working group. Netsec cannot meaningfully change the TLS BRs.
    - Clint agreed. Also same story for SMIME.
    - Dimitris asked for clarification, if the intention was that the TLS BRs should have language referencing the NETSEC requirements?
    - Trevoli explained that it was more general to discuss the solution.
    - Ryan Dickson added that it was the intent to make the language clear, to mirror the NETSEC requirements. So Dimitris proposal would work.
- CodeSign: no update
- SMIME:
  - SMC09 Passed and is in IPR through November 22nd (requiring pre-linting). Requirement for Webtrust for Network Security for audits starting after April 1st 2025.
  - MPIC for SMIME going to ballot soon. Largely mimcs TLS, except staggering a “shall” in a couple of months.
  - Reviewing the impact of TLS changes to SMIME. Steven Davidson (DigiCert) asks to remind other standards are compelled to adopt changes in line with TLS.
- Definitions and Glossary Working Group: no update
- Forum infrastructure subcommittee: no update.
  - Looking at integrating GitHub with website updates in the future.
- IPR Subcommittee:
  - Recap on GitHub. Ben explained that the subcommittee was going to ask if there was a preference for an open vs closed approach. There seems to be a preference to the open approach with feedback agreement that could be include into a CLA process, or something similar. CLA bot may be required to enforce the IPR policy that is in place. Lightweight approaches with continued improvement efforts. Suggestion to just let it calm down.
  - Discussion about exclusion notice. Wants to make sure that allowing exclusion notices on things that could have been brought previously and weren't. Narrow exclusion notices down to what is in the redline rather than the full guideline.
  - Question about licensing for code of the CAB Forum. Probably not needed because code shall not be contributed into a standard.
  - Dimitris: question about the example for how to calculate a request token. Would this be in scope? Ben answers that 6.4 says to not submit code that is going to be incorporated that might have IP attached to it.
 
## GitHub question.
- Dimitris wasn’t sure where this contribution issue should live between the forum level and the server certificate working group. There might be some overlaps. For example, there may be a position that any contribution, comment, pull-request could be considered a formal contribution because it could be resulted in the guideline. Dimitris however things that many contributions don’t really contribute to the standard that IP can be claimed. Recognizes that there may be a difference of opinion. There was a proposal to make IPR process optional in certain ballots. Something similar could be considered here as well. There may be a need to be more efficient in handling IP risks.
- Ben agrees, this needs to be captured. For example, is there a need to update language, for example the definition of “contribution”. There is no scoping of the venues. Dimitris agreed that this could use clarification.
- Trevoli asks what happens when an interesting party joins that is employed by a member of the forum, or somehow affiliated to the forum. Ben answers that that is something that we don’t want to allow. Trevoli clarifies she meant within the same group, and Ben answers that that wouldn’t be allowed either, but right now there’s no policy.
- Scott Rea (eMudhra) raises that there is a use case, where a party is maybe running their own consulting organization and might be affiliated somehow to members, without being able to speak for those companies. There may be a need to be identified.
- Trevoli doesn’t see a problem with that, the main concern is multiple people from the same company joining as interested parties. It could obscure where the interest lies.
- Ben explains that the W3C IPR policy has some clarifications, but maybe there’s a need to find our own answers.
 
## Elections:
- Discussion period for vice chair of server certificate working group – has two candidates. Voting period will be a private voting, starting on Monday, together with confirmation ballots.
 
## Meeting Adjourned
