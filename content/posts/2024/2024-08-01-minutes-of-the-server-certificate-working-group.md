---
author: Iñigo Barreira
date: 2024-08-01 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-08-01 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - (Let's Encrypt), Aaron Poulsen - (Amazon), Adam Jones - (Microsoft), Adriano Santoni - (Actalis S.p.A.), Ben Wilson - (Mozilla), Brianca Martin - (Amazon), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Ji Eun Seong - (MOIS (Ministry of Interior and Safety) of the republic of Korea), Johnny Reading - (GoDaddy), Luis Cervantes - (GoDaddy), Mahua Chaudhuri - (Microsoft), Mark Nelson - (IdenTrust), Michelle Coon - (OATI), Miguel Sanchez - (Google), Mrugesh Chandarana - (IdenTrust), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Rebecca Kelly - (SSL.com), Rollin Yu - (TrustAsia), Scott Rea - (eMudhra), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority).

## Roll Call

Inigo started the roll call. 

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

There was no agenda prepared for this meeting. Inigo just returned from vacation and Kiran (Microsoft) was supposed to run this call, and the previous one. The group decided to use last meeting's agenda.

## Approval of minutes

July 18th meeting minutes were approved.

## Membership

Aaron Gable asked about his June 29 email on the public list about the Trustcor's membership suspension.
Wayne explained that Trustcor sent an email to the WG Chairs and announced their resignation from those WGs.

Dimitris stated that according to the SCWG Charter 5c, a Member's suspension procedure could be triggered by any member. In this particular case, since the Member has resigned from all WGs, it effectively removes them from the Forum.

The WG confirmed Trustcor's resignation from the Server Certificate Working Group.

## Discussion

### GitHub open issues

•	Issue https://github.com/cabforum/servercert/issues/449

Adriano explained that validation of Authority is not part of the "certificate information".
If a person is a Certificate Requestor on behalf of a Company, can this confirmation be reused as part of the rest of the validation information? It is not clear from the current language.

Dimitris replied that in his opinion this authority information can be re-used according to 4.2.1.

Clint said that validating the authority to authenticate the request, and this information can be re-used as part of 4.2.1.

### PAG

Ben gave an update 

## Current status of ballots

•	Ben gave an update from the PAG associated with ballot SC70. The PAG received an email from GoDaddy that they withdraw their essential claims and the ballot can continue. The PAG asked GoDaddy to send an email to the public list confirming the withdrawal of the essential claims. As of this day, GoDaddy has not sent such an email, although it is possible that they have not followed the migration of the public mailing list and the change of the email address.

•	After some discussion, it was suggested that the PAG submits their opinion to the public list on the SC70 issue, basically stating that GoDaddy has emailed the PAG that they are withdrawing their essential claims.

•	Tobi said that Opera would expect a legaly binding email from GoDaddy for the withdrawal of the essential claims. The PAG Chair's announcement that Godaddy has withdrawn their essential claim may not be sufficient.

•	Dimitris stated that each Member must evaluate the risks independently after the PAG's recommendation.

•	Ben agreed to prepare a conclusion, get it through the PAG, and then send it to the public lists.

Based on that result, Aaron can either go to a second vote, as described in the Bylaws, or start a new ballot based on SC70.

Trev commented that this ballot should need some more revisions based on latest discussions regarding DTPs. She stated that the premises of the existing SC70 ballot are flawed.

Aaron said he would check the IPR and Bylaws for the defined process on doing a second vote and whether ballot SC70 will go straight to voting or have a new discussion period.

Dimitris mentioned that if there is at least one member that would like some additional discussion on this ballot, it would be best to start a new ballot number.

Regarding the OCSP responses status language, Aaron mentioned https://github.com/cabforum/servercert/pull/535, calling for more attention for people to review. Aaron would like to turn it into a ballot in 2 weeks if there are no objections. He gave a brief explanation of the proposed changes and asked for feedback.

## Any Other Business

No other business.

## Next call

The group agreed to cancel the August 15 Teleconference due to National Holidays in some European Countries. The next scheduled Teleconference is on August 29, 2024.

## Adjourn

Meeting adjourned.
