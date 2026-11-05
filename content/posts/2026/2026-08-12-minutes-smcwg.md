---
date: 2026-08-12 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-08-12 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
August 12, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
    * July 15
    * July 29
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
NA.
 
________________________________________
 
6.          Discussion
 
    *  Stephen Davidson noted that Ballot SMC017v2 is now in effect as SBR v1.0.15.
    * Stephen further noted that Ballot SMC018: Realignment of Multipurpose use cases now in formal discussion https://cabforum.org/2026/08/11/ballot-smc-018/ until 2026-08-18 at 13:00:00 UTC
    *  The SMCWG had an extended conversation on the possibility of using an extension to “mark” certificates that were issued via an Enterprise RA.  Draft text at https://github.com/srdavidson/smime/blob/Enterprise_RA/SBR.md described a possible implementation of an “Enterprise RA Indicator” extension.  This would potentially include the Organization-validated and Sponsor-validated profiles. Stefan Selbitschka questioned why in the Organization-validated profile as they only included the Org name (vetted by the CA) and an email address, and said that a project like this might lead to additional extensions identifying the type of vetting done in general and he did not see any demand from certificate consumers to use such data. That view was supported by various WG members and it was agreed to not pursue the concept at this time.
    *  The SMCWC discussed the difficulties on balancing the “incorporated by reference” links with the TLS BR sections on DCV (and the associated CAA and MPIC requirements) as they reshuffled both content and locations under Ballot SC098 https://github.com/cabforum/smime/issues/265.  Stephen noted that the S/MIME BR text had replicated some of the CAA and MPIC requirements as the SBR defined methods that were not in the TLS BR for which CAA and MPIC were relevant.  It was not clear what changes under Ballot SC098 needed to be made in the SBR.  Martijn Katerbarg agreed to prepare an analysis for the face-to-face meeting.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development: CAA review
    *  In Discussion Period:  Ballot SMC018: Realignment of Multipurpose use cases (until 2026-09-24)
    *  In Voting Period: NA
    *  Under IPR Review: NA
    *  Approved and Effective: Ballot SMC017v2: Increase Minimum RSA CA Key Size (v1.0.15 as of July 30)
________________________________________
 
8.           Next meeting:
 
    * Wednesday, August 26, 2026 at 11:00 am Eastern time
 
________________________________________
 
9.            Any other business
 
________________________________________
 
10.        Adjourn
 
Attendees:
 
Adam Fiock (SSL.com), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Jozef Nigut (Disig), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Kirch (Deutsche Telekom Security GmbH), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert)
 