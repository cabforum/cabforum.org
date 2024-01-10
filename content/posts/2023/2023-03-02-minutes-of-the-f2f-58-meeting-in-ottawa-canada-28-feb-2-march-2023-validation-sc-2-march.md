---
aliases:
- /2023/03/02/minutes-of-the-f2f-58-meeting-in-ottawa-canada-28-feb-2-march-2023-validation-sc-2-march/
author: Iñigo Barreira
date: 2023-03-02 11:55:47
tags:
- Face-to-Face
- Minutes
- Server Certificates
title: Minutes of the F2F 58 Meeting in Ottawa, Canada, 28 Feb-2 March 2023 – Validation
  SC (2 March)
type: post
---

# Validation Subcommittee

Corey noted that the Antitrust Statement had been read and that attendance had been taken.

The minutes of the meeting of Feb. 9, 2023, were approved.

Corey recapped the status of the work accomplished by the Validation Subcommittee. First,

since the Fall 2022 face-to-face meeting, the most notable accomplishment has been progress on the certificate profiles ballot. We also restarted the discussion of including LEIs in certificates, and we continued work on a review of “Applicant” and “Applicant Representative” in the Baseline Requirements (BRs). During the read-through of the BRs, we identified other things to fix as well.

**Agenda review** – We’ll discuss Multi-Perspective Domain Validation and then certificate issuance flows, as time allows.

## DISCUSSION ON MULTI-PERSPECTIVE DOMAIN VALIDATION (MPDV)

Ryan D. sees value in MPDV. We need to define core terms for MPDV– e.g. geographically diverse, etc. Then, we need to look at a base implementation, a phased implementation, and a set of ‘SHOULD” requirements for the desired end state. We also will need to define the required quorum, a set of minimum requirements, and how we monitor compliance. Then, for the long-term, we will need to implement an enforcement period where CAs must use MPDV.

Aaron G. stated support for MPDV. The group should look at the Princeton paper’s suggestions. We need to be careful with the language used. We should also make sure that extercanal MPDV points are not within a CA’s audit scope. The primary domain validation point must succeed, and no more than one point external point can fail. The external points must not be in scope of audit until the Forum fully addresses cloud issues.

Clint stated support for incorporating these into the BRs.

Trev asked whether anyone disagreed with including MPDV requirements in the BRs? Does anyone have objections, other than audit scope? There were no objections.

Dimitris said MPDV alone may partially mitigate the problem because route propagations would eventually reach most of the vantage points and point to the attacker after some time. As discussed in the past, but also in the paper presented by Henry, BGP attacks will be better fought with the additional enforcement of RPKI by the CA’s ISPs. So both MPDV and RPKI should be implemented. Cloudflare has an API solution. It is a great opportunity to develop similar API-based solutions with the collaboration of CAs and the browsers.

Aaron said that MPDV cannot be bypassed by waiting for BGP to propagate.

Dimitris clarified that an announcement of a more specific route would ultimately be preferred so an attack would be successful overtaking the majority of the vantage points. Aaron mentioned that this would be a very “noisy” attack, and Dimitris replied that some attackers have factored that in, and we have already seen cases where attackers don’t really care about such “noise” as long as their attack is successful, usually with significant financial benefit.

Tim said that there could be a risk if multi vantage points are not included in an audit because attackers will move to the low-hanging fruit. The solution for audit scope can be as simple as requiring that the additional vantage points are protecting against these issues. We could do a threat analysis of how an attacker would try to defeat MPDV.

Don said that there are issues unless the cloud provider is audited for the right controls and that the controls are effective. This relates to the carve-out audit issues that have been previously discussed.

Wayne asked about the need for a threat analysis, since there are a number of academic papers on this that have been published.

Tim said we should ensure that we have a problem statement rather than a threat analysis.

Tobias J. noted everyone should look at the research to understand the problem. Noting that RPKI solves some problems but everyone needs to participate for it to work at the highest capacity. MDP doesn’t solve all problems either, so both problems should be discussed.

Dimitris Z. agrees we need both solutions, but keep in mind even together they won’t solve 100% of the problem.

Ben W. stated that this should be addressed in Section 3.2.2.4 or section adjacent in the BRs, otherwise Mozilla will place it in their policy.

Inigo said as we work through this we need to think about solutions that work for small CAs and Government CAs that can’t use a private company.

Aaron G. provided a quote from Henry’s paper as a good place to start with the problem statement:

“\[T\]he process that CAs use to verify domain ownership, known as domain control validation, is vulnerable to BGP attacks. By hijacking traffic to a victim’s domain during domain control validation, an adversary can fool a CA into signing a certificate on behalf of the adversary for a domain the adversary does not control.”

General agreements from the MDP Discussion:

This is a top priority for CAs and Browsers alike.

First we will tackle MDP as a phased approach in the BRs, then we will address RPKI.

Ryan D. will be leading the charge with a dedicated group. Please reach out to him if you are interested in joining the MDP group.

Steps for addressing MDP:

1. define the problem statement – with specific scope:

- 1. what attack is being addressed
- 2. what validation methods are involved

2. set the definitions
1. set the goals
1. draft language

Next meeting is Thursday, March 9th