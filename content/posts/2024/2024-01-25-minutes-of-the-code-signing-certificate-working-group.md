---
aliases:
- /2024/01/25/2024-01-25-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2024-01-25 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-01-25 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Atsushi Inaba, Bhat Abhishek, Brianca Martin, Bruce Morton, Corey Bonnell, Dean Coclin, Ian McMillan, Inigo Barreira, Janet Hines, Keshava N, Lucy Buecking, Martijn Katerbarg, Mohit Kumar, Richard Kisley, Scott Rea, Thomas Zermeno, Tim Crawford, Tim Hollebeek, Trevoli Ponds-White

## Minutes

1. Roll Call 
    * Completed by Dean
2. Antitrust reminder 
    * Completed by Dean
3. Approve prior meeting minutes – Jan 11th 
    * Meeting Minutes from 2024/01/11 sent out on 2024/01/12, Approved
4. Ballot CSC-21 Signing Service: Status
    * In IPR until 2024/02/18
5. Ballot CSC-22 Proposed High Risk Ballot: Status
    * In IPR until 2024/02/18
6. Proposed ballot Remove EV Guideline References status
    * Work done by Dimitris to pull in the necessary text from the EV Guidelines and ready for feedback in https://github.com/cabforum/code-signing/compare/main...importEVG
7. Proposed ballot CSCWG charter update status
    * Completed at the Forum level, and merged.
8. Proposed ballot for Time-stamp Requirements update.
    * Martijn has a draft in [CSC-XX: Timestamp Certificate, SubCA and Key restrictions by XolphinMartijn · Pull Request #34 · cabforum/code-signing (github.com)](https://github.com/cabforum/code-signing/pull/34)
    * General pieces are to add key deletion for timestamp certs with validity greater than 15 months, remove SHA1 tokens, and making sure offline SubCA (TSA CA)
    * Need to add effective date for offline subCA requirements, and scope to only new end-entity certs needing to be fulfilled from an offline subCA.
        * Can look to separately define these effective dates and make a proposal
    * Group to review, provide feedback, and look to endorse
9. Other business
    * Membership application from Troy Anderson, Common Crypto Authority as an Interested Party
        * No objections for adding as an Interested Party
    * Next F2F Discussion Topics?
        * Most folks will attend virtually
        * To discuss at next meeting on 2024/02/08
        * Group to bring item ideas for the F2F
        * Consider Certificate Transparency & simplifying EV code signing
        * Consider making the session at the F2F shorter (currently on Tuesday night at 11:30pm ET, 8:30pm PT)
10. Next meeting –  February 8th    
11. Adjourn 
