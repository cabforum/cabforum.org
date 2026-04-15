---
date: 2026-03-26 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-03-26 Minutes of the Forum
type: post
---

**Minutes:**

## CA/B Forum plenary Meeting - March 26, 2026

### Minutes

#### Begin Recording - Roll Call

- Recording started
- Read note-well
  - Read the note-well at SCWG prior

#### Review of Agenda

- No changes

#### Approval of minutes

- February 26th (Martijn) - (Draft minutes have not been distributed yet)
- Please submit F2F minutes on Etherpad.

#### Server Certificate Working Group update (Dimitris)

- Went over face-to-face agenda and ballot updates at 02/26 meeting
- Face-to-face minutes are being compiled yet
- Capturing BR version at DCV time.  Working Group opined that requirement should be replaced with something else - Aaron Gable to propose the change (aligned with expectations of:  Proper documentation, accountability, change management).
- CP/CPS Content Consistency - gave examples where they were vague vs explicit.  More explicit leads to more chances of falling into non-compliance and having to revoke.  Captured the CA/B Forum expectations and how to proceed forward with improvements.
- Revocation Timelines and CP/CPS consistency - alternative proposal to have CAs document which areas are allowed to have more flexibility and have a different revocation timeline (or no revocation at all as long as it is stricter than the BRs) - will be sent in F2F minutes.
- Availability of resources such as CRL distribution points; repository; OCSP URLs; etc.  Rules are vague now.  CAs might implement settings to prevent abuse and DOS attacks (geolocation blocking, etc).  Feedback to be captured in F2F meeting minutes and then see what next steps are based on that feedback.
- Validation Subcommittee - Corey Bonnell
  - ADN Ballot updates - Reached consensus, ballot should be about ready to go after some minor updates.
  - Scott Rae presented on making more concrete guidance on Reliable Data Sources.  Scott to create draft ballot proposal.
  - DNSSEC - whether or not you have to check whether or not domain zone was secured with DNSSEC if one of the domain's parents was not.  If you know the parent was not, you do not have to check the child because you know it was not.  May be ballot language drafted for this.

#### Code Signing Certificate Working Group update (Martijn)

- Face-to-Face presentation by Karina for Microsoft's vision for code-signing working group and ecosystem.  Proposals to make it more available for individual developers and make it open source as well.  Increase strength for authentication validation and remove human factor.

#### S/MIME Certificate Working Group update (Stephen)

- SMC015 MDL Ballot will come out of IPR 03/27/2026.  New SMIME BR to be posted after.
- SMC016 Equivalence Ballot with SCWG now in voting through next week.
- Ongoing discussion on two items
  - Moving forward with a ballot to increase the minimum RSA key size for SMIME Sub-CAs - draft link is out.
  - Potential changes to Root Program policies and how those impact SMIME BRs or SMIME CAs and what they may need to do going forward.  Included in SMIME meeting minutes.

#### NetSec Working Group update (Clint)

- Met Tuesday, 03/24.
- NetSec Modernization Work - Determined Miguel will work on proposal for first steps of modernization effort.
- Cloud Services Logging/Infrastructure use - CoreyB to update his proposal for next meeting in two weeks.

#### Definitions and Glossary Working Group (Tim H.)

- No Update.

#### Forum Infrastructure Subcommittee update (Jos)

- Ben Wilson provided update:
  - Updating text of CA/B Forum website - request for volunteers.

#### IPR Subcommittee (Ben)

- Received call from member of IPR Review Subcommittee - section 4.5 of IPR Policy and new participants and whether they had the rights to raise historic claims or not.  Ben reviewing to ensure proper response.  If no change, will close discussion on 03/31.  if changes needed, will release version 2 for 7 day review period.  Let Ben know of comments so he can batch it at the same time.

#### Any Other Business

- F2F Meeting Schedule:
  - 2026
    1. Vienna, Austria - September 22-24 - eMuhdra (Location to be confirmed)  Registration is open on website now
  - 2027
    1. Scottsdale, AZ - Spring 2027 - Sectigo
    2. Switzerland - Fall 2027 - SwissSign
  - 2028
    1. Shanghai, China - Spring 2028 - TrustAsia (tentative)
    2. Thessaloniki, GR (or Identrust) - Fall 2028 - HARICA (tentative) or Identrust

#### Next call

April 9th

#### Adjourn

TimC:  meeting adjourned.

### Attendees
Adam Jones (Microsoft), Arman Asemani (Apple), Ben Wilson (Mozilla), Chris Clements (Google), Chya-Hung Tsai (TWCA), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Cynethia Brown (US Federal PKI Management Authority), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Kramer (Sectigo), Gurleen Grewal (Google), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (SSL.com), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), John Mason (Microsoft), Jozef Nigut (Disig), Jun Okura (Cybertrust Japan), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Puja Sehgal (Microsoft), Rich Smith (DigiCert), Roman Fischer (SwissSign), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tathan Thacker (IdenTrust), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority).