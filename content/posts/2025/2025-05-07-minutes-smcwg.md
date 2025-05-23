---
date: 2025-05-07 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-05-07 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

May 7, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording (Webex). See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from April 23 were approved.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  None
 
________________________________________
 
## 6. Discussion Topics
 
    * Topic 1: SMC012 ACME for S/MIME
Stephen Davidson noted that a ballot was ready to go after SMC011 IPR concludes on May 14. It will include the correction for directoryName in SAN previously discussed.  Stephen asked the group to make a final review, and the WG walked through the proposed text.
 
Andy Warner suggested that language might be added to allow a reuse period for mail domain control validations performed using ACME.  Guillaume Amringer noted that a DNS pre-authorization using the TLS methods already allowed a reuse period.
 
https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...46f48f891743860a8ab30e8c8f0985bfe22c8d57
 
Stephen noted the SMCWG welcomes proposals to improve automation possibilities via the S/MIME BR.

    * Topic 2: Pseudonym readiness for ballot?
 
The WG reviewed the proposed text and debated whether the language should step up to require the prefix after an implementation period.  Adrian Mueller noted that Outlook defaults to display the CN, so tagging the Pseudonym prevented the chance for confusion.  Martijn Katerbarg supported that.  Clint Wilson said he preferred consistency if the prefix were to be allowed.  Andreas Henschel said that in Germany in the past sometimes the PN: was used as a suffix (i.e., after the name). 

Stephen noted that theoretically you could use an email address in the Pseudonym and there were no requirements to validate it, which could create confusion.
 
https://github.com/srdavidson/smime/compare/c80922087427b1368cb8991eaad4128ef8fe52c0...3fb02751100f9d0dd366d2b48ec5e544fc5b1939
 
    * Topic 3: PQC, what else is needed for ballot? https://github.com/cabforum/smime/issues/280
 
The WG reviewed the proposed text.  Stephen asked for assistance in reviewing it and asked if additional guardrails should be added.  He asked if a note should be added to explain that PQC was added to allow experimentation but that additional root program rules may apply.  The WG discussed if rules needed to be stated for what type of CA can sign what type of certificate; it was agreed that the current S/MIME BR Section 7 did not have the same degree of specification in this regard as re TLS BR.  Stephen noted that the WG should probably consider a change to the Section 7 format for consistency across the CABF standards, and to accommodate the growing number of algorithms and cert types that will need to be supported.
 
    * Topic 4: Coming up
Stephen asked if there were volunteers willing to assist in drafting an update to section 7 to adopt the more detailed approach now used in the TLS BR.  Clint Wilson and Andy Warner said they’d be willing to help.
 
________________________________________
 
## 7. Ballot Status Updates (if applicable)
 
*  Upcoming Drafts / In Development: SMC012 – ACME For S/MIME
*  In Discussion Period: NA
*  In Voting Period: NA
*  Under IPR Review: SMC011 until May 14, 2025
*  Approved and Effective: NA
 
________________________________________
 
## 8. Next Meeting
 
Date: Wednesday, May 21 2025 at 11:00 am Eastern Time
 
________________________________________
## 9. Any Other Business
 
*  None
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Bruce Morton (Entrust), Clint Wilson (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Lilia Dubko (CPA Canada/WebTrust), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Patrycja Schrenk (PSW), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chunghwa Telecom), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)
 