---
aliases:
- /2020-04-21-2020-04-02-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-04-21 15:51:01
title: 2020-04-02 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) {.wp-block-heading}

Arno Fiedler (D-TRUST), Bruce Morton (Entrust Datacard), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Jos Purvis (Cisco Systems), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rich Smith (Sectigo), Robin Alden (Sectigo), Shelley Brewer (Digicert), Thanos Vrachnos (SSL.com), Tim Hollebeek (Digicert), Timo Schmitt (SwissSign), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority)

## Minutes {.wp-block-heading}

### 1. Roll Call {.wp-block-heading}

The Chair took attendance.

### 2. Read Antitrust Statement {.wp-block-heading}

Robin read the Antitrust Statement.

### 3. Review Agenda; assign minute-taker {.wp-block-heading}

Dimitris asked Wayne if he would take the minutes and Wayne accepted.
Wayne suggested that minute takers be assigned in advance.
Tim volunteered for the next meeting.
The agenda was accepted without changes.

### 4. Approval of minutes from previous teleconference {.wp-block-heading}

Accepted without objections.

### 5. Validation Subcommittee Update {.wp-block-heading}

Tim said that on last week’s call the committee had been planning to review the profiles in section 7.1 line-by-line with a default-deny interpretation, but didn’t do that. Discussion quickly shifted to the format of the profiles. The current format is split up and not clear. Decided it would be much clearer if the entire profile was in one place. And also that a table format would be clearer than the English prose currently used. The order should be consistent with that in the actual certificate and as displayed by linting tools. Discussed the skeleton of the profile and decided that a spreadsheet would be the best tool to develop it in. Agreed to discuss the layout on the next call.

Ryan said that he will be creating the spreadsheet and will share it via a new email thread on the Validation list. Ryan said he will start on it today.
Dimitris asked if the spreadsheet will start with end-entity certificates? Or CA certificates?
Tim said that we will start with roots because they’re simpler.
Ryan said that he plans to tackle all three, plus OCSP responder profiles, so that we can see how it looks with all the profiles.

### 6. NetSec Subcommittee Update {.wp-block-heading}

Neil said that on the last call they discussed SC28 regarding changing the time required for audit log retention. Plan is to split this information into three categories: CA certificate events, subscriber events, and security events. Spent a lot of time trying to clarify the new 5.4.3 and remove repetitive information as is currently the case. They also discussed NCSSR requirement to remove system accounts after 3 months of inactivity. A ballot is forthcoming. Document restructuring continues, with the current activity around the use of terms with clear and defined meanings. Lastly, there was continued discussion on ballot SC29. The subcommittee is meeting again today to continue those discussions.

### 7. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

_SC29 System Configuration Management (Neil)_
Dimitris said that it is challenging to coordinate responses to the discussion with the HARICA team.
Neil said that he sent a response to Dimitris that is not showing on the list.
Ryan said that the email sent 5 hours ago did come through.
Dimitris said that he didn’t receive the Spring Cleanup email from Ryan either. Dean and some others agreed. All said that Doug’s reply was received.
Dimitris said that we can ask GoDaddy and Jos about this.
Wayne said that since the messages are in the list archive there’s probably not much they can do.
Dimitris said that he is still trying to digest Ryan’s response to his email on SC29. There are different interpretations of the practical implementation permitted by SC29.
Ryan agreed and suggested that practical implementations should be explored on the thread. There may be a way to achieve agility with the proposed language.
Dimitris said that the intended implementation from Neil is something HARICA already does, but there is a more fundamental disagreement. For systems exposed to the internet, they feel it is better to auto-approve and install patches sooner due to the risk rather than waiting 2-3 days for approval.
Trev said that auto-approval could be an acceptable change management process. You are describing a process that has been thought through and a specific decision made.
Dimitris agreed.
Ryan gave the example of Windows Update on the local network or a Linux RPM mirror. If you have a system in place that describes how you manage those updates and know what’s an approved change, that’s okay.
Dimitris said that he would try to describe it better. They also have a process to monitor changes.
Neil said that he thought a non-change-managed system was being described as being desired. That’s not going to work. If you have a properly risk assessed and documented decision describing how a given system is updated, that’s a change management process.
Dimitris agreed but said that Ryan’s response didn’t seem to accommodate that.
Toby said that we may still not be talking about the same thing. Dimitris is describing updating straight from the OS vendor when it is determined that not accepting a patch is a greater risk.
Ryan said that directly enabling updates from a vendor is not acceptable. If you implement a mirror, changes can be tracked, assessed, and inventoried.
Dimitris said that he always knows what’s installed on the system. Mirroring updates from the vendor just adds an unnecessary step.
Tim said that two things should be disallowed: One is: don’t just require a risk management policy that is meaningless, and the other is to require someone who is competent to approve the updates.
Jos said that we’re conflating where you get updates – a local mirror doesn’t make things more secure – with deciding what to apply before you apply it. It doesn’t have to go through a long testing process but someone has to look at patches before applying them.
Ryan said that his opinion is the inverse of Jos’ and suggested it be discussed further on the list.
Jos said that – as long as the packages are signed – you have to trust your OS vendor, and pulling them to a local system only buys you so much.

#### Ballots in Voting Period {.wp-block-heading}

None.

#### Ballots in Review Period {.wp-block-heading}

_SC26 – Pandoc-Friendly Markdown Formatting Changes (Jos)_

#### Draft Ballots under Consideration {.wp-block-heading}

_LEI ballot (Tim H)_

Tim said that he’s not convinced there is enough support for it to continue. If people support it, please let Tim know or post to the list. DigiCert still supports it, but there’s no use talking about it if it’s not going to pass.

_Spring Cleanup Ballot (Ryan)_

Ryan said that there are three ballot proposals in his recent email. First is the Browser Alignment Ballot. Ryan is adding some new changes to better align with Apple’s program requirements. The Browser Alignment Ballot question asked by Doug on the list is if requirements from a particular browser root program that are more restrictive than other programs should go into the BRs? Are we better off putting those into the BRs for alignment, or not?
The second ballot is about requiring CAs to disclose the Agency of Registration/Agency of Incorporation sources used to validate certificates.
Finally, the Spring Cleanup ballot fixes issues in the BRs and EVGLs and tries to clarify confusion that has come up.
Circling back to the Browser Alignment ballot, each browser has some requirements that are more restrictive. Should those go into the BRs?

Doug asked if comments should be made on GitHub or on the list?
Ryan said whatever is easiest is fine but GitHub allows you to comment on specific lines, so it’s better for substantive discussion.
Pedro said he is not familiar with GitHub. Can we have a “GitHub for dummies” guidelines to get a better sense for how to use it?
Ryan said that GitHub is primarily to provide a redline – the intent wasn’t to force folks to use it. The Infrastructure WG is working on the ability to produce redlines in different formats.
Tim said that there is not a blanket answer to the question about moving changes from browser root programs not the BRs. DigiCert would support some and have issues with others. How do we deal with the fact that some of these changes are more or less controversial?
Ryan said that’s a good question. He consulted with root programs to get their requirements correct. Ryan said that if there are technical details to improve root program requirements, he is open to improving them, but root programs aren’t going to make policy changes based on this. Other things like phase-in time are going to be up to the programs.
Tim agreed with the approach and said that we will discuss this on the list.

### 8. Any Other Business {.wp-block-heading}

None.

### 9. Next call {.wp-block-heading}

April 16th, 2020

### Adjourned {.wp-block-heading}