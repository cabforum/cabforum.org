---
aliases:
- /2023/01/26/2023-01-26-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-01-26 17:00:18
tags:
- Minutes
- Code Signing
title: 2023-01-26 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Andrea Holland (VikingCloud), Atsushi Inaba (GlobalSign), Ben Dewberry (Keyfactor), Brianca Martin (Amazon Trust Services), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Janet Hines (VikingCloud), Martijn Katerbarg (Sectigo), Roberto Quinones (Intel), Tim Hollebeek (DigiCert), Trevoli (Amazon Trust Services)

# Minutes

1. **Antitrust statement read**
1. **Approval of minutes**: Minutes for 12 January 2023 approved
1. Ballot: Malware base revocation (Martijn)

- Some discussion and need to get feedback into Github before the end of the week.
- Bruce stated he would endorse after review. Ian is the other endorser.

4. Ballot: Signing Service Update (Bruce)

- Bruce is having difficulty with Github to move the ballot forward. Martijn volunteered to help out.
- Ben asked for the procedure to give feedback, which can be done in Github or the mailing list
- Tim H would like to see the mailing list used more often
- Dean will check status of Ben in the mailing list
- Ben started a discussion about multi-factor for Signing Service. We need to come up with a way to discuss how this can be done.
- Ian indicated that the proposed change allows for secure server-to-server communication, but does not provide details

5. Ballot: Remove SSL BR References (Dimitris)

- Dimitris stated work has been done and has been reviewed with Martijn, now need to review with the group
- Dean suggested we add to the F2F meeting, but we decided to review in the meeting
- Dimitris added “Editor” notes for review
- Dimitris has imported text from SSL BRs where no text is in the CSBRs
- Inigo is concerned about conflicts between BRs, but Tim H advised that concerned CAs work in multiple working groups
- Bruce suggested that it would be good if we had the “BR of BRs” to cover common items
- There was discussion about updates to definitions and references
- Decided not to import 4.2.1 from SSL BRs
- There was a discussion about importing SubCA revocation and misalignment of paragraphs. It was suggested this could be fixed with the revocation ballot or another future ballot.
- Decided to add in OCSP “3600 seconds” change with an effective date
- For Suspension, decided to add “No stipulation” and address in a future ballot.

6. Other business

- F2F we have 1.5 hours scheduled
- Try to make a plan for the year at F2F

7. Next Meeting – 9 February 2023
1. Adjourn