---
aliases:
- /2022-08-17-2022-08-17-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-08-17 20:55:00
tags:
- Minutes
- S/MIME
title: 2022-08-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

August 17, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Clint Wilson (Apple), Corey Bonnell (Digicert), Don Sheehy (CPA Canada/WebTrust), Eusebio Herrera (AC Camerfirma SA), Eva Vansteenberge (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Joanna Fox (TrustCor Systems), Judith Spencer (CertiPath), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Morad Abou Nasser (TeleTrust), Pedro Fuentes (OISTE Foundation), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

### 4. Approval of minutes from last teleconference 

The minutes of the August 3, 2022 teleconference were approved.

### 5. Discussion 

The WG resumed discussion of the draft SBR at .

Stephen Davidson showed the WG updated text to Section 3.2.4.1 (4), which allows Certificate Issuers to rely upon certain digital signature schemes as evidence of personal identity validation. Changes had been made to 1) provide additional schemes and 2) to layout criteria by which additional schemes might be considered in future to be added to the SBR by subsequent ballot. Clint Wilson noted two concerns he had with the method as described. First, he noted that any additional schemes should be formally reviewed before being added. Second, he is wary of relying upon standards that are not actively tracked by the SMCWG, and that additional tightening of the eligibility criteria might be required. For example, he preferred that the standard identify the specific version of the underlying standard.

Stephen noted that these schemes had legal bearing in their home jurisdictions as acceptable proof of identity, usually equal to the physical ID used elsewhere in personal identity validation and the method does appear in international standards such as ETSI TS 119 461 which are used for Qualified certificates and for personal vetting in other industries. He noted that he could buy a house on the basis of an eIDAS Qualified signature, so that should suffice to meet the SBR requirements for S/MIME.

Stephen noted that he did not view this as a dominant method for personal identity validation and did not wish it to delay the ballot process. Clint noted that this method amounted to “delegated vetting” so wished to adopt a cautious approach. Bruce Morton and Corey Bonnell described the approach used in the CSBR to deprecate the “any other method”. It was discussed that CAs must not use signature schemes until they are added to the SBR. Stephen proposed reverting to a shorter list of currently eligible schemes in v1 of the SBR, and soliciting proposals for other schemes to add to the list as separate future ballots.

Stephen indicated that the pre-ballot discussion period has been very extended and during this process members had significant opportunities to provide feedback on the draft.  He said he hoped members felt that issued had been appropriately discussed and addressed, and that if members saw any showstoppers in the draft it was important to raise them now. He felt that we were approaching the stage of diminishing returns and it was time to move to ballot. He described the desire to a version 1 ballot of the SBR done before the WG leadership changes anticipated this fall. He hoped that significant issues would not be raised during the formal discussion period, given the lengthy pre-ballot discussion period.

Stephen walked through the mandated time frames for the ballot: a minimum 7 day formal discussion, a 7 day ballot, and a 60 day IPR review. The Adoption Date is the closure of the IPR process, and the current draft has an Effective Date of 8 months after that. Certificate Issuers would be expected to include the SBR in their next audit report following that Effective Date as described in Section 8.

He noted that the SMCWG seek to avoid a divergence of adoption by Certificate Consumers, and asked root distribution members to confirm this was an acceptable approach and timeline. Stephen noted that the intent, following some minor text updates, will be to move to ballot in the next call. Stephen read out a rough draft of the ballot text.

Bruce Morton asked if it was possible to provide a redline of changes that have been made since the pre-ballot discussion period began, which Stephen subsequently provided to the list at [https://github.com/cabforum/smime/compare/bc6881a6d6bbff1b6793a17a6b737c1b9480146b…1dc71b4a72ea93fbed010640f37bdbabe88c2591][1]

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, August 31, 2022 at 11:00 am Eastern Time

### Adjourned 

[1]: https://github.com/cabforum/smime/compare/bc6881a6d6bbff1b6793a17a6b737c1b9480146b...1dc71b4a72ea93fbed010640f37bdbabe88c2591