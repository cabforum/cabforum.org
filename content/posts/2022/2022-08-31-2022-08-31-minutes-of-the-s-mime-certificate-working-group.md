---
aliases:
- /2022-08-31-2022-08-31-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-08-31 18:05:00
tags:
- S/MIME
title: 2022-08-31 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG {.wp-block-heading}

August 31, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees {.wp-block-heading}

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Bruce Morton (Entrust), Christophe Bonjean (GlobalSign), Clint Wilson (Apple), Corey Bonnell (Digicert), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eva Vansteenberge (GlobalSign), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Jamie Mackey (US Federal PKI Management Authority), Joanna Fox (TrustCor Systems), Judith Spencer (CertiPath (Private Person)), Li-Chun Chen (Chunghwa Telecom), Martijn Katerbarg (Sectigo), Mauricio Fernandez (TeleTrust), Morad Abou Nasser (TeleTrust), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Russ Housley (Private Person)), Stefan Selbitschka (runQuadrat), Stephen Davidson (Digicert), Taavi Eomäe (Zone Media), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The minutes of the August 17, 2022 teleconference were approved.

### 5. Discussion {.wp-block-heading}

Wendy Brown asked why the requirement in 7.1 for “non-sequential Certificate serial numbers greater than zero (0) and less than 2^159 containing at least 64 bits of output from a CSPRNG” was included as this was related to SHA1 in TLS and was less relevant for S/MIME.

Stephen Davidson noted that the text was carried over from the Mozilla and Gmail requirements and TLS BR for consistency, particularly as many CAs used the same CA software for different certificate types. Dimitris Zacharopoulos noted that the Mozilla requirement was specific to SHA1.

Stephen reviewed the changes to the draft at that had been made in the past weeks.

Christophe Bonjean asked if changes such as described for Suspension would apply with all existing S/MIME certificates after the effective date, or only new certificates issued after the date. Stephen said that in his opinion the effective date applied to new in-scope certificates issued after the effective date.

Dimitris asked about the language in 4.9.13 which had the effect of banning Suspension as he believed the first version of the SBR needed to be more inclusive of some used practices. He described use cases involving distribution of tokens, as well as in some eID programs such as Estonia. Stephen noted the conversation on the list where Certificate Consumers noted that they did not support suspension. He also questioned whether suspension was used more in document signing (or multiEKU) certs that just happened to look like S/MIME.

Stephen suggested that the GW had options to allow suspension in the Legacy and Multipurpose profiles, but noted that this would be time-limited as those profiles would ultimately be deprecated, and that adding more legacy practices to those profiles might even accelerate their end date.

Russ Housely noted that with revocation a cert stayed invalid; it was confusing for users if a cert or a signature might flipflop between statuses without clear reason. Stephen agreed to add certificateHold in section 7.2.2 with wording suggested by Ben Wilson. Dimitris agreed this was a good solution to at least allow more time for further discussion. Paul Van Brouwershaven supported that.

Stephen noted that there might be more support for certificateHold if there were guardrails described on when it was allowable, time frames, etc. as an inspection of CPSs that allow suspension showed a wide variety of practice. This made it less likely that a Certificate Consumer might implement support for it.

Stephen showed changes made to the text in section 3.2.4.1 (4) dealing with the reliance on signatures. He noted that he had cropped the list to signatures standards that were already included in the CS BR. Eva Vansteenberge noted the wish to add the UK eIDAS as well, which operates in a similar manner to the EU eIDAS regulation. Stephen outlined that Clint Wilson preferred that specific discussion occurred on each framework to be included, and that they be added as subsequent ballots. Stefan Selbitschka suggested removing them in version 1, joined by Clint. Corey Bonnell suggested that each regime should be evaluated by the criteria in 3.2.4.1(4)(b).

Therefore the existing frameworks will be removed pending ballot. Stephen noted that given the long implementation period before the Effective Date, additional ballots could be dropped into place before the SBR take full effect.

Stephen asked if there were other topics that members felt had not been addressed, otherwise the intent was to move to ballot. No other issues were raised.

Stephen outlined the discussion and ballot process including 7 days of discussion, 7 days of ballot, and 60 days of IP review to create the Adoption Date. The Effective Date would be 8 months after the Adoption date.

Stephen asked the audit representatives the length of time required to create criteria. Don Sheehy said if the ballot was passed in September we could expect audit criteria to be approved by early 2023. Tim Crawford clarified that audits would be expected for the next audit period starting after the Effective Date.

Stephen thanked Martijn Katerbarg of Sectigo and Ben Wilson of Mozilla for agreeing to be endorsers of the ballot. He noted that sometimes in the closing discussions of a new standard there was a rush to add last minute items. He felt that the draft SBR reflect the expressed wishes of the SMCWG and hoped that members would vote in favor of the eventual ballot as the SBR were something the group should be proud of. He thanked the members for their participation and contributions to the draft. As the first S/MIME Baseline, he noted that there was certainly additional work to be undertaken in future versions.

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

Next call: Wednesday, September 28, 2022 at 11:00 am Eastern Time

### Adjourned {.wp-block-heading}