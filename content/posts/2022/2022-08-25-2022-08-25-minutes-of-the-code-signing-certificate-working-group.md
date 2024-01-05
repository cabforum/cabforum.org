---
aliases:
- /2022-08-25-2022-08-25-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-08-25 16:00:00
tags:
- Code Signing
title: 2022-08-25 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland, Atsushi Inaba, Bruce Morton, Christophe Bonjean, Corey Bonnell, Ian McMillan, Inigo Barreira, Janet Hines, Joanna Fox, Lynn Jeun, Martijn Katerbarg, Mohit Kumar, Tim Crawford, Tim Hollebeek

## Minutes 

Bruce read the anti-trust statement.

Meeting minutes for 2022-08-11 were approved.

### Malware revocation ballot 

Martijn said there were updates in Github (). Christophe and Corey have been providing feedback.

There was a discussion on the existing sentence “The CA SHOULD indicate whether its investigation found that the Suspect Code was a false positive or an inadvertent signing”. Tim and Ian agreed that the sentence is redundant and can be removed.

Tim raised a concern with requirements when “the CA is made aware”, as the definition of “awareness” is not clear. Tim suggested that receipt of a Certificate Problem Report is sufficient “awareness” for the CA and volunteered to develop language to capture the concept.

Christophe asked if the expectation is that CA should only reach out to Application Software Suppliers in the case of confirmed Suspect Code, or a case still under investigation? Ian clarified that only confirmed cases should be shared with Application Software Suppliers.

Christophe also raised the concern that there may be cases where both 4.9.1.1 and 4.9.1.3 is applicable and where it is undesired to contact the Subscriber prior to revocation. Tim and Ian agreed that these are valid cases and we should not explicitly require contact to the Subscriber.

Christophe and Tim discussed whether the requirements should dictate how proof of key compromise can be demonstrated. Tim mentioned that there is no standardized way, currently. Bruce mentioned that the TLS BRs require disclosure of the CA’s accepted methods of proving compromise.

### Signing Service Ballot 

Bruce provided the ballot text to Corey, who added it to Github (). There is an open item for someone with ETSI expertise to evaluate the audit scheme requirements for Signing Services. Bruce asked the group to review the PR.

### Timestamping 

Ian will reach out to Tim on developing a concrete proposal.

### Any other business 

None.

Next meeting is September 8th. Meeting adjourned.