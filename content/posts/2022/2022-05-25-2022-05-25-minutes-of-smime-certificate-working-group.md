---
aliases:
- /2022/05/25/2022-05-25-minutes-of-smime-certificate-working-group/
author: Stephen Davidson
date: 2022-05-25 21:27:00
tags:
- Minutes
- S/MIME
title: 2022-05-25 Minutes of SMIME Certificate Working Group 
type: post
---

## Minutes of SMCWG

May 25, 2022

These are the approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Christophe Bonjean (GlobalSign), Clint Wilson (Apple), Corey Bonnell (Digicert), Daniel Zens (GlobalTrust), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Morad Abou Naser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Pekka Lahtiharju (Telia Company), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (US Federal PKI Management Authority), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes of the May 11 teleconference were approved.

### 5. Discussion

Stephen Davidson noted that draft the S/MIME Baseline Requirements is available at [https://github.com/cabforum/smime/blob/preSBR/SBR.md](https://github.com/cabforum/smime/blob/preSBR/SBR.md). This call is open for comments that members may have on the draft. Edits are being checked in with noncontroversial updates and corrections based upon feedback.

The group is in the midst of the previously agreed 30-day pre-ballot discussion period, with a goal to sorting out comments at the upcoming F2F meeting in Warsaw. The goal remains to move towards a formal ballot by the end of the summer.

Christophe Bonjean noted “an observation as opposed to a real concern” that there could be a potential conflict by using the OrganizationIdentifier attribute in the modified EVG format which allows for “expanding for state level NTRs” when the country such as the United States registers organisations at the state rather than national level, i.e., NTRUS+NY-123456. He wondered if this might cause issues for CAs that issued S/MIME that also asserted compliance with ETSI regimes.

Dimitris Zacharopoulos provided background on how the modified format evolved during long discussions in the EVG and believed that it gets the job done to globalize the format. He also noted that this attribute is optional in many ETSI profiles. He pointed out that the strict ETSI format is only required when the semantics identifier is included (qcStatement) so there was not likely to be an issue under ETSI. Stephen asked whether Certificate Issuers saw issue with the attribute as defined.

Christophe also questioned whether the use of the (optional) ETSI Natural Person Identifier in the serialNumber might cause GDPR issues for CAs. There was a recap of previous discussions about the various known uses of the serialNumber attribute in S/MIME.

Inigo Barreira questioned what happens if an ID expires soon after the Individual is vetted. Should the aging be the specified 825 days, or the shorter expiry date of the ID. Stephen said that for the S/MIME use case he believed the full 825 days should be allowed as the ID was valid at the time of vetting, but that CAs can chose a more restrictive policy if desired. Russ Housley, Bruce Morton, and Tadahiko Ito agreed with that approach.

Stephen asked for WG members to provide comments if possible before the June 6 meeting so the group can address the spectrum of outstanding issues, as the WG is now on a path towards the adoption ballot. He stated he was grateful for the feedback, and was pleased that in general the comments consistent of clarifications rather than fundamental disagreements. Clint noted that he’d have comments soon covering arrange of issues, and Don Sheehy noted that the WebTrust group would be meeting in the next week. In discussion with Ashish Dhiman, Stephen noted that our goal is to resolve as many issues now, but there many be some that the group decides to hold for a future version as the SBR would be a living document.

Stephen indicated the ballot will include a 7 day discussion period, and a 7 day voting period. If successful, a 60 day intellectual property review (IPR) period will follow. The adoption date of the ballot is the end of that IPR period. Currently the draft calls for CAs to implement the SBR 8 months after adoption (which was the time allowed under the TLS BR). That span will be an agenda item for the next meeting. Stephen noted the WG’s previous discussion whether this date was a Cert Consumer prerogative or should be embodied in the SBR, which resulted in the understanding that the Cert Consumers were likely to unify behind an SBR-defined date as long as a reasonably short implementation was specified.

Stephen noted that the latest “document” format of the SBR is always available in the “Actions” tab of the cabforum/smime repository on GitHub, choosing the topmost workflow run, then scrolling down to the “Artifacts” download which included both Word and PDF documents of the draft.

### 6. Any Other Business

None

### 7. Next call

Next call: Monday June 6, 2022 at the CA/Browser Forum Face-to-Face, see wiki.

### Adjourned