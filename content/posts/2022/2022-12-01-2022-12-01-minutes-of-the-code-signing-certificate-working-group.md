---
aliases:
- /2022-12-01-2022-12-01-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2022-12-01 17:00:00
tags:
- Code Signing
title: 2022-12-01 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland – (SecureTrust), Bruce Morton – (Entrust), Corey Bonnell – (DigiCert), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Ian McMillan – (Microsoft), Inaba Atsushi – (GlobalSign), Janet Hines – (SecureTrust), Martijn Katerbarg – (Sectigo), Roberto Quionones – (Intel), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Tomas Gustavsson – (PrimeKey), Trevoli Ponds-White – (Amazon)

## Minutes 

1. The Anti-trust statement was read
1. Minutes of the last call were approved. Minutes from the F2F will be approved on the next call after the attendance is added.
1. Ballot: Malware based revocation: Here is the discussion on this topic:

Martijn Katerbarg: I think the Dimitris commented on the public list on a proposal to actually requires you to backdate verification dates.

I don’t know if you intended that to be included in this ballot or have that a separate item.

Dimitris Zacharopoulos: I just wanted to ask, how would people feel about a change like this since we are trying to address an issue for subscribers that are signing malware.

I think this course of action would be actually more effective, to protect the relying parties trying to use that malware.

Bruce Morton: Aren’t we already allowed to backdate?

Tim Hollebeek: Yes we are. That’s where I kind of wanted to ask you about this Dimitris, because I understand your motivation, but there’s a couple of problems with mandating it. Because if I’m understanding your intention correctly, it’s like, you’re basically saying that you have to choose a back date that guarantees that the ecosystem is no longer exposed to the identified malware. If that’s your goal right?

Dimitris: yes

Tim Hollebeek: Okay I mean it’s a noble goal, I think the problem is if you look at a lot of these scenarios they’re very complicated and there’s a lot of times there’s close contact with the root programs and discussing sort of the various trade offs of various effective states that you might choose and a lot of times the date that ends up getting agreed on for various reasons is not the one that is as far back as possible just because there might be a very critical driver for a particular operating system that gets affected and you know we should move towards ways of doing single signings so that that doesn’t happen as much but the reality is we can’t quite. I don’t know how you would write the requirements in such a way that they captured the reality of kind of how this works in real world scenarios today without writing a bunch of mandates that probably would cause more harm than good in at least some scenarios.

Dimitris Zacharopoulos: Well, if there is a malware out there that causes real damage, for me it’s pretty simple, there is existing language in CSBRs that we need to find if there’s going to be an impact for are there good signatures let’s say that are out there but in the lack of any of that information, backdating to the date of the not before would, also be an option.

Tim Hollebeek: Well, it’s certainly an option, but, I mean, going beyond what we currently have written, you would have to mandate some rules around how what dates you can and can’t use. Right? And, I don’t know, perhaps somebody smarter than I can come up with language for that would actually work but I’m kind of skeptical that the language can be written. I could be wrong.

Ian McMillan:  I’m with what Tim’s saying here, and there’s tons of cases that that will encounter with commodity malware that’s been signed that a revocation of that certificate has very little impact of the broad ecosystem, but there are those edge cases, and they’re becoming more and more prevalent. unfortunately, where the impact of that revocation is way too big, and it actually has more impact and damage than the malware is having on the ecosystem if we were to do that revocation. Drivers are a great case in point, where it can cause blue screens on devices, but I don’t know how we write that language other than saying, you know what Tim was saying, you work with your root programs to determine what’s the right backdating but I don’t I don’t know how we write good language that someone can actually audit that.

Dimitris Zacharopoulos: Usually we write the requirements that, we serve the majority of cases and then we can focus on the edge cases. If you’re saying, the edge cases are more than the normal cases, then it’s a little bit reversed. And for this particular one, we are so flexible that a CA can decide whether to backdate or not back date, you know, depending on the language, so that’s audited.

I think it’s pretty complicated to deal with this ballot. So, I think I will agree with both of you that we’ll probably need more time to think about this.

Trevoli: What ballot are we talking about?

Dimitris Zacharopoulos: The ballot for the malware.

Trevoli: Okay. Is there like a link someone can put in chat?

Dimitris Zacharopoulos: I put it on the chat

Dean Coclin-Any other actions you want to take on this?

Martijn Katerbarg: No, I think everything else is pretty much settled. Unless anything else comes up right now. Cory did push 1 suggestion which I committed yesterday, which was a no brainer cause it matched everything else.

I don’t know if the original endorsers are still okay with that. If they are. I’d like to try and push forward with it.

Ian McMillan: Yeah, let me have another review of the git hub of the current state and I’ll probably be willing to endorse unless I find anything that really sticks out to me, but I was one of the original endorsers, I believe.

Martijn Katerbarg: Yeah, and the 2nd was Bruce so.

Bruce Morton: I’ve looked at it today. I was going to call out, we have a lower case problem report and I don’t know whether that should be

an upper case certificate problem report.

Martijn Katerbarg: Line 508, I see it.

Bruce Morton: I think that was the only thing.

Dimitris Zacharopoulos: I think it’s correct not to be a certificate problem report. Because you have a problem report, and then you are doing an additional investigation and you might discover some more things.

Bruce: I don’t think it’ll impact anything in the big picture

Dimitris: yes now I read it again I think you’re correct Bruce

Martijn Katerbarg: Okay, that makes sense to align it. I think we mentioned it 3 times elsewhere as well. Let me go do that right away and then wait for Ian and then we can move forward.

Bruce Morton And what was the outcome about the number of days? For example, 7 days must be within 14 days. Is there an outcome there?

Martijn Katerbarg: There were some comments from Chris from GlobalSign. I know personally, I don’t think 14 days sounds acceptable.

I’ve asked for other opinions, unless other people think waiting 14 days as maximum sounds reasonable, we can discuss that

Bruce Morton: Ian, what do you think, what’s tolerable from the Windows side.

Ian McMillan: I really don’t like waiting. We’re trying to, just overall our trend is trying to reduce the time it takes to get a revocation out just even in our own programs and just generically in this space.

We realize, if you look at other platforms, they don’t take weeks, months, which some of these revocations can tak,e and for good reason. And not all of those are really related to a CA, taking a long time. It’s more less around just overall how you do revocation in Windows.

But we’re trying to reduce that time, so I would like to see it be reduced for sure, but I don’t want to be unreasonable and that’s where I really lean on what you guys say and need because you’re the ones who have to operationally do this.

Bruce Morton: It seems that on the SSL side, you have 24 hours or 5 days and, there is no malware.

And this side where you have malware, we’re giving them an extra 2 days or we would give them an extra 9 days, we bumped up to 14 days, and there’s malware. And it’s the fault of the subscriber, right? It’s their key, so I don’t know why we’re giving them so much grace.

Dimitris Zacharopoulos: If they violate the subscriber agreement for signing suspect code.

Ian McMillan: Yeah, it’s for all those reasons, you should just revoke but what Tim called out is very real. A revocation, because the signing certificate, and those private keys can be used for 39 months maximum, they signed so much code and it could be one of those cases where the subscriber was a victim and now we revoke and we actually hurt the ecosystem more because of that revocation.

Trevoli: So, one thing: I know this is carry over language from the previous. But one thing that stands out to me about these dates: Is there a strong need to include “the CA and subscriber may determine a reasonable date”. But then the date can’t be more than 7 days.

Why offer that option to the subscriber when, you might, they might only be 3 days? It just seems like that’s like an unnecessary back and forth step and you could just eliminate that and say, notify the subscriber the certificate will be revoked on this date.

Bruce: So you’re basically saying it should be 7 days, is the maximum and this, and we can revoke earlier and that’s really the subscribers call.

Trevoli: No I’m saying we shouldn’t give the subscriber an option.  The problem with giving the subscriber an option is, what if it’s a three day weekend in the country that the subscriber is in?

Bruce Morton: But if I have the subscriber who wants that certificate revoked now? And then why would I carry it out for 7 days?

Trevoli: Oh, sure. I think we should we should change the language to be clear because it sounds like, negotiate with the subscriber to if it’s tomorrow or if it’s 2 days from now, I would read it, as a subscriber that didn’t want my certificate revoked, as these rules say, I can have this max amount of time. I don’t read this as a subscriber, I get to request that we revoked sooner.

Martijn Katerbarg: No, I do agree with you and one of the reasons is that the current language already has this reasonable date, but it doesn’t have any set time limit so basically it could determine, let’s leave it for another year. That’s really what I want to limit at this point. I think maybe it goes too far to right away set it at the maximum, maybe 2 days.

Trevoli: Exactly. That’s what I’m saying is, reasonable is in the eye of the beholder and what you need.

And the language says reasonable date, but it has to be 7 days after the report was received.

Martijn Katerbarg: But the CA doesn’t need to agree with that. Even the CA can always revoke earlier.

Trevoli: They can I, I guess what I’m saying is, including that language implies that we have to have a back and forth discussion and offer options.

Tim Hollebeek: I actually think Trev is  onto something. I don’t see how the 72 hours actually makes this proposal a lot better. The contact within 24 hours is great. I don’t see why whether the subscriber responds or not.

I mean, starting with it, it’s sometimes subscribers, like Trev said, there are a variety of reasons why they may not respond within 24 hours and having that language that implies that there is sort of this back and forth negotiation and a lot of times these emails take, because it’s kind of a tense situation sometimes, you know, the conversations don’t go particularly quickly. Having it this complicated is going to cause more problems than it solves.

Ian McMillan: Unfortunately, though previously, it was even more complicated, wasn’t it?

While I see the subscriber in this case, there shouldn’t be that much of a negotiation, Especially if they’re unresponsive and you shouldn’t be giving them a, well, it’s implied that I can get a, a max of 7 days so, I always want the max of 7 days.

It should be more of the control of the CA. The CA makes this determination if the CA Is looking at it and says, hey, I talked with the subscriber, I looked at the subscriber across the ecosystem, and I see revoking would have a bigger damage of the ecosystem, then you’ve made that choice and that’s your justification. It’s ultimately the choice unless the root program or, this goes to a different part of the requirements, comes and say,s no you must revoke at this time.

Trevoli: Yeah, I guess I’m suggesting to the language, say something like the CA must notify the subscriber within 24 hours of the report.

with the revocation date for the certificate. And then that revocation date must not be more than 7 calendar days after the report is received if the subscriber actually writes back. It’s a reasonable amount of time and says, hey, can you just revoke it tomorrow?

Instead, you know, can you revoke it immediately, we’re totally cool with this. Please do. So then why don’t we revoke it sooner?

Ian McMillan: What if I go the other way, what if I’m Solar Winds and I come along and I say, hey, actually revoking, will put the entire ecosystem of all my customers at a security disadvantage. It actually reduces the security posture of all of these customers that I have immediately. I need revocation to happen, or I’ve shipped a new version that’s signed with the new cert and I have all of my major customers or whatever number. Give me 6 months. Those are very rare cases, how do we manage that

Trevoli: I think that kind of like two options off the top of my head are:

We acknowledge that that is a situation that is untethered from the rules and undesirable  but you have to notify the trust stores to let them know that this is a thing that you were going to do is you’re just going to literally be in violation of the rules and this is why.

Or, and, I’m dubious that this is ideal or that we should change the revocation requirements to carve out a process by which CAs can say, or submit a plan similar to the, In the network requirements, how there’s that thing where you have to fix a critical, or you have to have a plan within 96 hours.  But, I mean that’s kind of the thing, like, I think that if you acknowledge that, that’s always something someone has to make an incident report for. I mean, that it’s a formal process through the browser programs and it’s always a violation.

In Mozilla, it would just go in your audit report.

Tim Hollebeek: So maybe there’s a couple of things we can put together maybe that help with this because we only have to write the rules for revocation based on malware so the hypothetical _what if the customer wants the certificate revoked earlier_ we don’t have to write special rules for that because that certificate must be revoked upon request from customer, we already have that as a revocation reason right now so you just got a second reason on top that you have to revoke and since the customer requested revocation, you don’t have a choice, you have to revoke and the same thing with if Microsoft decides, we don’t like what’s going on in this particular situation, we want this particular revoked faster for this, that, or the other reason, we already have rules in the Microsoft root program that allows them to do that. So, those cases are already handled.

Maybe we can say something like, you either have 7 days to revoke the certificate, or submit a plan for revocation to certificate consumers. And so now, these certificate consumers have a plan and if they think that the plan is not effective, their recourse is they have this ability to request revocation on their own.

Ian McMillan: Yeah, that’s great. Tim.

Trevoli: I think that’s a lot more clear to.

Corey Bonnell: If the risk of making this more complicated, I’m wondering if maybe there should be another aspect we should be looking at additionally and that’s with code signing certificates if you revoke code signing certificates, all signed software doesn’t necessarily become invalidated. It’s based on,  if it’s time stamped code, it could still be potentially valid, if the revocation date was after the time of signing.

I’m wondering if maybe we want to add some language here like, you work with a subscriber to determine the earliest time of compromise, because, the case where you have device drivers or something like that, that might have been signed and timestamped before the time of compromise, there’s no reason to invalidate those but the things that are signed after the compromise, reasonably you would want to invalidate.

Tim Hollebeek: You’re absolutely right, but I’m trying to avoid writing language around that just because I’ve been involved in these efforts and I think your chances of writing language that successfully captures what you said is zero, at least, in any meaningful way. It’s going to have caveats where people are, that’s sort of the world we live in today where it’s like, yeah, you’re supposed to make a best effort to determine what the appropriate revocation date is in backdated to the appropriate time and it’s really messy and I think you do have to kind of make it a little bit more flexible in the way we discussed. This is one of those areas where at some point, there has to be some discretion for CAs,  and root programs have to incorporate into their evaluation of CAs, how CAs use their discretion within the lines, in addition to whether they are crossing the lines.  I think it’s perfectly reasonable to have a conversation with a CA that consistently takes 6 days and 23 hours about whether they are actually following the spirit of the requirements even if they’re following the strict requirements. I don’t know that you can get better than that.

Dimitris Zacharopoulos: Well, judging from the entire conversation, I think from what I’ve heard there is a lot of a burden being shifted from the certificate consumer here to the CA, about determining the impact to the ecosystem, meaning that, a successful hacker is going to 1st,

sign the driver, distribute it everywhere, and then write malware to steal personal data from millions of people, and people are going to think that it’s going to cause more impact to backdate that certificate, that would then invalidate the driver. So it’s a very, delicate situation and there should be some better solutions within Microsoft to white list a driver or something rather than having the CA going through all these hoops to determine what’s the correct date for not causing damage to the entire world.

But, yeah, Tim, I agree with you. It’s sounds impossible. We should probably take a stab at it at some point and just to confirm your theory.

Tim: Like I said, there’s some things we can do, I think, to submit a plan idea is a great one. The direction in which there might be a crack of light that we want to move towards is perhaps if we have some requirement around disclosure of a CA’s practices around how fast they manage to revoke certificates so that there can at least be some transparency about which CAs are actively trying to do a good job to protect the ecosystem by finding reasonable dates and taking reasonable information into account and as I’ve mentioned, let’s say the data shows that one CA 99.9% of the time takes six days and twenty three hours and fifty nine minutes to revoke certificates, well you know exactly what’s going on there and then we can think about whether there needs to be ecosystem improvements, but maybe a little bit of transparency would go a long way towards causing people to behave better.

4. Ballot: Signing Service Update. Here’s the discussion on this topic:

Bruce Morton: We’re working on updating our signing service requirements. No ballot number yet.

Dimitris: It’s CSCWG – 16

Bruce: We’ve done a bunch of proposed changes and there’s a bunch of comments here, and I was just going through the comments and a lot of them were from Dimitris So, I don’t think it’s closed and we can just look at the document on the screen.

We were talking about if should we be calling up the Net Sec document in a number of places, and you suggested that we strike it out I suggest that we want to make sure that someone running a timestamp authority or a signing service knew that applies to them since the NetSec document is talking about CAs. But then, I think maybe we just call it up in section 6.7, where NetSec called up and explicitly call it timestamp authorities and signing service. And then we’ve already put it into the subsections of 8.4 where it’s called up as an audit requirement. Does that sound like it’s a good direction to go to? (Dimitris-Yes)

Bruce Morton: Okay, so I was just suggesting that we move this stuff regarding air gap stuff to the timestamp ballot that I think Ian will work on in the future some time.

And then you said, should we allow combined reports? I agree. We should allow combined reports.

If a CA is running a CA, a signing service and a timestamp authority, I don’t believe we need multiple reports.

So we can put that in I thought it was understood, since you called it out, then someone might understand it that you need separate reports.

We’re fine with combined audit reports?

Dimitris Zacharopoulos: thumbs ups are from me and Ian.

Bruce Morton: Okay, so Martijn is not on the call now but was asking if this fine that we changed it from manufacturer certificate to basically a certification type of  certificate.

Tim Hollebeek: I think that’s what was meant, right?

Bruce Morton: Yeah, but he, he said, he thought it meant key attestation and I, I don’t think it ever meant that.

Tim Hollebeek: No, it meant FIPS certificate.

Manufacturers FIPS certificate is what it should have said.

Bruce Morton: OK so we leave that.

Dimitris Zacharopoulos: hold on which section exactly. Is that.

It’s in the service, not signing service.

Tim Hollebeek: We need to be careful because we do use key attestation in the new key protection requirements.

Dimitris Zacharopoulos: Private key storage for signing services Yes.

Correct yeah, there’s no key attestation here.

Bruce Morton: Right. They’re running an HSM and they’re going to be audited. So why do we need key attestation?

Dimitris Zacharopoulos: do we need to expand also on the FIPS or common criteria or are we basically accepting what’s on the 2nd paragraph? (Bruce: no)

So, we don’t need to be very explicit here. Good.

Bruce Morton: Right. It’s applying the type of certificate not the type of HSM.

So you’re suggesting this update for the audit requirements, so I don’t think there’s any objections to that. That was the request.

Dimitris Zacharopoulos: Yeah. Even though it’s for the time stamping and, we agree to have a separate ballot. This is very basic.

Bruce Morton: Just so everybody knows I broke out the audit criteria, so that rather than all being lumped into one under CA, I broke it out to CA, timestamp authority and signing service. So if we just broke out signing service, then the timestamp authority would be a snowflake, so I, we just made the 3 different items, so it is impacting it a little bit, but we’re not providing the requirements to the timestamp authority we’re just hopefully stating them differently.

Tim: Wait, how is that not a requirement?

Dimitris Zacharopoulos: it is a requirement per ETSI standard.

Tim Hollebeek: Dimitris’ fix looks like a good fix to me. I’m wondering why we aren’t just applying it.

Bruce Morton: I was suggesting we should apply it.

Tim: Oh, okay. Sorry. I agree. Dimitris text looks right to me.

Bruce Morton: Okay, Ian was asking about if we want to move from level 2 level 3.

We should have a date when we have to go to that. I never thought of that. A date does make sense.

The other question is, is there any existing signing service out there that’s using Level 2? If there’s none, then, maybe we don’t need a date

Ian McMillan:  I don’t know.

Tim Hollebeek: the other thing is we could just put a date just because, but here’s the problem and we need to look into that because we could put a date because if there isn’t one, it doesn’t matter. But the problem is, if we pick a date,  and if somebody is using a level two HSM in a signing service, replacing an HSM is not something you do on a short timeline. So if there is anybody, I think we need everybody to just kind of go and say, hey, I’ll check and make sure what we’re using and, but, yeah, we should publicize it pretty widely.

Bruce Morton:  I would push this out to whatever, greater than 6 months after the ballot was approved. So I don’t know what that date would be

Ian McMillan: I would say, 12 months

Tim Hollebeek: Yeah if we’re just going to pick a random date to avoid having everybody go and look, I would pick 12.

And I actually we’re going to go and look anyway, because even 12 months can be a little bit interesting for changing HSMs at scale.

Bruce Morton:  I’m just going to say I need to do that.

Dimitris Zacharopoulos: it’s more than the HSM,  it’s also an audit.

Tim Hollebeek: Exactly. But, I think it’s good for everybody just look at whether level 2 signing services exist or not, and then maybe we can get away with just not having a date and just saying, okay.

Bruce Morton: Dimitris would like to update the signing service definition to be this definition here (shown on screen).

Dimitris Zacharopoulos: I explained it a little further down, because the way it’s written, it says it that signs code.

Bruce Morton: I didn’t know if it just meant remotely signs a hash of the code or something of that, right?

Dimitris Zacharopoulos: And I also didn’t want to use the word hash.

Ian McMillan:  I’ve seen 2 types of signing services, there’s the ones that ingest the content that they intend to sign and they’re signing the code itself, or like, what Dimitris is calling out there, just ingesting the digest hash that needs to be signed.

Bruce Morton: doesn’t the service take the code, create a hash and that’s what it signs or it gets a hash and that’s what it signs? Doesn’t it sign the same thing In both cases?

Ian McMillan: not always, we have even in our internals, we have digests signing process where we have sign tool only send us a digest. We’ve created a plug in that works with sign tool that,  we never ingest the code for our signing service. The signing service only ever gets and we only ever process the hash that needs to be signed that was created by the sign tool

Bruce Morton:  I’m in I’m in agreement with you there, but in the end, do we only sign the hash regardless of what we received?

(Ian: yeah). Okay. So, why do we have an “or” if we’re only signing 1 thing?

Tim Hollebeek: So, that’s the thing. I think it’s an implementation detail. I think when you say the sentence signs code using a code signing certificate, what you mean in engineering language is either the hash is taken somewhere else or the hash is taken locally. And then the hash is signed, because that’s kind of how signature signing works for objects. Having to restate that in the requirement in definition I think is unhelpful.

Dimitris Zacharopoulos: I just wanted to I want to make sure that people that want to implement signing services, they will see that there are at least 2 dominating use cases that are used.

Bruce Morton: It doesn’t bother me to leave this as is

Tim Hollebeek: So, if we want the clarification, we should, perhaps put a may, or a note somewhere stating that the hashing need not happen within the signing service it’s okay if somebody submits just a hash, because that’s actually a useful thing to say explicitly, because there are some reasons including, let’s say in the future if we want to add some scanning requirements or things like that, there are some reasons why you might want some signing services to see the code instead of just a hash.

But today, I think it’s actually an interesting point. I just don’t think we should muck with the definition. I think it’s probably some verbiage that exists in some other section.

Bruce Morton: I think I agree that definition isn’t clear enough, right? Because someone’s going to say, I’m not signing code. The definition I think needs to be fixed

Tim Hollebeek: Really?

Bruce Morton: Well, if someone’s going to say, I’m not signing code, I’m signing a hash.

And then you get into this little debate well that’s what we meant and so I think Dimitris was trying to write down, that’s what we meant. We meant it could be the code, or it could be data associated with the code

Tim Hollebeek: I think I think we still have to say that outside of the definition. And that’s because as I’m running through things I might say in my head I end up trying to say things like the hash may be calculated by the subscriber or by the signing service and that’s a requirement and requirements don’t belong in definitions

Bruce Morton: Then should we put the word _hash_ in this? Because I think code signing is more of a marketing term than it is a technical term. It doesn’t sound like a spec term. Unless we go and define, or have we defined code signing?

Dimitris Zacharopoulos:  when we define a signing service, the best place to clarify what we mean by signing service is the definition itself. But for the implementation of and requirements around signing services I agree we should put it in a different place but we’re just talking about the definition

Tim Hollebeek: But that’s the thing that I disagree with you about. I think the clarification isn’t about the definition.

The clarification is about what exactly the requirements are around how code signing works and where certain operations like hashing may or may not be performed and so I think it’s more around the actual requirements of what we mean by signing service and what they’re allowed to sign than it is around the actual definition of what a signing service is.

Dimitris Zacharopoulos: If you see it signs code with the capital C, then that’s what is described here is not the hash. It comes out of scope

Tim Hollebeek: Well, I get the argument that you’re saying, I think we need requirements to clarify that the interpretation that Bruce and you are saying that, that is not a correct reading of this, and that if you’re signing objects that if you’re signing a number of bites, that’s short enough to be a hash, you are signing code. And that’s just because that’s how code signing works.

Ian McMillan: The data that you sign associated with that code is actually the _to be signed_ hash. The TBS hash

Tim Hollebeek: Yeah, that’s the thing, it’s always a hash. So when you say, _sign code_, somebody can’t really say I’m signing a hash therefore, I’m not signing code because when you sign code, you’re always signing hashes.

Bruce Morton: But sorry, the subscriber has a signing service.

Subscriber has a signing application. Subscriber creates a hash and provides that to the signing service to sign and activates the key.

They get back the signed hash and then the signer prepares the code signature because now it has the code, the signed hash, the certificate, so the code signing is done by the subscriber. It’s getting an input from the signing service, but it’s not getting that the signed code, not necessarily.

Tim Hollebeek: You’re right, the definition does need to be improved. I think the, the point that you made about the fact that the actual production of the signature doesn’t necessarily happen at the signing service is actually a valid one and that’s a bigger problem with this definition, beyond the whole thing about just, whether it’s a hash or not.

Trevoli: Do we need to define code? I know they’re called code signing certificates.

Tim: We do have a definition. It is defined.

Trevoli: No, no,  I’d say, do we need to? Does the word code need to be inside in the signing service definition.

Bruce:  I don’t think so, but,

Trevoli: I mean, we care more about who’s controlling the keys then what is being signed?

Bruce Morton: We don’t know that it was code that was hashed actually. Right?

Dimitris: We are a code signing working group. If you say it signs objects, then it becomes weird…

Trevoli: then I’m saying that the signing service is the concern about control of the keys.

So it feels like the signing service definition should talk about something like that.

Dimitris Zacharopoulos: But we have a plan to add some more requirements to the signing service, like, checking, maybe in the future checking for malware.

Tim Hollebeek: Right. And so that’s the interesting thing is, it actually really is an interesting question of whether the signing services required to see the code or not. And, in fact, we may actually end up diverging into the spot where we may actually include in signatures at some point in the future, whether the signing service has seen the object it has signed or not. Because of the fact that, in the case of only the hash was submitted, obviously, it wasn’t scanned.

Ian McMillan:  I don’t I don’t think it’s requiring scanning. It’s too overarching and it gets into confidentiality issues. I don’t want to see missile targeting system software ever in a signing service.

Bruce Morton It’s the wrong direction as well. I thought the direction was we were trying to protect the keys and not….

Now all the signing service has to be the expert on finding malware

Ian McMillan: No, and it shouldn’t and we’ll never have a consistent means to have a signing service properly, or even defining what’s proper code signing or scanning is another really difficult problem.

Bruce Morton: Okay, so I think we have to step back then and redefine signing service, so why don’t we take that as an action item?

Bruce Morton – Dimitris, do you want to try that or should I try that or?

Dimitris Zacharopoulos: Somebody else should try a different definition. I think.

Ian McMillan: I can take a stab at it too.

Thanks again and Trev I’d love to have your feedback. You have a good fresh perspective. We’ve been talking about signing services for a long time.

Bruce Morton: We were trying to remove this term that says _signing services secure infrastructure_.

Because it says we transferred to subscriber outside of the signing service infrastructure. We don’t want the signing service to transport any keys. But we do allow a CA to create keys for a subscriber, and I assume a CA can delegate that service to a delegated 3rd party.

So that’s why we swapped out _signing service_ with CAs and delegated 3rd parties secure infrastructure.

Dimitris Zacharopoulos: But the problem is that a signing service could be a delegated 3rd party.

Bruce Morton: No the CA is not obligated to be a signing service. So you don’t have to have a signing service. It’s not an obligation.

You can only delegate things that you’re obligated to do.

Dimitris Zacharopoulos: So, let’s assume there is a signing service that is a partner of the CA, or affiliated with the CA. Then would that signing service be okay to generate keys and then sending those out to the subscriber?

Bruce Morton: Well, there’s nothing stopping a signing service from being a 3rd party or a associate or a partner or anything. We didn’t say that the signing service has to be the CA.

Dimitris Zacharopoulos: I thought we wanted to prevent this from happening, so we didn’t want the keys to be transported outside.

Bruce Morton

Agreed.  So we don’t want the signing service to do this, so we’re not allowing the signing service to transport the keys.

So, we are allowing a CA to create a token and put keys on a token and transport them to the customer.

Tim Hollebeek: The customer keys leaving the signing service, they’re not signing service keys, leaving the signing service.

Ian McMillan: Yeah, we don’t want to allow the customer keys outside of the signing service.

Dimitris Zacharopoulos: now I understand the intention, what you were trying to do, and thanks for that

So just need to do a fresh read of this to make sure it delivers

Tim Hollebeek: Ian is right so that, isn’t this trying to do something that we didn’t want to do, because the whole purpose of the signing service is to protect the end user keys, this is saying how you transport the end user keys to the customer.

Bruce Morton: This doesn’t apply to the signing service. This applies that if the CA wants to generate keys for the subscriber, how they would transport those keys to the subscriber.

Tim Hollebeek: So these are non signing service keys.

Bruce Morton: Yeah, this is what CAs are currently allowed to do.  Right now we’re allowed to generate soft keys and send them to them as long as they’re encrypted using the 128 bit encryption.

Tim Hollebeek: Yeah, I was just assuming we’re in the signing service section due to the fact that the text previous said signing service, but

Bruce: Right. So it’s private key delivery to subscriber and it said signing service security.

Tim: Yeah, that’s an error in the current, right?

Bruce; Yeah, we wanted to remove any call out to the signing service cause I would want them to deliver keys.

Dimitris Zacharopoulos

Bruce, would you be okay if we added an additional sentence that says that, signing services are not allowed to transport subscriber keys

outside their infrastructure

Tim: we should add that

Dimitris: Yeah, because I read it 2 or 3 times and I also considered people could misunderstand the delegated 3rd party to also mean, a signing service. Which is not the CA.

Trevoli: Yeah, I like that suggestion Dimitris. Or should we add to that specifically once consumed or once ingested.

Once a signing service has ingested a key, then it should not be exported.

Dean Coclin: We’re coming up at the top of the hour and I think we’re going to have to interrupt this spirited discussion at this point. Bruce can we just close out at this point and pick it up at the next meeting.

Bruce Morton : Yeah, so we’ll close that. So maybe Dimitris do you want to provide that sentence?

Dimitris Zacharopoulos: Sure. Yeah. I’ll add it.

7. Other business: None

1. Next Meeting December 15th

Meeting Adjourned