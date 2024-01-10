---
aliases:
- /2020/10/15/2020-10-01-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2020-10-15 17:22:21
tags:
- Forum
- Minutes
title: 2020-10-01 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Attendees (in alphabetical order)

Adrian Mueller (SwissSign), Amanda Mendieta (Apple), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Jos Purvis (Cisco Systems), Julie Olson (GlobalSign), Karina Sirota (Microsoft), Kirk Hall (Entrust), Li-Chun Chen (Chunghwa Telecom), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thanos Vrachnos (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes

### 1. Roll Call

The Chair took attendance.

### 2. Read Antitrust Statement

The Antitrust Statement was read.

### 3. Review Agenda

Dimitris reviewed the agenda: no changes were requested. Minute-taker for the next call will be Dimitris.

### 4. Approval of minutes from previous teleconference

Accepted without objections.

### 5. Forum Infrastructure Subcommittee update

Jos Purvis (Cisco): The committee met last week, with much of the discussion taken up with the proposed split of the documents into multiple GitHub repositories. The short version is that the existing /documents tree will be cloned into /archive, and then /documents will be renamed to /servercert for the SCWG. The /servercert repo will then be cleaned of any unneeded old branches or other documents. The other working groups (CSCWG, SMCWG) will have new repos created fresh for them, with any necessary hereditary git operations performed manually to ensure they have history for their own documents.

The committee also worked over the weekend on the issue observed with rogue posts to several Forum listservs. The problem appears to have been caused by the Forum mailer server not checking SPF records to reject spoofed emails; the team at GoDaddy quickly responded by updating the server to fix this. Members are asked to carefully review their own email servers to ensure they are setting SPF records correctly to avoid rejected emails to lists.

### 6. Code Signing Working Group update

Dean Coclin (DigiCert): CSCWG met last week to address high-risk cert requests. A guest speaker talked about their experiences handing these, and the Microsoft team provided input on their handling of them as a certificate consumer. No decisions have been made yet, but it was very helpful to have background on how cybercriminals obtain and (mis-)use these certificates. In future, we plan to review EV/non-EV certificate types in detail and will get back to this in future meetings. Bruce has been nominated as vice-chair for the working group again.

### 7. S/MIME Working Group update

Stephen Davidson (DigiCert): SMCWG met yesterday. For the first of our meetings, we didn’t have to add new members, so the number of participating organizations is now steady at 35. We are continuing the approach of reviewing the certificate profile for leaf certs field by field, gathering information about standards that may apply and practices from member organizations (issuers and consumers). Questions collected are being parked to loop back to as we begin filling out areas of the forthcoming baseline standards. We feel like we’re making good progress on this and will be contacting the Infrastructure subcommittee about getting things set up in GitHub soon.

### 8. Elections update

Dimitris sent an email to start vice-chair nominations, which end 15 October. So far we have vice-chair nominations for CSCWG (Bruce Morton), but are still looking for SCWG and Forum nominations. Dean nominated Karina Sirota from Microsoft for Forum vice-chair, with Mike Reilly and Jos Purvis seconding. This leaves only the SCWG position open. Dimitris confirmed that one person can occupy positions in more than one space (as he does today with Forum and SCWG).

### 9. Topics for the next virtual F2F

Dimitris has sent out the draft agenda for the upcoming virtual face-to-face and asked members to consider both agenda updates and any changes to the rules for virtual F2F, which are contained on the wiki from the previous. Things went well last time, but if there are recommendations for improvements in practice or rules, any feedback is very welcome. Dimitris and Dean welcome any feedback available from the community, and will be updating wiki pages accordingly.

### 10. Any Other Business

No other business was discussed.

### 11. Next call

The next call will take place on October 15, 2020 at 11:30am Eastern Time.

### Adjourned