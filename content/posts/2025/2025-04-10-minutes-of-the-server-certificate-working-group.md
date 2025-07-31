---
author: Wayne Thayer
date: 2025-04-10 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-04-10 Minutes of the Server Certificate Working Group
type: post
---

# CA/B Forum Server Certificate WG Teleconference-20250410

Meeting Title: CA/Browser Forum Server Certificate Working Group Date: 10 April 2025

Meeting Ran By: Wayne Thayer

Minutes Taken By: Trevoli Ponds-White

## 1. Roll Call and Housekeeping

Meeting called to order by Wayne Thayer.

## 2. Reading of Note-well

Wayne Thayer read the note-well.

## 3. Review of Agenda

No additions to agenda.

## 4. Minutes approval

* 13 March 2025 teleconference minutes Approved

33 5. Membership applications

* None

## 6. Ballot Status

Discussion of SC086: Sunset the Inclusion of Address and Routing Parameter Area Names will be kicked off once voting of ballot SC081v3: Introduce Schedule of Reducing Validity and Data Reuse Periods is completed.

Several draft ballots in progress:

 * CA assisted domain validation

 * Requiring DNSSEC for CA and DCV lookups

 * Fix registration number language for EV certs

## 7. Other Agenda Items

The Server Certificate Working Group meeting on April 10th primarily discussed two main topics from the questions mailing list. The first was a proposal to require CAs to implement the CAA I/O DEF mechanism for notification of certificate validation failures. The second topic concerned whether to prohibit issuing multiple CA certificates with the same key but different subject distinguished names.

For the first topic “implement the CAA I/O DEF mechanism for notification” someone wrote in asking if we could implement a method to notify domain owners when CAs they don’t obtain certificates from deny issuance of a certificate due to failed domain control validation. We determined that it wasn’t clear that this feature would be valuable to most (or many) certificate customers to be worth the potential downsides. Concerns were raised about potential spam/abuse if email notifications were required vs optional. If we did do something an alternative suggestion was to use HTTPS webhook notifications instead of email. Martijn Katerbarg took the action item to respond to the email.

For the second topic on “whether to prohibit issuing multiple CA certificates with the same key but different subject distinguished names” we wanted to determine if anyone was aware of existing rules for this or not. In the absence of rules the second question was if there should be a rule. We determined it would make sense to establish whether or not such certificates currently exist before proceeding. We also felt that the use case for such certificates and nor the problem if they did exist was clear. Although there was some speculation that it might already implicitly be banned. If not is likely a bad practice regardless. If we do determine to make a rule about these in the future we need to make sure that it accounts for cross-signing and doesn’t accidentally ban that use case.

## 8. Any other business

Some members are working on their first ballots and running into issues with the logistics. Dimitris Zacharopoulos asks people to reach out to him if they need help.  

## 9. Next call: April 24, 2025

## 10. Adjourn

## Attendees

Kateryna Aleksieieva (Certum by Asseco), Steven Deitte - GoDaddy, Mahua Chaudhuri (Microsoft), Karina Goodley Microsoft, ONO Fumiaki - SECOM, Hogeun Yoo - NAVER Cloud Trust Services, Wayne Thayer (Certainly), Aaron Poulsen - Amazon Trust Services, Mads Henriksveen (Buypass), Doug Beattie - Globalsign, Greg Tomko (GlobalSign), Brianca Martin - Amazon, Bineesh Ambali Vadakkekandi - Microsoft, Dean Coclin-DigiCert, Cynetheia Brown (FPKIMA), Clint Wilson (Apple), Corey Rasmussen (OATI), Adam Jones - Microsoft, Scott Rea - eMudhra, Corey Bonnell [DigiCert], Rollin Yu - TrustAsia, Dean Coclin-DigiCert, Mrugesh Chandarana - IdenTrust, Yamian Quintero - Microsoft, Masaru Sakamoto - Cybertrust Japan, Wendy Brown - FPKIMA, Antti Backman - Telia Company, Ben Wilson - Mozilla, Inigo Barreira (Sectigo), Luis Cervantes (SSL.com), Jaime Hablutzel [WISeKey], Nate Smith - GoDaddy, Rich Smith (DigiCert), Ryan Dickson (Google Chrome), Nicol So [CommScope], Martijn Katerbarg - Sectigo, Adrian Mueller - (SwissSign), Jeanette Snook - Visa, Inc, Li-Chun Chen - Chunghwa Telecom, Chris Clements (Google Chrome), Stephen Davidson (DigiCert), Johnny Reading - GoDaddy, Tobias Josefowitz (Opera), Peter Miskovic - Disig, Thomas Zermeno - SSL.com, Eric Kramer (Sectigo), Jun Okura: Cybertrust, Puja Sehgal - Microsoft, Trevoli Ponds-White - Amazon Trust Services, Enrico Entschew/ D-Trust, Hazhar Ismail | MSC Trustgate, Marco Schambach - IdenTrust, Dimitris Zacharopoulos (HARICA), Nome-Huang TrustAsia, Dustin Hollenback - Microsoft, Michelle Coon (OATI), Kate Xu-TrustAsia, Janet Hines - VikingCloud, Josselin Allemandou (Certigna), Dimitris Zacharopoulos (HARICA), Nargis Mannan - Viking Cloud, India Donald (FPKIMA), Atsushi INABA - GlobalSign