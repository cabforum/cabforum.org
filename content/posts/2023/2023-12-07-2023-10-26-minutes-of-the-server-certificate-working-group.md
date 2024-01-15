---
aliases:
- /2023/12/07/2023-10-26-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2023-12-07 17:20:19
tags:
- Minutes
- Server Certificates
title: 2023-10-26 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Poulsen – (Amazon), Abhishek Bhat – (eMudhra), Adam Jones – (Microsoft), Andrea Holland – (VikingCloud), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Brittany Randall – (GoDaddy), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Eva Vansteenberge – (GlobalSign), Inaba Atsushi – (GlobalSign), Janet Hines – (VikingCloud), Kiran Tummala – (Microsoft), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Nate Smith – (GoDaddy), Nicol So – (CommScope), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies Inc), Scott Rea – (eMudhra), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wendy Brown – (US Federal PKI Management Authority), Yoshihiko Matsuo – (Japan Registry Services).

## Agenda

Kiran Tummala (Microsoft led the meeting)

1. Roll Call and Begin Recording (\* not needed)
2. Read Note-well (\* not needed)
3. Review Agenda
   - No changes were made to the agenda
4. Minutes:
   - 31 August – no objections, approved
   - Face-to-Face – not circulated
5. Membership:
   - None
6. Issues/topics to discuss
   - Revised SCWG charter – requested all to review and distribute comments to the list.
   - Martin (Sectigo) proposal to change some logging requirements in BRs – looking for additional feedback
      - Clint Wilson noted that this would replace a broad requirement with a specific constrained list on what needs to be logged. Two sides: create a strict list of what must be logged (inclusion list) or create a list of what does NOT need to be logged (exclusion list). Discussion was had here and will continue.
      - Potentially move language to the NSCRs in the future
7. Ballot Status – see list below
8. Any Other Business
9. Next call: December 07, 2023
10. Adjourn 11:01 am CPT

## CURRENT STATUS OF BALLOTS

- **Passed**
  - None
- **Failed**
  - None
- **Voting Period**
  - None
- **Discussion Period**
  - SC66 – Clean-up ballot
- **Review Period**
  - None
- **Draft / Under Consideration**
  - SCXX – SLO/Response for CRL & OCSP Responses – David Kluge (Google) / Clint Wilson (Apple): on hold
    - Clint suggested to remove this ballot since the ballot to make OCSP optional was moved into the BRs. Ben agreed to drop it.
  - SCXX – Profiles cleanup ballot
  - SC-067 – Applicant, Subscriber and Subscriber Agreements – Ben Wilson (Mozilla) / Dustin Hollenback (Microsoft) [https://github.com/cabforum/servercert/compare/90a98dc7c1131eaab01af411968aa7330d315b9b...9eebd9949810f698edd5087235acaf16e04ead21](https://github.com/cabforum/servercert/compare/90a98dc7c1131eaab01af411968aa7330d315b9b...9eebd9949810f698edd5087235acaf16e04ead21)
    - Distributed 10/26/2023 for feedback – one response so far
    - Definitions of Applicant and Applicant Representative
    - Changes being discussed yet (specifically looking at lines 276-279)
  - SC65 – EVGs in RFC 3647 format