---
aliases:
- /2023-12-07-minutes-of-the-f2f-60-meeting-in-portsmouth-nh-usa-3-5-october-2023-scwg-4-october/
author: Iñigo Barreira
date: 2023-12-07 17:39:46
tags:
- Server Certificates
title: Minutes of the F2F 60 Meeting in Portsmouth, NH, USA, 3-5 October 2023 – SCWG
  (4 October)
type: post
---

# Server Cert Working Group

Date: October 4, 2023

Minute Taker: Kiran Tummala (Microsoft)

**Revocation**:

The current rules in place were established about a decade ago, and much has changed since then, especially in terms of certificate volumes and crt.sh. Often, revocation appears to be a cosmetic issue, and there’s a sense that it does a disservice to both subscribers and relying parties. Creating unnecessary crises is not beneficial. There’s a strong desire to update the rule.

Key Points:

1. Hold CA accountable for errors, without placing the burden on subscribers and relying parties.
1. Proposed an extension of the revocation period from **5 days to 15 days** to allow sufficient time for replacement.
1. Suggest a different remediation process for certain types of issues, such as typos.
1. Establish a general consensus on allowing additional time for remediation, particularly extending the revocation period to 15 days.
1. Request a detailed proposal outlining the changes being suggested and providing reasons for these changes.

Conclusion:

The overall consensus leans towards a 15-day revocation period, with an emphasis on avoiding unnecessary crises and giving subscribers ample time for replacement. The proposal should not only detail the changes but also provide clear reasons for each modification.

**Ballots**

- SC65 EVGs into RFC 3647 Format: – Inigo Barreira
- Received emails from Dimitris and the team, reviewed them.
- Two more endorsers needed for this ballot.
- Subscriber Agreement and Terms of Use: – Ben Wilson
- Refined certain terms.
- Discussed BRS definitions on Applicant/subscriber.
- Explored the use of “Applicant Subscriber” in some instances.
- Subscriber is required to accept the subscriber agreement and the certificate issued in accordance.
- Added a definition for “Application Subscriber” and seeking suggestions for improvement.
- Rephrased the subscriber agreement definition based on feedback from Bruce.
- Ben secured endorsers for the Subscriber Agreement and terms of use.
- SCWG Group Charter Update: – Ben Wilson
- Ben sent an email with revised sections (3, 4, and 5) of the charter focusing on certificate consumers.
- Discussed changes made to sections.
- This ballot was discussed at the working group and forum levels with changes.
- Ben needs two more endorsers.
- Next step, even without endorsers, Ben can publish this to the public list for discussion.

**GitHub Open Issues**

#180 Log Entries Ambiguity in 5.4.1:

- Resolved in the log ballot; terminology changed to “log record.”
- Issue #180 is now closed.

#186 Subscriber Key Pair Generation and Private Key Control Verification:

- Consensus reached on this issue.
- Decision pending on whether to close or keep it open.

#187 Technically Constrained Sub CAs and Key Generation Report:

- Agreement that Technically Constrained Sub CAs should require a Key Generation report.
- Inigo will contact Pedro for further action and information.
- Consensus to close the issue.

#201 Clarification of Problem Reporting Method Accessibility:

- Substantial discussion during the Mozilla update on this topic.
- Agreements reached to close the issue.

#229 Clarification of “Appropriate Way” for Wildcards and gTLDs:

- Agreement on the need for clear improvements.
- Designated as a backlog item with low priority.
- Suggested as a good first ballot if needed.
- Concluded to add a “help wanted” label; Dimitris will coordinate with participants to assign the issue.