---
aliases:
- /2022/06/22/2022-06-22-minutes-of-smime-certificate-working-group/
author: Stephen Davidson
date: 2022-06-22 19:13:00
tags:
- Minutes
- S/MIME
title: 2022-06-22 Minutes of SMIME Certificate Working Group 
type: post
---

## Minutes of SMCWG

June 22, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Chris Kemmerer (SSL.com), Christophe Bonjean (GlobalSign), Clint Wilson (Apple), Corey Bonnell (Digicert), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Joanna Fox (TrustCor Systems), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

The minutes from the May 25 meeting were approved; the minutes from the June 6 F2F will be approved separately.

### 5. Discussion

The WG discussed the expression of interest of CertiPath. It was agreed to welcome CertiPath as an Associate Member as this is the category in which at least one other Bridge CA operator (US Federal PKI) has CABF membership.

It was noted that there was lack of clarity in the CABF bye-laws (which describe Root Issuer or Certificate Issuer) regarding the role that a Bridge CA may play. Moreover the charter of the SMCWG seems to focus on Certificate Issuer as the eligible role. It was suggested that clarification of the role of Bridge CAs should be addressed at the Forum level.

It was agreed to drop the call for the normally planned call for July 6 due to the unavailability of various coordinating members of the WG, returning to the normal schedule on July 20.

The WG returned to the discussion of the draft S/MIME Baseline Requirements available at . Stephen Davidson noted that edits are being checked in with noncontroversial updates and corrections based upon feedback.

Stephen noted a proposed Pull Request created by Martijn on the topic of Subject address fields. Stephen summarized that in our earlier conversations, it was agreed that Subject address fields may all be optional providing flexibility to CAs to include the info or not. Martijn Katerbarg noted that the text in the draft appears to be from the TLS BR whereas the tables showed the May usage. Martijn’s proposal reverted to the TLS BR use in both the text and table.

Clint Wilson noted that consistency was preferable for an attribute to be valuable in UI. It was discussed whether the country in the C must match that in the organisationIdentifier; it was agreed that it must be verified as relevant to the identified entity. It was discussed if there are changes to be made, the existing flexibility should remain for at least the Legacy generation.

The WG continued to discuss comments that had been made in favor of making either CRL or OCSP optional. Martijn proposed a PR attempting to blend those changes. Stephen noted that the Microsoft policy required OCSP. Clint noted that Apple’s requirement required CRL support (reported in CCDAB but not necessarily in a CDP in the leaf). Ben Wilson noted that Thunderbird preferred OCSP over CRL. However he also noted the possible privacy concerns that some may have regarding OCSP being used to mine information about users opening encrypted emails. Corey Bonnell pointed out that the same privacy issues could befall CRL as well in the case of sharded CRLs.

Stephen stated that he felt the draft S/MIME BR must make OCSP and CRL mandatory unless there was an explicit allowance on the point by the overarching root store requirements. He suggested revocation information of nonTLS certificates may be a useful topic at the next CABF F2F. Stefan Selbitschka noted the privacy issues relating to revocation are equally a concern that should be placed upon the mail user agents. Stephen noted that he would adopt some of the improvements however found in Martijn’s PR.

The call remains open for comments that members may have on the draft. Stephen noted that the goal remains to move to ballot at end of summer.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday July 20, 2022 at 11:00 am Eastern Time

### Adjourned