---
aliases:
- /2022-07-05-2022-07-05-minutes-of-network-security-working-group/
author: Ben Wilson
date: 2022-07-05 17:16:00
tags:
- Network Security
title: 2022-07-05 Minutes of the Network Security Working Group
type: post
---

Network Security Working Group  –  July 5, 2022

**Antitrust Statement** was read by Clint.

**Roll Call:**  Aaron Poulsen (Amazon), Adam Jones (Microsoft), Ben Wilson (Mozilla), Clint Wilson (Apple), Corey Bonnell (DigiCert), David Kluge (Google), Jillian Karner (Let’s Encrypt), Paul van Brouwershaven (Entrust), Ruben Annemans (GlobalSign), Tim Crawford (CPA Canada/WebTrust), Tobias Josefowitz (Opera Software AS), Tony Seymour (Comsign)

**Membership Application Processing:**

[SSL.COM](http://SSL.COM) has applied to join the working group. They meet all the requirements and no objections were raised to their joining.

Fastly has applied to join the working group. They are not yet a member of another working group, which is a prerequisite, but assuming their membership application is accepted in the Server Cert Working Group, we would able to have them join here. No objections were raised to having them join as a voting member (instead of interested party), once they’ve been added as a certificate issuer to the Server Cert Working Group.

**Any other business:**

- David provided an update of the threat model and risk analysis for OCSP responders, identifying mitigating controls for remediation. The group should look at the results, polish, and determine to move onto the next component.

- Ben brought up the value of the Glossary work as benefiting the NCSSRs. Clint confirmed that’s still on his plate, and will work with Sectigo (Martijn) and Ben with a draft charter.

- Ben also brought up continuing work on the “Zones” ballot. We can set aside the definition work and instead focus on the Air-gapped CA additions.

- Ben provided an overview of prior discussions around the redlined NCSSRs which incorporate separate requirements for Air-gapped CAs, split between logical and physical security requirements.

- Tim provided additional context that part of the goals with the changes was to ensure the requirements were applicable to offline/air-gapped systems, so that the requirements wouldn’t do more harm than good to those systems.

- The group reviewed section 5.1 of the redline draft update to the NCSSRs. Comments were added to the document as the discussion progressed.

- A procedure for granting persons trusted roles was identified as likely fitting better as a general requirement.

- Issues were raised with assuming that multiple accounts must exist in order for accountability of individual access to be auditable.

- Discussion around what trusted roles are and what role they play in the NCSSRs, though no specific conclusion was reached.

- Discussion to continue in the next call.