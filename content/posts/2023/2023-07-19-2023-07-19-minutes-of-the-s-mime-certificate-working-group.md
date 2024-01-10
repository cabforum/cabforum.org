---
aliases:
- /2023/07/19/2023-07-19-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2023-07-19 12:02:10
tags:
- Minutes
- S/MIME
title: 2023-07-19 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

July 19, 2023

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Dimitris Zacharopoulos – (HARICA), Don Sheehy – (CPA Canada/WebTrust), Eva Vansteenberge – (GlobalSign), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath), Li-Chun Chen – (Chunghwa Telecom), Marco Schambach – (IdenTrust), Morad Abou Nasser – (TeleTrust), Mrugesh Chandarana – (IdenTrust), Nome Huang – (TrustAsia Technologies, Inc.), Pedro Fuentes – (OISTE Foundation), Renne Rodriguez – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Scott Rea – (eMudhra), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.

### 3. Review Agenda

Minutes were prepared by Stephen Davidson.

### 4. Approval of minutes from last teleconference

The minutes were approved from the following SMCWG meetings: June 21.

### 5. Discussion

Stephen Davidson noted that the minutes from the F2F were still outstanding.

Stephen noted that Ballot SMC03 passed and was now in IPR, scheduled to conclude on August 11. Bruce Morton said that full redlines (as opposed to the github diff) would be helpful.

Stephen opened the floor for discussion of issues that may have arisen during implementation of the SBR.

Dimitris Zacharopoulos asked for confirmation that existing CAs that used anyPolicy (and are otherwise compliant) could be used going forward. Stephen confirmed and said that updates would only be required when explicit CP OIDs were used.

Tim Hollebeek requested that the CABF host a high level discussion on the use of anyPolicy versus explicit CP OIDs in CAs. Dimitris said that policy chaining was desirable, and that such a discussion would be useful particularly given the move towards dedicate “use case” hierarchies.

Stephen noted that questions had arisen relating to finding phone numbers, which may not always be provided in government data sources. He said he believed that the existing text allowed the use of “QIIS” type resources for phone numbers but that this may be an area that the WG may wish to improve. Bruce and Tim supported this. Stephen noted that even the phone book would be a QIIS. Tim asked if any Cert Consumers had issues with this: no issues were raised.

Ben Wilson noted that Mozilla had distributed guidance points on the lists and at [https://wiki.mozilla.org/CA/Transition_SMIME_BRs][1]. This includes some guardrails for the acceptable reissuance of Issuing CAs.

Stephen asked if Certificate Issuers were having issues with finding organizationIdentifiers for Orgs. None were raised. He noted that the SBR text included the prefix “GOV” which at the time of writing was in a draft being discussed at ETSI for 319 412-1 but appears to not have moved ahead.

Tim provided an update on the CAA RFC at the IETF. It has cleared final call and the expert review phases in the IETF process, so will become an operation RFC once it clears the final edit. Stephen said that CAA is targeted for discussion in the SMCWG this autumn, with a lengthy implementation window.

Stephen commented that ETSI TS 119 411-6 (overlaying the SBR on ETSI requirements) was going through remote consensus and was expected to become final around the time of the SBRv1. In the meantime, the text in SMC03 is adequate for Certificate Issuers who use ETSI audits.

Stephen asked if any Certificate Issuers would be interested in working on a ballot to include a signature scheme (such as eIDAS) as a vetting option. See [https://github.com/cabforum/smime/blob/main/SBR.md#3241-attribute-collection-of-individual-identity][2] item 4.

Stephen encouraged members to use the issues list on GitHub at [https://github.com/cabforum/smime/issues][3]. Pedro Fuentes asked if the group could do a routine review of those issues in a call.

### 6. Any Other Business

None

### 7. Next call

Next call: tentative Wednesday, August 2, 2023 at 11:00 am Eastern Time

### Adjourned

[1]: https://wiki.mozilla.org/CA/Transition_SMIME_BRs
[2]: https://github.com/cabforum/smime/blob/main/SBR.md#3241-attribute-collection-of-individual-identity
[3]: https://github.com/cabforum/smime/issues