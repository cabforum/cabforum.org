---
aliases:
- /2022/03/16/2022-03-16-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-03-16 19:59:00
tags:
- Minutes
- S/MIME
title: 2022-03-16 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG

March 16, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Cade Cairns (Google), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (Digicert), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eusebio Herrera (AC Camerfirma SA), Fotis Loukos (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Joanna Fox (TrustCor Systems), Khairil Nizam Abdul Malek (MSC Trustgate Sdn Bhd), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Morad Abou Naser (TeleTrust), Mrugesh Chandarana (IdenTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tsung-Min Kuo (Chunghwa Telecom)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the March 2 teleconference were approved. The minutes from the F2F will be separately distributed.

### 5. Discussion

The draft S/MIME Baseline Requirements is available at [https://github.com/cabforum/smime/blob/preSBR/SBR.md](https://github.com/cabforum/smime/blob/preSBR/SBR.md)

The WG discussed the path to ballot. Stephen Davidson described the rules for ballots under the WG Charter and the CABF Byelaws. He noted that the draft was essentially “content complete” barring resolution of some minor questions, and cleanup for consistency and section titles. He noted that some participants like Joanna Fox and Martijn Katerbarg were already providing feedback for which he was grateful.

On completion of that draft Stephen proposed setting a “pre-Ballot Comment Period” of 30 days to gather final feedback and comments on the draft. He proposed using GitHub as the primary vehicle for collecting and resolving those comments, along with the listserv and WG calls.

Stephen asked for feedback on effective dates to be included in the draft. He noted that some standards have a date in them, while others are made effective through external forces such as root program requirements. He asked if Certificate Consumers preferred a coordinated date in the ballot/SBR, or wanted to set their own dates. Clint Wilson said a coordinated date in the BR made sense, as long as it was reasonable, but that long delays in implementation might lead Certificate Consumers to seek more fine grained control, and that the two options were not mutually exclusive.

Bruce Morton noted that dates might include the date CAs must adopt the SBR, and the date by which they must be audited. Bruce noted that it might require Cert Consumers to also set policy as there may be S/MIME issuers who are not members of the WG. Stephen asked what a reasonable span of time was for CAs to adopt. Bruce noted that the TLS BR was adopted in ~November of 2011 and became effective in ~July 2012 (~8 months).

It was confirmed that a readiness audit was not required, that SBR would be picked up in the next audit cycle for the CA after the effective date. Don Sheehy noted the audit bodies would need some time to develop audit criteria from the final standard, but did not anticipate that would be too lengthy given the similarities between the SBR and other CABF standards. He also noted that typically a CA would need ~2 months of activity/evidence to be auditable.

Eusubio Herrera noted that some CAs needed time to communicate with regulators, and that the S/MIME BR may conflict with existing requirements in some areas (particularly when document signing overlaps with S/MIME). Stephen encouraged any CA that has such regulatory overhang to begin having discussions on the content of the S/MIME BR draft.

Stephen noted that when comments were resolved, the SBR would move to final ballot, with 7+ days discussion, a 7 day vote period, and a 60 day IPR review. He also noted the goal was to move to final ballot before the change in WG officer change at the end of October. Stephen noted that if CAs believed there might be IPR issues to please raise them in the preballot discussions if possible rather than wait for the IPR review period!

Stephen proposed text to allow the inclusion of organisationalUnit in certificates: “Contents: If present, the CA SHALL confirm that the subject:organizationalUnitName is the formal legal name of an Affiliate of the subject:organizationName in the Certificate and has been verified in accordance with the requirements of Section 3.2.3.” It was noted that this was a limited allowance but was consistent with the requirement for verified information. Clint noted that the proposal seemed tractable/acceptable, and that equally DBA might be acceptable within the field length issues. Fotis Loukos noted that additional text make be desirable in the Validation of Authority section relating to the use of the OU in these circumstances.

Stephen noted the prior discussions which were concerned that the commonName restriction to “givenName +surname” may be too rigid. He proposed providing language to allow preferred formats (such as Doug for Douglas) in the commonName, noting the friendly name allowance that exists in ETSI EN 319 412-2 section 4.2.4. Fotis noted that such rules are not really auditable. Don noted that it is a case of professional judgement. Stephen asked if guardrails can/should be provided as either normative text or informative notes.

Stephen proposed text: “If present, the Personal Name SHALL contain a name of the Subject. The Personal Name SHOULD be presented as \`subject:givenName\` and/or \`subject:surname\`. The Personal Name MAY be in the Subject’s preferred presentation format, or a format preferred by the CA or Enterprise RA but SHALL be a meaningful representation of the Subject’s name as verified under Section 3.2.4.” He asked for feedback on this proposal.

In closing minutes of the call, Stephen noted the issues with subject:pseudonyms. Currently the Sponsor- validated and Individual-validated profiles allowed the attribute but only if validated from official ID. This is a very limited use as only German national IDs appear to have pseudonyms. He did not believe the use extended to general unverified names like roles. Russ Housely suggested that on the sponsor-validated profile the left hand labels of an email address might be considered as an acceptable pseudonym. It was agreed further discussion was required.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, March 30, 2022 at 11 a.m. US Eastern.

### Adjourned