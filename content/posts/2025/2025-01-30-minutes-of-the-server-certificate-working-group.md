---
author: Wayne Thayer
date: 2025-01-30 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-01-30 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Antti Backman (Telia Company), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi (Microsoft), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Jaime Hablutzel (OISTE Foundation), Jeff Ward (Jeff Ward (private person)), Ji Eun Seong (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Martijn Katerbarg (Sectigo), Miguel Sanchez (Google), Nicol So (CommScope), Nome Huang (TrustAsia), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Ryan Dickson (Google), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wayne Thayer (Fastly), Yamian Quintero (Microsoft).

## Read Note Well

Dimitris read the note well

## Review Agenda

Approved agenda as is.

## Approval of minutes

-	The December 5th and December 19th meeting minutes were approved.

## Membership

Membership Application for Aprio as an Associate Member

- On yesterday’s SMIME WG call, same application was discussed - Jeff Ward applied as an individual Interested Party and that was previously approved.  Now Aprio (Jeff Ward representative) wants to participate as a legal entity.
-   Forum has agreed to accept CPA Canada, WebTrust Task Force, and ETSI as Associate Members, but not individual companies/auditors.  SMIME WG agreed to accept Aprio as an Interested Party, but not as an Associate Member. Interested Party is open to anyone, but CA/B reserves Associate Member for auditor groups.
- We have many people joining as individuals lately and not representing the company they work for or have a relationship with; may be avoiding bureaucratic issues with their employers – this is currently allowed by the bylaws.  Digicert’s legal had some concerns with this related to Work-for-Hire laws. End up in situation where all CAB members have an agreement with an individual who does not have the ability to make a legal agreement about their contributions because those contributions could be owned by someone else.  Recommend having Bylaws group review.  Dimitris noted that the Policy Working Group is actively working on this.  Other legal counsels have expressed similar concerns as well.
- Agreed to accept Aprio as an Interested Party.  Changes will be made to Jeff representing Aprio and updating by removing him as an individual and making Aprio an Interested Party.  Should Aprio become part of WebTrust TF, they could participate in that manner as part of the WebTrust TF. 

## Github issues discussion triage

-   Email discussion in December/January about the triage process and trying to make efficient use of time during meetings. Recommend better preparations prior to the CA/B meetings with Dimitris and the drivers of the open issues. Some attendees shared that the full group does not need to spend time at these meetings reviewing every open issue.  Issues can be filed and shared on mailing list and discussion can be had there. Then someone that is working on that issue can transition to from working on the issue to working on the pull request and then the accompanying ballot.

    -   If there is something you want to discuss, request it to be added to the agenda.

-   Close to doing a first pass on all currently open issues.  Once we complete that, begin grouping them together in terms of complexity, then have more people contribute to the issues.  Goal is to get more people involved.  Comment from Ryan D. that preparation is not always viable – sometimes due to lack of historical context – suggested prioritizing more impactful initiatives as a group.  Dimitris responded that part of issue creation is to have a central repository of issues to discuss, they are all trying to improve the security ecosystem and the requirements.  So if any new ideas or proposals to discuss improvements or requirements to the ecosystem, an issue should be created for it.  So then if a ballot is created, there is also a reference to that issue.   Becomes difficult to track all the tasks in parallel.   Members agreed that every ballot should have one (or more) issue on the issue tracker.

    -   Backlog has now been cleaned up; that was the initial focus of triage and reviewing the issues.  People can now comment that they triaged this issues, and if you don’t agree with it, we can debate it.
    -   This is why we set up periodic GitHub issue reminder reports to the mailing list.  It was helpful to have that reminder what the backlog looks like.   So people had a chance to see some of those issues as they began to fall behind and could re-focus on it.  So now we can focus on the pressing issues – if none, then just keep the meeting moving.  Remind the group of older issues and focusing on pressing items.

-   Trev recommended to have a template for creating new issues.  Discourages behavior of half-context issues in github.
-   Trev also suggested to continue to send them in the agenda ahead of time, but also it would be helpful in this meeting towards the end to discuss issues we want to talk about on the next call time so that they will be included in the meeting minutes (even earlier than the agenda) so you get to know this is what we’re going to discuss next time. 

## Github issues

Dimitris reviewed the set of issues in GitHub, starting from issue 532 and attempting to work through roughly ten issues per call.

-   Issue #532 – Opened by Dimitris Zacharopoulos regarding allowing the creation of client authentication certificates in a TLS-capable issuing CA.  This is not expected behavior – the idea was to add some language in the BRs to make that more clear.  Initially considered a cleanup ballot, but said we need to be careful with the language otherwise we may disallow creation of OCSP signer certificates, CRLs, etc.
    -   Dimitris will propose alternative language for this one.

-   Issue #533 – Entered by Ben Wilson related to clarifications for 3.2.2.4.7.  "Confirming the Applicant’s control over the FQDN by confirming the presence of a Random Value or Request Token for either in a DNS CNAME, TXT or CAA record for either 1) an Authorization Domain Name; or 2) an Authorization Domain Name that is prefixed with a Domain Label that begins with an underscore character."  The wording can be confusing structured this way.  This method is at least 12 methods – three kinds of records, two kinds of tokens, and two different places to look for it.  The definition of Authorization Domain Name has much complexity to it as well.  So there’s quite a bit.
    -   It was recommended to split out the records.
    -   Move to backlog for Validation subcommittee.

-   Issue #538 – This was fixed in clean up ballot.
-   Issue #539 – This was fixed in clean up ballot.
-   Issue #540 – Created by Rob Stradling related to OCSP Extension redundancy in sections 7.1.2.8.2 and 7.1.2.8.8.
    -   Flagged for future clean up ballot.
-   Issue #541 – This was fixed in clean up ballot.
-   Issue #546 – Created by Amir Omidi for updating title of 3.2.2.4.4 to remove the phrase, “to Domain Contact” – it improperly uses the phrase “Domain Contact” where it could be misinterpreted as the defined term, “Domain Contact”.
    -   Flagged for future clean up ballot to update the title.
-   Issue #547 – Submitted by Amir Omidi since 3.2.2.4.3 and 3.2.2.4.15 both have the same name and one is deprecated, but the other is not.  The number is the identifier, not the name.
    -   Agreed to add “v2” to the title of method 3.2.2.4.15 and flagged for future clean up ballot.
    -   Also need to note that this method is prohibited.
-   Issue #550 – This was fixed in clean up ballot
-   Issue #556 – This was fixed in clean up ballot.

Caught up through October 2024.  Dimitris will review remaining, and attempt to group them together and share findings.

## Ballot Status

**Passed**

-   None

**Failed**

-   None

**In Discussion Period**

-   SC-084: DNS Labeled with ACME Account ID Validation Method
    -   Will start voting period next week (January 21, 2025)

**In Voting Period**

-   SC-083: Winter 2024-2025 Cleanup Ballot

**Under IPR review**

-   None

**Draft / Under Consideration**

-   SC-081: Introduce Schedule of Reducing Validity and Data Reuse Periods
    -   Will soon be ready for discussion period.
-   SC-0XX: CA Assisted Domain Validation
    -   Planned for discussion at next Validation meeting.

## Any Other Business

No other business.

## Next call

The next scheduled Teleconference is on January 30, 2025.

## Adjourn

Meeting adjourned.
