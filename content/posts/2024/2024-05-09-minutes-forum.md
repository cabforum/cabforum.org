---
title: 2024-05-09 Minutes of the CA/Browser Forum Teleconference
author: Aaron Gable
summary: Final minutes of the CA/Browser Forum meeting on May 9, 2024.
date: 2024-05-09
tags:
- Forum
- Minutes
type: post
---

## Attendees

- Aaron Gable - (Let's Encrypt)
- Abhishek Bhat - (eMudhra)
- Adam Jones - (Microsoft)
- Adriano Santoni - (Actalis S.p.A.)
- Andrea Holland - (VikingCloud)
- Ben Wilson - (Mozilla)
- Brianca Martin - (Amazon)
- Brittany Randall - (GoDaddy)
- Bruce Morton - (Entrust)
- Chad Dandar - (Cisco Systems)
- Clint Wilson - (Apple)
- Corey Bonnell - (DigiCert)
- Corey Rasmussen - (OATI)
- Dimitris Zacharopoulos - (HARICA)
- Dong Wha Shin - (MOIS (Ministry of Interior and Safety) of the republic of Korea)
- Doug Beattie - (GlobalSign)
- Enrico Entscheidungen - (D-TRUST)
- Georgy Sebastian - (Amazon)
- Gregory Tomko - (GlobalSign)
- Inaba Atsushi - (GlobalSign)
- Inigo Barreira - (Sectigo)
- Jaime Hablutzel - (OISTE Foundation)
- Johnny Reading - (GoDaddy)
- Jos Purvis - (Fastly)
- Keshava Nagaraju - (eMudhra)
- Kiran Tummala - (Microsoft)
- Luis Cervantes - (GoDaddy)
- Mads Henriksveen - (Buypass AS)
- Marco Schambach - (IdenTrust)
- Michelle Coon - (OATI)
- Miguel Sanchez - (Google)
- Mrugesh Chandarana - (IdenTrust)
- Nargis Mannan - (VikingCloud)
- Nate Smith - (GoDaddy)
- Naveen Kumar - (eMudhra)
- Nicol So - (CommScope)
- Nome Huang - (TrustAsia)
- Rebecca Kelly - (SSL.com)
- RIch Smith - (DigiCert)
- Rollin Yu - (TrustAsia)
- Scott Rea - (eMudhra)
- Stephen Davidson - (DigiCert)
- Steven Deitte - (GoDaddy)
- Tadahiko Ito - (SECOM Trust Systems)
- Tathan Thacker - (IdenTrust)
- Tim Hollebeek - (DigiCert)
- Tobias Josefowitz - (Opera Software AS)
- Trevoli Ponds-White - (Amazon)
- Tsung-Min Kuo - (Chunghwa Telecom)
- Wayne Thayer - (Fastly)
- Wendy Brown - (US Federal PKI Management Authority)

## Administrivia

- Aaron Gable taking minutes
- Roll call taken via Webex
- Dimitris Zacharopoulos read the note-well
- Minutes from April 25 approved

## Server Certificate Working Group update (Inigo Barreira)

- Continued triage of GitHub issues
- Patent Advisory Group created as a result of exclusion notice filed on SC-070 had its first meeting, elected Ben Wilson as chair, and drafted and sent an email requesting clarification from GoDaddy
- Currently soliciting F2F agenda topics
- The EVGs have published a new version based on Ballot SC-072

## Validation Subcommittee update (Corey Bonnell)

- Continued discussion of identifying Delegated Third Parties in validation methods

## Code Signing Certificate Working Group update (Bruce Morton)

- Still working on a ballot to pull various EV requirements into the CSBRs
- Ran into some difficulties regarding Organization Identifier, so will probably leave that field as-is for now
- Also still updating the Timestamp ballot
- Discussing reducing the maximum validity of code-signing certificates, from 39 months to 15 months
- Discussing unifying EV and non-EV code-signing certificates into just one type
- Still finalizing F2F agenda, expect to discuss the topics above
- Dimitris points out that the CSBRs reference a specific version of the NetSec requirements, and will also have to do a ballot to update that version

## Forum Infrastructure Subcommittee update (Jos Purvis)

- Working through issues with mailing lists, considering upgrading mailman
- Ran an experiment to convert a list to Google Groups, which mostly works, but involves rewriting headers
- One solution would be to change MX records and do all mail delivery via Google, but would likely result in a temporary disruption of mail delivery
- Intend to create a test plan to propose to all other working groups
- Lots of documentation work, which is a Forum-wide effort
- Intend to set up the IPR Subcommittee on Google Groups as a test subject, since it is intended to be a short-lived group

## S/MIME Certificate Working Group update (Stephen Davidson)

- Ballot SMC-06 exits IPR at the end of this week, has effective date in September
- Upcoming ballot to create parity with recent BRs logging changes
- Some concerns about shorter validity periods from smartcard providers due to more difficult provisioning
- New certificate consumer member: Posteo, a webmail provider

## NetSec Working Group update (Clint Wilson)

- Ballot NS-03 is in IP Review period
- Ballot to update Section 4 still being workshopped, particularly for clarity around cadence/timelines of things like penetration tests

## IPR Subcommittee update (Ben Wilson)

- Ballot FORUM-022 would establish this new subcommittee
- Ballot is currently in discussion period, no comments so far

## Bylaws update preparation (Dimitris Zacharopoulos)

- No update

## F2F#62 agenda preparation (Dimitris Zacharopoulos)

- KeyFactor will not be able to present their plans for a linting engine
- Still soliciting additional topics

## Any other business

- Trevoli Ponds-White reports that Amazon has been asked to move the October F2F from Oct 1-3 to Oct 8-10, due to a major holiday

## Next meeting

- May 23 (not cancelled)
- Will start 1 hour after the ServerCert WG call would normally start

## Meeting adjourned
