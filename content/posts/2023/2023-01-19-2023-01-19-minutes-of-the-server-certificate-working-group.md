---
aliases:
- /2023-01-19-2023-01-19-minutes-of-the-server-certificate-working-group/
author: Ben Wilson
date: 2023-01-19 18:14:13
tags:
- Server Certificates
title: 2023-01-19 Minutes of the Server Certificate Working Group
type: post
---

**Server Certificate Working Group**

Meeting of January 19, 2023

**Attendance** reviewed by Iñigo Barreira: Aaron Poulsen – Amazon Trust Services, Adam Jones – Microsoft, Andrea Holland – VikingCloud, Atsushi Inaba – GlobalSign, Bruce Morton – Entrust, Ben Wilson – Mozilla, Chris Clements – Google Chrome, Chris Kemmerer – SSL.com, Cassie L’Heureux – GoDaddy, Clint Wilson – Apple, Corey Bonnell – DigiCert, Corey Rasmussen – OATI, Daryn Wright – GoDaddy, Doug Beattie – GlobalSign, Dustin Hollenback – Microsoft, Dimitris Zacharopoulos – HARICA, Ellie Lu – TrustAsia, Enrico Entschew – D-TRUST/ Bundesdruckerei, Lynn Jeun – VISA, Iñigo Barreira – Sectigo, Janet Hines – VikingCloud, Joanna Fox – TrustCor, Jozef Nigut – Disig, Karina Sirota Goodley – Microsoft, Kiran Tummala – Microsoft, Martijn Katerbarg – Sectigo, Michelle Coon – OATI, Miguel Sanchez – Google, Marco Schambach – IdenTrust, Marcelo Silva – Visa, Nargis Mannan – VikingCloud, Paul van Brouwershaven – Entrust, Pedro Fuentes – OISTE, Rebecca Kelley – Apple, Rollin Yu – TrustAsia, Ryan Dickson – Google Chrome, Steven Deitte – GoDaddy, Steve Topletz – Cisco, Tadahiko Ito – SECOM, Tim Hollebeek – DigiCert, Tobias Josefowitz – Opera, Trevoli Ponds-White – Amazon Trust Services, Wayne Thayer – Fastly, Fumi Yoneda – JPRS, and Yoshiro Yoneya – JPRS

**Antitrust Statement** ready by Iñigo

**Approval of Jan. 5th Minutes**: We will move to approve those minutes during the next Server Certificate Working Group call on Feb. 2

**Validation Subcommittee** – Corey Bonnell said that good progress is being made on the Certificate Profiles ballot, that a couple of minor tweaks are being made, and that Ryan Dickson from Google Chrome wants to move the ballot to a vote. It looks like the ballot number will be Ballot SC-062.

**Ballot Reviews:**

SC-060 – Application of ZT Browser is currently in the discussion period.

SC-061 – Adoption of Mozilla’s CRL reason codes. Ben is moving much of the text into section 7.2.2 and will circulate a Version 3.

**Other Ballots:**

**SC-062 Certificate Profiles** discussed previously.

**OCSP Optional proposal** – Ryan Dickson has submitted a recent pull request that moves previous work in GitHub to a new branch. He said that Wayne Thayer and Aaron Gable recently reinvigorated the discussion thread that started after F2F 57. Ryan encouraged continued community discussion and feedback, either via SCWG discussion, GitHub, or direct to the Chrome Root Program email address.

Work on **SLO response times** is on hold (David and Clint)

**Debian weak keys** is being rewritten by Chris Kemmerer. Ryan Dickson wondered whether the cost and delay of checking for weak keys was worth it as part of the certificate issuance process-does it add overhead to the certificate issuance process? Chris K. responded that we’re trying to strengthen the ecosystem by preventing the issuance of certificates with weak keys. Tim H. said we should look at it on a case-by-case basis—some problems with keys can be identified quickly enough that they don’t slow down the issuance process. Dimitris wondered whether the only applicants using a Debian weak key would be security researchers. Tim said that on a global scale his company sees non-researchers still submitting Debian weak keys. Chris K. said that the ballot effort was broader than just Debian and other types of weak keys and that they were working on guidance that might help address future situations. Corey agreed that it would not address just Debian weak keys, but provide a framework for addressing these types of things in the future. Iñigo said that CAs also need to continue advising subscribers to not use weak algorithms.

**Any Other Business:**

None

**Next Meeting:** February 2, 2023

**Meeting adjourned.**