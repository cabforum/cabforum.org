---
date: 2026-10-22 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-10-22 Minutes of the Forum
type: post
---

# Attendees

Aaron Gable (ISRG), Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adam Jones (Microsoft), Adriano Santoni (Actalis), Andrea Holland (IdenTrust), Antti Backman (Telia Company), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chad Dandar (Cisco Systems), Daniel McKinney (FPKIMA), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Eva Van Steenberge (GlobalSign), Fabien Hochstrasser (Google Trust Services), Fumiaki Ono (SECOM Trust Systems), George Postelnicu (TeleTrusT), Georgy Sebastian (Amazon Trust Services), Hogeun Yoo (NAVER Cloud Trust Services), Janet Hines (SSL.com), Jian Wang (Huawei), Johnny Reading (GoDaddy), Jozef Nigut (Disig), Karolina Ruszczyńska (Certum), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Masaru Sakamoto (Cybertrust Japan), Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Mike Agrenius Kushner (Keyfactor), Naresh Charugundla (Microsoft), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Pedro Fuentes (WISeKey), Peter Miskovic (Disig), Polina Glazyrina (Sectigo), Rajeev Mohindra (Microsoft), Rebecca Kelley (SSL.com), Rollin Yu (TrustAsia), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Sean Huang (TWCA), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon Trust Services), Wayne Thayer (Fastly), Wendy Brown (FPKIMA), Zoey Wang (TrustAsia)

## Note Well

The Note Well had already been read during the immediately preceding Server Certificate Working Group meeting.

## Review of Agenda

No changes were made to the published agenda.

## Approval of Minutes

- October 8, 2026 Teleconference minutes have not been distributed yet; Eva Van Steenberge will circulate them shortly.
- F2F #68 (Vienna) draft plenary minutes received a few comments and revisions; Dean Coclin will incorporate them for approval at the next meeting.

## Server Certificate Working Group update

Dimitris Zacharopoulos summarized the October 8 SCWG teleconference:

- Google Chrome representatives were unavailable to continue the deferred F2F topics.
- The group discussed a public list question regarding the term "promptly" in Section 9.6.3 (Subscriber warranties) and concluded that the wording is intentionally general because it applies to subscribers, whereas CA revocation obligations and timelines are explicitly defined in Sections 4.9.1.1, 4.9.1.2, and 4.9.5.
- The remainder of the call covered ballot status updates.

## Validation Subcommittee update

Stephen Davidson reported:

- Rich Smith is incorporating F2F #68 feedback on the EV Guidelines cleanup ballot for discussion on the October 28 call.
- The October 28 meeting will also discuss draft-ietf-acme-dns-persist-02 (DNS-PERSIST-01).
- Martijn Katerbarg proposed clarifying the countryName / country code definition following recent incidents; a ballot is expected soon.
- Following Scott Rea's presentation on Reliable Data Sources, the subcommittee plans to begin by aligning EV Guidelines language more closely with the TLS BRs.

## Code Signing Certificate Working Group update

Dean Coclin reported on behalf of Martijn Katerbarg:

- The recent meeting adjourned early after a very brief call because Microsoft representatives were not in attendance for the main agenda item.

## S/MIME Certificate Working Group update

Stephen Davidson reported:

- S/MIME BR version 1.0.16 was recently published (effective next summer), narrowing multipurpose profiles to permit only email protection and client authentication EKUs.
- A ballot syncing DCV validation logging requirements with the TLS BRs passed and is currently in IPR review.
- Ongoing discussions include name constraints for S/MIME CAs, machine-readable certificate profiles (an experimental repository of S/MIME leaf profiles using Corey Bonnell's inferred schema was shared in chat: <https://github.com/srdavidson/SMIME_BR_Profiles>), reframing S/MIME BR scope to align with recent Apple policy changes regarding the email protection EKU, and a draft ballot for composite S/MIME certificates (adding ML-KEM alongside ML-DSA).

Dean Coclin announced that Scott Rea is unable to fulfill the duties of S/MIME WG Vice Chair following the recent election; Dean will distribute a nomination ballot for a new S/MIME WG Vice Chair shortly.

## NetSec Working Group update

Aaron Poulsen and Trevoli Ponds-White reported:

- Ballot NS-010 is in IPR review through mid-November, which unblocks Ballot NS-009 to proceed toward voting once remaining PR questions are resolved.
- The working group agreed to move the risk assessment requirements from the TLS BRs into the NetSec Requirements.
- Upcoming work will also address access and authentication requirements, including Trusted Roles.

Aaron Poulsen noted Dean Coclin's clarification that newly elected Chair and Vice Chair terms begin on December 1 rather than November 1.

## Definitions and Glossary Working Group update

Polina Glazyrina was unable to attend and sent word that there was no update.

## Forum Infrastructure Subcommittee update

Dean Coclin and Ben Wilson reported:

- A brief meeting was held last Wednesday covering minor items, including improving attendance tracking for face-to-face meetings.

## Client Auth Working Group formation update

Stephen Davidson reported:

- A first draft of the charter has been completed and received internal feedback, which will be incorporated over the next couple of days for a final check before sharing with the broader Forum.

## IPR Subcommittee update

Ben Wilson reported:

- Martijn Katerbarg updated the Member Tool to provide visibility into IPR Agreement v1.3 versus v1.4 submissions.
- Ben will reconcile uploaded v1.4 agreements and obtain an export from Martijn to notify organizations that missed the v1.4 deadline that their membership has terminated.
- Following discussion with Dean Coclin, Trevoli Ponds-White, and Aaron Poulsen, there was consensus that former members who missed the deadline must reapply through the full standard application process rather than an abbreviated process.

## Any Other Business

- **Elections:** Dean Coclin noted the recent election results and the upcoming nomination period for S/MIME WG Vice Chair.
- **Face-to-Face Meeting:** Dean Coclin reminded members that registration (in-person and remote) is open for F2F #69 in Scottsdale, Arizona (February 23–25, 2027).

## Adjourn

The meeting adjourned. The next Forum Plenary teleconference is scheduled for 2026-11-05.