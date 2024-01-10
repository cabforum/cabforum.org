---
aliases:
- /2022/09/22/2022-09-22-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-09-22 16:00:00
tags:
- Minutes
- Code Signing
title: 2022-09-22 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees

Andrea Holland, Atsushi Inaba, Bruce Morton, Corey Bonnell, Dean Coclin, Ian McMillan, Joanna Fox, Martijn Katerbarg, Michael Sykes, Roberto Quiñones, Tim Crawford, Tim Hollebeek

## Minutes

Dean read the anti-trust statement

No objection to minutes from Aug 8, minutes approved. Will be sent to public list

Information that the IPR review on CSC-15 ended and the ballot has been approved. The website has been updated.

CSC-17, subscriber private key protection, is in voting period that closes September 23rd.

### Malware proposal

Martijn Katerbarg is finishing the text and will send out the latest changes. Bruce Morton and Ian McMillan plan to endorse after review.

### Special election ballot

There is a chair ratification ballot, it’s a ratification ballot, either you ratify or not.

### Vice chair nomination

Bruce Morton is nominated so far. Other nominations should be submitted to the list before October 3.

### Signing service discussion

There was a discussion what a signing service should provide, being complications between subscribers and signing service requirements. It was discussed that a signing service should not only be a key protection service without any other security mechanisms, that could sign anything if breached, regardless if a HSM is used locally or a cloud HSM is used.

Bruce suggested to wait for Ian’s ballot (CSC-17) to go through, then discuss the signing service in more detail. Tim suggested that it was a good topic to discuss during the next F2F, to start defining which security services are required. Bruce suggested to create a model for the subscriber signing protection that enforces the same security level regardless of how the signing is done. It was agreed to discuss further at F2F.

### Timestamping

Ian is holding off on that for the moment to not distract from the malware proposal and the signing service discussion.

### Other business

The F2F coming up in one month. If there are topics someone want to add to the list to discuss, send them to Bruce.

Joanna noticed that some numbering is confusing and looks off in section 6.2.7.4.1 in Ian’s ballot. Ian thinks the numbering is intentional, but will go back and look at it.

Dean suggested to cancel the meeting the 20th of October due to the F2F the following week. This will be discussed on the next meeting.

Meeting was closed