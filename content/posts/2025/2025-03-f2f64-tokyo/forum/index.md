---
author: Dean Coclin
date: 2025-03-27 00:00:00
tags:
- Forum
- Minutes
- Face-to-Face
title: Minutes of the F2F 64 Meeting in Tokyo, Japan - Forum-level, March 25-26, 2025
type: post
---

# Day 1 Tuesday, March 25, 2025

## CA/Browser Forum level Meeting
  
### Attendees 

_(Aggregated participants physically present and remote from days 1 and 2)_

Aaron Poulson – Amazon Trust Services, Adrian Mueller – SwissSign, Alison Wang – TrustAsia, Andrea Holland – VikingCloud, Andreas Henschel – D-Trust, Arnold Essing – Telekom Security, Atsushi Inaba – GlobalSign, Ben Wilson – Mozilla, Brian Holland - Sectigo, Brian Hsiung – Sunrise CPA, Brianca Martin – Amazon, Brittany Randall – GoDaddy, Bruce Morton – Entrust, Chad Dandar – Cisco, Chris Clemens – Chrome, ChyaHung Tsai – TWCA, Clemens Wanko – ACAB’c, Clint Wilson – Apple, Corey Bonnell – DigiCert, Daniel Jeffrey – Fastly, Dean Coclin - DigiCert, Dimitris Zacharopolos – HARICA, Dmitry Sharkov – Sectigo, Dustin Hollenback – Microsoft, Edwin Zhai – TrustAsia, Hans Metsoja – Opera, HanYong Park – NAVER Cloud, Hazhar Ismail – MSC Trustgate, Hideki Kobayashi – KPMG Japan, Hiroki Kastubi – JPRS, Hisashi Kamo – SECOM, Hogeun Yoo – NAVER Cloud, HuckHai LIM – Baker Tilly, Inigo Barreira – Sectigo, Iori Konto – Cybertrust Japan, Jaime Hablutzel – WISeKey, Janet Hines – VikingCloud, Jeff Ward – Aprio, Jeremy Rowley – DigiCert, Jieun Seong – Ministry and the Interior and Safety, Korea, Jinhwan Shin – Deloitte Korea, Joanna Zhu – TrustAsia, JP Hamilton – cisco, Jun Okura – TrustAsia, Kateryna Aleksieieva – Asseco, Kenji Nakada – JPRS, Kenji Urushima – GobalSign, Konno Ayako – SECOM, Lilia Dubko – CPA Canada, Luis Cervantes – SSL.com, Mahua Chaudhuri – Microsoft, Marco Schambach – IdenTrust, Masaki Shimaoka – SECOM, Masaru Sakamoto – Cybertrust Japan, Masatoshi Shigaki – KPMG Japan, Masayui Suzuki – KPMG Japan, Mats Rosberg – KeyFactor, Matthias Wiederhorst – Nord.de, Michael Slaughter – Amazon, Michal Malinowski – Certum, Mitsuyoshi Tamura – Cybertrust Japan, Mohit Kumar – GlobalSign, Nate Smith – GoDaddy, Naveen – eMudhra, Nick France – Sectigo, Nico So – CommScope, Nome Huang – TrustAsia, Oliver Lien – TWCA, Ono Fumiaki – SECOM, Puja Seghal – Microsoft, Rebecca Kelley – SSL.com, Renne Rodriguez – Apple, Rich Smith – DigiCert, Rollin Yu – TrustAsia, Russ Housley – Vigil Security, Ryan Dickson – Chrome, Sawada Takashi – SECOM, Scott Rea – eMudhra, Sooyoung Eo – NAVER Cloud, Stefan Kirch – Telekom Security, Stephen Davidson – DigiCert, Sven Rajala – KeyFactor, Tadahiko Ito – SECOM, Taro Momosaki – Toyota Tsusho, Thomas Zermeno – SSL.com, Tim Callan - Sectigo, Tobias Josefowitz – Opera, Trevoli Ponds-White – Amazon, Tsung-Min Kuo – Chunghwa Telecom, Wayne Thayer – Fastly, Wendy Brown – FPKIMA, Xiu Lei – GDCA, Yamian Quintero – Microsoft, Yannick Thomassier – Certinomis, YeongHo Lee – Deloitte, Yoshihiko Matsuo – JPRS, Yuma Makino – Toyota Tsusho Systems, Zurina Zolkaffly – MSC Trustgate.

- Meeting agenda approved
- Meeting minutes of March 13, 2025, approved
- Minute takers assigned
- Future F2F meeting locations tentatively announced.



### Guest speaker presentations

- [Dealing with Temporary Restraining Orders - Brian Holland (Sectigo)](1-CABF%20-%20Dealing%20with%20TROs%2020250325.pdf)
- [Planning for Post-Quantum Cryptography - Russ Housley (Vigil Security, LLC)](2-CABF2F64_RussH_PQC.pdf)
- [OPEN MPIC - Dmtry Sharkov (Sectigo)](3-DSharkov_CABF2025OpenMPIC_30min.pdf)



### Panel Q&A with all guest speakers

**Moderator:** Dean Coclin (Digicert)
**Minute taker:** Tim Callan (Sectigo)   
**Minutes:**  

Michael Slaughter (Amazon)

- What were the lessons from going from SHA-1 to SHA-2?

Russ Housley (featured guest speaker)

- Make sure purchasing people know it's coming.
- Key players bought millions of dollars’ worth of smart cards right before we were due to turn it off.
- Purchasing people didn't know what was going on.
- Planning needs to happen real soon about if you are going to do a composite root or a pure root.
- We are getting conflicting guidance from different governments.
- NSA is very interested in pure PQC.  BSI (Germany) is demanding composite.
- Even allied governments are offering opposite advice.
- The how-urgent-is-it political part will be just as complicated.

Dean Coclin (DigiCert)

- Last time weren't there a lot of people using WebPKI certificates for other use cases like ATM machines.

Russ

- Certification practice may help, but I don't think people are turning customers away outside the specs.

Wayne Thayer (Fastly)

- If you scope it down to public TLS, has the hybrid/composite decisions been made?
- If the standard is close to being finalized, is CABF ready to start working on this

Russ

- TLS - handshakes is dealt with
- Signature isn't such a hurry.  For signature algorithms you have a whole lot more time.  I would wait a while and see how things are shaking out for signatures.
- The exception is the roots.
- The deployment is you have to get out the PKI at least in test certificates early.
- If you don't have a test environment where you can actually get a hold of the chain, you delay product development.
- Get the roots going in the test space soon and get them into the trust stores.

Adrian Mueller (SwissSign)

- What about the other use cases like S/MIME or Code Signing?

Russ

- S/MIME works in a very straightforward way to sign multiple times.
- The difference is the key management certificates are needed.
- Here you need the roots in to get the post-quantum protection.

Wendy Brown (FPKIMA)

- Are ML KEM certs signed with ML-DSA?

Russ

- Yes.

Clemens Wanko (ACAB'c)

- When I as an auditor look at MPIC, how do these different pieces of software ensure they operate in the way they are intended to and as the auditor has reviewed.  Evidence of integrity protected operation across time.  How is this guaranteed?

Dmitry

- How do you ensure this is compliant and auditable?
- That largely falls on the CA deploying it.
- The code is verifiable.  At that point it's a question of your deployment of it.

Clemens

- But if you run it over time, how do we ensure over time it's unaltered at runtime?

Dmitry

- It's the same way you do with your current software.

Clemens

- That is one of the questions we will be asking. I'd like to hear about how you think that can be ensured. This is important to us.

Dmitry

- Let's talk offline.  It is on someone else's infrastructure.

Clemens

- Our viewpoint is that independent of the infrastructure you're running it, we have to be sure the software remains as it was programmed and configured.
- We guard the outside infrastructure as insecure.

Dmitry

- You mean like a checksum or something like that.

Trevoli Ponds-White (Amazon)

- You could use code signing with Lamda.

Dimitris

- We had some challenges using Lambda, especially when some subscribers had ipv6 only DNS servers.  We'd like support for that.
- What do we do with DNSSEC verification?  How do we know there are multiple perspectives?

Dmitry

- No DNSSEC was in my script when I kicked it off.
- If you use Lambda by default, the resolver does not support DNSSEC. I think the same applies for Google Cloud.

Jaime Hablutzel (WISeKey)

- Have you considered extending the Open MPIC API specification for digitally signing the response?

Dmitry

- There was some thinking around that.  For self-hosted we didn't think it was necessary to bite that off for the initial release.



JP Hamilton (Cisco)

- You focus a lot on US law.  We have a lot of international CAs.

- Is the suggestion we should add some kind of language to our audit requirements?  How do we do that in a way that can be measured to ensure compliance?

Brian

- The requirements in the BR are pretty solid.  In most jurisdictions should stop a TRO.  They never go to the court in this case, and my guess is the legal team had no idea there was a contract granting the right to cancel these certificates.
- The real issue is how do we make that known?
- I think there are a few ways to do that.
- I don't think that varies drastically across jurisdictions.
- Once we get into a lawsuit, the law starts to diverge more.

JP

- In this case, was DigiCert able to respond?  They weren't aware immediately . There is still a process.
- They were just trying to buy time. Effectively they got the time with the TRO.

Brian

- That's why I was suggesting a requirement that CAs have to seek to dissolve.
- In this case it wouldn't have done anything, as that takes at least two days under federal rules.
- But on the other hand, the judge would not be happy to learn there was a contract that went the other way and it impacts the entire internet.
- It would have a holistic benefit, even if it doesn't change the case.

Puja Seghal (Microsoft)

- Should that be added as a reminder in revocation emails that there is a signed contract.

Dimitris

- The argument is once the TRO is out, there is little the CA can do.
- We have to do what we can to prevent the TRO.
- Like in this case, they would probably hide that information from their lawyers.  Their intent is to get a successful TRO.
- I find it hard to educate every court in the world about WebPKI.

Brian

- At least in the USA, the lawyers have to certify the pleadings, and somebody from the company has to certify that everything is true and correct.
- If they know otherwise and the CA files a motion to dissolve, may be hauled into court for contempt.
- It's not a light exercise to say something's true and it turns out not to be true.
- The lawyers will not file if they know it's not true.
- If the client lies to the lawyers, that client might be in trouble.

Leo Grove (SSL.com)

- Would it also be helpful for individual CAs and CABF to publish content pieces to explain these things?  Here are your responsibilities as a subscriber, here are our responsibilities as a CA.

Brian

- I think so.
- The more we teach the subscribers about how this works and what they need to be prepared for... What if there is a key compromise?  If they aren't ready to move quickly, they will have problems.
- We need to do what we can to get Subscribers to change behavior.
- My team negotiates these contracts all day long, and we're discussing the contractual obligations with lawyers who don't understand PKI.

Tim Callan (Sectigo)

- How do we make sure our MPIC perspectives are far enough apart?

Dmitry

- Yes, you have to be careful about this.
- There is not really easy solution for this.
- Put together a configuration file that works for you and then make sure it's valid.

Dimitris

- Russ, determining if a hybrid or composite hierarchy depends on certificate consumers.
- Would it be preferable to do both and have consumers choose or determine ahead of time what consumers want?

Russ

- There is no simple answer. US government is proposing pure PQC.  NIST is trying to be a little more accepting of what the industry wants.
- BSI is trying to do the opposite. There is no way to stand up a root that meets both of these policies.

Dimitris

- So you're saying we will be influenced by these policies.

Dean Coclin (DigiCert)

- Is there a Venn diagram of these standards and the intersections of those standards.  (Answer: PKIC published such a diagram)

Russ

- We had a side meeting discussion at the IETF last week to share direction from governments and it was all over the map.

Marco Schambach (IdenTrust)

- Brian, if a CA has legal language in the subscriber agreement, there is language there provisioning that a CA can revoke at any time for any reason.  If the subscriber's lawyer misses that, if the CA does not comply with the TRO, are they liable.

Brian

- Once the order is issued, we have BR requirements to comply with local laws.  Once we have a valid order, we would have problems if we revoke, even if the TRO was improperly granted.

Daniel Jeffrey (Fastly)

- Brian, were you trying to say that part of the value of trying to dissolve the TRO, my understand is that sets of a precedent that other judges will be able to find before they grant a TRO.  By having the previously argued and recorded TRO resolution, they have something to look at.  Is that right?

Brian

- Yes, and it comes in three flavors.
- Some opinions are published, so a judge might get so mad having read the motion for TRO and motion to dissolve, they write an opinion that gets published.  They may issue and opinion or order that is unpublished but is available electronically.  Or a judge might get mad enough that they talk to the other judges.  The judges talk to each other in an individual court.


### Mozilla Root Program Update  

**Presenter:** Ben Wilson (Mozilla)  
**Minutes:** Dimitris Zacharopoulos (HARICA)  
**Presentation link:** [Mozilla Root Program update](4-March-2025-Mozilla-News.pdf)  
**Discussion outside the presentation:**  

Question from Aaron ATS: In regards to the third-party assessment for mass-revocation plans, is external to the organization or internal team with sufficient independence that can provide that report?

Ben: He would like to know what the degree of independence is. In larger companies there is usually an independent company under the same structure, and that would be acceptable. Operational independence must be sufficient. Demonstrate feasibility, continuous improvement. It must be independent of the CA Operator.

Aaron (ATS): As far as the actual documentation and supporting evidence, has it been defined by Mozilla or is it forthcoming?

Ben: It is forthcoming. Will check the deadlines.

Wayne: How is Mozilla going to force the requirements for third-party attestations?

Ben: How will checking happen?

What will the "penalties" look like? Mozilla bugs will be opened. They don't expect to collect all documents but will accept some sort of attestation that the policy is covered properly, well documented, tested, incorporated feedback to improve. It starts June 1, 2025 but Ben will start checking on June 1, 2026.

Wayne commented that it feels like re-inventing the wheel. It would be preferable It questions if CAs would need to have separate engagements rather than using existing engagements and get an attestation letter that the CA adheres to the BRs.

Mahua (Microsoft): Automation for Certificate Issuance for new Root CAs

If it hasn't been approved by March 15, 2025, it will need to adhere to the same properties.

Clemens: Supports what Wayne must have. It will reduce the questions they have received by CAs.

Would that require new audit cycle?

Include in the audit attestation letter and add a sentence about this mass-revocation plan.

Ben confirms that he would expect a statement whether in an AAL or in a report in an independent assessment party. He would prefer it in the TLS BRs and making it an annual requirement.

It would make sense to check in the following years whether we cured the problem and perhaps not needed to test every year.

Brittany (GoDaddy): Does it need to be a public attestation or between Mozilla and the CA?

Ben: Mozilla prefers things to be done publicly. It would be similar to what gets public in CCADB and in WebTrust and audit reports. 

### Google Root Program Update

**Presenter:** Chris Clements and Ryan Dickson (Google)  
**Minutes:** Rebecca Kelley (SSL.com)  
**Presentation link:** [Chrome Root Program update](5-CABF%20F2F%2064%20Chrome%20Browser%20Update.pdf)  
**Discussion outside the presentation:**

All updates are on State of Policy, Moving Forward Together, and other PKI related happenings.

State of Policy:

Chrome updated their Root Program Policy on Feb 15th. It was effective immediately, but most requirements were dated for the future, or they were specific to applicants only. Chrome previewed most of the policy changes at the previous F2F, and additionally shared a pre-flight process of the changes in the upcoming policy with CAs that are included in the Chrome Root Store for feedback. To the CAs that did not participate, they hope you consider participating next time.

Scope of Updates:

Chrome previewed some of the Policy 1.6 changes at the F2F 63, noting their intent to sunset non-serverAuth dedicated hierarchies from the Chrome Root Store. The policy describes the phase-out from two perspectives. 1) Applicant hierarchies are expected to only issue leaf certificates containing the ServerAuthEKU 2) Existing hierarchies need to transition off non-ServerAuth use case by June 15, 2026, otherwise they will face gradual removal from the Chrome Root Store. It's important to note that these changes do not restrict CA Owners from supporting clientAuth use cases, but they must do so from roots that are not included in the Chrome Root Store, whose sole focus is on website authentication.

Chromium Transition:

Chrome is moving their web presence away from chromium.org and requiring applicants to disclose a Markdown formatted version of their policies. The Chromium policy is still considered authoritative, however Chrome intends to deprecate that version in favor of the GitHub version.

Unused Roots:

Chrome has noticed several unused CAs that have existed in the Chrome Root Store for several years. Chrome defines a root as "unused" if it is not actively issuing subscriber certificates through its direct hierarchy. Chrome has been in contact with, and continue to be in contact with, the CA Owners whose roots are unused. During these discussions, Chrome has identified and planned several CA certificates for removal from the Chrome Root Store. Chrome is asking CAs to be proactive and to contact the Chrom Root Program if they are aware of unused roots corresponding to the CAs organization.

Moving Forward Together (MFT):

MFT turned three (3) this past month. For the CAs that are not familiar with MFT, this is the Chrome vision of the future. MFT is focused on themes that they feel are essential to further improving the Web PKI ecosystem going forward, complementing Chrome's core principles.

Chrome introduced their MFT "Chapter 2".

Chrome provided updates to their new Secure Time feature, other new tools that will allow users and enterprises to interact with the Chrome Root Store, Chromes CT Policy, along with a list of future updates that CA Owners can expect.

Trevoli: (Comment) Thank you for your presentation. I know you feel like you just regurgitated the policy you just sent out, but I do find this valuable, and to hear you reiterate and add color to it, but I'm sure you feel this could have been an email.

Ryan: We have these F2F events three (3) times a year, and there are probably better things we could be talking about. As a root program we present every F2F, but we feel that there are others that are not a part of the root programs and have great ideas. Those great ideas can result in meaningful changes, and should find ways hearing about those ideas, instead of committing hours to a rehash of things that have already happened.

Dimitris Z.: I would like to follow up about presentations in general. I don’t think we have ever turned down a request from the CAs for presentation. There are generally enough slots to cover every case. If there is not a major update for a browser, you can condense it down to 15 minutes.

Tim Callen: Does every CA understand how to get on the agenda and that they can get on the agenda? Is there a perhaps trepidation getting on the agenda, considering everyone is looking at you? Maybe as a group, we should talk about how to encourage that kind of participation.

Ryan: We present enough, but I am still nervous when I present. I am still uncomfortable when I present. And I expect anyone that presents is nervous about it. Maybe as a group, we can work around that difficulty because we are all human. We can focus on sharing ideas, like breakout groups. Maybe a smaller audience and open discussion would be more comfortable. We recognize there are other ideas and recognize there are other contributors. We feel everyone should have a chance for their opinions to be heard.

Karina: As a suggestion, it could be useful to hear from CAs to talk about key initiatives that we are doing or finishing. The CAs don’t have to come up with a topic, but we could provide one for them to discuss how they are working these issues. Having these F2F conversation help the browsers implement things as well.

      
### Apple Root Program Update

**Presenter:** Clint Wilson (Apple)  
**Minutes:** Corey Bonnell (Digicert)
**Discussion:**  

No major changes or announcements to the Policy.

The scope of the Apple root program has greatly expanded to encompass other PKIs. Currently exploring

changes to staffing of the Apple root program team. Plan to include full-time position focused on WebPKI root policy. The dedicated role will address new challenges such as PQC.

Tim Callan: What is the timing on this change?

Clint: Some changes have already occurred, and others are still in progress. Public-facing

changes will be seen between June and August.  
      
### Microsoft Root Program Update  

**Presenter:** Karina Sirota Goodley (Microsoft)  
**Minutes:** Mahua Chaudhuri (Microsoft)  
**Presentation link:** (Not provided)\
**Discussion outside the presentation:**

- Microsoft Root Store Team - Karina Sirota Goodley, Lora Randolph, Tahmina Ahmad, Tim Huff 

- Effective May 31, 2025 - All publicly trusted TLS certificates must be logged to a CT log that complies with RFC 6962, "Certificate Transparency". Certificates issued must include at least 2 SCTs from distinct CT logs that were qualifies, usable or read only at the time of check. 

- What's Next   
  - Moving to using CCADB for new root requests  
  - Updating policy and systems to be complaint with eIDAS 

Adrian M (Swiss Sign): What does this mean for QWACs? 

Will wait to see how it lands and will be updated to be compliant.

Dimitris Z (HARICA): Regarding the recent change of OCSP being optional, have you received any feedback/issues from CA owners ?

No feedback other than positive from CA owners now that OCSP is optional

### CCADB Update  

**Presenter:** Ben Wilson (Mozilla)  
**Minutes:** Aaron Poulsen (Amazon)  
**Presentation link:** [CCADB Update](6-CAB%20F2F%2064%20CCADB%20Update.pdf)  
**Discussion outside the presentation:**  

No questions or discussion following Ben's presentation.
      
### Q&A Root Program 

**Moderator:** Dean Coclin (Digicert)  
**Minutes:** Tim Callan (Sectigo)  
**Discussion:**    

Tim Callan (Sectigo)

Clint, what's the timing on this change?

Clint Wilson (Apple)

It's actually lots of things, some of which are already done.  In terms of externally visible changes, I am hoping for June but realistically it's more likely to be July or August.

Adrian Meuller (SwissSign)

What does this mean for QWACs?

Karina Sirota Goodley (Microsoft)

We will remain fully compliant with the laws.  It depends on what they are.

Dimitris Zacharopolos (HARICA)

Recently you made OCSP optional.  Did you receive any feedback or have any technical problems?


Karina

No, other than positive from CAs who are glad it is optional.

Trevoli Ponds-White (Amazon)

Are there any concerns that many of our policy decisions are driven by a handful of anonymous people on the internet?

I would expect a lot of people are looking at these things.  But instead, there are five to eight anonymous people on the internet.  Some of the people like Mike Shaver I guess are real people, but a lot of them are made up names.

Some accounts are made that day just to comment.  How do we know this is a real person?

As we are seeing CCADB across multiple browsers, have we thought about any kind of vetting of the feedback we are getting?

Ben Wilson (Mozilla)

I first ask myself, does the comment (not the person) make sense?  Can I detect that the person is starting to rant.  Are they using AI to generate a comment?

Who is making the comment is a secondary concern.

Trev

That is part of it.  Those are good analyses.  I just want to make sure we're not spending a bunch of time. A lot of the improvement we are circling on, I really like some of the improvements to Mozilla policy.

A lot of the suggestions are being drive by four random loud people, and we don't know why.

I want to make sure that we are really weighing that and not just responding to squeaky wheels.

A handful of angry people who may or may not be the same person.

Ben

I refer to this as the tyranny of the minority.

Dustin Hollenback (Microsoft)

We have a history of ebbing and flowing with the requirements of consumers.  We are getting more and more browser specific requirements.  It seems like it's getting more and more overwhelming to keep track of individual browsers.  It's comparing subtleties.

If the CCADB group can normalize and remove specific requirements and move them into CABF, I would like to see more momentum on that.

Ben

I support an effort to do that.

Ryan Dickson (Chrome)

Dustin, we hear you.  Just last week at the steering committee we talked about CRL requirements.  We want to prevent multiple root program policies saying the same thing in different ways.

To Trev's commentary, in general we encourage participation in Bugzilla.  Anyone participating in good faith should be free to share ideas, regardless of when their account was created.

We have had very few instances in the past three years when we had to remind people of the etiquette requirements.

Speaking on behalf of Chrome, we do our best to review every comment in every bug every week.

I don't think we see discussions in Bugzilla meaningfully change our approach and our priorities.  We try to be as transparent as possible, even when we think they will be unpopular with the community

I recognize that not all root programs have the equivalent of Moving Forward, Together.

I don’t' think root programs are blindly following comments in Bugzilla.

Clint Wilson (Apple)

Dustin, historically we have had browser-aligning ballots.

We do want eventually to bring these things into the BRs.

Where things don't fit into scope of CABF, we haven't had a place to put those.  CCADB gives us an opportunity to consolidate into CCADB.

We draft policies that go through CCADB instead of Apple root program.

We never will get rid of root program policies, but we would like to make it easier to track all the changes.

I imagine there might be tooling we can build.

Trev, I agree it's important not to over-index on a few comments.

For me, I pay less attention to the commenter than what is being said on the face of the comment.

I haven't been aware of this as a problem.  If we have examples of this, I would like to hear more about that.

Trev

Sometimes when we are reviewing an incident, there are some incidents that aren't incidents.  Or the commenters extend the bug past the actual incident.

Occasionally they make up rules, like they were extrapolating new requirements for OCSP.  These things make it harder for CAs to review the incidents and take lessons from them.

How to the browsers weigh when to close out a thing that is opened as an incident when it is no longer an incident or maybe it never was.  After the useful things have been served.

It would be nice to understand how we think about closing out incidents so we're getting value out of them.  And maybe rigor.

Ben

We should take the comments that would tend to conflate incidents with other policy discussion.

But I do not feel comfortable cutting off discourse and discussion.  Maybe we can say this is the rule for when things get pushed to public@mdsp or CCADB.  I welcome something else that helps me feel like I'm not alone in making that decision.

I can do it alone, but it would help do to that more.

With the delayed revocation there was a lot of piling on that happened, but it was for the good.

And I was clear at face-to-face meetings that this was an issue that needed to get resolved.

Ryan Dickson

Ben, I agree that previously we had an issue with bugs staying open seemingly forever.  Now we have a notion of a closure report.

We really do encourage participation in the incident reporting process.  If you have comments on bugs and which bugs should be closed, we welcome that feedback.

We see very limited participation in Bugzilla considering the expansive number of participants, or even the participants on this call.

Getting involved is a great first step.  A comment that a bug should be closed is a fine comment.

Aaron Poulsen (Amazon)

On Dustin's topic, the WebPKI is one of the most complex frameworks for compliance, if only for the constantly shifting requirements.  Some GRCs won't touch WebPKI because it's too complex to stay current.

Ben, your reports are helpful.

I'm not surprised but discouraged that there are a lot of policy failures in your reports.  This could be fixed if we could get requirements from the community.

Staying abreast of root store requirements and incidents takes a lot of time and mental overhead.  If CCADB can help CAs compile and find commonalities, that will go a long way.

Ben

Trending or writing a crosswalk document would take a lot of work.

A browser alignment ballot would be helpful in the short term.

In the long term, a process will help with alignment of compliance dates.

Ryan

On the bug analysis, there is a tool, a Bugzilla API.  You could dump the bugs, and it should give you trends.

On easing compliance, the CCADB updates are intended to help do this.

We are open to feedback on if that is helpful to you and ways to make it better.  Share feedback.

Aaron

What you describe is close to what I'm talking about. It's not as much about all requirements in one document as it is creating the relationship of the similarities for all requirements.  The crosswalking exercise determines the most restrictive requirement, which leaves us with a single requirement.

Trev

I think about how the browsers would make an alignment ballot, you would have to make the crosswalk.  It may be helpful to exist anyway.

The self-assessment is helpful because it's one of the places you see the problem.

Dimitris

Why did Chrome put things into their own root program requirements rather than the BRs.

Ryan

There are CAs that want to be publicly trusted but not in the Chrome program or people who follow the BRs but aren't WebTrust compliant at all.  We don't always want to impose our very specific requirements on the entire community that uses the BRs.

Dean Coclin (DigiCert)

Please comment on Chrome's implementation of ETSI requirements.

Ryan

We fully intend to be compliant.   
        
### ETSI Update  

**Presenter:** Arno Fiedler (Vice Chair ETSI ESI)  
**Minutes:** Clemens Wanko, ACAB'c/TUV Austria  
**Presentation link:**  [ETSI Update](7-ETSI-ESI-CABF-Tokyo-Fiedler.pdf)  
**Discussion outside the presentation:**    

Arno updated on

- the EU Legislation as relevant for CA. Most important to be mentioned here are
  - Network and Information Security Directive (NIS2)
  - EU Cyber Resilience Act (CRA),
  - EU Cybersecurity Act and
  - DORA for all entities active in the banking sector.
-  ETSI Standards: ETSI is currently working hard to support the revised eIDAS2 with all required normative documentation. To mention are
  - baseline ETSI EN 319 401
  - Identity proofing ETSI TS 119 461
  - Certificates including publicly trusted ETSI EN 319 411-1/2
  - further detailed standards on profiles and protocols (see slides).
- EU Certificate Transparency Ecosystem
- developments around the new European digital identity wallet (EUDIW). See here for development status: https://github.com/orgs/eu-digital-identity-wallet/projects/29/views/2

### ACABc Update

**Presenter:** Clemens Wanko (ACAB'c/TUV Austria)  
**Minutes:** Arno Fiedler  
**Presentation link:**  [ACAB'c Update](8-CABF_64_ACABc-Wanko-V1.0.pdf)  
**Discussion outside the presentation:**  

A) New Board was elected:

- Matthias, TUV NORD CERT (Chair)
- Svetlana, Deutsche Telekom 
- Sascha, SRC (Vice Chairs) and

New Treasurer:

- Clemens, TUV AUSTRIA
- Takwa, LSTI 

B) NIS/2 Network Information Security Directive Nr. 2 is applicable now for any Trust Service Provider(TSP)/ CA operating in the EU.

- All TSP/CA according to eIDAS are “important entities”.
- All TSP/CA Qualified TSP are “essential entities”.

National regulations to be released soon. The requirement-set to be followed immediately by CA/TSP is:

- NIS2 (Directive) implementation in national member states legislation (e.g. for TSP/CA based in France: national French legislation on NIS2), ETSI EN 319401 Trust Service Policy aims to cover all requirements
- Implementing Regulation including all Annexes (see slides presented).

C) ACAB´c Audit Attestation Letter / Report Updates

- Key generation report released: must use for ETSI auditors. Please see application notes and get back to ACAB’c in case of any questions. 
- Parked keys report: shall be addressed in Standard Report. An updated report to be released soon (regularly check ACAB’c webpage!)

D) New Mozilla RSP 3.0 requirements on Certificate Mass Revocation: open questions were clarified with Ben@Mozilla. Mozilla RS Wiki will be updated accordingly.

### WebTrust Update  

**Presenter:** Tim Crawford (BDO - WebTrust TF), Lilia Dubko (CPA Canada)  
**Minutes:** Trevoli Ponds-White (Amazon) 
**Presentation link:** [WebTrust Update](9-WebTrust%20-%20CABF%20Tokyo%2064.pdf)  
**Discussion outside the presentation:**

WebTrust Task Force will be looking for new members to expand diversity of perspectives. Enrollment information coming in April 2025.

Registration list for Face to Face 65 will be closed May 1, 2025. Social Event will be on day 1.

### Q&A Audits and Standards

**Moderator:** Dean Coclin (Digicert)  
**Minutes:** Tim Callan (Sectigo)  
**Discussion:**

Adrian Mueller (SwissSign)

EU legislation is very important for ETSI but not every country is not a member of the EU. What is ETSI's policy on this?

Arno Fiedler (ETSI)

This is more a political than legal issue. For example, a few South American countries comply with ETSI Standards.  If Switzerland chooses not to adopt them, that is a political decision. The EU can only mandate inside the EU.

Canada can adopt ETSI standards if they choose.  They are not limited to the EU.

Dimitris Zacharopoulos (HARICA)

If you implement the ETSI standard, it can also satisfy the law. But it doesn't reference requirements from the law. It is supposed to be independent.


**MEETING ADJOURNED**
