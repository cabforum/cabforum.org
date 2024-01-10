---
aliases:
- /2023/03/23/2023-03-23-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-03-23 16:00:05
tags:
- Minutes
- Code Signing
title: 2023-03-23 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Atsushi Inaba (GlobalSign), Brianca Martin (Amazon), Bruce Morton (Entrust), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Martijn Katerbarg (Sectigo), Roberto Quinones (Intel), Tim Hollebeek (DigiCert)

# Minutes

## Administration

- Attendance and requests a minute taker
- Reads antitrust statement
- Waiting on minutes for two meeting prior to face to face
- Face to face minutes will be approved at next meeting

## Malware Based Revocation Ballot

- Ballot summary
- Taking approach BRs and SBRs are taking on revocation
- Removing CS specific suspect code reference
- Discuss 5 day revocation window, consider a 5 day and/or 7 day
- Bruce noted good to sync with the SSL BRs at 24 hours and 5 days, but ok with suspect code at 5 days and 7 days
- Discussion if we should have requirements defining a misused certificate compared to private key misuse
- Additional discussion of misused keys, compared to compromised keys, and signed code that is suspect
- Action point to consider defining misuse
- Discussion on proper time limit for known compromise and signing malware
- Discussion of the difference in timing requirements between key compromise and singing suspect code and back dating revocation
- Discussed the consideration that signing suspect code should be treated as a potential compromise of key and/or the subscriber does not have practices in place to detect suspect code
- Discussion of asking Microsoft as the main certificate consumer to weigh in on complicated use cases. This is a practice now and not an overly common practice, this would take place after revocation and there is an open period to back date revocation
- Mentioned the RFC does not allow back dating, but it is an important tool for code signing
- Need to cover the loophole for certificate problem reports for expired or revoked certificates
- Potential wording is being drafted and will be included in GitHub and distributed

## Other topics

- It was determined singing service did not have much to discuss at this time and we should focus on the revocation topic
- A couple of points on removing the SSL BR reference were mentioned and would be discussed on future calls