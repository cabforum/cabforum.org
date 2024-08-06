---
author: Dimitris Zacharopoulos
date: 2024-07-18 00:00:00
tags:
  - Minutes
  - Forum
title: 2024-07-18 Minutes CA/Browser Forum Teleconference 
type: post
---

# Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andrea Holland (VikingCloud), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Inaba Atsushi (GlobalSign), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Johnny Reading (GoDaddy), Karina Sirota (Microsoft), Lynn Jeun (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

# Minutes

Dimitris read the Note Well.

## Meeting approvals

The minutes for the June 20th meeting were approved.

The minutes for the F2F 62 meeting were approved.

## Servercert-wg update

Corey provided an update for the validation-sc. Three topics were discussed:

1. Email sent to list about CNAME method 7 DCV. Next step is to create a ballot to clean up the definition of Authorization Domain Name.

2. Proposed ballot to improve language for URI scheme requirements for CRLDP and CPS URI qualifier. Enrico received feedback during the call and will incorporate the feedback in his draft ballot, which will be published as a Github PR for further comments.

3. Security analysis of using 3rd party vs. 1st party-operated DNS resolvers for DCV. Much discussion, but no clear outcome or next steps yet.

## Code signing-wg update

Bruce said the meeting was very short. The ballot status was reviewed (two in IPR review). The group briefly discussed how to merge EV and OV code signing validation and profiles.

## S/MIME-wg update

Stephen said SMC-07 (logging requirements) cleared IPR on July 15th. On July 15th, a new ballot, SMC-08 entered the discussion period. This ballot will sunset the legacy certificate profiles. There are also link corrections, as well as a pinning of the referenced TLS BR version. The rationale is that a modification to TLS BR to require MPIC may significantly impact S/MIME issuers. Discussion of MPIC for S/MIME specifically needs to occur prior to adopting it.

The S/MIME BR currently pins the referenced NetSec version. However, a new version was published with a November effective date. There is a proposed ballot, SMC-09, that will bump the pinned version number for NetSec in SMBR.

## NetSec-wg

No update.

## Definitions-wg

No update.

## Infrastructure-sc

Martijn said the next step of email migration is to migrate the servercert-wg and code signing-wg to Google Groups.

Dimitris said he will discuss the election process in the next few weeks.

## IPR-sc

Ben said the group met on Tuesday and will meet next Monday. Several items were discussed:

1. Use of W3C panel of experts guidance to vet contributors in terms of IPR. A revision to the IPR agreement may be needed to ensure that individuals attest that they will not introduce contributions for which their employer may have IP.

2. Ben mentioned https://github.com/cabforum/forum/issues/44 and asked for items that people would like to be addressed by the SC.

Dimitris said that there are several potential members who are facing challenges with the current IPR policy. It would be useful to see how we can adjust the policy to accommodate, if possible. Ben agreed to take on this work.

## Elections

Dimitris said a number of positions are up for election. The Bylaws have been updated to explicitly specify the number of terms which a Chair may serve.

Dimitris said that nominations for Forum Chair will start on August 12th. The election for Chair will be in October. Nominations for vice-Chair will occur later.

## Any other business

Ben asked about the Seattle meeting and whether information will be published to the Wiki. Aaron said information will be distributed shortly. Dimitris said the F2F will be held October 8-10 in Seattle, Washington.

Next meeting is August 1st.

Meeting adjourned.
