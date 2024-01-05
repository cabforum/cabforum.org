---
aliases:
- /2022-03-24-2022-03-24-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-03-24 21:44:00
tags:
- Code Signing
- Minutes
title: 2022-03-24 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Atsushi Inaba (GlobalSign), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Corey Bonell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (Harica), Ian McMillan (Microsoft), Inigo Barreira (Sectigo), Joanna Fox (TrustCor), Martijn Katerbarg (Sectigo), Michael Sykes (SSL.com), Mohit Kumar (GlobalSign), Thomas Gustavsson (PrimeKey), Tim Crawford (CPA Canada/WebTrust), Tim Hollebeek (DigiCert)

## Minutes 

**Antitrust Statement:** Read by Dean

**Minute Taker:** Martijn Katerbarg

Minutes of the February 24th (F2F) and March 10th meetings were approved

### Updates on ballot CSC-13 

Bruce mentioned that the ballot is currently out for discussion.

Ian: We got comments on the fact that Signing Services appear to need to start using HSMs right away. This is indeed the intent seeing how the original effective date for this was June 1st 2022.

We also received feedback regarding the effective dates table. This has been updated.

No further questions at this moment.

### Time Stamp Policy OID 

There seems to be an issue with the OID and the way we specified it. For ICAs issued as of April 1st 2022 that issue Timestamping certificates we’re required to have the CSC Policy OID in the ICA.

However there is no exception in the language for ICAs that issue timestamping certificates for other purposes such as document timestamping. The intent was only to have this on the ones used for Code Signing timestamping CA’s.

Bruce mentioned that is seems like we should be able to update this fairly easy, but requests that we delay this until the format ballot has been completed. There is agreement on this and to make this the first ballot after the format change has been completed.

Tim H will start a discussion and language draft so that the language is ready when we want to start the ballot.

### Other Business 

An email was forwarded to the group by Dean, originating from Conrad Gillard regarding the interpretation of the requirement in point 4 of section 8.5.2. of the EV Guidelines.

Dean: There are 3 questions from Conrad. As forum it’s not for us to decide if Sectigo’s interpretation is correct so we will not be answering that question.

Conrad wonders if we can amend the guidelines to remove this requirement.

Bruce: He seems to want to get rid of the place of business requirement. Ian mentions that’s not going to happen.

Bruce: What if there is no place of business? Maybe this is old school, since much is done online at the moment. These parts stem from 2005.

Removing the check probably isn’t the right answer. But we should think about what we’re trying to accomplice.

Tim H: I’d like to run this through our internal processes and maybe we can get back into it in 2 weeks.

Dean: Are there any other thoughts?

Bruce mentions that most of this is independent of the certificate and is more about identity. Maybe EV should be reformed into a separate WG in time since it is used across different certificate types.

Dimitris states that this is what was done with the NetSec WG which worked out well. There’s consensus on this being a good trend. Validation might be more difficult since it’s a more complicated aspect however.

It’s pointed out that an alternative in this particular case might be for Mr. Gillard to use the Professional Opinion Letter. This should solve this issue as described.

Dimitris points out that CA’s do not need to use every method that is allowed by the guidelines. If a CA decides a particular method is not secure enough or practical or has other risks, they may choose to not use it. We cannot force other CA’s to use a particular method.

Tim H adds a final note to the time stamp item: Last time this came up we identified that the Microsoft root program requirements are the source of the policy OID requirement. We opened a GitHub pull request to have this fixes. Ian will follow up internally for that.

Adjourned.