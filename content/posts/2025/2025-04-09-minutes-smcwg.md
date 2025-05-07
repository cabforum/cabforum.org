---
author: Martijn Katerbarg
date: 2025-04-09 00:00:00
tags:
- Minutes
- S/MIME
title: 2025-04-09 Minutes of the S/MIME Certificate Working Group
slug: minutes-of-the-s-mime-certificate-working-group
type: post
---

## Minutes of SMCWG
 
April 9, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## Attendees
Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Luis Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nargis Mannan (VikingCloud), Nome Huang (TrustAsia), Pedro Fuentes (OISTE Foundation), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Scott Rea (eMudhra), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tsung-Min Kuo (Chunghwa Telecom)
 
## 1. Roll Call
Taken from recording.
 
## 2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.
 
## 3. Review Agenda
Minutes were prepared by Stephen Davidson.
 
## 4. Approval of minutes from last teleconference
Deferred.
 
## 5. Discussion
 
The WG confirmed the participation of Taaniel Kraavi / CERT-EE as an Interested Party.
 
Stephen noted the pkilint continued to receive feedback on the S/MIME BR from users. Users had reported that there was a common usage of a prefix “Pseudo:” when a pseudonym was used in the SubjectDN common name.  Andreas Henschel noted that another common tag was “PN” as a suffix or prefix.  These tags are in common use but do not appear to be defined in a standard.
 
As a side bar, it was noted that some of the options in 7.1.4.2.2(a) no longer apply following the deprecation of the Legacy profiles.  The WG discussed when the requirements for the Legacy generation should be removed, immediately after the deprecation or after the last Legacy certificates expire.  Several options were proposed; the WG will return to the topic.
 
Clint Wilson said he generally did not like the idea of adding tags to the CN but understood it’s possibly utility in the case of Pseudonyms. He said if a rule was written he felt it should be a mandate for consistency.  A draft of possible text will be developed; it would require a forward effective date.
 
Guillaume Amringer noted that the language in 7.1.4.2.2(a) could be improved to say “If present, the Pseudonym SHALL contain the same information as the subject:pseudonym if that Subject attribute is also present.”
 
Stephen noted that Ballot SMC011 in voting for approval, closing on April 14, 2025 at 17:00:00 UTC.  He noted the discussion on the list with questions posed by Martijn Katerbarg.  Stephen encouraged WG members to be aware of ballot contents in the discussions and discussion period, so that clarity could be sought before the ballot commenced.  He said that the text was long considered, and he still felt it was appropriate in its current form, with a strong vote of Support having already occurred.  He said that future ballots would include a specific discussion on posible implementation periods.
 
Pedro Fuentes questioned why the organizationIdentifer was required.  It was noted that the SMCWG had discussed this at length at the outset of work on the SBR and sought, as best as could be defined, a unique identifier for organisations identified in the Subject DN.
 
The WG discussed several potential ballots that are under discussion at the Server Certificate working group that have a bearing on the SBR.
 
The first would introduce a change to section 4.9.1.1 to explicitly require revocation within 24 hours for certificates issued when:
*  Certification Authority Authorization (CAA) checks were not performed correctly, or
*  Certificate issuance took place in the presence of records which indicated the CA did not have permission to issue.
 
See more at https://github.com/cabforum/smime/issues/274
 
The WG also discussed the possible ballot that would add requirements surrounding the use of DNSSEC when checking CAA or conducting domain control validation.  See more at https://github.com/cabforum/smime/issues/275   Clint noted that he believed this proposal would also extend to activities such as MX record lookups.
 
Stephen noted that the ballot of ACME for S/MIME would proceed as SMC-012 after a final review by the group.
 
## 6.     Any other business
Andy Warner suggested that discussion be held to make Section 7 consistent with the updated layout that was adopted in the TLS BR.  Stephen noted this was a considerable undertaking. See https://github.com/cabforum/smime/issues/277.
 
Ashish Dhiman requested that a discussion be held on validity periods now that SC-081 has moved to ballot.  Stephen noted that an existing issue was at https://github.com/cabforum/smime/issues/271.
 
Both topics will be added to a future agenda.
 
## 7. Next call
 
Next call: Wednesday, April 23, 2025 at 11:00 am Eastern Time
 
## Adjourned