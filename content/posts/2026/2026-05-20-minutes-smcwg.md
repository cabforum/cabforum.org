---
date: 2026-05-20 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-05-20 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
May 20, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1.           Roll Call 
 
________________________________________
 
2.           Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3.           Approval of past minutes
*  May 6
 
Minutes were taken by Stephen Davidson.
 
________________________________________
 
4.           Review Agenda 
 
________________________________________
 
5.           Membership
 
________________________________________
 
6.          Discussion
 
    *  Stephen Davidson noted that the Ballot SMC017 had been withdrawn on May 12 during voting as a result of concerns that were raised on the list by Martijn Katerbarg and Dimitris Zacharapoulos on the impact the ballot might have on delegated OCSP responder certificates as well as cross-signed CA certificates (among others).
    *  Martijn walked through proposed modifications to the ballot as SMC017v2 https://github.com/cabforum/smime/pull/304. It changes the 2027 block to CAs smaller than 3072, as many operators created CAs at this size in the recent past, and narrows the block to end entity certificates whose tbsCertificate includes the emailProtection EKU and whose SAN includes an email.  There was some question if the more specific technical definition should be used versus “Subscriber certificate”, which is not defined in the SBR. Stephen agreed the technical form was preferable.  Martijn agreed to make updates for the next meeting, to go to ballot again. Stephen said he’d look into the actual inventory of active S/MIME issuing CAs in CCADB.
    *  The SMCWG returned to the pseudonym text, with an extended conversation about the text in section 3.1.3 which requires uniqueness of a pseudonym to the CA if assigned by the CA, or to the Enterprise RA if assigned by the ERA.  Stephen noted that the uniqueness is required of the Subject DN – but there is no real reason for the pseudonym to be unique, particularly as such a requirement does not exist for “real” names.  Stefan Selbtchka agreed.  Dimitris said that the requirement needed to be retained that the CA or RA could track back a pseudonymous cert to the validated individual identity.  Stephen noted that requirement was covered in the text.  Martijn said you had to uniquely identify the person.
    *  Stephen said it may require taking the ballot to formal discussion to resolve the question.  Stefan and Sandy Balzer agreed to endorse.
https://github.com/cabforum/smime/compare/21bda9e4a5f04f373dbd359b4e2213a3f4910c76...b13f8956f715c97dbf215c864fa99905d25a1eb1
    *  Ashish Dhiman requested that the browsers present changes to their draft policies at the CABF WGs as relevant.
    *  The WG discussed the question raised by Andy Warner regarding the requirement for TLS demo certs when a root was in the process of transitioning, for example from being multipurpose to S/MIME only.  Ben pointed out that CCADB worked on the basis of derived trust bits which showed the “maximum spread” of trust settings across the root programs, so from his perspective test certificates were required as long as a root had TLS trust in at least one program, and that a CA providing TLS test certificates should not be a problem even as the TLS setting is removed from individual programs.
 
________________________________________
 
7.           Ballot Status Updates
    *  In Development:  Ballot SMC017: Increase Minimum RSA CA Key Size, Pseudonym
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: NA
    *  Approved and Effective: Ballot SMC016: Equivalence with Ballots SC096 and SC097 (May 5)
________________________________________
 
7.           Next meeting:
 
    * Wednesday, June 3, 2026 at 11:00 am Eastern time
 
________________________________________
 
8.            Any other business
 
________________________________________
 
9.        Adjourn
 
Attendees:
 
Adriano Santoni (Actalis S.p.A.), Andrea Holland (IdenTrust), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Malcolm Idaho (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)