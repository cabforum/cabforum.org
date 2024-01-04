---
aliases:
- /2021-10-21-2021-10-21-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-10-21 17:00:00
tags:
- Code Signing
title: 2021-10-21 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Andrea Holland, Atushi Inaba, Bruce Morton, Dimitris Zacharopoulos, Ian McMillan, Inigo Barreira, Joanna Fox, Tim Crawford, Tim Hollebeek, Tomas Gustavsson

## Minutes {.wp-block-heading}

Minute taker: Tomas Gustavsson

- Antitrust statement was read.

- Minutes from the meeting on October 7th was approved.

### Current Ballots {.wp-block-heading}

Ballot CSC-11 in IPR review through November 3rd. No discussion so far.

Corey has put out the ballot about invalidity date, CSC-12, about the revocation date and clarifications in the CSBRs about that. The discussion period is going through October 26th, then it can go into voting next Tuesday assuming the is no change to be made.

- Subscriber Private key protection

Ian wants to take the current proposal that has been discussed and put into a ballot form for discussion and feedback. Everyone should want to provide feedback and thoughts around the subscriber private key verification section. Right now in the proposal there are five current methods to satisfy the requirement, with an existing stipulation of “but is not limited to”. The thought of leaving it in, or the intention why it’s there to begin with, is that if somebody or some manufacturer comes up with a better way we don’t want to exclude that. It people, CAs, look at the requirements and think there is a better way that they have seen the don’t have to wait for the requirements to change to accept that. They can start accepting it now and use good judgment.

Bruce mentioned that you may want to put a cap on that for a year or two. If someone comes up with a better way we can put it in through a ballot. At some point the better way disappears and the only choice is to bring it in as a ballot. So to not leave something open that was closed in other sections. A reference followed to how domain verification has changed with previously there was “any other way”, and now bad ways have been eliminated and the better ways have been put in, going from six documented methods plus any other way to just several documented methods.

Tim said the best way of doing it is to actually get the minimum security requirements and then try to not be prescriptive about all the other behaviors where useful innovation might happen. A reference to TLS validation methods was mentioned where if there is something new you want to do, bring it up as a ballot and we’ll discuss it. But there are other approaches where there is some flexibility to allow, for example certificate extensions where you’re allowed to add new extensions without necessarily having to bring it to CA/B Forum.

Bruce mentioned a concern that the customer buys an HSM and the HSM does not provide key attestation, what is the method that would allow to do that? Currently they allow an IT audit, which he think is not on the list.

Tim mentioned there is an interesting midpoint between ability to innovate and banning innovation that can be useful. You can do A or B or C, and if you want to allow anything else it’s allowed if you put it in the CPS, because then you automatically get the disclosure. The forum can then look it up and see if it’s something the forum likes or not. In addition, the auditors are looking at it and enforcing it. You get some transparency and enforcement that you don’t get with the other methods.

Ian said he liked that, transparency. If you an extra method in your CPS it must be brought forward to the working group within six months or something like that, for inclusion into the BRs for code signing.

Dimitris mentioned that from the experience from the server certificate working group he doesn’t think we will see many CAs disclose their detailed practices in the CPS. If we get in perhaps 80-90% of the industries methods over the next year or so, removing the other method after that there would be a last call to CAs before removing it. Bruce referenced the domain validation where it took a couple of years to sort it out and get all methods documented. We’re trying to give some time for other methods that people are using to get them brought forward. It needs to be good not perfect.

Ian was okay and will work on the bringing it to a ballot.

### Signing Service {.wp-block-heading}

Bruce noted that his gut feeling was to sort out the subscriber key protection and then the signing service would have to align with that. Tim noted that we could delay some parts of the signing service discussion but could work on other parts and take the opportunity to work in parallel. The questions around op model and certifications and audit don’t necessarily touch the area of key protection and could be drilled into.

Bruce asked if we should take one of these items and put on the agenda for the meeting in two or four weeks from now to work on this item. This was agreed.

Bruce discussed if we should aim to address the subscriber key protection in the next meeting, get that done in pre-ballot format to get that moving, and then move on to the other one later. Suggested to wrap up the key protection and place the signing service for a future meeting. Tim agreed that wrapping up the key protection would help us with the signing service so it makes sense. Ian was fine either way. It was agreed to prepare the subscriber private key protection for the next meeting on the 4th of November and then start talking about the signing service two weeks after that.

### Other Business {.wp-block-heading}

Dimitris asked where we are on the conversion to RFC3647. Tim said that Corey has a draft that needs some finishing up. There is a link to a GitHub page somewhere on the mailing list. Dimitris remember starting a pull request and Corey making a bigger pass. Dimitris noted that the more ballots we include in the pipe-line the harder it is to rebase the 3647 work, so we should perhaps set a timeline on this conversion. We could start prepare other ballots but wait for the conversion to be done. Tim thinks we can do it in either order as Corey wasn’t too upset of having to merge a ballot or two. Time thinks the 3647 pandoc conversion could be the next ballot, prior to key protection. The other order would be fine but Tim thinks the 3647 work is done. Dimitris thinks they can work in parallel and that key protection may take a while. Bruce added to plan to talk about the conversion in the next meeting to get our next ballots against that version.

### Next Meeting {.wp-block-heading}

Next meeting is on the 4th of November.

The meeting was adjourned.