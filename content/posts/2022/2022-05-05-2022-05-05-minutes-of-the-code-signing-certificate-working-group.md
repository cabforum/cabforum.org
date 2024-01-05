---
aliases:
- /2022-05-05-2022-05-05-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-05-05 12:00:00
tags:
- Code Signing
- Minutes
title: 2022-05-05 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Atsushi Inaba, Ben Wilson, Bruce Morton, Corey Bonnell, Dean Coclin, Ian McMillan, Joanna Fox, Martijn Katerbarg, Michael Sykes, Tim Crawford

## Minutes 

Minute Taker: Dean

Antitrust statement was read

Prior meeting minutes of April 21st, approved.

### CSC-13 Subscriber Private Key Protection Ballot (Bruce) 

No IPR review responses have been received and once period ends tomorrow, a notice will go out to all.

### CSC-14 Format changes (Corey) 

No issues have been flagged with the ballot so the discussion period will be kicked off next week.

### High Risk Ballot (Bruce) 

Bruce had sent out the text for the ballot to the list. The group reviewed it on the screen. The ballot attempts to clean up takeover attacks and use of keys in software.

Tim suggested the takeover attack language go away after the keys in software are no longer allowed.

### Signing Service Ballot (Bruce) 

Bruce is waiting for the format change to be done and then will propose changes to the signing service to help “clean it up”. Trying to determine if there are any issues about having the signing service done by a cloud provider.  Tim said we need some clear language about what the cloud provider can be used for. Bruce will try to have something available by the time of the F2F meeting.

### Timestamp Update ballot (Bruce) 

Thinking of stalling a bit because we have a number of items that we want to close off. Tim had sent something to the list on the Microsoft policy issue that we need to address. Ian said that issue is with the root program people, not him. Tim said it’s time critical and bad things will happen if things don’t move forward. Bruce asked if it was sent to the public list and Corey said it was in github but will send to the list. Tim described the issue: MSFT root policy currently would imply that every single time stamp authority that chains to a public root would need to have the signing service policy OID regardless of whether it’s intended for code signing or not. The downside of that is that it means it’s not going to solve the problem, the way they wanted it to be solved. We wanted CAs to put it in certs intended to be used for MSFT code signing and leave it out of things intended for non-MSFT stuff, like document signing or whatever. This would help tell the difference between a MSFT authorized and compliant TSA and just a general TSA that’s trusted by the internet. Hence we need an update to the MSFT policies. Bruce asked some clarifying questions. Tim said there are a bunch of timestamp servers that are under these MSFT routes and have been for a long, long time but we’re never intended for Microsoft code signing and so there was this issue that it’s impossible to tell whether it’s a timestamping server that’s existed for a long time. And so about a year ago, we discussed adding this policy OID timestamp servers that you can tell the difference between a Microsoft timestamp server and just some random trusted timestamp server that’s existed for a long time and used for lots of things. And we’re going to try to get that clean separation. I would like it to be very clear that policy OIDs correspond to requirements documents like the BRs and if you stare at a certificate and look at its policy OID it should be very easy to tell under what scope it’s under.

Another item Bruce brought up was that we allow a timestamp certificate validity period for 135 months and we don’t need it to be that long. But to cover Java issues, we can’t go down to 1 year or 15 months (or something) because that might create issues. But what is a reasonable number? We have a maximum 39 month code signing certificate so we want a timestamp certificate to cover at least that, but it would seem that if I to cover off 39 months, and I can issue a certificate every 15 months, that the maximum period will be 44 months. The Java issue is that the signature is not ok when the timestamp cert expires.  Ian expressed concerned with the number of private keys that would be around for 11 years that shouldn’t be around that long. Corey suggested mandating key destruction after 15 months. Bruce asked why we have to re-key a TSA? Ian said the TSA end entity certs being used to sign the timestamps are very highly used. A compromise of that cert has a huge impact. The internal MSFT TSA certs are not hosted in the same security world as the roots or issuing CA for the end entity TSA cert.

Do we want to destroy the old key when we re-key? Tim said we should think about that. Does someone need proof of possession of that key? Since it’s a CA key, the answer is no. It’s probably safe to allow deletion.

Bruce said it’s implied that the timestamp CA is offline based on its CRL requirements. Should it be clarified? Is there an issue with it being online? Corey said there’s not a lot of value in having it online and it presents a risk. Bruce said if we want it offline, we should make that statement in the requirements to be clear. Ian said that any issuing CA that is online can only live online for \<5 years validity period. Hence for TSAs that are longer than 5 years, they should be offline.  Bruce will make markups after discussion.

### Other Business 

For the F2F, our group will meet at 11am ET on Tuesday (5pm Poland). Let’s think about an agenda for that call. We will also need to make a short presentation in the Forum meeting since February and what we will be working on for the rest of the year.

Ben asked about an issue some people were observing with Win7 installs of Firefox, which might be related to the timestamp. Ian said it could be something to do with SHA256 and certain patch levels of Win 7. Ian will send out the KB article that relates to this.

Meeting adjourned.