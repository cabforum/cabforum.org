---
date: 2026-03-12 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-03-12 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Certificate Working Group Meeting Minutes – Face-to-Face

**Date:** March 12, 2026

## Note-Well

The Note-Well was read.

## Review of Agenda

Martijn noted that an agenda update had been sent out a couple of hours prior, adding a topic raised by Adriano Santoni to be discussed if time permits. Two additional items were added during the meeting: an interested party application and Adriano's ballot proposal on mandatory OIDs.

## Interested Party Application

An interested party application was received from Hanqing Zhao, a student at the Institute of Network Sciences and Cyberspace at Tsinghua University. No objections were raised; the application was **approved**.

## Discussion Topics

### Presentation by Microsoft – Strengthening Accountability While Expanding Trust

Karina presented Microsoft's goals and vision for the evolution of the Code Signing Baseline Requirements. She framed the presentation as a conversation starter, inviting the group to identify areas of agreement, flag concerns, and suggest priorities.

#### Problem Statement

Karina noted that while the CSBRs provide strong organizational identity validation, there are gaps:

- Code signing certificates are effectively only issued to organizations; there is no clear path for individual developers or open-source projects.
- Identity correlation across certificates and incidents — especially across CAs — is difficult, making it hard to track repeat bad actors.
- Many security-critical workflows remain manual and error-prone.

#### Goal 1: Make Organizational Identity Validation More Actionable for Abuse Prevention

Karina emphasized the need for easier tracking of repeat bad actors across CAs, better information sharing, and clearer linkage across issuance, reissuance, and revocation. Suggestions included:

- **LEIs (Legal Entity Identifiers):** Requiring LEIs could raise the bar for organizations, provide cross-certificate correlation, and increase the cost of reentry after abuse for shell companies.
- **Identity continuity and traceability:** Stronger expectations for CA record retention, clearer CA obligations for misuse and abuse support.

Dimitris commented that minimizing abuse has always been a goal of the working group and asked what new approaches were being proposed. Karina responded that the goal is to continue finding more indicators to include in certificates and to make information more actionable for threat hunters.

Martijn mentioned recent contact with the Canadian Centre for Cyber Security, who are working on making their analysis available to CAs. He raised the challenge that CAs are not malware experts and are bound by revocation timelines that may not allow sufficient time for external analysis. He suggested exploring broader timelines coupled with accountability requirements to allow for more thorough investigation.

Karina indicated Microsoft would be amenable to language that provides more time for investigation with appropriate accountability, noting that code signing is fundamentally different from web PKI — a single code signing certificate may be used to sign millions of pieces of software, so revocation decisions have broader impact.

Karina also mentioned a nearly-ready ballot addressing **revocation backdating timelines**, noting that the CSBRs currently lack clear guidance on when and how quickly backdating should be performed after revocation.

Katarina Tsvetkova suggested in chat that **certificate suspension** could work as a mechanism — suspending a certificate upon receiving a problem report, then investigating further before deciding on revocation. Karina said Microsoft would need to see solid language but is not opposed in principle.

#### Goal 2: Enable Individual and Open-Source Code Signing Without Reducing Security

Karina outlined the problem: independent developers, open-source maintainers, and small teams without formal entities are effectively excluded from code signing. The goal is not to lower the bar but to expand the pool of people who can sign code. Suggestions included:

- **Explicit individual subscriber validation:** Government-issued identity verification, anti-fraud checks, mobile driver's licenses (mDLs) and other digital identity documents similar to what the S/MIME working group has adopted.
- **Technical safeguards for individual certificates:** Shorter certificate lifespans (e.g., one year), issuance limits, and accelerated revocation timelines to create a smaller blast radius.
- **Open-source project signing:** Allowing an individual to represent an open-source project, though Karina noted she lacked concrete ideas on validation methods and invited input from the group.

Martijn suggested that for open-source projects, validation could involve verifying ownership of a GitHub repository and incorporating that URL into the certificate. He noted this also ties into the goal of eliminating phone-based validation, since there is no way to phone-validate an open-source project.

Scott raised the point that bad actors within organizations are sometimes individuals, not the organization systemically. Karina acknowledged this but noted that Microsoft typically holds the organization accountable and asks organizations to investigate internally.

Dimitris noted that mDLs are available in the US, Australia, and New Zealand, and that Europe is expected to have digital identity wallets by 2027. Martijn cautioned that such solutions primarily help with individual validation and may not solve organizational validation challenges.

A participant suggested that certificates could be scoped to specific applications (similar to how DV certificates work for domains), which could limit misuse. Karina was open to exploring the idea but noted it would require customer input on how code signing is used in practice.

#### Goal 3: Reducing Manual Validation

Karina advocated for shifting towards automated, auditable, policy-driven validation processes. Key points:

- **Phone-based validation:** Microsoft's goal is to ultimately remove phone-based validation entirely, potentially via a phased approach. Karina cited weaknesses including reliance on human judgment, vulnerability to modern fraud techniques (AI voice imitation), and high training overhead.
- **Per-certificate human review:** The CSBRs currently require human review at certain steps, which creates quality risks and scalability problems as the volume of code signing certificates grows.

Scott noted that in some jurisdictions, phone-based validation provides strong identity binding (e.g., countries where SIM cards require passport verification), suggesting it could remain as an optional validation data point rather than being eliminated entirely. Dimitris countered that attackers target jurisdictions without such protections. Corey noted that reducing the number of validation pathways reduces risk for CAs, even if some pathways are strong in certain contexts. The group broadly agreed that phone validation could remain as a supplementary data point but should not be the sole validation method.

Karina also mentioned alternative validation methods including email-based validation and referenced that the current CSBRs offer approximately six validation methods. She confirmed she has a ballot draft that removes phone-based (and potentially fax-based) validation.

### Discussion – Next Steps

Karina summarized the proposed next steps:

- Microsoft will publish the ballots they have in progress (phone validation removal, revocation backdating, and others).
- The group is invited to contribute ideas and start discussions on any of the outlined goals.

Martijn encouraged Karina to share ballots for initial comments once ready, so the group can begin contributing.

Dimitris asked whether these ballots are part of the eventual single-profile reconstruction (merging EV and OV). Karina confirmed that the ultimate goal is one type of strong code signing certificate, essentially up-leveling all code signing to the current EV standard, but expanded to cover individual and open-source use cases. Karina noted that for Microsoft, the value of EV is in the identity, not in any preferential trust status from Defender.

Martijn suggested that the individual ballots could incrementally move towards a single profile, so that eventually only minor cleanup remains rather than requiring a full conversion all at once.

### Adriano Santoni's Ballot – Mandatory CA/Browser Forum OID

Martijn raised awareness that Adriano Santoni (not present) has been working on a ballot to make the CA/Browser Forum reserved OID mandatory in code signing certificates, noting that a GitHub issue has been open for some time. Adriano has volunteered to draft the ballot. No questions or concerns were raised.

## Any Other Business

## Adjourn

The meeting was adjourned and the session was handed back to the Forum plenary.

**Next Meeting:** March 19, 2026

## Attendees
Aaron Gable (Let's Encrypt), Alvin Wang (SHECA), Andy Warner (Google), Azira Zakaria (MSC Trustgate Sdn Bhd), Ben Wilson (Mozilla), Brittany Randall (GoDaddy), Chad Dandar (Cisco Systems), Chya-Hung Tsai (TWCA), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Eric Hampshire (Cisco Systems), Eric Kramer (Sectigo), Gregory Tomko (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo (NAVER Cloud Trust Services), HuckHai Lim (Baker TIlly Malaysia), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Janet Hines (VikingCloud), John Mason (Microsoft), Jos Purvis (Fastly), Jozef Nigut (Disig), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Li-Chun Chen (Chunghwa Telecom), Lora Randolph (Microsoft), Lorey Spade (Amazon), Luis Cervantes (SSL.com), Luis Osses (Amazon), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB Council), Nate Smith (GoDaddy), Nick France (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Pin-Jung Chiang (Chunghwa Telecom), Rebecca Kelly (SSL.com), Rich Smith (DigiCert), Rob Stradling (Sectigo), Rob White (GoDaddy), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Sándor Szőke (Microsec), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority), Zurina Zolkaffly (MSC Trustgate Sdn Bhd)