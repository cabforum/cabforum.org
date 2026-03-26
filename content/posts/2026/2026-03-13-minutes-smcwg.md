---
date: 2026-03-13 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-03-13 Minutes of the S/MIME Certificate Working Group
type: post
---
## Minutes of SMCWG
 
March 13, 2026
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
________________________________________
 
1. Roll Call 
 
________________________________________
 
2. Note well:  Antitrust / Compliance Statement
 
________________________________________
 
3. Approval of past minutes
 
Minutes of February 25 were deferred. Minutes provided by Stephen Davidson.
 
________________________________________
 
4. Review Agenda 
 
Stephen Davidson thanked SSL.com for their hosting of the CABF #67 event.
 
________________________________________
 
5. Membership
 
Syed Rameez Rehman was confirmed as an Interested Party to SMCWG. 
 
________________________________________
 
6. Discussion
 
Stephen provided a summary of the SCWG activities over the past quarter.
* Ballot SMC014: DNSSEC for CAA
* Ballot SMC015v2: Allow mDL for authentication of individual identity
* Investigation of impact of dropping clientAuth from webPKI TLS on SMTP-to-SMTP authentication
* Efforts will move ahead on the past updates discussed for Pseudonym and the SMCWG Charter 
 
He noted some upcoming requests for assistance on updates to the sections on reliance on eID for eIDAS2, and on electronic signature.  There has been a request to consider reuse periods.  And the careful re-write of Section 7 will continue.
 
The WG reviewed a draft of Ballot SMC016: Equivalence with Ballots SC096 and SC097.  It was noted that most “extant” S/MIME CAs were already swept up in the TLS BR ballot of the same subject as it also applied to non-TLS CAs under multipurpose roots.  This ballot simply covered any gaps that might exist in order to full deperecate SHA-1 signatures.  Stephen noted that discussion would kick off in the following week:
* Creates a carve-out of the logging requirements for DNSSEC 
* Sunsets all remaining use of SHA-1 signatures in Certificates and CRLs.
 
The WG discussed the impact of recent Root program policy proposed updates that would have an impact on the Multipurpose S/MIME profiles.  Stephen noted that the SBR allowed:
7.1.2.2 (g) For Subordinate CA Certificates that will be used to issue S/MIME Certificates, the value id-kp-emailProtection SHALL be present. The values id-kp-serverAuth, id-kp-codeSigning, id-kp-timeStamping, and anyExtendedKeyUsage SHALL NOT be present. Other values MAY be present.
 
7.1.2.3 Subscriber certificates (f) extKeyUsage 
* Strict: id-kp-emailProtection SHALL be present. Other values SHALL NOT be present.
* Multipurpose and Legacy: id-kp-emailProtection SHALL be present. Other values MAY be present.
* The values id-kp-serverAuth, id-kp-codeSigning, id-kp-timeStamping, and anyExtendedKeyUsage SHALL NOT be present.
 
A proposed change in Apple’s policy would impact this.
https://github.com/apple/apple-root-program/pull/2/changes
 
### 1.7 Subordinate CA Requirements
Subordinate CA Certificates created after 2026-07-01 MUST be dedicated to a single Trust Purpose as defined in [Appendix A](#appendix-a-trust-purposes), regardless of whether the hierarchy supports multiple Trust Purposes.
 
## Appendix A: Trust Purposes
The Apple Root Program recognizes the following Trust Purposes: 
| Trust Purpose | Required EKU(s) | Baseline Requirements |
|---------------|-----------------|----------------------|
| Secure Email | id-kp-emailProtection (1.3.6.1.5.5.7.3.4) | S/MIME BR |
| Legacy S/MIME | id-kp-emailProtection (1.3.6.1.5.5.7.3.4) id-kp-clientAuth (1.3.6.1.5.5.7.3.2) | S/MIME BR |
| Client Authentication | id-kp-clientAuth (1.3.6.1.5.5.7.3.2) | CA-defined (subject to Apple approval) | 
 
Stephen noted that the impact of the Apple policy was that for subCAs created after 20260701, the SMIME multipurpose profile would therefore be limited to emailProtection and clientAuth EKU.  Other EKU, such as the Microsoft EKU or the AATL EKU will no longer be able to be used for CAs in Apple’s root program.  Clint Wilson said that document signing was not a trust purpose for the Apple program. Dustin Hollenback said that, at this time, the requirement was for new subCAs and did not look at legacy subCAs.  He said there was no guarantee that clientAuth would be continued indefinitely.
 
The WG discussed that it was likely that the SBR would need to reflect the more restrictive root program requirement as diverging root policies created challenges for CAs in managing root compliance.
 
Dustin said that Apple considered that all certificates with emailProtection should comply with the SBR (ie include an email address).  Stephen said that required clarification as it would create a “which comes first: chicken or egg” issue as many certificates with the emailProtection EKU did not include email addresses and were explicitly “out of scope” of the SMIME BR per https://github.com/cabforum/smime/blob/main/SBR.md#11-overview.  
 
Dimitris Zacharapoulos quoted Apple policy at https://www.apple.com/certificateauthority/ca_program.html#:~:text=1.3.4%20S/MIME%20CA%20Providers which requires S/MIME CAs to comply with the SBR, and the SBR accommodate the “no email address”.
 
Stephen noted that historically many document signing applications used the emailprotection EKU, so the “no email address” optout is important.  Clint said Apple’s expectation was that certificates with emailprotection should include an email address and comply with the SBR.  Stephen noted that was explicitly not part of the SMCWG’s concept when the SBR was written.  Clint suggested that Apple may update its policy to require that end entity certificates with emailprotection include an email address.  Stephen said that such a change should have a transition period as it represented a change to common practice.
 
Roman Fischer said that there were CAs that include additional EKU that could not be renewed under the new Apple policy, so a transition period was desirable. Stephen asked if someone with deeper CCADB access could look at the current list of SMIME enabled CAs to see how often other EKU are commonly used.
 
Additional related requirements are at https://github.com/TrustedRootProgram/Program-Requirements/pull/20/changes and https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/
 
The SMCWG discussed the use of RSA 2048 keysize in CA certificates (see section 6.1.5 of the SBR) per https://github.com/cabforum/smime/issues/242.  Stephen noted that the SMCWG had previously discussed the topic and decided to hold – but that external standards had moved on since then.
 
Stephen noted NIST SP 800-57 Part 1 recommends that 2048-bit RSA keys are acceptable through 2030, but deprecated for new applications after that date. For systems needing security beyond 2030, NIST recommends 3072-bit RSA (providing 128-bit equivalent security) or ECC.  Germany’s BSI TR-02102-1 allowed a transitional period for RSA keys ≥ 2000 bits to remain compliant until the end of 2023; from 2024 onwards, an RSA key length of ≥ 3000 bits became mandatory (i.e. 3072-bit). The EU’s SOG-IS sets the acceptability deadline for the legacy use of RSA modulus less than 3000 bits to 31 December 2025. This is mirrored by the ECCG (European Cybersecurity Certification Group) v2, with a note that a later deadline for user/data authentication may be set at national level. France’s ANSSI  TLS recommendations tolerate 2048-bit RSA only for short-term needs and advise 3072-bit or higher for long-term protection of sensitive data.
 
Martijn Katerbarg noted that Code Signing had already stepped up key sizes.  Dimitris said that it was acceptable to add a requirement for new CAs, but should allow existing CAs to continue for now.  Dustin supported that.  The WG agreed that 3027-bit as a target size for subCAs.  Roman Fischer asked about end entity certificates; Martijn said that Code Signing dealt with that at https://cabforum.org/working-groups/code-signing/requirements/#6151-root-and-subordinate-ca-key-sizes.  Stephen asked for assistance in drafting a ballot.
 
________________________________________
 
7. Ballot Status Updates
    *  In Development:  Ballot SMC016: Equivalence with Ballots SC096 and SC097
    *  In Discussion Period: NA
    *  In Voting Period: NA
    *  Under IPR Review: SMC015v2: Allow mDL for authentication of individual identity
    *  Approved and Effective: SMC014: DNSSEC for CAA (October 13)
 
________________________________________
 
7. Next meeting:
 
    * March 25, 2026 at 11 am Eastern
 
________________________________________
 
8. Any other business
 
Stephen reminded that CABF elections would occur later this year and invited members to consider if they wished to assume leadership roles.
 
________________________________________
 
9. Adjourn
 
Attendees:
 
Aaron Gable (Let's Encrypt), Alvin Wang (SHECA), Andy Warner (Google), Azira Zakaria (MSC Trustgate Sdn Bhd), Ben Wilson (Mozilla), Brittany Randall (GoDaddy), Chad Dandar (Cisco Systems), Chya-Hung Tsai (TWCA), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Hampshire (Cisco Systems), Eric Kramer (Sectigo), Gregory Tomko (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo (NAVER Cloud Trust Services), HuckHai Lim (Baker TIlly Malaysia), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), John Mason (Microsoft), Jos Purvis (Fastly), Jozef Nigut (Disig), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Li-Chun Chen (Chunghwa Telecom), Lora Randolph (Microsoft), Lorey Spade (Amazon), Luis Cervantes (SSL.com), Luis Osses (Amazon), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Nate Smith (GoDaddy), Nick France (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Pin-Jung Chiang (Chunghwa Telecom), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rob Stradling (Sectigo), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Sándor Szőke (Microsec), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)