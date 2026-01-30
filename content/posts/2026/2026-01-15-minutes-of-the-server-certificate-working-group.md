---
author: Wayne Thayer
date: 2026-01-15 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-01-15 Minutes of the Server Certificate Working Group
type: post
---


**Minutes:**

## Begin Recording - Roll Call

Recording started

## Read note-well

Dimitris read the note-well

 ## Review of Agenda

Added a new request for membership application as interested party.

No other changes to the agenda.

 ## Minutes approval

December 4, 2025 Teleconference (Draft minutes were distributed January 12, 2026)

 * Minutes approved

 December 18, 2025 Teleconference (Draft minutes have not been distributed yet)

 * Minutes distributed on the 18th

 * Minutes approved

 ## Membership applications

Digitalberry - Interested Party (Organization)

 * approved

Prateek Mittal - Interested Party (Individual)

 * approved

Grace Cimaszewski - Interested Party (Individual)

 * Approved

## Ballot Status – see list below

Current status of Ballots

This is the latest status of ballots since the last meeting.

### In Discussion Period

 * SC095: Clean-up 2025 (Karolina)

 Dimitris: there´s some discussion ongoing on the mailing list and github.

Kateryna is on the call, any update?

 Kateryna: she gave an update. They are in the middle of addressing all the questions. But not sure about a few questions about dates (mainly 2024) what to do with them. Our previous discussions were to cut them before 2024 but one date from 2024 was deleted, maybe by accident. Some of those dates from 2024 may be from audit reports.

 Tim H: Interesting question because historically we have cutoff dates in the past when related to audit reports because people should use the latest version of the BRs, at least, in the past we did that

 Dimitris: No strong objections but would like to keep some dates from the previous year. Requirements from 1 year ago are still relevant for readers of the BRs but it´s a subject opinion

 Tim H: to be clear Don´t object to that to keep it, one year, or clean it up. Fine too.

 Aaron: My weak opinion is that to get rid of all the stuff of the past, but the strong opinion is to set a date, a concrete date, in 2025, January 1 2025 and get rid of everything behind that.

 Tim H: yes, this is the simplest proposal and not need to pick up a date

 Dimitris: makes sense to put in the ballot description to remove all references before jan 1st 2025

 Kateryna: It´s easier to get that day and clean it up

 Dimitris: Any other challenges you see?

 Kateryna: yes, a question about validation methods. Karolyna did a change in the format, for example, one question regarding a date on 2021 about the methods and need to change that.

 Dimitris: it´s about the title? A discussion on the list?

 Kateryna: give me second. I´ll check that.

 Dimitris: another comment was about a normative change in the RFCs

 Kateryna: yes, that was another one. It was mentioned in some issue. I think Karolyna changed. We´ll answer in the PR. Need some time to process all this and then send it back for a final discussion. There´s no version 3.

 Dimitris: Rich pointed out that change regarding the RFC. There was an incorrect reference in the existing BRs, pointing to the wrong RFC, about the LDAP protocol, which is going away anyway. It´s not a syntactical change. We´ve done some normative changes in the past not considered controversial. I don´t know if Rich is on the call

 Rich: I posted that note for discussion and I know but I have not read the updated RFC. I don´t know if it´s a significant normative change or not. But this is a clean up ballot.

 Dimitris: that´s a fair point. But we need to correct it. Also some other comments regarding revert patchings that should be addressed

 Rich: sounds good, thanks Dimitris

 Dimitris: Kateryna anything else?

 Kateryna: No. if I have another question I´ll let you know.  Will try to address these issues with what I hear today

 Dimitris: any further discussion?

 * SC097: Sunset all remaining use of SHA-1 signatures in Certificates and CRLs (Ryan)

Dimitris: Ryan, any discussion on that ballot?

 Ryan: thanks Dimitris. Yes, the use of sha1 is to be sunset and wanted to set up a cut off date. Sept 15th 2026 for all those allow signing operations using sha1. We first talked about this ballot In the oct f2f about getting rid of legacy practices, it was consensus it was a good riection. In November we shared an initial draft of the ballot and in December showed up some of the results and picked up our endorsers. Stop for the holidays and didn´t start the discussion period and started last week, for 7 days. We haven´t heard any feedback. We are happy to enter the voting period tomorrow if there´s no concerns or have strong opinions about it. That´s it.

 Dimitris: good update. Having seen no discussion on the mailing list, looks like consensus. I haven’t heard any objection or concerns. And we can start the voting sooner than later

### In Voting Period

 * SC096: Carve-out for DNSSEC verification logging requirements (voting ends January 14, 16:15 UTC)

 Dimitris:  have no time to prepare the IPR. Will do the IPR today or tomorrow the latest. WG is keeping me busy with the ballots. Good support from the infra SC for resolving conflicts with PRs, revising issues,…

 * SC094v2: DNSSEC exception for email DCV methods (voting ends January 15, 16:15 UTC) 

Dimitris: ended a few minutes ago and will tail the votes and send the results out.

 ### Under IPR review

 * None

 ### Cleared IPR review, new Guidelines

 * SC090: Gradually sunset all remaining email-based, phone-based, and 'crossover' validation methods from Sections 3.2.2.4 and 3.2.2.5 (BRs 2.2.2 released)

 Dimitris: We have a new BRS v2.2.2

 ### Draft / Under Consideration

 * SC087: Registration Number Improvement for EV Certificates (Corey)

 Dimitris: let me see if Corey is here

 Corey: yes. We will have an updated draft that will circulate in the next 2 weeks before the plenary call

 Dimitris: thanks

 * SC0XX: Cleanup for ADN CNAME use (PR 619 from Rich and PR 627 from Jacob)

 Dimitris: 2 PRs, focused more on 627. I have to ask, Rich, are we still considering 619 or focus on Jacob´s PR?

 Rich: we can move to Jacob request. Jake´s in a better shape. When I wrote mine I didn’t have everything. Thanks to Jake for affording this.

 Dimitris: That´s great. Aaron I don´t know what the next steps are for this ballot, discussion at the validation SC

 Aaron: yes, the next steps are for me and Jacob to incorporate some of the changes. we´ll incorporate some in the validation SC meeting next week

 Dimitris: any discussion for this ballot? Ok, move to the next one.

 * SC0XX: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)

 Dimitris: Martijn, update?

 Martijn: still on progress. 3 comments open. Still in progress but low priority

 * SC0XX: Validation method in TLS Certificates (Clint)

 Dimitris: I don´t see Clint on the call. Dustin is here, any comment?

 Dustin: sorry, I can´t.

 Dimitris: no problem, no update in this ballot

 * SC0XX: Update Revocation timeline for errors affecting CP/CPS deviations but in accordance with the BRs (Dimitris)

 Dimitris: Have no updates for this either. Have no time to work on it, will do in the next two weeks

## Any Other Business

Dimitris: any other business?

No response

## Next call: January 29, 2026

## Adjourn

Dimitris: meeting adjourned. 

    **Attendees**

Aaron Gable - (Let's Encrypt)
Adam Folson - (IdenTrust)
Adam Jones - (Microsoft)
Adriano Santoni - (Actalis S.p.A.)
Alvin Wang - (SHECA)
Antti Backman - (Telia Company)
Arman Asemani - (Apple)
Ben Wilson - (Mozilla)
Chris Clements - (Google)
Corey Bonnell - (DigiCert)
Corey Rasmussen - (OATI)
Cynethia Brown - (US Federal PKI Management Authority)
Daryn Wright - (Apple)
David Kluge - (Google)
Dean Coclin - (DigiCert)
Dimitris Zacharopoulos - (HARICA)
Dustin Hollenback - (Apple)
Enrico Entschew - (D-TRUST)
Eric Kramer - (Sectigo)
Hogeun Yoo - (NAVER Cloud Trust Services)
Inaba Atsushi - (GlobalSign)
Iñigo Barreira - (Sectigo)
Jeanette Snook - (Visa)
Jeff Ward - (CPA Canada/WebTrust)
Jieun Seong - (MOIS (Ministry of Interior and Safety) of the republic of Korea)
John Mason - (Microsoft)
Johnny Reading - (GoDaddy)
Jos Purvis - (Fastly)
Josselin Allemandou - (Certigna (DHIMYOTIS))
Julie Olson - (GlobalSign)
Jun Okura - (Cybertrust Japan)
Karina Sirota - (Microsoft)
Kateryna Aleksieieva - (Asseco Data Systems SA (Certum))
Lilia Dubko - (CPA Canada/WebTrust)
Lucy Buecking - (IdenTrust)
Luis Cervantes - (SSL.com)
Mahua Chaudhuri - (Microsoft)
Marco Schambach - (IdenTrust)
Martijn Katerbarg - (Sectigo)
Masaru Sakamoto - (Cybertrust Japan)
Michael Slaughter - (Amazon)
Michelle Coon - (OATI)
Miguel Sanchez - (Google)
Nate Smith - (GoDaddy)
Nome Huang - (TrustAsia)
Ono Fumiaki - (SECOM Trust Systems)
Paul van Brouwershaven - (Entrust)
Peter Miskovic - (Disig)
Rebecca Kelly - (SSL.com)
Rich Smith - (DigiCert)
Ryan Dickson - (Google)
Sándor Szőke - (Microsec)
Sandy Balzer - (SwissSign)
Scott Rea - (eMudhra)
Sean Huang - (TWCA)
Stephen Davidson - (DigiCert)
Sven Rajala - (Keyfactor)
Tathan Thacker - (IdenTrust)
Thomas Zermeno - (SSL.com)
Tim Hollebeek - (DigiCert)
Tobias Josefowitz - (Opera Software AS)
Trevoli Ponds-White - (Amazon)
Wayne Thayer - (Fastly)
Wendy Brown - (US Federal PKI Management Authority)
