---
aliases:
- /2022-09-29-2022-09-29-minutes-of-the-ca-browser-forum-teleconference/
author: Ben Wilson
date: 2022-09-29 17:10:00
title: 2022-09-29 Minutes of the CA/Browser Forum Teleconference
type: post
---

**Attendees:** Adam Jones (Microsoft), Adrian Mueller (SwissSign), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Daryn Wright (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hogeun Yoo (NAVER Cloud), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), John Mason (Microsoft), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Kiran Tummala (Microsoft), Li-Chun Chen (Chunghwa Telecom), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelley (Apple), Ryan Dickson (Google), Stephen Davidson (Digicert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Yoshiro Yoneya (Japan Registry Services)

**Minutes:** Martijn Katerbarg

**Read Antitrust Statement**

Jos Purvis read the antitrust statement.

**Review Agenda**

No changes were made to the agenda.

**Approval of Minutes from Last Teleconference**

We’re still waiting on the minutes of the August 18th meeting. Minutes of September 15st were approved.

**Forum Infrastructure report**

One bug discovered in the membership tool during member registration. This was resolved and it seems to be working well now.

We’re working on upgrading php with GoDaddy.

Ben Wilson sent out a list of pages to be updated and while some have been done, the list is still very large and there is no particular ownership of these. We will be looking to splitting up the list, so if you’re willing to help please let us know.

A PR request is open for tooling updates that generates the guideline documents. Individual working groups will need to look at upgrading and check that no documents are broken by this change. Each working group will also need to figure out if a formatting change will need a new document version.

**Code Signing Working Group report**

Ballot CSC-15 for the summer cleanup is now complete through the IPR period.
Ballot CSC-16 in which the date to require keys on hardware is postponed passed and is now in the IPR period.

Still working on signing service updates, malware proposals and timestamping.

**NetSec report**

Chair election ballot will close in a few hours. After the results are posted the Vice-Chair nominations will open. Other than that NetSec is moving onwards with the threat assessment.

**S/MIME report**

Formal discussion period for the ballot is underway but has been extended due to a number of discussion items. The pending issue of having a SHALL for OCSP is raised by Stephen. Some of the CAs have asked for OCSP to become a MAY, however Microsoft as Certificate Consumer has OCSP as a requirement in their Root Store Policy. Yet, at least one CA has made it clear that they have received confirmation by Microsoft that they only require OCSP for TLS Certificates, not code signing and S/MIME. Stephen has requested a representative from Microsoft to contribute to the discussion to get clarity. Kiran Tummala clarified that internal discussions are ongoing which is leaning towards making it optional, however it will be up to Karina to come with the official response once final decision has been made.

Dimitris mentioned that HARICA is one of the CAs that received a letter from Microsoft basically stating the OCSP requirement applies only to TLS certificates.

Dimitris also raised that there was also a discussion regarding the use of countryName. Stephen has put in and merged a PR that should resolve this issue.

**Any other business**

Election status: Code Signing Chair election is completed. Other working groups are about to close.

We will be extending the Vice-Chair nomination period for all WGs and the Forum itself.

The face to face meeting is cap is raised to 70 people. We have 64 signed up and 27 remote at this moment. A draft agenda has been published, with a start time of 11am local time except for Monday, which will start at 1pm.

If anything needs to be added to the agenda please submit this to Dean.

The evening event is set to start at 7pm but may be moved earlier.

Dimitris added that the CA Day and TSP Day agenda is now posted.

**Meeting adjourned.**