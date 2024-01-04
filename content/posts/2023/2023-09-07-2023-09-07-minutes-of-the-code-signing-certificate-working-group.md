---
aliases:
- /2023-09-07-2023-09-07-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-09-07 16:00:07
tags:
- Code Signing
title: 2023-09-07 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Andrea Holland – VikingCloud, Atsushi Inaba – GlobalSign, Brianca Martin – Amazon, Bruce Morton – Entrust, Corey Bonnell – DigiCert, Dimitris Zacharopoulos – Harica, Ian McMillan Microsoft, Inigo Barreira – Sectigo, Keshava N – eMudhra, Martijn Katerbarg – Sectigo, Mohit Kumar – GlobalSign, Scott Rea – eMudhra

# Minutes

**Discussion Points:**

Prior minutes approval – 24-Aug-2023 minutes approved with no objection

**Ballot Status**

Ballot 19 is completed and effective 5-Sep-23 and new Code Signing BR version is published with updates from this ballot.

Signing Service Ballot – Updated draft based on previous ballots. Includes lot of cleanups, simplifying the language and not change any scope. The objective was to clear that Signing service is not supposed to do validation. Validation is expected from Certificate Authority and Signing service is expected to protect private keys on behalf of subscriber

Summary of Major updates for Signing Service:

- Made clear signing service is not delegated third party. It is not an obligation for CA or CA doesn’t have to do it or delegate. It is optional for CA.
- Change in definition of Signing service to include generation of key pair and its management as main job for signing service
- Added section to ensure that Signing service don’t transfer keys to subscriber
- Changed reference to Signing Key as Private Key where applicable
- Improved content to avoid the interpretation that Signing service must do malware scans for all codes being signed
- Broke the audit requirements between CA, Signing service and Timestamping

High Risk ballot – To be postponed for now and to be taken up later.

**Discussion on need for charter update for TSA certificates**

Dimitris brought to group attention that it was agreed at forum level that Codesigning Working group can work on requirements for TSA related to Code Signing and is in scope.

Martjin suggested that unless we have technical controls to figure out which Timestamp certificates or authority is being used for Codesigning vs not used for codesigning, it is difficult to differentiate.

It was highlighted that we have policy OIDs for Timestamp certificates to be used for Codesigning. There was discussion if these are mandatory and if its stated explicitly. It was called out that if policy OID is not being used in Timestamping certificate, it technically still works for codesigning.

But there is still difference in opinions if timestamping requirements are in scope or need the charter update, since it is not clear.

Action item was decided to review and update charter and consider timestamp certificates/TSA requirements for Codesigning