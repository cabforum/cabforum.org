---
date: 2025-09-24 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-09-24 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
September 24, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
## 1. Note Well and Antitrust Statement
 
________________________________________
 
## 2. Roll Call
 
*  Taken from recording. See "Attendees" below.
 
________________________________________
 
## 3. Approval of Prior Minutes
 
*  Minutes from September 10 were deferred.
*  Minutes were taken by Stephen Davidson.
 
________________________________________
 
## 4. Agenda Review
 
*  The agenda was reviewed. There were no additions.
 
________________________________________
 
## 5. Membership Applications
 
*  None
 
________________________________________
 
## 6. Discussion Topics
    * Topic 1: SMC014 .  Stephen Davidson noted that SMC014 (DNSSEC for CAA) is in IPR until October 10.

    * Topic 2:  Pseudonym - https://github.com/srdavidson/smime/blob/Pseudo/SBR.md
 
The WG returned to the discussion of “corporate pseudonyms” from a prior teleconference.  Stephen said that the group had been talking about how pseudonyms are used in the Sponsor-validated profiles which apply only to individual/natural persons.  It was known in some cases Enterprise RAs were seeking to put corporate roles (like Support or Helpdesk) that are not associated with an individual into the Pseudonym attribute in order to repeat it in the CN and therefore make it visible in client software.
 
Scott Rea said that the Personal Name was essentially “a pseudonym lite.”  Further he asked why Section 3.1.3 required a pseudonym “selected by the Enterprise RA which uniquely identifies the Subject of the Certificate within the Organization included in the subject:organizationName attribute.”  He said the SubjectDN needed to be unique not the name.
 
Another option that was proposed for Organization-validated profiles is:
 
Creating either an extension or CP OID to identify when a certificate was issued by an Enterprise RA (ERA).
 
Proposing text that would enable the OU field, when issued using an ERA, in Organization-validated profiles to include departmental names or “corporate pseudonyms” that are not necessarily unique.
 
Martijn said the corporate roles belonged in the Organization-validated profiles but was wary to bring back the OU field.
 
Judith Spencer supported allowing the OU in Organization-validated profiles via ERA, as the ERA should have freedom to manage their credential issuance process.
 
Rich Smith recounted the reasons that OU was banned from TLS as it was essentially non-validated, and it would be difficult to control ERAs from abusing the OU space and including names that below to other entities.  Martijn agreed, particularly as the definition of an ERA was so broad.  He said it was likely we’d even see domain names showing up in the OU in order to display them in CN.
 
Stephen noted that the SBR was intended to establish a baseline of reliability across CAs, and that enterprises who wanted full freedom in certs should probably use private trust.  Clint Wilson agreed saying that we cannot always accommodate enterprise wishes for customization if they conflict with that baseline. He said OU was an issue in TLS and it took time to claw back to reliability in the SubjectDN.
 
Stephen said perhaps the approach was to strengthen the emphasis that Sponsor-validated was for a natural person, but to remove the insistence in 3.1.3 on uniqueness for pseudonyms.
 
Judith proposed adding some language to that section clarifying Organization-validated certificates.
 
Stephen asked for additional feedback as he’d like to move towards putting text for formal discussion.
 
* Topic 3: F2F agenda
 
Stephen noted that he intended to invite the authors of the “S/MINE for S/MIME” study to speak with the group. There were no objections.
 
* https://www.usenix.org/system/files/usenixsecurity25-oendaroe.pdf  We report on the first broad analysis of real-world S/MIME certificates for digitally signing and encrypting emails. We collected more than 41 million unique X.509 certificates from public address books, i.e., LDAP servers, of which 38 million fulfill the requirements for use with S/MIME in email clients. Despite the surprisingly complex construction of trust chains for S/MIME certificates, we could build chains for a large subset of certificates and show which are trusted in widely used applications. Our results show that many of those S/MIME certificates are issued by non-publicly trusted CAs. Our analysis of the cryptographic keys, certificate attributes, and new regulations, i.e., the CA/Browser Forum’s S/MIME Baseline Requirements, shows that the S/MIME PKI is generally heading in the right direction. Most certificates using compromised or weak key material have expired, weak cryptographic algorithms are being phased out, and CAs are generally issuing more secure certificates. However, the underlying RFCs and email clients should be more stringent about what is considered an S/MIME certificate. Additionally, CAs should improve the distribution of certificate chains to improve user experience and security.  
 
The subject of mDL will be back on the agenda. Dimitris Zacharopoulos had agreed to assist in reviewing the ongoing applicability of the language in the SBR relating to eID.  Stephen asked for assistance from European TSPs with experience with the EUDI wallet.
 
* Topic 4: TLS BR reduction in options for doman control validation.
 
Stephen noted that there were ballots under pre-discussion in the ServerCert working group that would potentially limit the options over the next few years.  He asked CAs to consider if this presented an obstacle for their S/MIME issuance, as a topic for future discussion.
 
## 7. Ballot Status Updates
    *  In Development:  Pseudonym, mDL, eID
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: SMC014: DNSSEC for CAA (until October 10)
    *  Approved and Effective: SMC013 PQC for S/MIME (as of August 22)
 
________________________________________
 
## 8. Next Meeting
 
Date: Friday October 17 2025 at the Warsaw F2F meeting.
 
________________________________________
## 9. Any Other Business
 
Ashish Dhiman noted that the now-deprecated Legacy profile allowed the CN to include a Personal Name, but that the Multipurpose and Strict profiles require the ERA to split the name into givenName and surname. 
 
Many ERAs do not have directories that are split in this manner – which limits their ability to use automation for trusted S/MIME.  He asked if the Multipurpose might be relaxed to allow the CN to include a Personal Name, without also requiring the givenName and surname.
 
________________________________________
 
## 10. Adjournment
 
*  The meeting was adjourned.
 
________________________________________
 
## 11. Attendees
 
Adrian Mueller (SwissSign), Adriano Santoni (Actalis S.p.A.), Andreas Henschel (D-TRUST), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Clint Wilson (Apple), Daryn Wright (Apple), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Kiran Tummala (Microsoft), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mrugesh Chandarana (IdenTrust), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Patrycja Schrenk (PSW), Pedro Fuentes (OISTE Foundation), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Tim Huff (Microsoft), Tsung-Min Kuo (Chunghwa Telecom)
 