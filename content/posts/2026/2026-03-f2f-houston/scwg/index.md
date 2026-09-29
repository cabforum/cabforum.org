---
author: Wayne Thayer
date: 2026-03-10 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 67 Meeting in Houston, Texas, USA - SCWG, March 10, 2025
type: post
---

# Face-to-Face Meeting 67 Draft Minutes of Server Certificate Working Group

## Updates since last F2F

- **Presenter:** Dimitris Zacharopoulos

- **Minute taker:** Aaron Gable

- **Slides:** [SCWG-Update-F2F67.pdf](SCWG-Update-F2F67.pdf)

- Since F2F 66 in October 2025, we have passed 7 ballots:

- SC-086, SC-091, SC-090, SC-094v2, SC-096, SC-097, SC-095

- Only SC-095 (2025 Cleanup) is still in IPR period

- Six main draft ballots under consideration, covering everything from
   EV Registration Numbers, to ADNs and CAA

- Eleven requirements with effective dates of 2026-03-15 (this weekend!)

- Currently 92 open github issues

- 32 are tagged "cleanup", most of which will be closed by SC-095

- Interested parties (all individuals):

- Rameez Rehman: approved

- Sebastian Nielsen: approved

- David Croston: approved

## Capturing BR Version at DCV TIme

- **Presenters:** Trev / Gurleen / Aaron

- **Minute taker:** Chris Clements

Aaron Gable started by asking why are we talking about this. It’s because
three CAs filed incidents related to this. Folks looked at the requirement
more carefully and decided to have this discussion.

The focus is on Section 3.2.2.4 and 3.2.2.5:
“CAs SHALL maintain a record of which [domain / IP Address] validation
method, including relevant BR version number, they used to validate every
[domain / IP Address].”

Aaron wants to convince everyone that there are several issues with this
statement as it stands.
1. This statement does not exist for organization data or subject identity
information; anything that comes in for OV and EV certificates is not
subject to this requirement.
2. The phrase “maintain a record” is not clear. What does it mean to
maintain a record? There are a lot of requirements for audit logs, but that
is not the same as “maintain a record”.
3. The phrase “relevant BR version number” is problematic. Which version is
relevant? How is a CA supposed to make a determination of what the relevant
version number is? Is it the BR version number at the time the validation
was performed? Was it the version number the last time the CA deployed its
validation processes? Was it the version number the last time the code that
performs this validation was reviewed? Regardless of the intent, this
statement does not convey that very well.
4. The fact that this is in Section 3.2.2.4 and 3.2.2.5. If the goal is to
require CAs to record something, we already have a section for that and its
Section 5.4.1.

What is actually the goal? Aaron proposes the primary core goal is: For any
given validation, what process the CA was supposed to have followed. With
that goal in mind, what do we need to accomplish that goal?
1. What validation method was used?
2. When the validation was performed?

Section 5.4.1: “The CA… SHALL record… the time and date… All verification
activities…” We already have this piece of information. Great. The bad news
is that we don’t necessarily know which validation method was used. CAs are
required to record all validation activities, but that’s sort of open to
interpretation.

Very simple proposal, lets amend 5.4.1 to say “...minimally recording the
following information: validation method”. This follows the format that was
used very recently for recording MPIC validation.

Dimitris: For “validation method”, are you expecting the method number?
Aaron: We could make it more explicit. For example, Let's Encrypt doesn't
write down “3.2.2.7” in our records right now, we write “ACME-DNS-01”. But
there is a 1-to-1 mapping between the two so we count it as the same thing.
If the CABF prefers recording the specific validation method number, that
could be fine.

Dimitris: Provides some historical context suggesting that it makes more
sense to reference a BR section number. This was because there were two
versions of a method doing similar things. It might make more sense to
reference the BR section number. Aaron is not opposed to changing their
practice to match this behavior.
Martijn: The BRs state this requirement was added in 2019. What was the
original intent of adding this? Aaron stated he joined in 2020, but Ryan
Hurst provided a pretty comprehensive summary of the original motivation.
Basically the problem was at the time CAs were running into compliance
incidents where the requirements around how validation methods must be
performed had changed but they had not updated their practices and they
couldn't go back in time to tell which methods were used to determine
impact. The other half of the motivation was to encourage CAs to be looking
at the BRs and noticing when validation methods change.

Aaron suggests that we should require recording the selected ADN. Corey
agrees with this.

Corey: Doesn't agree with exactly how prescriptive some might be reading
this. The BR version, or at least some indication of which BR version the
validation method is using is valuable. There were some slight tweaks to
validation methods, in which case the BR version number is relevant. This
is helpful if there are further amendments to validation methods.

Roman: Agrees that the validation method and the ADN is what you really
want in the case of an incident. Suggests the BR version number could be
derived from the audit log timestamp.

Aaron presents an optional secondary goal: Ensure CAs have reviewed their
validation processes against the latest requirements.

Pros: In theory, logging the BR version with every validation forces CAs to
review changes to the BRs to see whether they need to update the logged
version, and therefore whether they need to update their practices.
Cons: We have CCADB Self-Assessments now - we have other mechanisms that
require CAs to review every change to the BRs in depth and make sure that
their practices align. These external mechanisms did not exist in 2019.
More importantly, future effective dates mean BR versions precede CA
changes. Immediate effective dates mean CA changes precede BR versions. CAs
need to review changes to the BRs anyway. Why do we believe logging a
version number makes them more likely to do so?

The BR version number is not the thing we need to be looking at. It’s the
timestamp of the log message that we need to be concerned with. The BR
version number just increases confusion.

Dimitris: The idea of changing the version number even though there is a
future effective date means that the CA acknowledges there is a version of
the BRs in the future that they intend to comply with. In combination with
a timestamp of each validation, then you get the exact result. Aaron argues
that it's just the timestamp that matters. If this requirement did not
exist and the CA was just logging BR version numbers, it would be crazy for
an Auditor to just use that value to determine which validation method the
CA should have been using. Rather, it's the timestamp of the log message
that should correlate the version of the BRs that was in effect at the time
of logging. The BR version that is being logged might be several months or
years old if there have been no changes to that specific method. There is
no real correspondence between the version number being logged and what
practices the CA is supposed to follow. The only concrete correspondence is
between the timestamp and which practices they are supposed to follow. The
BR version number is just superfluous metadata that, in his opinion,
because of the effective date mess, often causes more confusion than good.

Tobias (in chat): I believe there is additional value in recording the BR
version of the validation method beyond demonstrating compliance. Imagine
we find an issue in a validation method (say, a subdomain of an FQDN can be
validated via "CNAME delegation") and we fix it, the new algorithm may be
in compliance with the currently effective version of the BRs. So a CA
might update their systems with the new algorithm ahead of time. In
addition, it's a bit unclear when new BRs become effective exactly (this
has recently been under debate), date is clear, exact point in time, not so
much. Now say a certificate is issued, in either of these situations, where
the actual owner of a domain/FQDN later complains that it was issued to
someone not in control of the FQDN. We'd want to know if this happened
under the currently required but flawed algorithm, or under the new, fixed,
maybe not yet required algorithm.

Corey: Using a combination of the validation method and timestamp and maybe
some additional metadata that's recorded - if that's enough information to
understand what requirements are being followed - that should be fine. A
current reading of the BRs that explicitly requires a recording of the BR
version in the database and cannot be derived from any other data source is
an overly strict reading. Aaron returned to, the timestamp is mandatory and
it always has been.

Wayne: It's clear that we need to make a change. What change do we want to
make? This reminds him about the time at which the BRs get published and
become effective and might bite someone in the future. Aaron agrees, but
was not trying to tackle the timing problem in this conversation. He has
some ideas about how to make this better.

The concrete proposal is to draft a ballot that deletes the line from
Section 3.2.2.4 and 3.2.2.5 and replaces it with additional details in
Section 5.4.1. Optionally, we can add other things to what must be
recorded, like ADN. Beyond that, for difficulties of when a BR becomes
effective, we should change our internal processes such that when a Chair
publishes a new version of the BRs, that version becomes effective the next
day. So it gets published and something like 24-48 hours pass before it
becomes effective. Details have not yet been worked out, but this should
basically solve the “when does it become effective” problem.

Martijn: From a GitHub perspective and building the BRs document the
automation should be a fairly easy feat. He suggests making it a 48 hour
window. Dimitris suggests this might require a change to the Bylaws and the
IPR Policy may need consideration too.

Ben: What about a CA that wants to implement a BR version ahead of time? If
a CA wants to do DNSSEC in advance and doesn't want to be held up. Aaron
reframes as what if we’ve made an improvement around some requirements and
a CA updates their practices to reflect that, then how do you know which
version reflects that? The answer is that it's still the old version. If a
CA implements a requirement before it becomes effective, it's not a
compliance incident and not an audit finding because they’re going above
and beyond, so long as they’ve not documented it in their CP/CPS. Ben
suggests that the CA would still be able to tell internally that they were
already complying with the next version. Dimitris suggests that the
original goal was to make sure that the minimum requirements that are the
BRs are monitored and basically documented for audit purposes and
especially in case the Forum identifies that one of the validation methods
is flawed.

Tobias: Is not sure this is taking all possible benefits into account.
Let’s say in the DNSSEC example, a CA adds DNSSEC checking to a validation
method in a way that's compliant with the currently effective BRs and the
next effective versions of the BRs. If someone complains a certificate was
issued to someone who should not have had access to it - wouldn't this
information be extremely helpful in figuring out how this certificate was
issued to someone who shouldn’t have it? Aaron attempted to clarify that
“someone who shouldn't have it” means someone who had bad DNS
configurations and should not have passed the DNSSEC change? Tobias
suggested the scenario where someone has DNSSEC and has everything set up
correctly and someone still manages to get a certificate for a FQDN under
that domain that is DNSSEC secured before DNSSEC checking is required. They
reach out to the CA and say hey, how did this happen? In this case looking
at the logs could identify this happening under the new method that was
supposed to be performing DNSSEC checking.

Aaron: Suggests that there are two answers here. First, the CA should know
when they deploy new versions of stuff. If you as a CA deploy a new
feature, like DNSSEC, it’s incumbent on you to record when you deployed
that. Recording the BR version you are theoretically required to follow
doesn't help that. Second, sure it might be helpful for CAs to know which
version of the BRs they believed they were compliant with. But, it's not a
compliance incident. Tobias is not fundamentally opposed to what Aaron says
but thinks it's perfectly reasonable for the BRs to mandate best practices.
Aaron doesn’t think that this is such a strong practice that all CAs must
abide by it. For many CAs in many situations, the BR version number
confuses things.

Trev: This also runs into the problem that came up before where the BR
version doesn’t correlate to actual system requirements. If it’s a code
change it should be captured in the code review. If we feel that we need to
do more, then the NetSec requirements are probably the most appropriate
location for it.

Aaron’s proposed conclusion is that he will write a ballot that includes
the changes that were discussed on the slides.

## CP/CPS Content Consistency

- **Presenter:** Trevoli Ponds-White

- **Minute taker:** Rebecca Kelley

   -
   https://docs.google.com/document/d/1fgt_HTMfCowWTFclACriS7nvEv5g9JHE2jdcfhqlggg/edit?tab=t.0#heading=h.blnkeickcekf

Chris Clements - This is something that the group needs to spend time on.
On the small blurb about a root store being in the group, Chrome cannot
commit to that at this time. Interested in the effort, and thinks this is
something that the collective group absolutely needs.
Dimitris - As a group in the forum, we know there are a lot of similarities
between the different types of certs. This document needs to provide good
incentives for CAs to support this.
Trev - Types means "TLS vs S/MIME". We want a community of people to work
on incidents, and we also do have a lot of different audiences. If we can
identify a framework, so if we need to point out "this does not meet the
needs of the other regulatory bodies", we have something to start the
conversation.
Ben Wilson - To what extent your suggestion to wanting this group to dig
into a CP/CPS needs to be more specific, or where we go to write something
down if the guidance is normative or non-normative, and sufficiently
descriptive?
Trev - The first thing a group should do is pick which strategy, like
MATTER fits the way some of the root programs operate, in terms of, in
MATTER, the CSA approves all of the CPS'. Another option is a CA has to
fill in anything required. There are different strategies, based on the
specific questions that are required to have an answer.
Aaron Gable - One piece of the problem that is missing from this document,
is that CAs are disincentivized from being precise in their CPS's. For
example: Let's Encrypt certificates can be valid for up to 398 days. But
because Let's Encrypt was very precise in their CPS, that states they are
valid for 90 days, but they issued certificates that were valid for 90 days
and one second. This made them non-compliant. Being precise hurt them. If
there is a way to make is that CAs are incentivized to be precise and
descriptive, without setting themselves up for compliance incidents, that
would be helpful.
Trev - Agrees with Aaron. That bug (Let's Encrypt) could have gone better
if the community viewed the content as "90 days is close enough and is in
line with the BRs." This is a good example of why we need more clarity.
Scott - There was a PhD student at Dartmouth that did a project around
ingesting all the CPS's that were being compared at the time for the US
Federal PKI. This would be a great tool to use, that is publicly available
for all CAs and cause it to spit out where there are differences and where
they are not.
Trev - We could decide as a group, to use AI, and make a CP/CPS.
Lucy - With the discussion of rules, regulations, and margins of error.
It's important to note that when we have a certain degree of flexibility,
we also need to evolve what we're doing and we can evolve what we are doing
in a guided way. This needs to enhance the BRs and the nature of what CAs
are doing.
Trev - Will send out a poll on the servercert, and decide when we can have
another meeting. Hopefully root programs will also attend.

## Revocation timeline for CP/CPS inconsistencies

- **Presenter:** Dimitris Zacharopoulos

- **Minute taker:** Nate Smith

- **Slides:** [Revocation-timelines-for-CP-CPS-discrepancies-F2F67.pdf](Revocation-timelines-for-CP-CPS-discrepancies-F2F67.pdf)

- Dimitris - Opening and proposal - (insert slide presentation from
   Dimitris) Referenced links to minutes of previous F2F meetings. Indicative
   cases: 1 day flexibility for CA's, not thinking about final margin but to
   think more conservatively and implement controls stronger than what
   Baseline requires. Noticed CA's changing CPS docs updating validity
   periods to be tighter than BR's. Became clear with Let's Encrypt example
   (90 day certificates). Let's Encrypt had to revoke all certs that were off
   by 1 second, despite the BR's having larger margins for validity period.
   Transparency and precision increase CA compliance risk without increasing
   security. How does the ecosystem benefit from incentivizing specific,
   detailed and not vague documentation?

- Another thing we have discussed is the security impact. Can that
   actually be assessed? I've been monitoring incidents from 2010 or so and
   there has always been a very strong pushback from the community that it's
   impossible to say which relying parties are affected by CP/CPS deviation.
   Even if it's just 1 second in a validity period. If it is 1 bit of entropy
   for the serial number. Certificates with the same content and validation
   because there was a CP/CPS mistake. The reason Microsoft issued a key
   encipherment. All of these were allowed practices in the BR's, but still
   resulted in a disturbance in the web PKI ecosystem. So the community is
   unable or unwilling to evaluate the security impact on these extreme
   examples. I believe it's impossible to assess for any other deviations.
   The browsers usually call that risk transfer. They don't want to have an
   opinion or put an assessment that "this violation is okay, it does not have
   security impact on the ecosystem. It's just a subject information clerical
   error. If we can't agree on these 4 more extreme examples, I don't think
   we will ever agree. Trev mentioned earlier that we should discuss whether
   there is or isn't an impact. It's not gonna happen. Some requirements are
   vague in the BR's, and some are detailed which is okay. There's no policy
   standard document that is super detailed in every element. There is room
   for implementation for each CA as long as they accomplish the objective of
   the control.

- My previous proposal was to have a new revocation timeline of 30 days
   for any CP/CPS deviation that is compliant with the BR's. The discussion I
   had with CAB members revealed this is like a wildcard, a free, unrestricted
   exception to the BR's and we should try to do better. So the proposal at
   high level is to allow CA's to specify stricter and more specific, more
   detailed policies and practices, but also allow them to define different
   revocation timelines for those stricter and more specific practices.
   Instead of having a universal extended revocation timeline like a 90 or 30
   day, there will be specific exceptions in the CPS for things that are
   otherwise compliant with the BR's. Like an allow list. It's possible that
   some deviations may not result in any revocations. If revocation timeline
   is not defined, it will default to 5 days as in the current BR's.

- Dustin (Apple) - Why couldn't CA's do this today? We issue for 90
   days, but are permitted to issue up to 397, why can't CA's do that now?

- Dimitris - Collides with current language in section 12 or in the CA's
   CP/CPS Practice Statement. If you put that in your CP/CPS and violate
   that, then you have 5 days to revoke.

- Trev - CA's can do that, but they will say "here's the thing we didn't
   do and here's the thing we're allowed to do.

- Dimitris - agreed, and anything that is above the BR's stated
   explicitly in the CP/CPS will be revoked in 30 or 90 days

- Chris Clements (Chrome) - doesn't recall all previous points on this
   topic, however identified 3 challenges

- Creates opportunity for subjective debate, especially at the time of
   incident response. If a CA Imposes 30 day timeline for a rule in their
   CP/CPS, who gets to say that's stricter than the BR's? During an active
   incident, you have to then parse the definitions to see if the self imposed
   timeline applies. Seems like it would turn Incident Response into
   subjective debate.

- IF we can avoid subjective debate during incident response. The whole
   point of a stricter control for a CA is to provide a level of higher
   assurance to relying parties? Why else would you do it? If a CA is
   promising a rigorous check that writes this back door into the policy that
   says if we fail to do this, then we'll fix this in 30 days. The control
   becomes an illusion. If a CA is failing to uphold that promise, then it's
   safe to presume that the certificate is untrustworthy for the intended
   higher level of assurance being offered. I struggle to see how you can
   promote a more strict standard and then also relax the incident response
   plan.

- This is collectively treating the symptom rather than trying to cure
   the disease - disease being lack of agility with policy. We should focus
   on systemic improvements. Gave examples of goals we haven't worked towards
   in an effort to cure the disease rather than treat the symptoms.

- Dimitris- For the Incident part, this proposal doesn't change the fact
   that a CP/CPS violation is still considered an incident. There will be an
   incident report and follow the CCADB guidelines, but it may not result in
   revocation of certificates within 5 days. Relying parties will know before
   relying on certificates. They will not be tricked into a delusion. It is
   what it says in the CPS, so they should expect for some things to be
   revoked in a wider timeframe. I respect the comment about the disease, a
   lot of members are working to improve things. Some changes happen slower
   than others. I think we can cure the disease, but we still need to treat
   the symptoms. I can't imagine a mass revocation event happening again for
   just 1 second or 1 bit of entropy. It causes such a disturbance in the
   ecosystem. Pushing for automation. We'll get there, but we still have to
   do something about the elephant in the room and not leave this risk open.

- Aaron Gable (ISRG) - Chris, I agree with basically everything that you
   are saying except for one tiny piece, which is you said something about
   like "Why would a CA hold themselves to a stricter standard if they weren't
   going to back that up with incident reports or revocation and I think that
   comes down to what is the purpose of the CPS"? When Lets Encrypt documents
   it in our CPS that we issue certs for 90 days, we did that because part of
   the purpose of the CPS is to advertise to relying parties "Hey this is what
   we do, this is why you might want to trust us" So we viewed putting that
   90 days in the CPS as documenting a fundamental truth. We weren't holding
   ourselves to a higher standard, we could choose to issue 180 day certs as
   long as we updated our CPS first and that probably wouldn't change our
   trust relationships with any root programs, we were just saying hey, here
   is a thing that is true about us. We value putting things that are true,
   accurate, and precise in this document that is supposed to contain
   statements like that. And the result is that it was interpreted as an
   incredibly strict requirement to which we must be held and it is
   fundamentally very weird for a descriptive document that does not contain
   any musts, any shalls, any shoulds, it is descriptive not prescriptive. It
   is fundamentally weird for a descriptive document to be treated as
   incredibly rigid requirements that the CA must not ever violate. That is
   the world we live in, and we are building tools to live in that world, but
   it feels weird. I would much rather live in a world where the CPS can
   describe things to a reasonable degree of accuracy, but not then require
   minutia levels of detail. I don't know that there is an easy way to strike
   that balance, I'm still thinking about Dimitris' proposal, but I think
   attempting to strike that balance is fundamentally valuable. Because it
   means that CPS's will contain more useful, more actionable information as
   opposed.. The smartest thing a CA can do is write a CPS that says "we
   comply with the BR's" That is not useful to anyone.

- Trev - The CP/CPS can meet this weird thing for CA's where some people
   expected to be more like service documentation rather than a policy and it
   fits in this weird middle between Strict Set of Rules that you need to
   follow, but people expect things in it that are functional documentation.
   I got a question from someone on what to allow list for their firewall and
   they wanted to know why it wasn't in our CPS. It's just different
   expectations.

- Martijn Katerbarg (Sectigo) - I kind of agree with what Chris said as
   well but I'm almost wondering if what Dimitris is proposing is already
   allowed? I'm not saying it's a good idea, but what is technically
   disallowed at the moment for a CA to state, We may on occasion deviate from
   our CPS, and which case we will revoke the cert within 30 days.
   Technically any cert issued at that point is still allowed by that CPS, so
   it doesn't trigger 5 day revocation. It doesn't take into account Aaron's
   concern obviously and totally goes against what we would like to see, but
   in my opinion it triggers the same kind of concerns raised with this
   proposal.

- Dimitris - You can't really do that because if you have a blanket
   statement like that, this would also apply to BR requirements in the
   document.

- Martijn As long as I have not issued a cert that is not in violation
   of the BR's, I have not misissued a cert.

- Dimitris - That was a discussion we had at the previous F2F and I
   don't think a blanket statement like that would hold at least from the root
   program.

- Martijn I'm not saying it's a good idea, it's kind of what this also
   comes down to as well.

- Dimitris Basically taking this proposal a step forward, it feels like
   there would be a compromise for making a clear statement about which part
   of the CP/CPS would allow this practice in form of an allow list. So
   that's the next step we took in this proposal

- Dimitris - Proposal to BR's language. (see slide deck)

- Ben WIlson (Mozilla) - Something was said earlier and something that
   sort of ties into this is the difficulty that I find when I see an incident
   filed to determine what the security impacts were, other impacts whether
   stricter or whether relying parties are relying on it, I think we need to
   work on that to figure out how to address that, because when these things
   get filed, things are happening so fast. For example, I wouldn't feel
   comfortable taking a look at something and saying, well lets do a risk
   analysis on this because at that point, it's a little hard to do. I've had
   people comment that a risk analysis should be done and I'm like, it's a
   little too late for that.

- Dimitris - I covered that at least from the community's experience.
   Everytime we mention the risk analysis. Like you said, things are
   happening fast and in some incidents CA's have to revoke within 24 hours or
   5 days. If we were to repeat the incidents for the serial number entropy 1
   bit, or the 1 second, what would the risk analysis look like for you?
   Could you imagine a result that says no, there's a huge impact to the
   ecosystem, or no, 1 second is not going to kill anyone.

- Ben Wilson If we do risk analysis frequently enough, then there would
   be lessons we would learn, there would be patterns to look for, there
   would, we would be more intelligent about these things, but it's like we
   haven't really ever done this kind of approach, so it's not a realistic one
   to begin with.

- Dimitris - Okay. Yeah well, if there are proposals for risk
   assessments then we can definitely discuss but right now this looks more
   pragmatic, I think.

- Tadahiko Ito (Secom)- Yeah, I was wondering what is the value we can
   get for enforcing those additional descriptives. Like, you know description
   so a user might be happy well might choose that service because of that
   things and they treat it like other promise with the CA.

- Dimitris - Are you talking about the relying party or the subscriber
   now?

- Tadahiko - Subscriber subscriber. Yeah, So why we are not having the
   external document for those kind of descriptive things like others like
   those kind of product description things like why we do we need to treat
   that for some other contents are described in CP/CPS, so if he. To those
   descriptive document is additional like some countermeasure for something
   like like why not put them into the external document

- Dimitris - so let me understand what you're saying. You're saying that
   if we want to have a more strict description of a control or policy, that
   should be in a separate document.

- Tadahiko - Yeah.

- Dimitris - I understand but usually when a relying party wants to rely
   on a certificate. The only thing inside that certificate is a link to the
   CP/CPS document and you know they're supposed to theoretically, ok, they're
   supposed to read that document and understand what the CA is doing, what
   are their practices and policies, and decide whether to connect to that
   website or not by trusting or not trusting that CA. And having an external
   document that is not referenced or you know being consistent in the same
   CP/CPS, it's it's not going to be very

- Tadahiko - people want more agility and if they don't have enough time
   like why not treat them differently?

- Jeremy Rowley - I also think that would violate perhaps the Chrome
   policy which requires a single document CPS document to describe that
   dedicated hierarchy, so trying to split the CPS that way ends up getting
   you into more compliance issues as well because of that Plus, you know,
   just the various links and expecting relying parties to go and follow all
   those different links to see things just makes it too confusing, so I think
   if we're gonna really. Do something about this, it'd be better to do more
   what Dimitris is saying, which is say, this is what we try to do or and
   Aaron, this is a descriptive version of what we're doing. You know, minor
   variations might exist, but having a separate document just complicates
   things and creates policies with the current language on the root program's
   requirements.

- Chris Clements (Chrome) - Yeah, to clarify the Chrome Root program
   policy, we do require a combined CP/CPS for applicants, but we explicitly
   state that we do not prohibit applicants for maintaining additional
   documentation that can be considered authoritative by other stakeholders.
   So you could have other documents, but we're gonna look at the CPCPS.

- Daryn (Apple) - So I'll be the 1st to say I really like having a
   CPCPS because it only means I have to update and manage one document
   instead of two or, you know, 20 in my case. But I will say that combination
   I think is part of the driver that's causing this exact problem. I'm
   relatively more recent to the public space, but I've been in CAs for a
   while, and historically, the CP was the policy documentation that you
   didn't break or you ended up going before the tribunal. And the practices
   were the things that when you screwed something up in that document, you
   stuck it in patch notes and moved on.

- Dimitris - Can you repeat that?

- Daryn - So the certificate policy document, which if you look at our
   BR's section 1.2, our BR's declare themselves to be a certificate policy
   document. If you messed up something that was in your CP for your CA, and
   this was back when I worked on internal CAs. That was something that you
   got for the parliance got called before the tribunal. That usually meant I
   had to meet with a bunch of managers. I had to explain what was our
   incident report process is very similar except there was a little more
   yelling, but if you messed up something that was in your CPS, that was a
   practice statement. This is what we were trying to do. You put a note in
   your next patch notes and you moved on. It wasn't you broke your policy
   because you were off by a second. It was, this is what we're trying to do
   and now we made a mistake. It was our best practices. And so coming here
   and we're saying this is one now combined document CP and CPS, we now end
   up having to treat the entire thing, every individual practice statement
   like it is policy, and when we're off by a second, we end up filing these
   big incidents that when we talk about having an external document or when
   we talk about having something that has a more stringent control versus
   being more flexible. I think we already had that and we've just moved away
   from it. And so now we're trying to create a solution for the problem that
   we've already accepted.

- Dimitris - Well, from my recollection, I remember things exactly the
   opposite. Like, the CP indeed is a policy, but it is a more like, what are
   we trying to do? It answers the question of what are we doing? Like, hey,
   we want things to be secure, great, that's a policy statement. The CPS
   answers the question of how you're meeting that. And that needs to be more
   detailed, but you need to describe exactly your controls, how you're doing
   it, you know, the, the dates and seconds and and and all those details,
   they are usually part of the CPS, at least that's part of our previous
   conversations in the in the cab forum. And when we try to identify whether
   the BR's are a CP or a CPS, we're actually having a very hard time putting
   it either as a CP or as a CPS because it does describe how CAs should do
   some things like in detail. Yeah, so that's why that's why we decided to do
   a CPCPS to avoid all this confusion.

- Jeremy - Well, and that's one reason that we've said before. Talked
   about before the policy is actually the brs. That is a policy document. It
   tells you what you need to be doing and your CPS describes how you're
   implementing it. I would also say though, I disagree with your history
   there because when the BRs 1st came out, you did have many CAs who had put
   per the BRs as almost their entire CPS. In fact, one CA did do exactly that
   and said, my CPS is the brs, right? That was Eddie nig. So, we have since
   moved away from that and as Tim said you have to be more specific in your
   policies about that and that has created this very situation where you
   have, differences between what your CPS says and the brs unintentionally,
   whereas before if you said, I do everything that's in the brs, you never
   had that problem because your CPS was one line. So just historically
   speaking, we've moved more towards the detailed CPS's over over previous
   versions.

- Jaime Hablutzel (Wisekey) - actually this was for doing a question. I
   don't know if you could point out some real exploitable security problems
   that could arise from a certificate being issued compliant with the BR's,
   but non compliant with the CPS, with the own CA CPS. Are there any examples
   of real security problems? Because in my opinion, if there are not real
   security problems because the BRs are already covering From the
   main security staff. A 30 days revocation timeline will be, will sound
   appropriate, but just my opinion.

- Dimitris - does anyone want to comment on that? Aaron?

- Aaron Gable - apologies that I'm not responding directly, I'm
   responding to something a little bit earlier, To me, the great innovation
   of the combined CPCPS is that a combined CPCPS is basically just a CPS with
   the addition that the CP is the sentence at the top in section 1.6 or
   whatever that says we incorporate by reference the entirety of the baseline
   requirements and per upcoming root program requirements, we incorporate all
   of those various other individual root program requirements, right? The
   baseline requirements are a CP. They are the CP that governs the web PKI.
   All of the relying parties have their own CP called their own root program
   requirements, which all incorporate the baseline requirements, and each of
   those CPs governs not the web PKI, but the Firefox PKI or the Chrome PKI,
   and the CPS is the only document that the CA should actually have to
   maintain saying this is how we comply with those requirements. And so
   that's what we do now. We issue a combined CPCPS where the CP portion is,
   these are the CPs we comply with. They are incorporated herein by reference
   and the rest of it is a CPS describing how we comply. I think that is
   really valuable. I think that maintaining separate, having every CA
   maintain a separate CP and CPS document is kind of ridiculous when all of
   these CAs are operating within the same PKI and it's the PKI that sets the
   policies,the CP, having every CA maintain their own CP was historically an
   exercise in copy pasting the brs, becoming out of date with the brs,
   maintaining diffs on top of the brs, things like that, which I think
   brought little to no value to the web PKI as a whole. I would actually be
   completely ok with the web pki saying CAs don't need to maintain a CP at
   all. The CP is the brs and the individual requirements of all of the root
   programs that they participate in and their CPS must comply with whatever
   those cp's say, the combined CPCPS thing feels like just a a shortcut, a
   loophole to effectively live in that world.

- Dimitris - I see a lot of agreement in the room for what you say,
   Aaron, but Jeremy also has a comment.

- Jeremy Rowley - Oh, I wanted to absolutely agree there and say that's
   a hundred percent my view. The one argument that always comes up in this
   conversation is that if you have 3rd parties that are interoperating with
   the CA that are performing part of the delegated 3rd party functions for
   the CA, then they need a CP as well, which is the one case where it's
   valuable for the CA to have a CP, right? I think for simplicity it's better
   just to have them look at the PRs as well and look at the CP CPS, but
   that's, that is the argument always that CAs need a CP, but there's so few
   delegated 3rd parties at this point, in the CA, in the web PKI world that
   I think the benefit of having a single CPS for server certs outweighs the
   benefit of having a CP that may impact the delegated 3rd party.

- Dimitris - Right, so just to close my slide, this is my last slide so
   for community feedback, right? So I I did touch upon that about relying
   parties that may have relied on the CPS with, you know, using the
   certificates. And again, just to rephrase the just to summarize the relying
   parties will know the exact revocation timeline for the specific CPCPS
   deviations that are otherwise allowed by the, the tls br's before relying
   on a certificate. So with that kind of closes the gap and counters the
   argument that relying parties would effectively expect the certificate to
   be revoked within five days. Well, it's going to state that for some cases
   that's not going to happen or it's going to be different the timeline.
   Yeah, so that was that's the end of this, this presentation and this
   discussion. I don't know, at some point we need to agree to either propose
   a ballot and see what happens. We may not have 100 % consensus for all
   members and we might need to just put it up on a vote since we have been
   discussing this for quite some time. I think it makes sense to at least
   attempt a ballot and, you know, hopefully it will pass, but if it fails,
   we're gonna put it in bed for good. So, any final comments before we break
   for coffee?

## Availability of resources made available to the public (especially selective blocking)

- **Presenter:** Dustin Hollenback

- **Minute taker:** Stephen Davidson

Discussion of proposed text at
https://github.com/cabforum/servercert/compare/main...dustinhollenback-apple:servercert:patch-3

Dustin described issues that CCADB and root programs had accessing
Repository resources via automation. The draft introduces requirements to
reduce artificial boundaries to access to these resources, requiring CAs to
disclose any limits that do exist. The draft already includes feedback
from the listserv.

Stephen Davidson said that DigiCert had a similar pull request and was
willing to pull that back in favor of this discussion. He questioned
whether rate limiting software routine could support HTTP 429 errors.

Wayne Thayer said that some of these requirements might be difficult to
enforce when CDNs are used. CDNs are nimble and seek to allow the maximum
traffic, but may rapidly apply rate limits across multiple factors should
they sense threats. He said a simpler approach might be to require CAs to
enable specific root programs/CCADB access. Dustin said it would be
difficult to identify IP ranges for Salesforce.

Trevoli Ponds White said that it would be useful to know more about how
often root programs/CCADB require access, and pointed out that Salesforce
might get rate limited for reasons other than CCADB.

Dimitris Zacharopoulos said that it might not be desirable for CAs to be
required to describe their rate limit functions as it could provide
advantage to adversaries. Wayne said a better approach might be to
describe the desired outcomes.

Matthew McPherrin spoke in favor of the proposed change from 24x7
availability to continuous availability, or a service level objective
(although that would presumably drag along a monitoring requirement).
Roman Fischer said that the European rules require a self-declaration from
a CA for such availability.

Dustin said that he will take the feedback and provide an update to the
mailing list.

Martijn Katerbarg requested that the draft be made as a PR to facilitate
commenting. Trev said that the text as it is may not solve the defined
problem of ensuring access for compliance automation, but would comment
online.

## Attendance
Tim Callan (Sectigo), Nome Huang (TrustAsia), Hogeun Yoo (NAVER CLOUD TRUST
SERVICES), Jun Okura (Cybertrust Japan), Lorey Spade (Amazon Trust
Services), Kateryna Aleksieieva (Certum by Asseco), Janet Hines (Viking
Cloud), Jeff Ward (Aprio), Sooyoung Eo (NAVER Cloud Trust Services), Iñigo
Barreira (Sectigo), Nate Smith (Godaddy), Alvin.Wang (Employee), Matthias
Wiedenhorst (ACAB'c / TÜV NORD CERT GmbH), Luis Osses (Amazon Trust
Services), Dustin Hollenback (Apple), Eric Kramer (Sectigo), Eric Kramer
(Sectigo), Rishabh Goswami (GoDaddy), Quentin Boyer (SSL.com), Nate Smith
(Godaddy), Scott Rea (eMudhra ), Sandy Balzer (SwissSign AG), Pedro Zavala
(IdenTrust), Mats Rosberg (KeyFactor ), Sven Rajala (Keyfactor), John Mason
(Microsoft), Andreas Henschel (D-Trust GmbH ), Corey Bonnell (DigiCert),
Peter Miskovic (Disig, a.s.), Raffaela Achermann (SwissSign AG), Nick
France (Sectigo), Gregory Tomko (GlobalSign), Rob White (GoDaddy), Lorey
Spade (Amazon Trust Services), Luis Cervantes (SSL.com), Dimitris
Zacharopoulos (HARICA), Sandy Balzer (SwissSign AG), Lora Randolph
(Microsoft), Masaru Sakamoto (Cybertrust Japan), Rollin Yu (TrustAsia), Ben
Wilson (Mozilla), Eric Kramer (Sectigo), Kenji Nakada (JPRS), Adam Fiock
(BDO USA), Tadahiko Ito (SECOM), Thomas Zermeno (SSL.com), Jaime Hablutzel
(OISTE), Tobias Josefowitz (Opera), Gurleen Grewal (Google Trust Services),
Peter Mate Erdosi (Crowe FST Audit), Brittany Randall (GoDaddy), Andy
Warner (Google (GTS)), Jeff Ward (Aprio), Roman Fischer (SwissSign AG),
Rebecca Kelley (SSL.com), Dustin Ward (SSL.com), Sean Huang (TWCA), Lucy
Buecking (IdenTrust), Daryn Wright (Apple), Wayne Thayer (Fastly), ONO
Fumiaki (SECOM Trust Systems), Janet Hines (VikingCloud), Karina Goodley
(Microsoft), Trevoli Ponds-White (Amazon Trust Services), ChyaHung Tsai
(TWCA), Steven Deitte (GoDaddy), Chris Lu (TWCA), Tim Crawford (WebTrust ),
Chris Czajczyc (Deloitte), Chris Czajczyc (Deloitte), Stephen Davidson
(DigiCert), Enrico Entschew (D-Trust
