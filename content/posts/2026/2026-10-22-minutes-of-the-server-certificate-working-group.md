---
author: Wayne Thayer
date: 2026-10-22 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-10-22 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting — 2026-10-22 Minutes

## Minutes

### 1. Opening

- Dimitris Zacharopoulos (HARICA) chaired the meeting.
- The meeting was recorded, roll call was taken via Webex, and the Note Well was read: all participants are reminded that they must comply with the CA/Browser Forum's Bylaws, which include an Antitrust Policy, a Code of Conduct, and an Intellectual Property Rights Agreement.
- No changes were made to the published agenda. The face-to-face follow-up topics from Google Chrome were deferred prior to the call.

### 2. Minutes Approval

- The minutes of the September 23, 2026 Face-to-Face #68 (Vienna) meeting were approved without objection. Dimitris Zacharopoulos (HARICA) will coordinate with Wayne Thayer (Fastly) to upload the face-to-face presentations from the wiki to GitHub for publication on the website.
- The minutes of the October 8, 2026 teleconference have not been distributed yet. Eva Van Steenberge (GlobalSign) noted in chat that they will be distributed shortly.

### 3. Membership Applications

- GeeRoam Information Technology Co., Ltd. applied for membership as an Interested Party.
- Dean Coclin (DigiCert) confirmed that the company seal was included on the official signing paperwork.
- **Outcome:** GeeRoam Information Technology Co., Ltd. was approved as an Interested Party without objection.

### 4. ECDSA Key Size Requirements in the BRs

- Dimitris Zacharopoulos (HARICA) raised a recent incident involving ECDSA intermediate certificates with weak keys. He noted that while Section 6.1.6 of the TLS BRs specifies quality checks for RSA keys, there are no explicit minimum checks for weak ECDSA private scalars, and proposed drafting a ballot to address the gap. He also noted that Aaron Gable (ISRG) contributed a lint to ZLint for small private scalars.
- Aaron Gable (ISRG) supported a ballot and noted:
  - His ZLint contribution used 256 (1 byte) as an arbitrary cutoff for small private scalars, comparable to the 752 cutoff for RSA factors. While batch attacks can check scalars up to 2^32 in 2^16 operations, running 2^16 operations per individual Subscriber key may be too slow for CAs.
  - Changing the NIST SP 800-56A SHOULD to SHALL would not address this issue, because public keys derived from small scalars are still valid curve points.
  - Adding an explicit check is preferable to relying on the general "well-known attacks" clause.
- Trevoli Ponds-White (Amazon Trust Services) noted that the requirements should explicitly specify when the check must occur (i.e., prior to signing).
- Aaron Gable (ISRG) also highlighted a structural gap in Section 6.1.1: Section 6.1.1.1 covers CA key generation and Section 6.1.1.3 covers rejecting weak Subscriber keys, leaving a gap when a CA generates a weak key or cross-signs a Subordinate CA CSR. He suggested consolidating Section 6.1.1 so that key quality checks (Debian weak keys, ROCA, close primes, Fermat, small private scalars, etc.) must be performed on all CA and Subscriber keys prior to signing.
- Dimitris Zacharopoulos (HARICA) agreed and will work on draft ballot text for discussion on the public list.

### 5. Ballot Status

**In Discussion Period:**

- SC-103: Require EKUs for Cross-Certified Subordinate CAs. Aaron Gable (ISRG) reported no progress due to travel.
- SC-107: Improve Certificate Problem Reports and Clarify the Meaning of Revocation. Martijn Katerbarg (Sectigo) was not present; no update.

**In Voting Period:**

- SC-105: Remove High Risk language from TLS BR and EVG. The ballot is currently in the voting period; members were encouraged to vote.

**Under IPR Review:** None.

**Draft / Under Consideration:**

- SC-106: Allow ML-DSA. Per Michael Slaughter (Amazon Trust Services), this draft ballot will be removed from the SCWG tracking list, with discussion potentially moving to the upcoming Client Authentication Working Group.
- SC-1XX: EVG Cleanup and BR Sync. Rich Smith (DigiCert) was not present; no update.

### 6. Any Other Business

None.

### 7. Next Call

- The meeting was adjourned.
- The next Server Certificate Working Group teleconference is scheduled for 2026-11-05.

## Attendees:
Aaron Gable (ISRG), Aaron Poulsen (SSL.com), Adam Fiock (SSL.com), Adam Jones (Microsoft), Adriano Santoni (Actalis), Andrea Holland (IdenTrust), Antti Backman (Telia Company), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Chad Dandar (Cisco Systems), Daniel McKinney (FPKIMA), Daryn Wright (Apple), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Eva Van Steenberge (GlobalSign), Fabien Hochstrasser (Google Trust Services), Fumiaki Ono (SECOM Trust Systems), George Postelnicu (TeleTrusT), Georgy Sebastian (Amazon Trust Services), Hogeun Yoo (NAVER Cloud Trust Services), Janet Hines (SSL.com), Jian Wang (Huawei), Johnny Reading (GoDaddy), Jozef Nigut (Disig), Karolina Ruszczyńska (Certum), Li-Chun Chen (Chunghwa Telecom), Lilia Dubko (WebTrust), Lucy Buecking (IdenTrust), Luis Cervantes (SSL.com), Masaru Sakamoto (Cybertrust Japan), Michael Slaughter (Amazon Trust Services), Michelle Coon (OATI), Mike Agrenius Kushner (Keyfactor), Naresh Charugundla (Microsoft), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Pedro Fuentes (WISeKey), Peter Miskovic (Disig), Polina Glazyrina (Sectigo), Rajeev Mohindra (Microsoft), Rebecca Kelley (SSL.com), Rollin Yu (TrustAsia), Sándor Szőke (Microsec), Sandy Balzer (SwissSign), Sean Huang (TWCA), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Sven Rajala (Keyfactor), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera), Trevoli Ponds-White (Amazon Trust Services), Wayne Thayer (Fastly), Wendy Brown (FPKIMA), Zoey Wang (TrustAsia)
