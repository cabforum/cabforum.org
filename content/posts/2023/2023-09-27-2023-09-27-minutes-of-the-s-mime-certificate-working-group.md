---
aliases:
- /2023-09-27-2023-09-27-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-09-27 18:57:45
tags:
- Minutes
- S/MIME
title: 2023-09-27 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

September 27, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Abhishek Bhat – (eMudhra), Andrea Holland – (VikingCloud), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bilal Ashraf – (SSL.com), Cade Cairns – (Google), Clint Wilson – (Apple), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Keshava Nagaraju – (eMudhra), Li-Chun Chen – (Chunghwa Telecom), Mrugesh Chandarana – (IdenTrust), Nome Huang – (TrustAsia Technologies, Inc.), Paul van Brouwershaven – (Entrust), Pekka Lahtiharju – (Telia Company), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Russ Housley – (Vigil Security LLC), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom), Wendy Brown – (US Federal PKI Management Authority), Yashwanth TM – (eMudhra)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following teleconferences:

- September 13

### 5. Discussion

Russ Housley noted that the draft RFC for CAA for S/MIME was approaching conclusion and publication. Stephen Davidson said that, once the RFC was published, the SMCWG would move to introduce a ballot requiring CAA for S/MIME with a long implementation window.

Russ also noted that a new RFC was underway that would replace the one referenced for otherName of type id-on-SmtpUTF8Mailbox.

Stephen again noted the issues list is being actively updated at [https://github.com/cabforum/smime/issues][1] and encouraged SMCWG members to comment there. He is working on a draft SM04 ballot of further corrections which may be seen at [https://github.com/srdavidson/smime/blob/Ballot-SMC04/SBR.md][2].

The WG discussed proposed text to incorporate intermediate CAs in the definition of Extant S/MIME CA.

Stephen noted an email sent to the list by Martijn Katerbarg describing that backdating of revocations was now permitted in both the Code Signing and TLS BR, but is not described in the S/MIME BR. Clint Wilson said he had no strong objection to adding this allowance, as it would not block a user from accessing old emails. Russ noted that the CS and TLS BR vary in their description of invalidityDate versus revocationDate. Scott Rea said is unknown if email software is generally aware of the invalidityDate extension but clear standards might make it more attractive.

Wendy Brown said that email software UI is often not specific about “problems relating the certificate” including expiry and revocation and wondered if such a requirement should be expressed as a MAY rather than a SHOULD.

Paul van Brouwershaven and Stefan Selbitschka said that email software treated time stamps loosely so the effectiveness of revocation times was reduced. Stephen asked if the WG had any sway to affect those industry standards, other than to ensure that revocation times were as accurate as possible.

Stephen described proposed text in the draft SMC04 which requires “the proper stacking” of address fields (for example, only allowing streetAddress if locality or state was present). No objections were raised.

Stephen described proposed text in the draft SMC04 to reference the new ETSI TS 119 411-6 in sections 8.4 and 8.6. He said he would also share it with ACAB’c, and no objections were raised.

Stephen described proposed text in the draft SMC04 to clarify the keyUsage table. No objections were raised.

The WG discussed the agenda for the CABF #60 meeting. Topics included Pseudonym, organisationIdentifier and jurisdiction level setting, CAA for S/MIME. Other possible topics raised included extensions showing ERA involvement, attestation of keys, and whether to adopt a table format such as recently introduced to the TLS BR in ballot SC62. Clint noted that he would like the deprecation timeline for the Legacy generation to be discussed.

Ben Wilson noted that he welcomed suggestions from Certificate Issuers that might be considered for the roadmap of email client software.

### 6. Any Other Business

None

### 7. Next call

Next call: Thursday, October 5, 2023 at the CABF#60, see wiki for details.

### Adjourned

\_\_PRESENT
\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT\_\_PRESENT

[1]: https://github.com/cabforum/smime/issues
[2]: https://github.com/srdavidson/smime/blob/Ballot-SMC04/SBR.md