---
aliases:
- /2024/02/14/2024-02-14-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2024-02-14 00:00:00
tags:
- Minutes
- S/MIME
title: 2024-02-14 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

February 14, 2024

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## Attendees

Abhishek Bhat - (eMudhra), Andreas Henschel - (D-TRUST), Ashish Dhiman - (GlobalSign), Ben Wilson - (Mozilla), Bruce Morton - (Entrust), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Don Sheehy - (CPA Canada/WebTrust), Eva Vansteenberge - (GlobalSign), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Judith Spencer - (CertiPath), Keshava Nagaraju - (eMudhra), Lucy Buecking - (IdenTrust), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Morad Abou Nasser - (TeleTrust), Nome Huang - (TrustAsia), Renne Rodriguez - (Apple), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Taavi Eomäe - (Zone Media), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Crawford - (CPA Canada/WebTrust), Tim Hollebeek - (DigiCert), Tsung-Min Kuo - (Chunghwa Telecom) 

## 1. Roll Call
The Roll Call was taken.

## 2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

## 3. Review Agenda
Minutes were prepared by Stephen Davidson.

## 4. Approval of minutes from last teleconference
The minutes for the teleconference of January 31 were approved.

## 5. Discussion 
Martijn Katerbarg lead the WG discussion.

Martijn noted that “Ballot SMC05: Adoption of CAA for S/MIME” was in IPR, ending on February 16.  Thus far there were no filings.  He noted that the WG would be moving on to Ballot SMC06 soon and that Stephen Davidson’s draft could be found at https://github.com/srdavidson/smime/blob/Ballot-SMC06/SBR.md 

Eva Vansteenberge raised the point that the SBR requires the subject:country to match the country of the registration scheme, and noted that this was not a requirement in the EVG.  She asked for a discussion on this point.

Martijn raised a draft text to clarify that extensions (such as EKU) that meet open standards are allowed.  See https://github.com/cabforum/smime/issues/235  Russ Housley had raised that such extensions should not be marked critical.  Following discussion with Tim Hollebeek and Tadahiko Ito it was agreed that criticality should be determined by the extension’s open standards.

Martijn raised the subject of topics for the F2F.  Tim said the group should focus on laying out a topic roadmap for the year.  Martijn said that the timetable for deprecation of Legacy should be discussed, as well as a review of open topics on the Issues board.  He requested that WG members reach out to he or Stephen Davidson if they have topics they’d like addressed at the F2F.

Martin raised https://github.com/cabforum/smime/issues/199 on duplicated subject DN attributes, noting that this was hardened in the TLS BR under ballot SC62.  Corey noted that we should retain flexibility for multiple attributes for givenName and surname as this was a known use case in countries like Spain.  Scott Rea said the same applied in UAE.  The existing SBR text allows separation of the names, or bundling them within attributes.  Tim proposed looking at the ISO x500 specs.  It was suggested that this might be a F2F topic.

Martijn noted that this might lead to a ballot to drive increased specification of cert profiles as was handled for TLS by SC62.  Tim agreed that in time it was preferable to reduce the divergences between CABF standards.

## 6. Any Other Business

None

## 7. Next call
Next call: see schedule for the New Delhi F2F.

## 8. Adjourned
