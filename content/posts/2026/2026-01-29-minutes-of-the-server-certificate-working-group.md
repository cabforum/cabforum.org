---
author: Wayne Thayer
date: 2026-01-29 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-01-29 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

Minutes by Jos Purvis (Fastly)

## I. Meeting Logistics

 * Dimitris read the note-well.
 * No changes were requested for the agenda.
 * The minutes from the 15 January meeting were approved without changes.

## II. Membership Applications

 * The membership application of Santosh Pandit as an individual interested party was reviewed and approved without objection.

## III. Ballots

 * The cleanup ballot currently in its discussion period was reviewed. Kateryna Aleksieieva (Certum) indicated there were no updates on the ballot status, but they hoped to have it completed in January.
 * There are 3 ballots currently in IPR: SC 94, 96, and 97. Ballots 94 and 96 will end their IPR periods on the same day; Dimitris asked the group for guidance on how to treat the release of red-lines and final guidelines for each ballot — whether to release separate versions of the BRs or a single version comparing the two. Corey Bonnell (Digicert) pointed out that this happened a few years ago in the Code-Signing working group and they elected to release each ballot separately, meaning the first ballot had an effective period of about fifteen minutes before the second ballot also took effect. Dimitris pointed out that the table for effective dates doesn't include timestamps, just dates, so he was thinking of applying a similar approach but separated by a day. The group indicated that would be fine but there was no particular concern with doing separate releases but having both ballots' effective dates be the same day.
 * Dimitris listed 5 ballots currently under consideration.
   * Corey indicated he had made some changes around dates in SC87 (registration number improvement for EV certificates), updated the PR, and verified the new copy with the current endorsers. Once the endorsers have indicated consent to the changes, he'll be proceeding with moving this into discussion and formal balloting in the next few weeks.
   * Aaron Gable (ISRG) offered an update on the ballot for cleanups to ADNC names. The significant topic the Validation Subcommittee discussed was the difference between re-using a validation for the applied-for FQDN (which is what the BRs discuss today) versus re-using a validation for the actually-validated ADN (which is what the new version of the BRs included). Aaron and Jacob are preparing an email to update the community on the changes and updates the ballot proposes and hopes to have that out prior to the next Validation Subcommittee meeting.
   * Martijn Katerbarg (Sectigo) is leading the ballot improving CPRs and clarifying revocation: there were no updates on that ballot's progress.
   * Clint Wilson (Apple) is leading the ballot now numbered SC93. Clint said there's an excellent comment on the ballot pull request from GTS outlining their thoughts and concerns around the ballot. Clint asked the community for further discussion on whether the ballot offered sufficient value in comparison to cost to advance or should be approached via a different route.
   * Finally, Dimitris reviewed the ballot for an updated timeline for errors affecting CP/CPS deviations. He indicated he had reached out to a few members to get feedback and discussion around the ballot but had not received much back, and would likely add this to discussion at the upcoming face-to-face meeting.

## IV. Discussion Items — Current Business

 * Ballot Number Allocations
   * Dimitris articulated the concerns around ballot numbering, which currently follows an informal process to allocate ballot numbers. At the moment, the process indicates a ballot number should be assigned once a ballot has achieved some consensus and attached two endorsers; he noted, however, that it's much easier to have discussions around proposed ballots with a number attached to them for clarity of reference. He also indicated concerns with the currently pending ballot SC93, which has adopted that number from this process, but then leaves a gap in ballot numbers that might need to be accounted for in some way.
   * Aaron concurred that it was easier to refer to a ballot if there were a number assigned; Jos pointed out that in the past this had resulted in numbering gaps that then generated questions later about what happened to those numbers that were skipped. Jos proposed a different solution in which we used SC-<name of proposer> in order to create a convenient "handle" for the ballot that didn't interfere with numbering. Ben Wilson (Mozilla) felt we should keep the current system as it is, and said if a ballot were abandoned once it reached the discussion stage it was relatively easy to note that in the historical record; he also pointed out that a ballot doesn't need to be in its final form for someone to endorse it. Aaron suggested using the pull-request number for naming draft ballots. Tim Callan (Sectigo) pointed out that if we took the approach of encouraging "early endorsers" we might see people voting no on a ballot they endorsed initially because of the changes since they endorsed it; the group felt it was important in that case to emphasize there was no stigma attached to withdrawing endorsement of a ballot or voting no on a ballot previously endorsed. Dimitris summarized the discussion and encouraged further discussion around this on future calls.
 * The next topic was volunteers around minute-taking. Dimitris explained the rotation system currently in use for minute-takers, and asked that people reach out to him to be added to or removed from the list of minute-takers.

## V. New Business

 * There were no new-business items from the group.

Dimitris adjourned the meeting, noting the next meeting would be 12 February. 

## Attendees

Aaron Gable (Let's Encrypt), Adriano Santoni (Actalis S.p.A.), Alvin Wang (SHECA), Antti Backman (Telia Company), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Daryn Wright (Apple), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Kramer (Sectigo), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jeanette Snook (Visa), John Mason (Microsoft), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Luis Osses (Amazon), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Michelle Coon (OATI), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Sándor Szőke (Microsec), Scott Rea (eMudhra), Sean Huang (TWCA), Sven Rajala (Keyfactor), Tathan Thacker (IdenTrust), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly)


