---
aliases:
- /2023/06/06/minutes-of-the-f2f-59-meeting-in-redmond-wa-usa-6-8-june-2023-cscwg-6-june/
author: Corey Bonnell
date: 2023-06-06 19:00:40
tags:
- Face-to-Face
- Minutes
- Code Signing
- Server Certificates
title: Minutes of the F2F 59 Meeting in Redmond, WA, USA, 6-8 June 2023 – CSCWG (6
  June)
type: post
---

# Attendees

Attendance: IN THE ROOM (FROM SIGN UP SHEET) Ben Wilson (Mozilla), Dean Coclin (DigiCert), Ian McMillan (Microsoft), Karina Sirota Goodley (Microsoft), Tahmina Ahmad (Microsoft), Hannah Sokol (Microsoft), Nitesh Bakliwal (Microsoft), Brianca Martin (Amazon), Trevoli Ponds-White (Amazon), Jonathan Kozolchyk (Amazon), Blake Hess (Amazon), Aaron Poulsen (Amazon), Michael Slaughter (Amazon), Tim Crawford (WebTrust), Inigo Barreira (Sectigo), Yoshiro Yoneya (JPRS), Martijn Katerbard (Sectigo), Nick France (Sectigo), Tim Callen (Sectigo), Roberto Quinones (Intel), Ben Dewberry (Keyfactor), Sven Rajala (Keyfactor), Leo Grove (SSL.com), Stephen Davidson (DigiCert), Jeremy Rowley (DigiCert), Scott Olsen (Microsoft), Linda Diefendorf (Microsoft), Steve Lasker (Microsoft), Yamian Quinero (Microsoft), Thomas Zermeno (SSL.com), Georgy Sebastian (Amazon), Meha Sharma (Microsoft), Rakia Segeu (Microsoft), Dawn Wang (Microsoft), Eva van Steenberge (Globalsign), Christophe Bonjean (Globalsign), Romain Delval (Certigna), Josselin Allemandou (Certigna), Xiu Lei (GDCA), Xizo Qiang (GDCA), Corey Bonnell (DigiCert), Vikas Khanna (Microsoft), An Yin (iTrus China), Vijay Kumar (eMuhdra), Pankaj Chawla (eMuhdra), Scott Rea (eMuhdra), Paul van Browershaven (Entrust), Bruce Morton (Entrust), Arno Fiedler (ETSI ESI), Dimitris Zacharopoulos (HARICA)

## NEED TO ADD ONLINE ATTENDEES

# Minutes

**Presentation by:** Bruce Morton (Entrust)

## Minutes: Brianca Martin/Roberto Quinones

- The Antitrust statement was read

- Minutes from May 18th approved

- Ballot CSC-18: Malware based revocation – Passed

- IPR through 23 June 2023, Effective 15 April 2025

- Ballot: Remove SSL BR References

- Dimitris Zacharopoulos (HARICA) + Martijn Katerbarg working on the references, ready to be sent out

- Will wait until IPR for CSC-18 is complete to import

- Will start discussion period, add comments to GitHub

- Bruce Morton (Entrust) added as an endorser

- Ballot: Signing Service

- Plan to address after 2 items above have passed

- Presentation: Microsoft’s Secure Supply Chain by Kristina Yasuda and Roy Williams

- ITU-T X.509 version in CSBR (Dimitris)

- item skipped (late for Dimitris, was not online)

- Time-stamping change proposal (Ian)

- Confirmed no change to private key reuse period of 15 months and Timestamp certificate validity period of 135 months

- Private key must be destroyed after 18 months, unless the Timestamp certificate validity period was 15 months or less

- TSA CA will be indicated as offline

- TSA to reject SHA-1 hashed timestamp requests

- Ian will draft up proposal to align expiration periods for TSA key and certificate

- High Risk language change proposal (Bruce/Tim/Ian)

- remove language that has never been used, and now with keys moved into hardware, some of the language in no longer needed

- there was intent to also define list of countries that certs would not be issued to, but this section was also not used.

- EV certificates removal or merging EV/OV into one policy (Ian/Bruce)

- Ian – normal OV cert works just fine , no different that EV cert. no difference in smart screen or defender

- Nick – Microsoft documentation states that there was a difference between EV and OV.

- [https://learn.microsoft.com/en-gb/archive/blogs/ie/microsoft-smartscreen-extended-validation-ev-code-signing-certificates][1]

- can we move OV to EV

- Other Items?

- Microsoft has been working on detection of malicious use of code signing certificates.

- Some CA’s may have already received a call as a result of this analysis

- Next meeting – 15 June or cancel?

- next scheduled meeting is for Jun 15th but updates may not be ready

- confirm with Dimitris if OK to review on 15th or push to Jun 29th

- Meeting adjourned @ 15:43

[1]: https://learn.microsoft.com/en-gb/archive/blogs/ie/microsoft-smartscreen-extended-validation-ev-code-signing-certificates