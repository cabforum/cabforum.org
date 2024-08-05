---
author: Iñigo Barreira
date: 2024-07-18 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-07-18 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andrea Holland (VikingCloud), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chad Dandar (Cisco Systems), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Inaba Atsushi (GlobalSign), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), Johnny Reading (GoDaddy), Karina Sirota (Microsoft), Lynn Jeun (Visa), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nicol So (CommScope), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft)

## Roll Call

Dustin Hollenback started the roll call. 

## Read Antitrust Statement

Dustin read the Note-well.

## Review Agenda

No additional topics were proposed.

## Approval of minutes

June 20th meeting minutes were approved.

## Membership

Interested Party applications for Mike Shaver and Amir Omidi were approved.

## Discussion

### GitHub open issues

GitHub´s open issues triage (10 issues per call min):

- 280

Ben provided the background on this issue. Ben said that the issue is relevant
to both pre-certificates and final certificates. Within a certain period of time,
the CA must globally distribute the corresponding for Relying Parties. Ben's initial
suggestion is 15 minutes after issuance, but the discussion continues.

Aaron said that establishing this grace period is a good idea, as we have done similar
for CRLs. Aaron said he does not feel strongly on the exact time period (15 minutes vs. 1 hour).
Aaron is unsure that we should explicitly reference "unused" and "reserved", as "reserved"
serial numbers do not exist. This is something that should be cleaned up in https://github.com/cabforum/servercert/issues/422. There was agreement by Dimitris and Martijn that this language needs
to be improved.

Aaron said there is another related issue in that there is a BR requirement for the CA to operate a revocation status service, but there are other passages that outline similar requirements. It would be useful to make these consistent.

Ben revisited the grace period topic on whether to use 15 minutes or 1 hour. Aaron and Dimitris agreed that 15 minutes is sufficient. Ben raised the concern that many bugs may be filed for minor infractions of an arbitrary requirement. Aaron suggested that someone should write a ballot to overhaul section 4.9.10 and suggest a time period. Then participants can discuss the concrete proposal. Ben agreed to take this on.

- 436

Martijn said this issue is similar to the Extant CA sunset for the SMIME BRs, where ICA
certificates that do not comply with the current profile are sunsetted. Ben mentioned it
would be good to have a list of ICAs that do not comply with the current profile to determine
potential impact. It was suggested to use a linter to determine this. Since pkilint is up to date with SC-62 requirement, it was further suggested to use pkilint for this analysis. Martijn took an action item to do this analysis.

- 437

No discussion.

- 438

This issue in particular wasn't discussed, but Ben suggested that it would be good to look at
only cleanup items so that we can produce a cleanup ballot after this review. Corey agreed and said
that is a more efficient use of time.

- 442

Ben said this issue may be difficult to resolve, as it is difficult to define exactly what "made aware" means. Wayne said that SC-73 partially reserved the issue.

- 443

It was agreed that this issue can be closed.

- 444

Dimitris said that we should add a reference to the appropriate section where name constraints are addressed.


### PAG

No update. 

## Current status of ballots

- SC-75 (pre-issuance linting): Passed
- SC-67 (MPIC): In voting period
- SC-xx (Profiles cleanup ballot): On hold
- SC-71 (Terms of Use/Subscriber Agreement): On hold, will resume soon



## Any Other Business

No other business.


## Next call

Next call is 1 August 2024.


## Adjourn

Meeting adjourned.
