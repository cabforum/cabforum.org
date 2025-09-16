---
date: 2025-07-17 00:00:00
tags:
  - Minutes
  - Forum
title: 2025-07-17 Minutes of the Forum
type: post
---

# CA/B Forum Teleconference - 2025-07-17

**Meeting Title:** CA/Browser Forum  
**Date:** 17 July 2025  
**Chair:** Dean Coclin  
**Minutes Taken By:** Scott Rea
---

## 1. Roll Call and Housekeeping

- Meeting called to order by Dean Coclin with support from Tim Callan; recording in process.

## 2. Note-well

- Note-well has already been read in previous session.

## 3. Review Agenda

- Agenda anticipated as posted.

## 4. Approval of Minutes

- None to approve on today’s call
  - April 10th - still pending (Dean to re-send link to Aaron Poulsen)
  - F2F minutes requires 1 more item from Martijn

## 5. Server Certificate Working Group update

### SCWG (Wayne)
- Wayne indicated earlier meeting was first in some time since F2F (2 meetings skipped). For the prior meeting SC085 (Require DNSSEC for CAA and DCV Lookups) passed so now IPR review period in progress.

### Validation Subcommittee (Wayne from Corey’s minutes)
- Last meeting had 2 major talking points discussed:
  - SC088 persistent DCV ballot. Doug raised some questions which were worked through in the meeting. Henry provided some options and the approach was agreed as being solid.
  - Validation Summit proposal. Send a survey for identifying which methods CAs are using – decided probably not going to do this, but rather use CCADB Report instead. Decided to focus on 2 aspects the validation methods: i) the security of the method; ii) the agility of the method.
- Chrome proposed new draft ballot to deprecate all methods that use email and phone as a methos of contacting applicants. So maybe there will be impact to Validation Summit based on the discussion.

## 6. Code Signing Certificate Working Group update

- Martijn not available so Dean called for any updates from those attending.
- Karina:  Microsoft working on ballot for reduction of validity - looking for additional endorser. Also cleanup ballot for alignment with TLS BRs discussions are on-going.

## 7. S/MIME Certificate Working Group update (Stephen)

- SMC012 (automation of mailbox control using ACME) is out of IPR Review and now adopted as of 1 week ago. In voting period for SMC013 (PQC for SMIME) closes in a few days. On-going discuss around pseudonyms for personal certificates is progressing. There will be a Forum level ballot at the end of summer to update the Charter for the Group.

## 8. NetSec Working Group update (Clint)

- Main discussion topic was Cloud Services in the context of public CAs. Tobi put together a starter document to facilitate discussion. NS008 (Updates to CA Infrastructure Scope, Trusted Roles, Systems' Applicability, and various other improvements) came out of IPR, and effective date is scheduled for later this year. Clint mentioned he is having some GitHub issues getting NS008 finalized.

## 9. Definitions and Glossary Working Group (Tim & Tim)

- Not a lot of feedback on Definitions thus far so next steps is take one more pass, produce document and then proceed with a ballot. The document is expected that it will be a policy document  - it is not a requirements document.
- Wendy indicated she did not see the definitions circulated, so they will be re-posted to the list.

## 10. Forum Infrastructure Subcommittee update (Ben)

- Wayne had some comments around on-going saga to fix permissions on mailing list, and how to approach that. It is a WIP.

## 11. Intellectual Property Rights Subcommittee (Ben)

- Forum-036 Ballot - Adopt Invited Experts Policy has passed. Next meeting scheduled for next Tuesday to begin addressing remaining items.

## 12. Bylaws Changes (Ben)

- Ben planning to progress forum bylaws change ballot once summer is over e.g. September timeline. 

## 13. Entrust Status in CABF (Bruce)

- Entrust does not, or soon will not issue TLS certificates anymore after key(s) transfer to Sectigo, however they are still doing some Code Sign certificates currently. The goal is that by 1st week of September, Sectigo will have control of all keys (including CS). So after that point, Entrust will not qualify under current membership category (Certificate Issuer), but may be looking to transition to Interested Party type member at that point. Bruce will provide update after actions are complete.
- Tim H indicated that the qualifying event is not necessary the key transfer but rather “trusted by Root Programs” criteria. Tim C indicated that Entrust is still a trusted CA for CS purposes, so in this instance it’s a voluntary withdrawal when it happens.
- Wayne lead the appreciation for all the effort contributions Bruce & Co have made to the CABF.

## 14. Any Other Business
- Registration for Warsaw is open – please indicate attendance for planning purposes. Note that Trusted Economy Forum is also being held adjacent to this meeting.
- List of future F2F meetings schedule was reviewed:
  - 2025  1. Oct 15-17: Warsaw, Poland (Certum) – REGISTRATION OPEN
  - 2026  2. Houston, TX, US        Spring 2026     SSL.com
  - 3. New York, NY,US       Summer 2026 Google Trust Services
  - 4. Thessaloniki, GR        Fall 2026         HARICA
  - 2027  5. Scottsdale, AZ            Spring 2027     Sectigo
  - 6. Switzerland                 June 2027       SwissSign
  - 7. Austin, TX, USA         Fall 2027         IdenTrust
  - 2028   8. Shanghai, China         Spring 2028     TrustAsia (tentative)

## 15. Adjourn
Next call: July 31, 2025


## Attendees
Aaron Gable – ISRG, Aaron Poulsen (Amazon Trust Services), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Atsushi INABA (GlobalSign), Ben Wilson (Mozilla), Brianca Martin (Amazon), Bruce Morton (Entrust), Chris Clements (Google), Clint Wilson (Apple), Cynetheia Brown (FPKIMA), Dean Coclin (DigiCert), Enrico Entschew (D-Trust), Greg Tomko (GlobalSign), Inigo Barreira (Sectigo), Jaime Hablutzel (WiseKey), Jeanette Snook (Visa Inc), Johnny Reading (GoDaddy), Jozef Nigut (Disig), Jun Okura (Cybertrust), Karina Sirota Goodley (Microsoft), Kate Xu (TrustAsia), Kateryna Aleksieieva (Certum by Asseco), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Matthew McPherrin, Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Mrugesh Chandarana (IdenTrust), Nargis Mannan (Viking Cloud), Nicol So (CommScope), Nome huang (TrustAsia), ONO Fumiaki (SECOM), Peter Miskovic (Disig), Rebecca Kelley (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Ryan Dickson (Google Chrome), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tobias Josefowitz (Opera), Wayne Thayer (Fastly), Wendy brown (FPKIMA)