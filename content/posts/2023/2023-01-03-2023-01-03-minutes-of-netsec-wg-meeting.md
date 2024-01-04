---
aliases:
- /2023-01-03-2023-01-03-minutes-of-netsec-wg-meeting/
author: Ben Wilson
date: 2023-01-03 16:37:27
tags:
- Network Security
title: 2023-01-03 Minutes of the Network Security Working Group
type: post
---

**Antitrust statement** was read by Clint Wilson

**Attendance:** Clint Wilson, Ben Wilson, Dustin Hollenback, Rollin Yu, Tim Crawford, Adam Jones, Corey Rasmussen, Josef Nigut, Wendy Brown, Prachi Jain, Jamie Mackey, and Rebecca Kelley

1.      **Straw Poll** – The straw poll to determine a better meeting time closed on Jan. 2 with 17 votes. Twelve voted against changing the time (only five said that they could still consistently attend the meeting if the time were changed). Clint asked whether the polling period should be extended. Ben suggested that we close the poll and base it on the current information available. Clint will send out the results and see if there are any further discussion on the list.

Moving on to the two topics / emails sent by Ben on December 6th.

2.      **Air-Gapped CAs** (offline, powered off, air-gapped/but powered on, etc.) – We were hoping that people would have time to consider their own configurations and operations. On the call, not many people could think of situations where root CAs were kept powered on, so why does NCSSR section 1.c.  say, “in an offline state or air-gapped from all other networks”?  Alternative language suggested was “in an offline state, and when powered on, then Air-Gapped from all other networks.”

Another issue is how we should handle other air-gapped (non-root) CA systems. It was suggested that we change our approach to “online” and “offline”.  Then we could refer to systems as being online, offline, or online and air-gapped. (Some intermediate CAs are online, while others are maintained offline.)  In the NCSSRs, we define and refer to “Certificate Systems” and “Issuing Systems”, but we need to define our CA systems reference model better. Developing / using our own NetSec WG terminology can be just as good or better than anything else out there.

3.      **Document Organization/Structure** – Rather than use RFC 3647 as a framework for the NCSSRs (we can always provide a mapping), Ben was suggesting that we have high level objectives at the start of each of the sections, re-organized into eight different categories, because he didn’t think it would work for the first section. Clint suggested that for Section 1 it would still work. We could have a statement to give readers a context for the requirements, but without adding new requirements. For instance, in Section 1, we could add at the beginning something like, “We expect all CAs to have a very high level of security for their infrastructure and systems because they play a vital role in the security of the Internet, the delivery of code and application systems, and the security of email.” Most of these requirements aren’t necessarily CA-specific. They are things that any company with an Internet presence should be doing—we should be encouraging CAs to follow best practices.

**Adjourned**