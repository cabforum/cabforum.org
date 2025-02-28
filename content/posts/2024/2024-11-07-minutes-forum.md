---
title: 2024-11-07 Minutes of the CA/Browser Forum Teleconference
author: Martijn Katerbarg
summary: Final minutes of the CA/B Forum call held on November 7, 2024.
date: 2024-11-07
tags:
  - Forum
  - Minutes
type: post
---

## Read note-well

## Roll-call via Webex
Aaron Gable (ISRG), Aaron Poulsen (Amazon Trust Services), Adam Jones (Microsoft), Adrian Mueller (SwissSign),  Adriano Santoni (Actalis), Alvin Wang (SHECA), Andrea Holland (VikingCloud), Atsushi INABA (GlobalSign), Ben Wilson (Mozilla),  Brianca Martin (Amazon), Bruce Morton (Entrust), Chad Dandar (Cisco), Chris Clements (Google Chrome), Clint Wilson (Apple), Corey Rasmussen (OATI), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Eun Seong ((MOIS - Ministry of Interior and Safety)of the republic of Korea), Jaime Hablutzel (WISeKey), Janet Hines (VikingCloud),  Ji Eun Seong ((MOIS - Ministry of Interior and Safety)of the republic of Korea), Jos Purvis (Fastly), Li-Chun Chen (Chunghwa Telecom), Llew Curran (GoDaddy),  Lucy Buecking (IdenTrust), Lynn Jeun (VISA), Mads Henriksveen (Buypass AS), Mahua Chaudhuri (Microsoft),  Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Miguel Sanchez (GTS), Mrugesh Chandarana (IdenTrust), Nate Smith (GoDaddy), Nicol So (CommScope), Nome-Huang (TrustAsia), Rollin Yu (TrustAsia), Tathan Thacker (IdenTrust), Tsung-Min Kuo (Chunghwa telecom), Nargis Mannan (VikingCloud), Nazril Ghani (posdigicert), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Ryan Dickson (Google Chrome), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Steven Deitte (GoDaddy), Tim Callan (Sectigo), Trevoli Ponds-White (Amazon Trust Services), Wayne Thayer (Fastly)

## Review of Agenda - Added discussion of reviewing Bylaws

## Approval for next meeting minutes from October 24, 2024, Teleconference - approval during next meeting.

- Discussion on improving quality of minutes - Ryan D., Martijn K. Dimitris Z., Wayne T., Andrea H., Tim C., Clint W., Nicol S., Ben W.
  - Example Chrome’s presentation from F2F#63 Meeting missing questions discussed during the presentation.
  - It is difficult to have standardization of meeting minutes since it is a voluntary and the meaning of the conversation could be different for each person involved.
  - Review period is equally important to make sure minutes are accurate to portray the correct intent vs interpretation.
  - Guidance while not binding is helpful to provide direction on what level of detail to provide.  Maybe with concrete recommendations.
  - Transcripts while not always accurate are a useful ancillary item for gathering the minutes.
  - Recording is also useful for gathering the minutes as people might not take minutes at the time of meeting and listen to the recording later.
  - After the minutes are memorialized and published, we should not keep the transcripts or recordings.
  - Potentially have people who don’t plan to discuss items volunteer as minute takers, the only issue would be unexpected deciding they want to discuss an item.
  - If there are no discussions during the presentation, then minute taker notes “No discussion”.
  - Action Item: Setup general instructions for minute taking on the Wiki.

## Server Certificate Working Group – No update

## Code Signing Certificate Working Group (Bruce M.)
- Progress has been made with ballot on changing maximum validity period. All the terms are roughly agreed to, so it is ready for a ballot write up.
- Action Item: Keep the CS BRs in-sync as much as possible with other BRs.

## S/MIME Certificate Working Group (Martijn K,)
- SMC-09 in IPR until November 22.
- Discussion period SMC-10 MPIC for SMIME - 2 month delay from TLS BRs effective date.
- Longer period for domain control 3.2.2.2
- RFC 8823: ACME for SMIME. Should we allow validation methods from the RFC.
- Action Item: Will need to analyze on if this should be its own validation method or just to promote and recommend? 
- Allowing QIIS sources or reliable methods for data verification like location.

## NetSec Working Group (Clint W.)
- Did not meet this week.
- Ballots in voting period:
  - NS-004 – update Section 4
  - NS-006 - clarification to Section 1
  - NC-003 will be enforced in March 2025 which effects both NS-004 and NS-006. Noting that unless additional ballots are passed to clarify that language before then, please review to make sure there are no issues.

## Definitions and Glossary Working Group (Tim C.)
No progress yet.

## Forum Infrastructure Subcommittee (Jos P.) – Ben W., Dimitris Z., Martijn K.
- Research in voting through alternate means besides email.
- Potential member tools. Any concerns about this process.
- Have issues with the emails getting flagged because too many emails with the same Subject.
- Testing has begun with member tools to see how it works.  Once ready there will be consensus with the implementation before we officially use.
- GitHub actions to look at automated pull requests like updating ballot pages as ballots status changes.
- Investigating other tools to handle redlines from markdown.
- Member tools repo was only visible to small group has been fixed to read only access to the particular repo for anyone who is par of the members category in our GitHub organization.
- Action Item: Request to be added with your GitHub account if you want to view the member tools code.
- How to handle questions list.
- Questions questions@cabforum.org email address, is set in the Bylaws and BRs.
- Proposed interim solution: Inbound email is forwarded those responses to specific email address cabforum and specific rules that can bug specific people or WGs. That way the discussion of responses occurs and then the appropriate person can respond officially to the original inbound email without having issues with finding the original email.
- Proposed long term solution: Update the docs to have a new solution.

## Intellectual Property Rights Subcommittee (Ben W.) – Dimitris Z., Scott R., Clint W., Nicol S.
- Will review the straw person proposal for invited experts.
- Apple attorneys will clean it up then it will be forwarded to broader group to review.
- Process for how to allow invited experts to present without running into IPR issues. They won’t sign IPR but follow an Invited Expert Policy.
- 14-day discussion prior to them being allowed to present.
- Can discuss experts background, justification for their participation, intended outcomes and if someone can object to their participation.
- Issue with F2F as sometimes people cancel on short notice, and we have to find someone on 4–5-day notice.
- 14 days helps cover people who might be on vacation.
- In process revising template for filing exclusion notes and note it in the IPR policy.
## Contributions on GitHub from people that have not signed the IPR agreement – Dimitris Z., Ben W., Chris C., Paul V.. Martijn K., Nicol S.
- Discussion on serverCert WG to get an agreed text which would steer the discussion to CCADB.
- Questions: How should we handle input from non-members as a whole? How to redirect people to the better location for these types of discussion? What will be the permanent text?
- Lightweight solution from IPR group:
  - CLA bot for people who try to do pull requests or edit things but nothing easy for people just commenting.
  - Could point people to a CLA if traffic gets high to remind people. Add it to the README for each github repo.
  - Bot that already included version number could we had comment that address this on issues and pull requests.
  - CLA wording a little too vague as what counts as a contribution. Does just mentioning an IP does that mean that the person waves the rights to that patent claim. We want to scare away anyone who tries to present IP.
  - Action Item:
    - Discuss IP concerns in next meeting
    - Ben will have a ballot for CLA wording, Dimitris agreed to endorse. Once passed it will be added to the bot.

## Elections update 2024 (Dimitris Z.)
- Vice Chair voting completed!
- Wayne T. (ServerCert), Tim C. (Forum), Thomas Z.(CS), Martijn K.(SMIME), David K. (NetSec)
- Action Item: Requesting feedback on how the process went.

## Amendments to the Bylaws (Ben W.) – Dimitris Z., Martijn K.
- GitHub pull request setup
- List all the issues and see if any overlap to cover.
- Prioritize list of issues then potentially breakdown into smaller ballots instead of one large ballot.
- Noted minor planed updates like ability to adjust how votes are submitted, typos, etc.
- Additional noted that IPRs need to address Organization vs Interested Party - as part of an Organization vs Interested Party - as an Individual to prevent an Interested Party filing as an Individual to circumvent IPR requirement for Organizations.
- Action Item: Move all the different items from the Google documents to GitHub issues to track and prioritize.

## Any Other Business
- Action Item: Start registering for the next face to face

## Next call: November 21, 2024

## Adjourn