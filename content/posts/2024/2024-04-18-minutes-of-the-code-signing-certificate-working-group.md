---
aliases:
- /2024/04/18/2024-04-18-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2024-04-18 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-04-18 Minutes of the Code Signing Certificate Working Group
type: post
---


## Attendees

Andrea Holland (VikingCloud), Ben Dewberry (Keyfactor), Brian Winters (IdenTrust), Bruce Morton (Entrust), Christophe Bonjean (GlobalSign), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Eva Vansteenberge (GlobalSign), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (VikingCloud), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Scott Rea (eMudhra), Thomas Zermeno (SSL.com), Tim Crawford (CPA Canada/WebTrust), Wangmo Tenzing (Wangmo Tenzing)

Minute-taker: Corey Bonnell

## Minutes

Bruce read the note well.

Bruce said he will call for approval of the F2F minutes at the next meeting.

Meeting minutes for the March 21st meeting were approved.
Meeting minutes for the April 4th meeting were approved.

### Obsolete EVCS guidelines

Dimitris said the ballot needs to be converted to PDF and circulated on the mailing list.
Bruce said he will take care of that and Corey will publish on the website.

### Remove EVG references

Dimitris asked for a review of this draft ballot. He said that a mapping document is
available to assist in the review. Martijn and Corey offered to review the PR
(https://github.com/cabforum/code-signing/pull/38).

### Change to timestamp requirements

Martijn said Christophe provided several comments on the PR. Christophe raised a
concern that re-issuance of a timestamping ICA would incur the requirement to move
the CA private key to offline HSM. Bruce also raised a concern that long-lived
timestamping CAs could be stored in online HSMs despite this ballot. Martijn
said that we could create an effective date to require CAs to move to offline HSMs,
but that may be complex.

Dimitris said that moving a key does not eliminate the risk, as it was previously
stored in an online HSM. Additionally, keys could have been generated before the
effective date in an online state prior to being certified in a certificate.
Martijn said that if a key has been generated online, then it couldn't be said that
it was "maintained" in an offline state. Martijn said he can clarify this in the ballot.

Martijn said to resolve the concern about legacy online CAs being used in perpetuity,
that we could propose a sunset date for issuing end-entity timestamping responder
certificates to force a rotation to offline CA keys. Corey agreed with that approach.

### Other business

Martijn said a ballot for modifying logging requirements in the TLS BRs. He'd like
to align the CS BRs with this language. He will write a ballot to do this and will
call for endorsers.

Martijn also mentioned that we could remove the EVCS JOI fields and replace with
the orgId, as is done in the SMBRs, but said it might be too early for that change.
Bruce said we should reconsider all subject fields in light of the deprecation of
EV CS. Dimitris agreed and said that we need to incorporate Microsoft's plans
on the validation level of code signing certificates.

Next meeting is May 2nd. Meeting adjourned.
