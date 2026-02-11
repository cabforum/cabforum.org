---
date: 2025-12-17 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-12-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 
December 17, 2025
 
These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.
 
## 1. Roll Call 
 
## 2. Note well:  Antitrust / Compliance Statement
 
## 3. Approval of past minutes
The following minutes were approved:
- NA
 
Minutes provided by Stephen Davidson.
 
## 4. Review Agenda 
 
## 5. Membership
 
NA
 
## 6. Discussion
 
- The WG discussed issues that were arising for TLS certificates being used in SMTP Authentication. Starting in June 2026 Chrome root program begins restricting multi-EKU certificates. Starting in 2028, Mozilla will also move towards dedicated hierarchies.  This means that certificates that have both id-kp-serverAuth + id-kp-clientAuth will ultimately not be allowed.
 
- Stephen Davidson said SMTP isn't a browser, but the policy changes apply to SMTP certificates if issued from browser-trusted hierarchies.  SMTP infrastructure relies on such combination certificates for bidirectional authentication.
 
- SMTP with STARTTLS (RFC 3207) describes dual-role requirements:
  - Server role: Present certificate during inbound connection (requires serverAuth)
  - Client role: Authenticate to downstream MTAs requiring client certs (requires clientAuth)
 
- Current deployment patterns focus heavily on a single certificate with both EKUs per SMTP server.  Several CAs reported customer enquiries regarding how these certificates will be issued following the Chrome deprecation of clientAuth.
 
- Stephen said that the case was clearly adjacent to the SMCWG’s interests, and that it appeared there was a gap in standards and/or policy for SMTP MTA-to-MTA certificates.  He said that there may be motivation to use private-but-widely-adopted hierarchies like X.9.  Martijn Katerbarg said their broadly were low standards for authentication cert vetting, which may explain the preference for TLS. 
 
- Stephen said that confusion surrounding SMTP certs may be accelerated if the issue is not addressed.
 
- Stephen said that he was not aware of any analysis of actual use in SMTP software, including whether SMTP software could support separate server/client certificates.  He also said that it was difficult to ascertain the scale of the issue, or the makeup of public vs private.  The group estimated that hundreds of thousands of such certificates are in current use.  He asked for assistance in determining that background.  Andy Warner said that large cloud email platforms would have access to such data, and said that he would try to get access to high-level counts. Stephen thanks him and welcomed such non-granular information from other email providers.
 
- Ashish Dhiman raised the question of EKU and validity periods in the Multipurpose profiles.  Stephen said that no change was envisaged at this time.  Rebecca Kelly said that some CAs were dealing with the issue by using hierarchies that are “public-trust-other-than-Chrome”.  Stephen noted that the fragmentation of root program rules was creating complexity on hierarchy choices.
 
- Stephen asked for feedback from the WG.  It was noted that many mail servers were Linux and appeared to rely upon NSS.  Ben Wilson noted the past blog post by Kathleen Wilson noting that NSS was intended as a webPKI root store. It was discussed that more information is required in order to decide applicability with this WG, or if it was more appropriate for another WG.
 
- Stephen noted that the WG would return to the topic, and would also proceed with the ballots for pseudonyms and mDL in early 2026. He welcomed proposals for topics from both CAs and from Certificate Consumers, and thanked WG members for their participation in 2025.
 
## 7. Next meeting:
 
- January 14, 2025 at 11 am Eastern .  December 31 meeting is cancelled.
 
## 8. Any other business
 
NA
  
## 9. Adjourn
 
## Attendees:
 
Adam Folson (IdenTrust), Albert de Ruiter (Logius PKIoverheid), Andy Warner (Google), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Guillaume Amringer (Carillon Information Security Inc.), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jozef Nigut (Disig), Judith Spencer (CertiPath), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Pekka Lahtiharju (Telia Company), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rollin Yu (TrustAsia), Russ Housley (Vigil Security LLC), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority), Wiktoria Więckowska (Asseco Data Systems SA (Certum))
 