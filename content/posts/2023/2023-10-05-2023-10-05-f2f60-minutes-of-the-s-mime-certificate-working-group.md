---
aliases:
- /2023/10/05/2023-10-05-f2f60-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-10-05 20:31:43
slug: 2023-10-05-f2f60-minutes-of-the-s-mime-certificate-working-group
tags:
- Face-to-Face
- Minutes
- S/MIME
title: 2023-10-05 (F2F#60) Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

October 5, 2023

These are the Approved Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

In person or online: Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Andreas Henschel – (D-TRUST), Arvid Vermote – (GlobalSign), Ashish Dhiman – (GlobalSign), Ben Dewberry – (Keyfactor), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Bruce Morton – (Entrust), Christophe Bonjean – (GlobalSign), Clemens Wanko – (ACAB Council), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust) Doug Beattie – (GlobalSign), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Han Yang – (Chunghwa Telecom), Ian McMillan – (Microsoft), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Jochem van den Berge – (Logius PKIoverheid), John Mason – (Microsoft), Jozef Nigut – (Disig), Kateryna Aleksieieva – (Asseco Data Systems SA (Certum)), Keshava Nagaraju – (eMudhra), Li-Chun Chen – (Chunghwa Telecom), Marcelo Silva – (Visa), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Michael Slaughter – (Amazon), Mohit Kumar – (GlobalSign), Nargis Mannan – (VikingCloud), Nate Smith – (GoDaddy), Naveen Kumar – (eMudhra), Nicol So – (CommScope), Nitesh Bakliwal – (Microsoft), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Rich Kapushinski – (CommScope), Rollin Yu – (TrustAsia Technologies, Inc.), Roman Fischer – (SwissSign), Russ Housley – (Vigil Security LLC), Scott Rea – (eMudhra), Sven Rajala – (Keyfactor), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Callan – (Sectigo), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Trevoli Ponds-White – (Amazon), Tsung-Min Kuo – (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha – (eMudhra), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes for the teleconference of September 27 were approved.

### 5. Discussion

Stephen Davidson raised the subject of the SMCWG charter now that it’s primary objective of producing the S/MIME BR was achieved. He asked if it was reasonable for the group to discuss topics of how S/MIME certs are implemented as informative guidance, for example describing how client software should implement revocation checking. Clint Wilson said that there were other groups and venues that were perhaps better suited for such technical/implantation topics. Tim suggested that the group reach out to M3AAWG (Messaging, Malware and Mobile Anti-Abuse Working Group).

The WG discussed the longevity of the Legacy profiles, which were always intended as a stepping stone from the “old world” of S/MIME into the auditable framework of the SBR, adding structure but still maintaining some flexibility. It was suggested that a survey or research might be helpful in identifying which profiles had been adopted in practice by CAs. Clint Wilson said that telemetry for S/MIME was limited but welcomed suggestions for types of data that might be useful.

Stephen noted that any deprecation of the Legacy profile should have long forward visibility. Clint said that he expected a hard date to be chosen, most likely in 2026 (2-3 years from the SBR effective date), and that CAs should come forward if there were elements missing in the stricter profiles that made transition problematic. Roman Fischer noted that ERAs seemed to struggle with the separated GN/SN in the stricter policies. It was agreed that a survey using CCADB would be helpful in making the determination of a deprecation date.

Stephen noted that a ballot to add ETSI TS 119 411-6 to the SBR audit requirements in line with root store requirements would occur in November, endorsed by HARICA and Entrust. He also said the SMWG intended to move ahead with a ballot to add CAA for S/MIME to the SBR in the fall as the final publication of the IETF RFC was imminent. Dimitris Zacharopoulos said that a public announcement should be made about the subject so vendors in the DNS and CA software sector can prepare.

Martijn Katerbarg discussed revocation backdating which is allowed in the Code Signing and TLS BR but not mentioned in the SBR. He has a proposed text change to allow it [https://github.com/cabforum/smime/pull/217][1].

Clint doesn’t believe that backdating causes any issues but also does not see what the value of it might be as client software would not compare revocation date to the timestamp of the message. He saw no problem with allowing CAs to do it. Earlier Russ Housely noted that RFC 5280 indicated the use of the invalidityDate extension for such purposes. Bruce Morton said that Microsoft software (at least) did not support use of the invalidityDate extension.

Stephen said a MAY might be reasonable, which would allow CAs to have a consistent implementation across cert types. Dimitris said that there was little value to add a feature that no client software will use, that the case was different from signature standards which focused on timestamps. Doug Beattie questioned whether this was worth the work as no relying party was known to use it. Paul van Brouwershaven supported having a MAY. Martijn will return with an updated proposal.

Stephen noted that a later ballot will add some details on the GOV, INT, and LEI prefixes of the organizationIdentifier. He also said that he’d like to add clarifying language to the BR regarding when the extended orgID for state and local (like NTRUS+CA-1234). Tim Hollebeek said we should define a rule and then try to build a list. An example rule might be: the jurisdiction level is set by whether the registration number is unique at that level that precedes it. Stephen requested that CAs review which jurisdictions they believed required the extended orgID. The group reviewed the EUID proposal, which has been previously submitted to the SMCWG public list. It was agreed to further discuss whether this should be described in the SBR either as normative content or an informative appendix.

Stephen noted that there were questions of a possible grey area between the Sponsor (SV)- and Organization-validated (OV) certificate types, where the use of only a pseudonym or email address allowed services to be issued under the SV profile which was actually intended for a natural person. On a related point, Stephen asked whether the pseudonym (see section 3.1.3) itself needed to be unique, as generally the requirement is for the Subject DN to be unique.

The group agreed to discuss the topic in a further meeting. Tim Callan said that it might be difficult to write a process or check live for ERAs on this point, and that in some respects the division between the SV and OV types was artificial anyway.

It was agreed to cancel the October 11 teleconference.

### 6. Any Other Business

None

### 7. Next call

Next call: Thursday, October 25, 2023 at 11 am Eastern time.

### Adjourned

[1]: https://github.com/cabforum/smime/pull/217