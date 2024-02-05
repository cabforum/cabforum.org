---
aliases:
- /2024/01/18/2024-01-18-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2024-01-18 00:00:00
tags:
- Minutes
- Server Certificates
title: 2024-01-18 Minutes of the Server Certificate Working Group
type: post
---

## Attendance:

- Aaron Gable – ISRG
- Adam Jones – Microsoft
- Adrian Mueller – SwissSign
- Alvin.Wang – SHECA
- Andrea Holland – VikingCloud
- Atsushi INABA – GlobalSign
- Ben Wilson – Mozilla
- Bhat Abhishek – eMudhra
- Bindi Davé – DigiCert
- Brianca Martin – Amazon
- Brittany Randall – GoDaddy
- Bruce Morton – Entrust
- Cade Cairns – Google Trust Services
- Chris Clements – Google Chrome
- Clint Wilson – Apple
- Corey Bonnell – DigiCert
- Corey Rasmussen – OATI
- David Kluge – Google Trust Services
- Dean Coclin – DigiCert
- Dimitris Zacharopoulos – HARICA
- Doug Beattie- Globalsign
- Dustin Hollenback – Microsoft
- Enrico Entschew – D-Trust
- Fi Yoneda – JPRS
- Inigo Barreira – Sectigo
- Jaime Hablutzel – WISeKey
- Janet Hines – VikingCloud
- Jasmine – SHECA
- Johnny Reading – GoDaddy
- Jos Purvis – Fastly
- Karina Sirota Goodley – Microsoft
- Keshava N – eMudhra
- Kyle O’Malley – Google
- Lucy Buecking – IdenTrust
- Lynn Jeun – VISA
- Mads Henriksveen – Buypass
- Marcelo Silva – Visa
- Marco Schambach – IdenTrust
- Mark Nelson – IdenTrust
- Martijn Katerbarg – Sectigo
- Michelle Coon – OATI
- Miguel Sanchez – Google Trust Services
- Nargis Mannan – Viking Cloud
- Nate Smith – GoDaddy
- Nicol So – CommScope
- Nome Huang – TrustAsia
- Paul van Brouwershaven – Entrust
- Peter Miskovic – Disig
- Rebecca Kelley – Apple
- Rich Kapushinski – CommScope
- Rich Smith – DigiCert
- Rollin Yu – TrustAsia
- Scott Rea – eMudhra
- Stephen Davidson – DigiCert
- Steven Deitte – GoDaddy
- Tadahiko Ito – SECOM
- Thomas Zermeno – SSL.com
- Tobias Josefowitz – Opera
- Trevoli Ponds-White – Amazon Trust Services
- Wayne Thayer – Fastly
- Yashwanth – eMudhra
- Yihang – SHECA
- Yoshihiko Matsuo – JPRS
- Zhang Xiao – SHECA

 
 ## Minutes:
    Roll Call
    No new members


## Membership
    Sun ShengNan: as interested party
    Dean Coclin asked questions and waiting a response

    CommScope: move from associate to full membership

## Review Agenda
    SC65: EVGs as per RFC 3647 (update)
    Clarification on organization in EVGs, I.e., VATEL for Greece. (See ballots)
    Use of DTPs: Definition clarification, uses,…
    Reversing “whichever is greater” CAA language (Issue #474)

## Previous Minutes
    7 December: Circulated on 11 January
    4 January – Minutes have not been circulated yet

## Read Antitrust Statement

Inigo Barreira read the Antitrust Statement
 
## SC65: EVGs as per RFC 3647 (update)

Inigo:

There were comments on the final draft and some sections that were missing, and I would like to have a short recap. About a month ago, the idea was to follow the whole section of the RFC, and where it was included in all the different sections that the docent must follow. For example, change section 1.1 from the scope to overview, just changing the name. The main concern was the proof of possession of the private key. The section 3.2.1 that has been include. And that will that meant that we had had to change all the section, 11 into a new, (3.2.2 )it’s basically the same, but just 1 more number. Also created the others that were remaining, even 2.3 and 2.4. And also a change in this section 8. All things checked. So the idea behind this updating of the EVGs, is just to follow well, that’s been discussed a lot, so to follow this RFC, and have all the docents align. So, you see the work of the CAs, auditors, and group programs. To finally see what is required in those sections. This been discussed for some time, but in this case, this policy still needs two endorsers. This is also affecting some other working groups like Code Signing, and anything that these changes will impact, in some of the CA CPRs and CPSs, because of the numbering change. If you have any comments or anything you would like to add or need more time to review, please speak up for those that have been involved in this discussion.

Clint Wilson:

Does that include also checking other documents referencing sections of the EVGs or just internal to the EVGs?

Inigo:

I checked the internal ones that I updated, but when clicking on the new 3.2, it’s going to the right one, but I can make a double check.

Dimitris:

I haven’t looked at the red line, and I asse that you also proposed changes to the baseline requirements, right? That have the new references to the new sections. That’s I think that was what Clint was trying to say? (Clint: Yes) Or are we only changing is your proposal only to change the EV guidelines docent at this point, or is it also changing at the same time as the BRs?

Inigo:

This is only for the EVGs

Dimitris:

So, then we need to look at the baseline requirements for any references.

Inigo:

They point to section 11 (that won’t exist anymore if we approve this one), so, if we want to do or going that way, then it has to be synchronized somehow.

Dimitris:

You can do it in the same ballot. Actually, updating the BR’s is very easy. You just point to the new references, and we do it both at the same time. We have changed both docents in one ballot before.

Trevoli Ponds-White:

We can only do that for the TLS BRs, right.

Dimitris:

Yeah, of course, the code signing point to a specific version of the guidelines.

Trevoli Ponds-White:

Great. So they could just do a ballot after.

Dimitris:

I will try to take a look before the next meeting. Because I did some similar work in the code signing working group. I’ll be able to make some comments when I take a closer look.

 
## Clarification on organization in EVGs, I.e., VATEL for Greece. (See ballots)

Inigo:

This is now in discussion period. Ballot 68.

Dimitris:

We had some discussion about this in the S/MIME working group. There may be a concern, that we are pointing to a docent that may change in the future and we may never find out about it. However they were counter argents that we already point to an iso docent and several other external docents that may change and the for would not know about that as well. I think Clint was the one that raised some concerns, but he’s going to respond to the list if he has any stronger feelings.

Clint Wilson:

I think that the explanation provided yesterday addressed my concerns sufficiently.

Dimitris:

If there are no objections raised during the discussion period, I plan on starting the voting period right after.


## Use of DTPs

Inigo:

The use of Delegated Third Parties (DTPs), has been discussed also last week in the validation sub-committee, and has been also mentioned in other working groups. I would like to know if there is a need, or do we need a clarification on the definition of what a DTP is. I would like to get the other working groups or the validation sub-committee to clarify. I would like to open the discussion here and see if there’s anything that we should do in this working group, or just leave on to the others.

Aaron Gable:

I think this is most obviously the domain of the validation subcommittee, which I think is why it was discussed there extensively last week. And why the current email thread has been forwarded to the validation subcommittee mailing list. I also think it’s a fairly important topic and it’s appropriate to discuss it in the parents working group of that subcommittee. For folks who haven’t been following the mailing list, after the validation sub committee meeting last week, I put forward a proposal for a single sentence that could be added to the baseline requirements to make it very clear that third party recursive resolvers count as delegated third parties when performing DNS lookups for the purpose of any sort of domain validation. I don’t feel super strongly about the sentence that I proposed. I just wanted to have a concrete starting point for people to discuss from there. So far no one has raised any objections to that proposed sentence. I think at this point, I’m sort of looking for; Do people have specific feedback on that proposed sentence, either whether we should add it or not? Also whether it should be phrased differently or not? If people don’t have specific feedback on that sentence, then honestly, I think I would be looking for endorsers for a ballot to actually add it, because I think it’s a very simple and straightforward path forward from here.

Dimitris:

So, I like that approach. I tried to highlight that in my email in December. If we see concrete examples, of something that the community considers that it should not be allowed, like the DNS lookups. Also I would add the whois APIs, although the BRs are a little bit clearer in that respect, because it says the CA must directly communicate with the register. However, we could add that as well in this ballot. More like a clarification for the whois part. As we go forward and discuss the DTP in the validation subcommittee, or in this working group, in a more horizontal way. At the same time, we will have clear guidelines so that others are making similar mistakes. So, I’d be happy to endorse any ballot that is in this direction.

David Kluge:

The question Aaron, if for me, in the sentence that you posted, it seemed to generalize it and say that all requests made to. Because if result of us, operated by third parties, would be deemed to delegate third parties. That narrows down all just the definition as it is at the moment. One of the factors that decides over whether it is one or not is whether the resolver is in the CAs audit’s scope. I wanted to understand a little more is what why do you think that’s insignificant of the proposal that you made, as I read it, if that wasn’t a significant factor.

Aaron Gable:

I think that, if the recursive resolver is used by the CA, are within their audit scope, that’s probably good enough for me. I think this is absolutely the sort of thing that can and should be workshopped as this moves towards actual ballot. You’re right, there is a distinction between, operated by the CA and within the CAs audit scope.

Cade Cairns:

I have a quick question, or remark followed by a question, I guess, in reviewing the original ballot that introduced this language it seems looking at the emails. From the time that the intent wasn’t so much to limit. Just DNS and we’ve also seen some discussions ,or DNS specifically, and it seems that there have also been some discussions on the mailing list about what other services might fall into scope. And I’m wondering if we should consider where to draw the line and be a little bit more specific, rather than targeting just DNS, as people could make the same argents about the network.

Aaron Gable:

I absolutely agree. Backing up a second, it is my view that adding this proposed sentence does not change anything in the BRs, this is a clarification and that the same. Already exists in the BRs. So, adding additional clarifications for other services, like email providers, or whois, or things like that, certainly makes sense, should not be necessary, but in practice very well, maybe, et cetera, Et cetera. I think from my perspective, I am more than happy to continue discussion about other potential services that should have similar clarifications added. But I don’t want to let bike shedding about who is an email services and stuff like that prevent us from getting a clarification like this into the docent. And so that’s why I started with just this very simple sentence about DNS only and if we want to have the more complex discussions happen very quickly, then awesome, let’s do it all in one ballot. I was very worried that they were going to expand the scope and I didn’t want to let that derail this particular one.

Cade Cairns:

That’s fair and reasonable. To the earlier points raised about whether or not it falls into the CAs audit scope. Would ask to include that as an important consideration, from our perspective.

Mads Henriksveen:

Just from my point of view, but I think it’s important to focus on the external services, which is not allowed to use for domain validation. I think that’s my main concern right now. I’m not quite sure how this fits with the comment from around the scope of it, but I think it’s very important to get some clarifications of which type of external services should not be used for domain validations. And I like the proposal from Aaron, and I’m happy to endorse this if you want to go for about.

Aaron Gable:

I think the next step here is, I will put together a git hub PR, adding something very similar to the current sentence, circulate it as a proposal. And then, I’ll wait to get official confirmation from both Mads and Dimitris that they’re willing to endorse that version of the language before, sending it as an actual beginning of discussion period. I think just so people have a heads up. I think what I will probably do is I will just change the very end of this sentence to say, “I E, without the use of recursive resolver is operated outside the CAs audit scope”, and just leave it at that for this version.

Dimitris:

Would you be willing to also add some clarification for the whois service, which has also been discussed in the community.

Aaron Gable:

I would be happy to. I would appreciate it if someone else would draft that sentence.

## Reversing “whichever is greater” CAA language (Issue #474)

Inigo:

Moving to the next topic, well, the next two topics. One of the issues we have in GitHub. Last month, Wayne asked me for discussing this new RFC about test keys. And the other issue is the latest one from the other day about reversing the whichever is greater.

Wayne Thayer:

At a high level, I’m concerned about a lack of agreement on what the CAs responsibility is in terms of being aware of compromised private keys. The language in the BRs is pretty ambiguous, and in discussion on the list with Clint, I think it was pretty clear that there was some disagreement in what the expectations are for the CA.

Dimitris:

Just a quick comment, I think CAs would like to have very clear and specific rules around what sources should be used to block keys, in any way. Test Keys and RFC 9500 is a good source. Maybe other sources like that, but it needs to be as explicit as possible. We also had a ballot for the Debian wikis, which didn’t pass. I don’t recall it if this is related as a proposal. Is this combined with that old ballot or is this something completely new?

Wayne Thayer:

I think the issues are in different sections of the BRs. So we could tackle them all together? Yes. But I think they’re similar, but slightly different.

Dimitris:

Okay, just wanted to know what the goal is, but if it looks like if there are different sections, then we can start treating them differently. And if they meet somewhere in the along the way.

## TTL of the CAA records. Whichever is greater in the eight hours

Inigo:

Continuing with the open issues that I put in the agenda just took the latest one. Just open two days ago. It’s just how we clarify just when checking the TTL of the CAA records. Whichever is greater in the eight hours.

Clint Wilson:

I really just noticed this as I was reading through the S/MIME CA ballot that recently passed, and we voted in support of. So, I don’t think this is something like a pressing issue, but in reading through it kind of struck me that it seems very counterintuitive to be setting a caching value that could be greater than the TTL, set on a resource record. The point of the TTL, is for the DNS operator to set that maxim value. Probably this should have been whichever is less from the beginning. I’m not sure of the history there or if there is any there, but it just seemed totally antithetical to the point of the TTL value in the first place. So that was kind of the first component of this that that I noticed. The second component of it was the recursive nature of DNS. Which means that we could be looking up multiple records in pulling the CAA Record. And it seems like it might make sense to be honouring those TTLs, like if you’re if you’re going through and you find a resource record necessary to resolve the CAA record that has a TTL lower than that of the CAA record itself. It seems like that’s sort of the value that we should be pulling as the caching value. Because it’s required to pull the CAA Record itself. So that is the kind of the second part of it. The first part, I feel more confident on, like, the whichever is less it seems correct and then the recursive thing, I think maybe it’s is correct but I’m not as confident there.

Aaron Gable:

This is the thing that has also struck me as odd multiple times in my head. I convinced myself that it actually made sense. And I don’t know if this is historical reasoning. The thing that convince me that it made sense is that looking up CAA Records is quite expensive. You might have to query many different DNS names as you work your way up the chain. If you don’t find a CAA Record at any of the more deeply nested subdomains. And so, to me, the whichever is greater language made sense as a form of, if there was a long TTL on this, then you can respect that TTL. But if there’s a very short TTL, you can still reuse the value you found for up to eight hours similar to how the BRs in general allow you to reuse the fact that you looked at the text record for 398 days. It’s just a very short version of the validation docent reuse. So that’s how I convinced myself that the existing language made sense to avoid doing very expensive CAA queries, like every few minutes. Regarding your second point, I don’t think there’s a lot of purpose in keeping track of a bunch of different TTLs that you look up as you traverse upwards. As you traverse up, towards the root zone starting from this deeply sub domain, the results of the CA lookup at each of those points are either no record or some record. If there is some record, then you respect that one, and if there is no record, then there’s not a TTL on no record. So I think we only have to care about the TTL of the CA Record you actually use.

Clint Wilson:

To your first point, that does make some sense. I was just thinking of it more in like, DNS land and the first part is DNS land and the second part of the sentence is BR land, and it’s like two separate things. Like, we’re not saying, ignore the TTL, we’re just saying reusing the data that’s been pulled as validation evidence. For the second part, that was kind of a similar conclusion that I came to. I don’t know that this would actually change anything for anyone, if you’re doing this recursive resolution of DNS records. You’re basically going to find one record that has a TTL, but then it did seem like there were possibly circumstances where there would be DNS records that you relied on.

Tobias Josefowitz:

I wanted to mention the delegations, I definitely have some like 10 minute delegations, right? And okay, so they could change and then control could change and the CA Record could in that sense be outdated.

Corey Bonnell:

It’s not an issue filed on GitHub and definitely had some thoughts about some of the rationale and proposal being discussed. My understanding of the TTL, is that it’s a directive to DNS revolvers on how long they can cash the retrieved record. It’s not really a limitation on the end user application, retrieving the record and how long they can use it. So, you know, kind of a simple example that demonstrates that is someone that has a CAA Record, with a TTL of zero, which means it’s an instruction to a DNS resolver to not cash that record, and catch it (retrieve it) fresh every time it’s looked up. A TTL of zero would mean, though, if we extend that the CAA processing would mean that it would be impossible to get a certificate issue because the record would immediately expire. So, I think eight hours might be a bit long, but my understanding is that there Is there so domain owners that do have a of zero or a very, very small amount measured in seconds, are still able to get certificates issued. But the eight hours is sufficiently fresh so that there is a change in the DNS, the CA has to respect it.

Clint Wilson:

I think that is reasonable. What Aaron said; sort of safety buffer for CAs to not need to just constantly query. I think that separation in my mind of just this is like a BR provision, rather than a DS provision. It’s downstream use of the record. Not actually caching the record itself.

Martijn Katerbarg:

I kind of agree. I’m not against switching it around, but in that case, I think maybe we need to state that. There’s still a minim amount of time that could reuse it. Exactly. For the cases where maybe TTL is 10 seconds or less, or something like that. Tentative being leave the language as it is, but add a maxim time because I think that the real problem we could see here is that someone could have said a TTL for 25 years. And then could use the same record for 25 years and I’m thinking that’s exactly the type of thing we do want to prevent. So, maybe if we don’t want to switch it around, we should probably, at least at a maxim to that to what we’re going to allow. So either minim or maxim, and I support right away.

Aaron Gable:

I personally really like the number of eight hours, simply because Let’s Encrypt would like to reduce our domain control validation, docent reuse timeline to exactly match the CAA timeline. So we are either checking domain control validation and CAA at the same time, or reusing both and never reusing domain control validation, by having to recheck CAA just for simplicity purposes. Reducing it below eight hours would start making that comparatively difficult. Obviously not impossible, there are CAs that never do domain control validation reuse at all, but our scale having some amounts of reuse is very handy for us. I prefer to not reduce it below eight hours, But that’s a very weak reference that certainly could be overruled by other factors.


## Valid Status

Inigo:

All right, move to the next topic, which is the valid status. So we have some bullets under consideration. So we have come in their discussion period, but there are some others that are. Almost there. Let’s start from the last one, the update of logging requirements. I think that is proposed by Martijn.

Martijn Katerbarg:

So we have this discussion about two months ago. the update language basically brings a must log and should not log provision to specifically the firewall and regular activities. And, yeah, could 1 endorser at this point I don’t know if anyone has other comments or suggestions on it if not. We’re looking for another endorse or to see if we can move forward on that valid.


Inigo:

Moving on, the next one which is being proposed by Aaron.

Aaron Gable:

Yes. So the current status on that is that the mailing list thread has some people expressing that they support the currently proposed language, there’s a little bit of ongoing discussion on the get hub pull request, but no definitive conclusions over there yet. I am still seeking endorsers, but if people want to take a look at the pull requests to the proposed language there, and decide whether or not they want to endorse, then we can get it moving towards official discussion period.

Inigo:

Another one was about subscriber agreement and terms of use consolidation. I don’t know the current status of this one.

Ben Wilson:

So that’s Ballot 67. I need to touch base with Dustin. I think he’s on the call, but we haven’t touched base since the holidays, and it hasn’t started discussion yet.

Dustin Hollenback:

I’ll schedule a meeting with you.

Inigo:

Here was another one, which was about the profiles clean up.

Corey Bonnell:

There’s been no real progress on that since October. It sounds like there’s been a couple of discussions and GitHub on for the refinements to the certificate profiles. Some of which might involve normally requirements changes. I think there was an issue on key usage changes that might affect a couple of CAs that a couple folks were looking to see pulled into the BRs. So, I’m wondering if it’s actually more expedient to kind of treat this ballot is like a profiles ballot 2.0, And expand the scope a bit.

## Other Business

Inigo:

let’s move on to the next Item, which is any other business.

Dimitris:

I’m just going to mention that the working group needs to start working on the agenda for the next face to face. So if people have any thoughts, there’s a draft agenda on the wiki, and start proposing additional topics that you may want to cover.

Inigo:

Next call will be February 1st.