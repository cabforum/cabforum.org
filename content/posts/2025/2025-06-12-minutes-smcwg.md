---
date: 2025-06-12 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-06-12 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

June 12, 2025 (Day 3 of F2F #65 in Toronto)

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## 1. Note Well and Antitrust Statement

## 2. Roll Call

*  Taken from recording (Webex) and inperson attendance. See "Attendees" below.

## 3. Approval of Prior Minutes

*  Minutes from May 21 teleconference were approved.
*  Minutes were taken by Stephen Davidson.

## 4. Agenda Review

*  The agenda was reviewed. There were no additions.

## 5. Membership Applications

*  None

## 6. Discussion Topics

    * Topic 1: Quarterly Recap

 Stephen Davidson provided a recap of the SMCWG recent activity, which included the passage of two ballots SMC011 (adding EUID as a Registration Reference in the OrgID) and SMC012 (introducing ACME for S/MIME as a mailbox validation option).

The SMCWG will soon move ahead on two new ballots: Proposed Ballot SMC013 (introducing Pure PQC for S/MIME Certificates) and Proposed Ballot SMC014 (updates for Pseudonym attribute).

The SMCWC also intends to define the rules for personal identity validation using government-issued Mobile Driver Licenses (mDL).

The SMCWG currently is comprised of 33 Issuers, 7 Consumers, 7 Associate, 12 Interested Parties.

    * Topic 2: PQC to become ballot SMC013

The SMCWG discussed the proposed ballot text.  Sectigo and Dtrust have agreed to endorse the ballot. Additional approaches, such as composite or hybrid, will be dealt with as separate ballots.

https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...385437e34de81cfee66fa89b46695648cd60275d
https://github.com/cabforum/smime/pull/284 

    * Topic 3: Finalising the Pseudonym discussion

The SMCWG discussed the proposed ballot text which, following earlier discussion in the group, has been expanded to include a ban on use of email addresses in the Pseudonym field.  Stephen said such a change would require an extended effective date.

https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...e335fe4ac058a75fa06539c626246a268d06cd84
https://github.com/cabforum/smime/issues/278 
 
    * Topic 4: Charter Update

The SMCWG discussed proposed text to update the SMCWG group charter.  Following consensus among the SMCWG, such a change would need to be voted upon at the Forum level.  Stephen noted that the charter pre-dated the formation of the WG as well as changes to the Bylaws.  The proposed draft would remove the start up language and seek consistency with the Bylaws, update the audit requirements for Issuer members, as well as refine the scope of WG topics.

Stephen apologized for the difficulties in providing a redline, as the new draft follows the model charter provided in the Bylaws so all existing content moves to new locations. He noted that section 2.2 included a change to scope which was allowed under the Bylaws:  “The SMCWG MAY work on related deliverables and non-normative documents, seeking to improve the adoption and usability of S/MIME certificates and secure email.”

Stephen said the change made sense as the SMCWG includes a representation of the various parties of the S/MIME ecosystem and was in a position to discuss ways of improving the usability of S/MIME beyond simply defining the operation of an S/MIME CA.  He noted that many of the issues of S/MIME were well known – such as key management and certificate discovery – and that suggestions for improvement would require input from the spectrum of SMCWG members. Clint Wilson said that he agreed with the sentiment, but wanted to review the wording to ensure it did not allow the group to impose requirements on Certificate Consumers. 

https://github.com/srdavidson/cabforum/blob/SMCWG-charter-v2/SMCWG-charter.md
 
    * Topic 5: Section 7 rewrite

The SMCWG discussed the proposed rewrite of Section 7 to match the format used in the TLS BR.  Stephen noted that he had set up the section titles at 
https://github.com/cabforum/smime/tree/profiles and invited help from SMCWG members in copying text from the TLS BR and amending it to suit the needs of the S/MIME BR. 

He noted that the task required care, as it would elucidate many requirements that had not existed in such detail before, covering all aspects of S/MIME certificate configuration at all levels of the hierarchy.  The result would make the S/MIME BR better defined and even more lintable.

## 7. Ballot Status Updates (if applicable)

*  Upcoming Drafts / In Development: PQC, Pseudonym, mDL
*  In Discussion Period: NA
*  In Voting Period: NA
*  Under IPR Review: SMC012 – ACME For S/MIME until July 2, 2025
*  Approved and Effective: SMC011 - EUID on May 14, 2025

## 8. Next Meeting

Date: Wednesday, July 2 2025 at 11:00 am Eastern Time.  The group agreed to cancel the June 18 teleconference.

## 9. Any Other Business

*  The SMCWG asked for assistance on mDL topics, particularly in identifying the issuers that would be acceptable in the S/MIME BR.  

## 10. Adjournment

*  The meeting was adjourned.

## 11. Attendees

In person: Dean Coclin (DigiCert), Tim Callan (Sectigo), Andreas Henschel (D-Trust), Adam Frock (BDO), Brian Hsiung (Sunrise CPA), Fumiaki Ono (Secom), Tadahiko Ito (Secom), Yannick Thomassier (Certinomis), Don Sheehy (WebTrust), Jeff Ward (Aprio/WebTrust), Lora Randolph (Microsoft), Karina Sirota Goodley (Microsoft), Xin Qiu (Commscope), Tim Crawford (WebTrust/BDO), Yamian Quintero (Microsoft), Mats Rosberg (Keyfactor), Mike Agrenius Kushner (Keyfactor), Stephen Davidson (DigiCert), Iñigo Barreira (Sectigo), Wayne Thayer (Fastly), Luis Cervantes (SSL.com), Leo Grove (SSL.com), Rebecca Kelley (SSL.com), Martijn Katerbarg (Sectigo), Nick France (Sectigo), Jay Wilson (Sectigo), Enrico Entschew (D-Trust), John Sarapeta (Google Trust Services), Matthew McPherrin (Let’s Encrypt), Brianca Martin (Amazon Trust Services), Trevoli Ponds-White (Amazon Trust Services), Michael Slaughter (Amazon Trust Services), Aaron Poulsen (Amazon Trust Serivices), Tim Hollebeek (DigiCert), Christophe Bonjean (Globalsign), Gregory Tomko (Globalsign), Eva Van Steenberge (Globalsign), Arnold Essing (Telekom Security), Eric Cramer (Sectigo), Rob Stradling (Sectigo), Henry Lam (Sectigo), Scott Rea (eMudhra), Lilia Dubko (CPA Canada), Chris Czajczyc (Deloitte), JinHwan Shin (Deloitte KOREA), Tsung-Min Kuo (Chunghwa Telecom), Chad Dandar (Cisco)

Online: Atsushi INABA (Globalsign), Adrian Mueller (SwissSign), Arnold Essing (Telekom Security), Bruce Morton (Entrust), ChyaHung Tsai (TWCA), Clemens Wanko (ACAB'c), Clint Wilson (Apple), Guillaume Amringer (Carillon), Hisashi Kamo (Secom), Jaime Hablutzel (OISTE), Kateryna Aleksieieva (Certum by Asseco), Luis Osses (Amazon Trust Services), Nome Huang (TrustAsia), Renne Rodriguez (Apple), Roman Fischer (SwissSign), Sandy Balzer (SwissSign), Thomas Zermeno (SSL.com), Zurina Zolkaffly (MSC Trustgate).