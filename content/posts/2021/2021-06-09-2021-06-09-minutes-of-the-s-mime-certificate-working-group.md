---
aliases:
- /2021-06-09-2021-06-09-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-06-09 22:41:00
title: 2021-06-09 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG 

June 9, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Ali Gholami (Telia Company), Andrea Holland (SecureTrust), Atsushi Inaba (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Corey Bonnell (DigiCert), Curt Spann (Apple), Dimitris Zacharopoulos (HARICA), Don Sheehy (WebTrust), Enrico Entschew (D-TRUST), Eusebio Herrera (Camerfirma), Hazhar Ismail (MSC Trustgate.com), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Juan Ángel Martin (Camerfirma), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (BuyPass), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Patrycja Tulinska (PSW), Pedro Fuentes (OISTE), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Sebastian Schulz (GlobalSign), Stefan Selbitschka (rundQuadrat), Stephen Davidson (DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Connelly (Federal PKI), Tim Crawford (WebTrust), Wendy Brown (Federal PKI)

### 1. Roll Call 

The roll call was taken by Stephen. Mads will take the minutes.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

Stephen had added an additional agenda (sub) item for OID swivel in addition to the draft agenda distributed to the list. The agenda was approved.

### 4. Approval of minutes from last teleconference 

The minutes of the May 26 teleconference were approved.

### 5. Discussion of certificate profile 

The discussion regarding the [Mailbox-validation Legacy profile][1] continued.

Stephen proposed to reverse between validation types (Mailbox, Organization, Sponsored, Individual) and grades (Strict, Multipurpose, Legacy) in the OIDs used for S/MIME certificates. The reason for this is to be able to phase out profiles based on grades (and also add new ones) in the future. There were no objections to the proposal.

Stephen has created a new draft Leaf Profile tab to the profile spreadsheet. This will also be the primary objective in the SMCWG meeting Thursday 17June (during CA/B Forum meeting #53). Some people have already commented on this, but it’s not sure that everybody is able to add comments. If you are not able to, send them to the list or hold them for the next conversation.

Going back to the mailbox validation profiles in the spreadsheet and started discussing about which EKUs to allow in the leaf certificates (or ICAs). The initial approach is to allow the relevant EKUs in the Legacy profile, for the Multipurpose profile clientAuth and document signing is allowed (but other is blocked)

Ben asked why we prohibit more EKUs in the Multipurpose profile. Stephen replied that this kicked off from the Mozilla work to move CAs toward more EKU centric hierarchies. The issue with certificates often appears relate to their multipurpose nature.

A discussion regarding the EKUs to be used for Legacy vs Multipurpose profiles followed and the desire to move towards Strict policies without breaking use cases such as document signing. Stephen is in favor of having a general documentSigning EKU.

Stefen asked about the EKU used in Microsoft CAs, how necessary are they? They would be allowed in the Legacy, but are they required in the Multipurpose or Strict? Dimitris proposed to use some empiric data to understand the use of these EKUs. We see that the smartcard login EKU being used.

Dimitris also asked about Legacy vs Multipurpose. Stephen replied that the idea is to create an auditable framework for all S/MIME certificates with profiles “good-better-best”. There will be a push towards tightening up the requirements over time, where the Legacy may fall away and the Multipurpose continue to allow for the signing purposes to coexist.

Stephen commented on the purposes of a Multipurpose certificate, this will be restricted by the EKUs. More EKUs allow for more purposes. It may be easier to se the need for both Multipurpose and Legacy when we start look into the subject blocks. As far as EKUs are concerned the needs for having them in both profiles may be similar.

There were some more discussions on the EKU topic for signing certs compared to encryption certs. Signing emails are no different than signing documents, but there is a difference between signing and encryption. Wendy asked if there will be separate profiles for encryption certs, Stephen said no.

When we look at Censys, the entire pool of S/MIME certificates is relative limited (S/MIME certificates are out of scope for being logged to CT logs). Corey Bonnell sent an email to the list with EKUs used in ICAs issued under roots in the Mozilla program There is a wide variety of EKUs used in the ICAs today, including clientAuth, serverAuth and other EKUs. This initiated a discussion about these EKUs and their use cases.

The discussion was closed by Curt who argued that the focus was taken away from the S/MIME part. We should focus on what’s correct for an S/MIME certificate. From their perspective, no other EKUs than emailProtection should be allowed for the Strict profile.

Dimitris asked why the Legacy profile allowed for longer validity period (825 days) than Multipurpose (398 days). They should be consistent as they all try to protect an email address. Stephen replied that there are no limits today and there are certificates out there with 5 years validity period.

There were some discussions on this topic, and the main output from this was that signing certs and encryption certs may have different needs. This is also something that differentiates S/MIME certs from TLS certs. There may be a need for longer validity periods for encryption certs than for signing certs. Stephen said that we have been here before and the reason for shorter period is to achieve agility. Reuse of keys has not been addressed yet. Stefan replied that some S/MIME clients are very cert focused, so all certs have to be available independent of the keys. This topic will be revisited.

The last topic discussed was other extensions. Stephen mentioned smimeCapabilites defined in rfc4262. Other extensions may be allowed in the Legacy profiles, while it will be restricted for Multipurpose. Wendy asked what about private extensions? For TLS certs, BR 7.1.24 prohibits the use of private extensions. Wendy said that private extensions may be used by different CA products, like Microsoft or Entrust CA products use in their templates. Bruce said that this is a possibility in the Entrust CA product, but it does not have to be used.

This led to a discussion on the use of private extensions. Wendy and Dimitris argued that this should not be prohibited at least if they are non-critical and for local use only. Curt argued that such local use might be problematic as we may lose agility. Stephen said that there might be products that use some extensions that are not easily removed (this was confirmed by Stefan). We might want to include some extensions at least in the Legacy profiles, at least from the effective date but they may be removed at a point in time.

The TLS BR language may be too restrictive for S/MIME and Corey commented that we could consider prohibiting critical extensions that are commonly understood but allow for some non-crititcal extensions at least in the Multipurpose profile. There was something similar done for SANs in the TLS BR, where the CAs must document their procedures. This is to be continued in the next meeting.

### 6. Any Other Business 

None

### 7. Next call – during CABF Face-to-face Meeting 53 

Next call: Thursday 17. June at 12:00 am Eastern time (during F2F meeting).

### Adjourned 

[1]: https://docs.google.com/spreadsheets/d/1gEq-o4jU1FWvKBeMoncfmhAUemAgGuvVRSLQb7PedLU/edit?usp=sharing