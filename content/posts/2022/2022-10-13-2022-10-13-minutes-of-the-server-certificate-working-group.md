---
aliases:
- /2022-10-13-2022-10-13-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-10-13 15:54:00
tags:
- Minutes
- Server Certificates
title: 2022-10-13 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Daryn Wright (GoDaddy), David Kluge (Google), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Fumi Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Martijn Katerbarg (Sectigo), Michelle Coon (OATI), Nargis Mannan (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Ryan Dickson (Google), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Minutes 

### 1. Read Antitrust Statement 

Jos Purvis read the antitrust statement.

### 2. Review Agenda 

Jos said that we would add a discussion of the OU attribute in CA certificates as proposed by Dimitris Zacharopoulos on the list. No other changes were made to the published agenda.

### 3. Approval of Minutes from Last Teleconference 

The minutes from the 29-September call were approved without changes.

### 4. Validation Subcommittee Update 

Corey Bonnell said that the group met last week and first discussed the face-to-face meeting. They will work on finalizing the certificate profiles ballot and continue analysis of the use of Applicant and Applicant Representative. They merged a profiles ballot pull request from Dimitris. They continued analysis of the defined terms Applicant and Applicant Representative and identified a number of opportunities for improvement. They will continue at BR section 4.3 at the face-to-face meeting.

### 5. Ballot Status 

#### Ballots in Discussion Period 

- **SC56 – Cleanup ballot**

Corey apologized for the mixup on ballot numbers. Discussion started last Friday morning and no comments requiring changes have been received. He is planning to begin the voting tomorrow.
Jos encouraged everyone to carefully review the ballot before the voting period begins to ensure that the ballot clarifies but doesn’t change any actual requirements.

#### Ballots in Voting Period 

None

#### Ballots in Review Period 

None

#### Draft Ballots Under Consideration 

- **Revival of Debian Weak Keys**

Chris Kemmerer said that Leo Grove will be looking for endorsers at the face-to-face.

- **SLO/Response for CRL & OCSP Responses**

David Kluge said that this ballot is on hold pending the discussion of broader changes to revocation requirements.

- **Incorporation of Mozilla Revocation Reason Codes**

Ben Wilson was not on the call to provide an update.

### 6. Any Other Business 

#### Update on elections for SCWG 

Jos said that Inigo Barreira has been elected as the next chair and will begin in November. There have been no nominees for vice chair.

#### Support for multiple OU fields in CA certificates 

Dimitris said that he sent a [link to a pull request that would permit multiple OU fields in CA certificates](https://github.com/cabforum/servercert/pull/394) to the list. The current BRs don’t restrict the inclusion of the OU field in CA certs, but the profiles ballot does. However, research on existing certificates found no CA certificates containing OU fields. Given this, Dimitris proposed that we should add language to the profiles ballot to prohibit the OU field in CA certificates. Dimitris plans to create a new PR that will disallow OU in CA certificates.
Doug Beattie asked about rules for other Subject fields.
Dimitris said that the profiles ballot does contain some minor normative changes, but more substantial changes should be discussed and balloted separately.
Doug asked if the change would apply to roots or cross-certificates?
Dimitris said that he would have to check.
Corey said that he recalls there being a carve-out for cross-certificates. He also noted that this would affect ICAs that chain to roots trusted for TLS.
Dimitris said that he will review the requirements and we can continue the discussion at the face-to-face meeting.
Mads Henriksveen asked where to find the BR redline and Corey said that the same link shows both the EVGL and BR redlines for the ballot.

Jos thanked everyone for their support during his time as SCWG Chair.

### 7. Roll Call 

Jos read the roll.

### 8. Next call 

10-November 2022 at 11AM Eastern (after the face-to-face)

Adjourn; Immediately convene meeting of CA Browser Forum (same call)