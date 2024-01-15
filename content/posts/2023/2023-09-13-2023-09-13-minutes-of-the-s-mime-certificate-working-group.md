---
aliases:
- /2023/09/13/2023-09-13-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-09-13 13:48:53
tags:
- Minutes
- S/MIME
title: 2023-09-13 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

September 13, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Abhishek Bhat – (eMudhra), Adrian Mueller – (SwissSign), Andrea Holland – (VikingCloud), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dimitris Zacharopoulos – (HARICA), Eva Vansteenberge – (GlobalSign), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Jochem van den Berge – (Logius PKIoverheid), Judith Spencer – (CertiPath), Keshava Nagaraju – (eMudhra), Li-Chun Chen – (Chunghwa Telecom), Martijn Katerbarg – (Sectigo), Morad Abou Nasser – (TeleTrust), Mrugesh Chandarana – (IdenTrust), Nome Huang – (TrustAsia Technologies, Inc.), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Scott Rea – (eMudhra), Stefan Selbitschka – (rundQuadrat), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following teleconferences:

- August 30

### 5. Discussion

A question was raised if the definition of “Extant S/MIME CA” extended to intermediate CAs that may sit between the Root CA and the Issuing CA (as the current definition refers to a SubCA that “has issued end entity S/MIME Certificates”. Following discussion, the QG agreed that such intermediate CAs may fit the definition of “Extant S/MIME CA”. It was agreed that the definition may be clarified in a future ballot.

The question was raised whether cross-signed CAs fit the definition. Stephen Davidson asked for examples.

Stephen began a conversation about questions that had been raised by Certificate Issuers during the S/MIME BR implementation. The first was related to the Pseudonym as described in Section 3.1.3, which says:

“If present, the subject:pseudonym attribute SHALL be:

1. either a unique identifier selected by the CA for the Subject of the Certificate; or
1. an identifier selected by the Enterprise RA which uniquely identifies the Subject of the Certificate within the Organization included in the subject:organizationName attribute.”

It was discussed that in the Sponsor-validated category, ERAs might assign certificates with differing personal email addresses but a common CN showing a role.

The question was raised why the Pseudonym was required to be unique. Stephen verified that ETSI EN 319 412-2 does not require uniqueness of the Pseudonym. Judith Spencer noted that standards generally require uniqueness only at the Subject DN level, and Stephen noted this might not require explicit uniqueness at the pseudonym level. Martijn Katerbarg suggested that item 1 could be amended to “either an identifier selected by the CA which uniquely identifies the Subject of the Certificate; or” and it was then discussed if the unique stipulation is required at all, or if additional rules needed to be defined for pseudonyms. Stephen asked that Certificate Issuers review this case, particularly related to ERAs.

Stephen proposed that the group consider an anonymous poll of Certificate Issuers regarding which CPs from the S/MIME BR had been implemented.

A previous discussion of OrganizationIdentifiers was continued. It was pointed out that the provided example of “NTRUS+CA” described state-level registration for the United States but that there was no formal list of what other countries required such treatment. Stephen noted that there was variation in the similar JOI treatment for the EVG, and proposed that the S/MIME BR either include a list of countries registering at the state or province level, or that it define a rule for determining such a list.

Eva van Steenberge noted that one method was to look at whether the identifier number was unique at the level that proceeds it (this could mean that registration could be at state level but numbers are unique at the country level). The group agreed this was a valid approach.

However exceptions may still exist in some EU countries like Germany. Stephen noted that under ETSI treatment it seemed this was ignored – and Eva noted that CAs might avoid that by using a different orgID prefix or LEI. Stephen noted the difficulty in finding a universally-applicable identifier scheme given broad diversity of practices across jurisdictions.

Stephen noted the language that existed in ETSI 412-2 for an alternate “national scheme” prefix “according to local definition” and questioned whether it should be introduced to the S/MIME BR. Eva and Jochem van den Berge noted that this text was possibly confusing as no definitive list existed of these local registrations and their common syntax. Adrian Mueller believes that ETSI “national scheme” provision was not frequently used. He reminded the group of a previous proposal from a team of German Certificate Issuers regarding the EU ID, which he would distribute again to the group.

Stephen again noted the issues list is being actively updated at [https://github.com/cabforum/smime/issues](https://github.com/cabforum/smime/issues) and encouraged SMCWG members to comment there.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, September 27, 2023 at 11:00 am Eastern Time

### Adjourned
