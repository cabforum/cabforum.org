---
title: 2024-06-06 Minutes of the CA/Browser Forum Teleconference
author: Chris Clements
summary: These are the Final Minutes of the Teleconference described in the subject of this message.
date: 2024-06-06
tags:
  - Forum
  - Minutes
type: post
---

## Attendees

- Aaron Gable - (Let's Encrypt)
- Aaron Poulsen - (Amazon)
- Abdul Hakeem Putra - (MSC Trustgate Sdn Bhd)
- Adam Jones - (Microsoft)
- Andrea Holland - (VikingCloud)
- Ben Wilson - (Mozilla)
- Brianca Martin - (Amazon)
- Chad Dandar - (Cisco Systems)
- Chris Clements - (Google)
- Clint Wilson - (Apple)
- Corey Bonnell - (DigiCert)
- Corey Rasmussen - (OATI)
- Dean Coclin - (DigiCert)
- Dimitris Zacharopoulos - (HARICA)
- Doug Beattie - (GlobalSign)
- Dustin Hollenback - (Microsoft)
- Enrico Entschew - (D-TRUST)
- Gregory Tomko - (GlobalSign)
- Inaba Atsushi - (GlobalSign)
- Jaime Hablutzel - (OISTE Foundation)
- Janet Hines - (VikingCloud)
- Jos Purvis - (Fastly)
- Mads Henriksveen - (Buypass AS)
- Mahua Chaudhuri - (Microsoft)
- Marco Schambach - (IdenTrust)
- Martijn Katerbarg - (Sectigo)
- Michelle Coon - (OATI)
- Nate Smith - (GoDaddy)
- Nicol So - (CommScope)
- Nome Huang - (TrustAsia)
- Paul van Brouwershaven - (Entrust)
- Pedro Fuentes - (OISTE Foundation)
- Peter Miskovic - (Disig)
- Rebecca Kelly - (SSL.com)
- Rich Smith - (DigiCert)
- Rollin Yu - (TrustAsia)
- Ryan Dickson - (Google)
- Sandy Balzer - (SwissSign)
- Scott Rea - (eMudhra)
- Sissel Hoel - (Buypass AS)
- Stephen Davidson - (DigiCert)
- Tadahiko Ito - (SECOM Trust Systems)
- Tathan Thacker - (IdenTrust)
- Thomas Zermeno - (SSL.com)
- Tobias Josefowitz - (Opera Software AS)
- Trevoli Ponds-White - (Amazon)
- Wendy Brown - (US Federal PKI Management Authority)

## Meeting Minutes

1. **Begin Recording - Roll Call**  
   Dimitris Zacharopoulos opened the meeting.

2. **Read note-well**  
   Dimitris read the note-well. He also included a new note stating the “meeting is being recorded,” for anyone who was not previously aware. We will use WebEx to capture participant names.

3. **Review of Agenda**  
   The only suggested change was to add discussion of the open question on the CA/B Forum list.

4. **Approval of minutes from the May 23, 2024 Teleconference**  
   Minutes were already approved at F2F#62. There are no minutes to approve as they were approved at the F2F.

5. **Server Certificate Working Group update (Inigo)**  
   Inigo summarized the four presentations from the F2F. One from Rob Stradling from Sectigo regarding linting in the certificate issuance pipeline and a tool called pkimetal. Another presentation from SwissSign discussed the complexity of some requirements and additional fields that may not be used by the browsers. Martijn Katerbarg from Sectigo presented on the differences between the TLS BRs and the EVGs regarding DBA. Inigo also discussed how to release different versions of the documents by specific dates instead of by approval, which needs to be checked with the Bylaws. Several GitHub issues were also discussed.

   - Corey provided the Validation Subcommittee update focusing on changing the Subcommittee to a full-fledged Working Group due to cross-sharing of validation requirements across the Working Groups. No strong consensus was reached, and the suggested next step was to create a charter for further discussion.
   - A proposed ballot to improve the EVG language around registration numbers was mentioned but had no time for discussion due to constraints.

6. **Code Signing Certificate Working Group update (Bruce/Dean)**  
   Corey stated 6 to 8 topics were covered at the F2F meeting. They discussed the imported EVGs, certificate transparency for code signing, deprecation of the EV code signing certificates, and the recently failed ballot about timestamping key protection requirements. Dean stated they touched on the elections for the fall and looking for other candidates.

7. **S/MIME Certificate Working Group update (Stephen)**  
   Stephen highlighted the move forward with a ballot to deprecate the legacy generation of S/MIME profiles with a cease issuance date of June 15, 2025. The discussion included a potential ballot to extend the validity period for certificates issued on tokens, which seems to be an issue for large issuance communities. SMC-07 is currently live for voting, introducing updates to bring the S/MIME BRs up to parity with the TLS BR changes recently passed.

8. **NetSec Working Group update (Clint)**  
   Clint stated they spent time finalizing discussions from the F2F, focusing on NS-3 in IPR and moving on to NS-4. They reached rough consensus around updates modifying section 4 of the NCSSRs. Future work items for the NetSec requirements were assigned out for further investigation.

9. **Definitions and Glossary Working Group (Tim H.)**  
   Neither chair was present. Dimitris noted that at F2F 62, chair positions were confirmed. Ben is working on website changes for this group, and Martijn announced a new GitHub repository.

10. **Forum Infrastructure Subcommittee update (Jos)**  
    Jos stated they have not met since the F2F meeting. Martijn is working on migrating to Google groups and sent an update about the status, encouraging everyone to read it and raise questions.

11. **Intellectual Property Rights Subcommittee (Ben)**  
    Ben stated they have started a list using the new Google groups and sent an initial email, receiving comments on potential meeting dates yet to send an official announcement.

12. **Bylaws update preparation (Dimitris)**  
    Issues created in GitHub post-F2F include clarifying that the quorum is measured when tailing votes and resolving conflicts between charter and bylaws. Dimitris encouraged issue submission directly or via the GitHub repository.

13. **Any Other Business**  
    Dimitris summarized a recent question brought to the Forum list regarding perspectives on Let's Encrypt policy related to banking in Texas. Dean drafted a minimal response based on feedback, agreeing to stick with the CA/B Forum mission. Discussions emphasized keeping messaging neutral and minimal, with a confirmation on handling the minimal approach.

14. **Next call**: June 20, 2024

15. **Adjourn**
