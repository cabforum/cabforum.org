---
aliases:
- /2019/11/06/minutes-for-ca-browser-forum-f2f-meeting-48-guangzhou-5-7-november-2019/
author: Jos Purvis
date: 2019-11-06 15:52:20
tags:
- Face-to-Face
- Minutes
title: Minutes of the F2F 48 Meeting in Guangzhou, China, 6-7 November 2019
type: post
---

## Wednesday, 6 November 2019 – Plenary Meeting (Day 1)

### Attendees

Aleksandra Kapinos (Asseco Data Systems S.A.), An Yin (iTrusChina), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST/ ETSI ESI), Atsushi Inaba (GlobalSign), Ben Wilson (DigiCert), Bi XinLong (CFCA), Billy Qing (360 Group), Chorus Li (iTrusChina), Clemens Wanko (ACAB’c/TÜV AUSTRIA), Dai Yeqi (SHECA), David Moeller (Sectigo), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Du Zhiqiang (GDCA), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eva Van Steenberge (GMO GlobalSign LTD), Ewa Skurtys (Asseco Data Systems S.A.), Gao Zhixiong (SCA), George Chew (PrimeKey), Halton Huo (360), Hongquan Yin (Microsoft), Jack Zhang (DigiCert), Jeff Tang (360 Group), Jeff Ward (WebTrust / BDO), Jinta Nakamura (SECOM), Kirk Hall (Entrust Datacard), Lei Xiu (GDCA), Leo Grove (SSL.com), Liao Zhiming (GDCA), Liu Lei (GDCA), Mariko Kusakabe (GlobalSign), Michał Malinowski (Asseco Data Systems S.A.), Mike Reilly (Microsoft), Miwa Yoshida (GlobalSign), Nathalie Weiler (SwissSign), Nick France (Sectigo), Nik Khairul (eMudhra), Ning Yu (iTrusChina), Philippe Bouchet (ACAB’c/LSTI), Przemysław Kościelski (Asseco Data Systems S.A.), Qiu DaWei (CFCA), Ralph Zeng (TrustAsia), Richard Wang (360 Group), Robin Alden (Sectigo), Rollin Yiu (TrustAsia), Scott Rea (DarkMatter), Sun Luwen (iTrusChina), Sun ShengNan (CFCA), Sunny Qiu (iTrusChina), Tadahiko Ito (SECOM), Tim Hollebeek (DigiCert), Timo Schmitt (SwissSign), Tomas Gustavsson (PrimeKey), Toria Chen (SHECA), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo (Chunghwa Telecom), Wang Chunlan (GDCA), Wei YiCai (iFutureCA), Xiao Qiang (GDCA), Xue Yingjun (SCA), Yang Chen (SCA), Yang Yang (SCA), Yang Yaohua (SCA), Zhang Wenlei (SCA), Zhang Yi (CFCA), Zheng Huitao (SZCA), Sissi Lok (Trust Asia), Curt Spann (Apple), Devon O’Brien (Google), Janet Hines (SecureTrust), Niko Carpenter (SecureTrust), Ryan Sleevi (Google), Tim Callan (Sectigo), Wayne Thayer (Mozilla).

### Approval of Minutes from previous teleconference

The minutes were approved.

### Report from Code Signing WG

_Presenter:_ Dean Coclin (Digicert) Bruce Morton (Entrust Datacard)    
_Note Taker:_ Dustin Hollenback (Microsoft)    

There was a working group meeting yesterday, 5-November-2019. The highlights from the meeting were:

- The working group will plan a summit to combine EV and Code Signing baseline requirements into the same document, possibly hosted by Microsoft
- There was a discussion about quantum state cryptography
- The group is discussing code signing validation improvements
- Jason Cooper is working on a few open items

There were no questions for the Code Signing Certificate Working Group.

### Report from Forum Infrastructure subcommittee

_Presenter:_ Jos Purvis (Cisco)    
_Note Taker:_ Andreas Henschel (D-Trust)    

The existing WG is now turned into a Forum subcommittee. An invitation for additional participation to the subcommittee has already been sent

- Jos and Ryan have prepared a ballot (changes are on GitHub) to change the Markdown of the BRs on GitHub which will make it “pandoc friendly”. This will allow the pandoc converter to be able to provide an improved rendering of the BRs in .docx and .pdf formats. This ballot will likely proceed after the cleanup ballot has been voted on.
- The “Markdown ballot” will bring us closer to incorporating the GitHub version as the canonical version of the BRs
- Another goal of the subcommittee is to complete the migration of the WordPress installation from the legacy system to the new hosted environment. We will have to sync the users and content and make the necessary final changes.
- the migration of the mailman list processor and mail services is still in progress with some issues (JosP)
- amazon will give support and Trev will investigate within Amazon and follow-up.
- semi-automated process for subscriptions/removals for members to the wiki mailing lists
- ongoing discussion on an appropriate maintenance window for systems supporting the CA/B Forum and how to avoid this during voting periods
- EtherPad is going to expire Dec 31, 2019 but the Infrastructure Subcommittee could install and use it in future F2F meetings.

### Creation of Additional Groups – Secure Mail

_Presenters:_ Tim Hollebeek (Digicert)    
_Note Taker:_ Leo Grove (SSL.com)    

Topic: SMIME Charter Scope, Identity, and Google Participation

Tim – Scope will not be artificially limited. Scope should all of the activities that are currently covered by the SMIME certs that CAs currently issue. Identity will be within the scope of the WG

Sleevi – If identity is involved, Google may do their own thing. Want to avoid. If guidelines are not exclusive, we can solve that together. Reasonable for CAs to not want to prohibit current practices. The broader this gets, the more difficult it becomes. It’s ok to not preclude identity, but we don’t need to charter the scope. If we do not prohibit identity in the Charter is that something we can work with?

Tim – Jeremy has strong feelings about this. Jeremy on a flight, would like to consult with him. Can we have a call with him in the future?

Dean – Can Google elaborate on the IP issue?

Ryan raised concerns that introducing identity validation, particularly individual identity, could open up broader IP obligations and make it more difficult for Google to engage. Challenges with IP are more pronounced for larger companies/multinationals, because our IP policy also covers Affiliates. Mike didn’t see the same concerns for Microsoft, and Dimitris wanted to know what about S/MIME made it more difficult than TLS. Ryan intentionally did not discuss specific concerns, but said it would be easier for Google to participate without having identity in scope of the initial charter.

Wayne – Frustrated, but understands. If we do phase 1 without identity, it does not solve the problem. We can do it now or later, but the issue will not go away. Would like to move forward. Has anyone drafted the Charter?

Tim – Ben did. Is identity in scope issue may need to be put up for vote

Wayne – Put it on the list. Have a discussion, and move forward with what the majority wants

Tim – Frustrated too. Will work with Wayne

Mike – Will work with Wayne on it too

Sleevi – If the identity is out of Charter, Google can participate. If it takes a year to develop Identity and then include it in the Charter, that allows Google a year to participate. If Identity is included immediately, that would bar Google

Wayne – Phase 1 work on email address validation, then Phase 2 identifies Identity is in scope, will that allow Google to work in the group?

Sleevi – This does not solve the issue

Wayne – We’re going to have to make a decision

Tim – Code Signing and SMIME have overlapping charter, will merge

Sleevi – Agreed

Scott – Question about SMIME vendors. Will have broader net to solicit them?

Tim – Some SMIME vendors are waiting for CABF to make progress before we get more participation. CABF can do some outreach

Dean – charter specifies who can participate. Would be good to have the vendors to participate

Dean and Tim – will do outreach after Charter is done

Dean – What will Google do if we cover email address validation first for Phase 1, and then Phase 2 followed up by identity? Does Google participate for Phase 1 and then “I’m out” during Phase 2 or is there IP review

Ryan explained the ideal outcome was that by the time the WG was ready to tackle identity, a better sense of the obligations could be done. Focusing on e-mail validation helps narrowly scope the IP commitments, making it easier to review and engage, but that the broad scope of identity means substantially more work to participate.

Dean – We need to decide a course of action to avoid repeated predicament

Tim – Wayne, Tim and Mike/Microsoft will come up with a proposed charter

Scott R: How will the group engage the right set of stakeholders etc.? For example we don’t have a lot of email client vendors in the room and it would not only be important to obtain their buy in and feedback, but critical to the process.

Tim H: Just like we did with the CodeSigning WG we will specify how to get the right set of players to the table as part of the Charter

### CA/B Forum Photo Policy

_Presenters:_ Dimitris Zacharopoulos (HARICA)    
_Note Taker:_ Kirk Hall (Entrust Datacard)    

Dimitris noted that the Forum had a discussion in Thessaloniki on this policy and how it would work. He wrote the draft photo policy shown here and also pasted in below:
https://docs.google.com/document/d/1JQ6F40biDjitCyyR3WPSOciJyLRvZRK7mNPcL4UZz4U/edit?usp=sharing

Much of the draft is based on the existing IETF photo policy.

This starts with the simple concept of introducing a column in F2F attendee list where an attendee can indicate a preference of “Photograph Privacy Requested” to tell others the attendee does not want to be photographed. The draft also introduces the idea using ID badges with different colored lanyards to indicate an attendee’s preference, e.g., use a red lanyard to issue “no photo”, and use a dark blue lanyard for the rest.

Dimitris then discussed other provisions of the draft policy – that photographers would be asked to honor the “no photo” lanyards, excluding the Chairs and Vice Chairs who may be photographed. He also reviewed the draft language on taking photos of large groups. Again, it is similar to IETF policy.

Dimitris said there were some differences from IETF policy – in our policy, we state that we may record and stream video, but this is for minute taking purposes only and the images should not be used for other purposes. The rest of the draft policy is very similar to IETF’s policy. IETF policy used the term “labels” – Dimitris was not certain if that meant the name tag or the lanyards. The Forum will use lanyards to indicate which attendees do not want to be photographed.

Dimitris raised the question of whether we have to describe the actual color of the “no photos” lanyard in our policy, and welcomed comments? Add that to the policy, or not? He invited comments from members on the GoogleDoc at the link shown above.

Once we have member feedback on the draft, we can complete the discussion and add the new photo policy to the Forum’s Bylaws in a future ballot.

Ryan stated that IETF does use lanyard color to indicate who is requesting no photos. The IETF policy was introduced about 4-5 meetings ago. Ryan will review the draft policy with Google’s counsel and report back with any comments if appropriate.

Ryan will also try to get an answer for the “attribution” question.

#### Bylaws open issues

_Presenters:_ Dimitris Zacharopoulos (HARICA)    
_Note Taker:_ Robin Alden (Sectigo)    

We have been collecting issues over the years. We have them in a [goodle doc][1]. Dimitris has sent the list a couple of times to the management list, but has had no feedback. Hopes to get opinions and comments from participants for each topic here.

#### Organizations that qualify both as a cert issuer and a consumer (from 2017)

Some organizations meet both criteria. What was originally agreed was that the org needs to select the criteria in which they participate.

Should we allow them to change class? Should there be a waiting period to avoid gaming the system? Dimitris proposed text: encourage more participation. Any members should be able to designate participants in both categories as long as voting category is specifically selected by the member.

e.g. a member that qualifies as a ‘consumer’ later becomes an ‘issuer’, may participate as either, but must select in which category it will vote.

Microsoft, Apple, Google are examples of such members. Does anyone object?

Ryan S: The problem is not the category in which the meat person participates. From past discussion it sounds like the issue is that we want individuals to be able to participate as non-voting members. E.g. Digicert. They have people with skills they would like to participate, but voting is by the member organization – not the individual people. Is that not really the issue we are trying to solve? E.g. Google. Chrome team – consumes, Google Trust Services – issues. Google votes as a consumer. Dimitris: You would expect the GTS team to participate as an issuer, but not be able to vote as Google will decide in which category they will vote.

Other participants – other CAs, ..

Ryan: Perhaps the issuer/consumer distinction is not the pertinent one. There are people from GTS who participate but do not vote. W3C / OASIS / ETSI have 1 vote per org. The organization designates who votes and who are the representatives. Organizations get 1 vote, but individual participants can participate in both categories.

Dimitris: So this could be as simple as designating who is the voting member for each org?

Jos: For larger organizations – complicated as to who can vote. Different reps can play different roles in different working groups. An org can play different roles in different working groups. If you are eligible for more than one role, e.g. Cisco converted, do we think it important that they state up front. Can’t just keep swapping back and forth. I think it is unlikely that it will happen much, so not a great concern. The real problem is reps vs voting.

Ryan: We already have in the bylaws that members must choose their category. Bylaws are silent on ‘swapping’. Tackling the base issue, different groups may have different reps, and different plenary rep.

Dimitris: If a member wants to change category they would have to withdraw and re-apply? – would that work?

Ryan: Don’t know. IP obligations and triggers continue to exist. It may work, worth exploring. Should be a time period between withdrawing and rejoining.

Jos: Rather than withdraw, any change in category – must demonstrate applicability and be approved at next CABF meeting. That may provide just enough delay to avoid ‘gaming’. Don’t need to withdraw. Should be solbable with a very short change to bylaws.

Mike Reilly: I don’t remember having to declare when I joined 2 years ago. If we say ‘I represent Microsoft’ , but …

Ryan: Under today’s rules, anyone with an @google.com email address could vote as Google. Anyone who can post to the mailing list can vote.

Mike: So we should list who can vote?

Ryan: Yes. The caveat would be at the forum level – who participates? Each WG already defines member categories.

Robin: Why is it the forum’s problem to solve. Why should the Forum list individual voting participates? Can’t Members sort this out themselves?

Ryan: The way members sort this today is to simply not allow those non-voting representatives to participate, avoiding the risk of miscast/incorrect votes. How do we allow greater participation without increasing risk?

Robin: I’m not sure we need to address this detail.

Dimitris: Worth examining and addressing. We have already documented this issue by adding the official representative into the ‘registry’. We are using this list for management list inclusion. – not everyone with e.g. a @google.com address.

Mike: So if I take a holiday do I have to designate a replacement?

Ryan: It’s not a single voting rep. Multiple voting reps – just not all. An extra column on the member tracking spreadsheet to track voting or not.

Dimitris: Different page for each Working group to track each separately.

Ben: Do we want to add text to the bylaws, but also having an FAQ to explain the rationale.

Dimitris: I think this needs to be in the bylaws. Designation of voting representation. Always free to add more participants.

Kirk: Who’s responsibility is to track who actually votes? The chair?

Dimitris: Chair or vice-chair.

Trev: (How do we track) who chooses those who can designate voting members?

Ryan: The idea is each voting member can extend the set of voting members. Question that’s in the gray area is what to do about proposing ballots. Could a member propose a ballot and vote against it? Votes not placed by designated voting members will not be counted.

#### Who must sign the IPR agreement? (Ben & Virginia in 2018)

Usually two parties sign.

Ben: In some orgs, the agreement is multi-lateral. Not practical for everyone in the CABF to sign, but could have the chair countersign? Issues in the past over who could sign. When Dean was chair he would do the extra step to see if the signer had the right level of signature authority in the organization.

Ryan: Another point also came up with the application with Hong Kong Post. We have had issues with a CA designating policy but a separate organization operating the infrastructure. WiseKey, FPKI. Who signs the IP greement when it is X organization representing Y organization. Does X sign, or Y, or both?

Dimitris: Who would we expect to sign? – Any contributions would come from the operator but on behalf of the owner. If not sure, ask them both to sign.

Ben & Ryan: yes.

Ryan: That was the interim solution, but we have not yet codified it. Not clear who controls the IP, so both.

Ben: Would we need a definition of authorized signer? – It’s an IPR agreement interpretation, so belongs in the bylaws as a couple of sentences & the other text in an FAQ.

Ryan: It is an agreement made between members, so each member must decide whether the signatories meet their requirements. IANAL. The past suggestion had been to have time in between the submission of the IP agreement and the vote for membership to allow time for the review. Bylaws could say that you can’t be a member unless X signs, but whether X signs is sufficient, is something that members should look at.

Ben: We come across this with interested parties. Could talk about that in the bylaws.

Jos: The implication is that all of the members need to agree that the person signing has the appropriate level of authentication. What happens if someone doesn’t agree. What are the rules for raising an objection, when can we proceed (or not). Can organizations be over-ruled? Is it consensus? We need to figure it out.

Ryan: Some of that is in the bylaws, so we have the process of raising an objection, but no process to resolve conflicts.

Dimitris: Chair asks if the rep has the authority to sign. Only if we get an affirmative answer do we proceed. We consider that to be enough. We don’t verify the individuals. If any members have concerns – talk to your counsels to ease concerns about IP issues. Authorized signers: do we have to add this in our bylaws?

Ben: We can if we would like to. Each member could ask their counsel, but that is a risk determination. Is there a chance that a member could repudiate an agreement if the wrong person has signed? If we attempt to define authorized signer we could take it from what we have documented in the past, but these definitions may be too narrow. Either way would be sufficient, I think.

Dimitris: But if someone discusses with their counsel and a problem is called out – we must address it at that point, but until that point we can continue as we are.

Ben: Yes, we can do that.

#### Concept of member

Did we address this in the last bylaw update?

Ben: It’s an overall concern. We need to have a good understanding of at what point a person becomes a member. I think we have addressed it in the bylaws, so maybe it is addressed.

Ryan: We have not, if only because of that previous (above) discussion. Ambiguities about member representative, etc. If people are keen to resolve – we are happy to align and can tackle this.

Ben: It came up somewhat with the IP policy. You’re right, we do need to work on it, but go back through it and flag instances where we are being inconsistent, where definitions or use is inconsistent.

Ryan: I’m volunteering to take up with Google counsel the 1st and 3rd issue, the clarification of declarations of membership and the voting thing to see if we can proceed concrete language. We’ll still have to work through the other Bylaws issues, to see if we can make changes together, but we can sort that out later. I will take the action to provide concrete language that attempts to resolve that.

Dimitris: Declarations of membership. I think that was the requirement when we changed our governance. Membership now at the WG level.

Clarify declarations of membership. I think that was the requirement when we changed our governance. But I believe we have as a result this issue because every time somebody had to, say, apply for membership they wouldn’t need to declare which working group it would join for but since we changed our bylaws the application is done at the work group level and that is sufficient to for the forum level. So, I believe this item is is resolved. So if there’s an objection to remove it…

#### Time requirement for CAs as Assoc. Members

Our current by laws require us to to designate every time we grant membership to an associate member. We do that for specific period of time. It is designated by the working group. And it was discussed at a previous F2F that was on a public list or on a phone call to consider lifting this requirement. Or link it with the possibility of an existing member to challenge an Assoc. membership and request removal of the working group and of the Forum. Kirk had proposed adding something in the bylaws to automatically remove or expire statuses at the same day. So, first of all, how would members feel if we remove the requirement for an expiration of membership for associate members.

Ryan: We’ve had associate members who are not participating. We have associate members with which the forum has a special relationship (WebTrust, ACAB’c). Sounds like 2 categories. Does Kirk have concerns over expiry of membership?

Dimitris: Bylaws say we have to set an expiration date on associate membership. 2 proposals:

1. Expires, but they can re-apply on the same day

1. Auto-renews

It would be the associate member’s responsibility to opt to renew.

Jos: Would it be reasonable to change the language to say that the status of all associate members shall be reviewed by September 31st of each year – or the last meeting of the year we go through the list and checks they want to continue – look for acclamation – default ‘include’. At least once a year go through the list and ‘weed’ it. Scratch them out and let them object if doubts exist.

Dimitris: Great idea. Once a year agenda item. Confirm or challenge associate members.

Arno: CABF is still not incorporated, so some organizations have difficulty in contracting with it.

Ryan: We’re talking about changing the bylaws which is heavy handed. Is this pressing to solve in the bylaws – which will involve heavy lawyer time. Are we down in the weeds again? I’ll push back a little as it consumes lawyer time. How strongly do we feel?

Jos: Great point. If we just designate a period that concludes with the fall CABF of every even numbered year, or once per year, ..

Dimitris: Our bylaws describe the policy well. I don’t think we need to change the bylaws, just how we will validate and review these applications/memberships.

Jos: Maybe leave it on the table for now, or stack it waiting for other bylaw changes to come through.

Dimitris: It will come up when the first associate memberships expire in December of this year.

Scott: ‘Fall’ in which hemisphere?!

Dimitris: It would be described more specifically, like e.g. the 2nd or 3rd meeting of the year.

#### Consider not reading the antitrust policy

Ben: Could we just read a statement to say that the agreements are in force and must abide to?

Dimitris: Unfortunately we have run out of time.

Ryan: Suggest we resume discussion at the next CABF call.

## Server Certificate WG Plenary

Attendees: Aleksandra Kapinos (Asseco Data Systems S.A.), An Yin (iTrusChina), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST/ ETSI ESI), Atsushi Inaba (GlobalSign), Ben Wilson (DigiCert), Bi XinLong (CFCA), Billy Qing (360 Group), Chorus Li (iTrusChina), Clemens Wanko (ACAB’c/TÜV AUSTRIA), Dai Yeqi (SHECA), David Moeller (Sectigo), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Du Zhiqiang (GDCA), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eva Van Steenberge (GMO GlobalSign LTD), Ewa Skurtys (Asseco Data Systems S.A.), Gao Zhixiong (SCA), George Chew (PrimeKey), Halton Huo (360), Hongquan Yin (Microsoft), Jack Zhang (DigiCert), Jeff Tang (360 Group), Jeff Ward (WebTrust / BDO), Jinta Nakamura (SECOM), Kirk Hall (Entrust Datacard), Lei Xiu (GDCA), Leo Grove (SSL.com), Liao Zhiming (GDCA), Liu Lei (GDCA), Mariko Kusakabe (GlobalSign), Michał Malinowski (Asseco Data Systems S.A.), Mike Reilly (Microsoft), Miwa Yoshida (GlobalSign), Nathalie Weiler (SwissSign), Nick France (Sectigo), Nik Khairul (eMudhra), Ning Yu (iTrusChina), Philippe Bouchet (ACAB’c/LSTI), Przemysław Kościelski (Asseco Data Systems S.A.), Qiu DaWei (CFCA), Ralph Zeng (TrustAsia), Richard Wang (360 Group), Robin Alden (Sectigo), Rollin Yiu (TrustAsia), Scott Rea (DarkMatter), Sun Luwen (iTrusChina), Sun ShengNan (CFCA), Sunny Qiu (iTrusChina), Tadahiko Ito (SECOM), Tim Hollebeek (DigiCert), Timo Schmitt (SwissSign), Tomas Gustavsson (PrimeKey), Toria Chen (SHECA), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo (Chunghwa Telecom), Wang Chunlan (GDCA), Wei YiCai (iFutureCA), Xiao Qiang (GDCA), Xue Yingjun (SCA), Yang Chen (SCA), Yang Yang (SCA), Yang Yaohua (SCA), Zhang Wenlei (SCA), Zhang Yi (CFCA), Zheng Huitao (SZCA), Sissi Lok (Trust Asia), Curt Spann (Apple), Devon O’Brien (Google), Janet Hines (SecureTrust), Niko Carpenter (SecureTrust), Ryan Sleevi (Google), Tim Callan (Sectigo), Wayne Thayer (Mozilla).

### Approval of SCWG Minutes from last teleconference

### 360 Root Program Update

_Presenter:_ Huo Haitao (Halton) (360)    
_Note Taker:_ Enrico Entschew (D-Trust)    

- Presentation: [360 Browser Update][2]

### Google Root Program Update

_Presenter:_ Ryan Sleevi (Google Chrome)    
_Note Taker:_ Timo Schmitt (SwissSign)    

- New set of logs are Usable since our last meeting 
- Additional logs have been added as Qualified. They are not yet usable, but will be announced to ct-policy@ 
- Details: https://github.com/chromium/ct-policy#qualified-logs

### Microsoft Root Program Update

_Presenter:_ Mike Reilly (Microsoft)    
_Note Taker:_ Tim Hollebeek (Digicert)    

- Presentation: [Microsoft Browser Update][3]

No questions.

### Mozilla Root Program Update

_Presenter:_ Wayne Thayer (Mozilla)    
_Note Taker:_ Scott Rea (DarkMatter)    

Mozilla Update: https://cabforum.org/wp-content/uploads/9-Mozilla-Browser-News.pdf

**Wayne T:** Nothing terribly new here, just run of the mill stuff for folks who are familiar with the list topics…

Commentary on content follows:

## A. Intermediate Audits

**Wayne T:** This has been in our policy since 2013, but no way to enforce until recently. A review of Root audits uncovered issues so now we are taking a closer look/focus on intermediates

Folks misinterpret requirements often and just saying you are not going to issue a certain flavor of certificate is not enough. If the anchor is capable, they MUST be audited.

Our expectation is that CA should be proactive. There is a new report (ALV) created to facilitate this. Please also check EV Root certs while you’re at it.

## B. Intermediate Disclosures

**Wayne T:** We found some cross-certs that were not listed.

Crt.sh report has certs listed – check them please, and make sure they are up to date

## C. OCSP for Pre-certificates

**Wayne T:** Mozilla assumes if pre-cert exists it means the corresponding cert exists. Therefore OCSP responses should exist the corresponding cert. This is being included as a recommended practice. Please be aware and pay attention to this recommended practice.

## D. Policy Update

Wayne T: Not much has changed since Greece. There are 16 issues listed here in total that are being worked on, but I will just focus on the couple that have effective dates.

1 July, 2020 EKUs must be in EEs

31 March, 2020 CPS versions dated after this must not have any blank sections – this is a Required Policy

Ben W: RFC 3647 outline has some recommendations already, is this intended to move things towards automated consumption of CPS’?

Wayne T: No, we are just standardizing here

Wayne T: I will skip the rest, but these are discussed on MDSP and should take effect early January

## E. Update on Intermediate Preloading and CRLite

Wayne T: Preloading is our alternative process to AIA to combat privacy concerns. It relies on disclosures in CCADB, so it’s important that these are up to date.

CRLite is a proposed mechanism to replace OCSP. Right now we getting ready to proof the prototypes – stay tuned to this space.

## F. Distrust After

Wayne T: This is a new mechanism in NSS that can allow CA’s to retire Roots, and allows for them to be distrusted from a specific date

## G. TLS 1.0 and 1.1 Deprecation

Wayne T: This is just an update on progress – we would like to thank all the CAs that have partnered with Mozilla to make this happen.

## Questions

Jeff W: Can you help clarify/discuss with the prevalence of bugs, what is the best way to manage this? If 3 or 4 certs are found in initial bug, is a second bug required if more are found later, or is it OK to add them to the first one?

Wayne T: There is no perfect answer here. Just reach out and ask Mozilla and together we can make a judgement call. We encourage communication. If the incident report is filed, its same root cause, same remediation, and bug is still open = fine to include in the same bug.

But if the bug is closed, same thing happens later, this means remediation didn’t work = new bug Other case is when one problem begets another separate issue – this should be a separate bug.

Jeff W: can you clarify this in your policy?

Wayne T: We can do that. We are trying to strike a balance at the end of the day, without proliferating bugs.

Jeff W: When an Audit Report has a Qualified Opinion – does it always lead to immediate revocation of the Root? What if the issue does not affect the integrity of keys’ security?

Wayne T: This is difficult to answer without a concrete example. Mozilla doesn’t force CAs to revoke certs. We just ask CAs to follow policy.

Ryan S: With previous disclosures, Mozilla has opened a bug to track the issue and that is the standard process.

Wayne T: Yes, this is the process, but it doesn’t necessarily lead to revocation.

- *Questions from Jeff Ward*\*

1. If a CA has an incident reported and identifies 3 certificates, and then a few days later, identifies additional certificates, does Mozilla expect a new incident report to be filed? * Wayne: It can depend. If they share the same root cause and remediation, and are discovered as part of the investigation, it may make sense to keep on the same issue. However, if they’re investigating an issue, and then also fail to revoke in the time required by the BRs, it should be two issues – one for the original issue, one for the failure to revoke on the timeline. There are situations that can be in-between, and so sometimes it’s a case-by-case basis whether a new issue will be opened.

1. In the past, Mozilla (and other browsers) have said that a Qualified Audit does not necessarily mean a CA will be removed. However, some CAs have raised concern about possibly being issued a Qualified Audit. Can Mozilla clarify their expectations for Qualified Audits? * Wayne: Hard to say without understanding the nature of the qualifications, but Mozilla has shared in the past that a Qualified Audit doesn’t necessarily mean removal. But it would depend on the audit. * RyanS: Is it fair to point to examples in the past when a qualified audit is filed in CCADB? Mozilla has opened an Incident Bug and asked the CA to discuss the qualifications/issues, pointing to perhaps past incidents already disclosed, and potentially opening incidents for issues that were not previously disclosed to be investigated/resolved. * Wayne: Yes, that’s how we’ve handled it in the past.

### CCADB Update

_Presenter:_ Wayne Thayer (Mozilla)    
_Note Taker:_ Scott Rea (DarkMatter)    

CCADB Update: https://cabforum.org/wp-content/uploads/10-CCADB-News-CABF-F2F-November-2019.pdf

**Wayne T:** I am reporting for Kathleen here

ALV allows Mozilla to read audits and see if compliance is in place.

Please check this! See Kathleen’s post to the list.

**Wayne T:** Kathleen is continuing to work on the quality of reports. Having Dates and Thumbprints in standard formats is a current focus.

## Audits

**Wayne T:** If expired, revoked, technically constrained – these are not required in the reports

Updated CCADB Policy

**Wayne T:** Kathleen has provided the process. OIDs can now be added to reports

## Verify Revocation

**Wayne T:** Binding OIDs to CPS to more clearly show which policies apply to anchors.

## Policy Identifiers

**Wayne T:** We are looking for volunteers to test out multi-policy applicability to certs

**Ben W:** Is mapping for OIDs or for the cPSUri?

**Wayne T:** At this point it is just about populating certificate data, mapping is manual

**Dimitris Z:** Can you clarify if OIDs are only from EE’s

**Wayne T:** I think it’s from Issuers not EE’s

**Ryan S:** It comes from Issuers too

**Timo S:** Not sure how its working without some examples

**Wayne T:** I understand the valid concerns: Policy OIDs from Roots and Intermediates pick lists might not work properly, we will evaluate.

## CP/CPS Objects and Associations

No further discussion.

### Report from Network Security Subcommittee

_Presenter:_ Ben Wilson (Digicert)    
_Minute Taker:_ Nick France (Sectigo)    

Ben: The subcommittee looked at SC20 – network security requirements. Talked about the purpose of SC20 – distinction between change control and after the fact changes. What kind of review is done before config change, what review is done after? Are you monitoring the config baseline/approved config for changes?

The Subcommittee decided that they should really be looking at config management – as opposed to change control. However because they are related, the group still hasn’t decided if specificity is needed in the document.

Maybe making the monitoring automatic vs manual? The current document prefers more manual monitoring. The feeling is that manual review is not scalable or advisable. Continuous and automated monitoring is better. Raises issues about complexity.

Comments in Tues discussion about the need for more explanation on the ramifications and examples of the types of systems needed to supply the continuous config monitoring service.

Comments also about scope – what systems are in scope? Any system or “security systems”? How many and what systems are covered? Could scale to “thousands” of datapoints if many systems are in scope.

Comment from Ryan S describing how the proposal might affect CAs making things “easier” – would something currently prohibited now be allowed?

Also noted 3 days is too long as a time window.

The subcommittee also talked about 1H and 3A, 3G – sections that could be edited. Next meeting will review those sections to see where appropriate to make changes.

Dimitris: Wanted to clarify one item – the subcommittee needs to document what problems they are trying to solve.

Two points: with current language – is there something forbidden for CAs to do? Or, if something is currently allowed in the requirements – is it something that should be disallowed?

Ben: When we review continuous monitoring vs manual we can see if CAs are concerned that manual review is too cumbersome and continuous monitoring would improve the ability for the CA to fulfil the original requirement.

Dimitris: Would argue the requirements currently allow for automated monitoring. Does it require human check every week?

Ben: Not if you have it operating and be alerted more quickly than one week. The proposal came from the “pain points” group – from comments or concerns from CAs and their auditors that their ability to comply with the letter-of-the-law of the NS requirements can be cumbersome. Group feels that this change would be an improvement and make for easier implementation. Otherwise we have a requirement that doesn’t make sense with the 1-week review, should be reviewing sooner than that. Change would make the requirements more effective. Doesn’t make sense to have a requirement that isn’t well written and doesn’t accomplish as much as it could if better worded. With that goal in mind, we need to investigate what available mechanisms a CA would use to meet the requirement. Most CAs would have difficulty implementing a continuous monitoring security.

Trev: request to be clear about the problem to be solved. Right now it isn’t clear what is allowed. Different CAs and auditors may interpret it differently. Goal to make the requirements clear. Close loopholes.

Dimitris: Perfect problem description. Tim Crawford already emailed subcommittee about this, problems he has encountered during his audit work.

Need to be more clear on what parts of the NC requirements are trying to be improved on.

Ryan: If there are situation where someone has summarized something to the sub-committee – make sure the past discussion is referenced so previous discussions don’t need to be re-hashed – helpful to point back to previous discussions.

Ben: On list received from Tim, that was the basis for the to-do used by the “pain points” committee. With the ballot, we need to reference back to where the issues were raised as pain points.

### Report from Validation Subcommittee

_Presenter:_ Tim Hollebeek (Digicert)    
_Minute Taker:_ Xiu Lei (GDCA)    

- Spring Cleanup Ballot has started voting
- Validation Summit work is ongoing, 18 months in. Two items left
- 3.2.2.4.10 – Waiting for IETF TLS ALPN to be published as RFC (should happen “soon”/next couple months)
- 3.2.2.4.6 – Thought it was close to final; some comments made on the list that need to be addressed. Splitting up the ‘traditional’ method 6 and the ACME http-01 RFC 8555 method.
- Extensive discussion about LEIs. Appears to be fundamental disagreement on whether it’s useful/necessary for TLS server certs.
- Seems unlikely we’ll come to a conclusion that makes folk happy.
- May go to a Ballot to see where people stand
- Validation SC has a Trello board with a backlog of items, will try tackling that next. Welcome feedback.

## Thursday, 7 November 2019 – Plenary Meeting (Day 2)

### Attendees

Aleksandra Kapinos (Asseco Data Systems S.A.), An Yin (iTrusChina), Andreas Henschel (D-TRUST), Aneta Wojtczak-Iwanicka (Microsoft), Arno Fiedler (D-TRUST/ ETSI ESI), Atsushi Inaba (GlobalSign), Ben Wilson (DigiCert), Bi XinLong (CFCA), Billy Qing (360 Group), Brian Hsiung (Anthony Kam & Associates Ltd), Chris Bailey (Entrust Datacard), Clemens Wanko (ACAB’c/TÜV AUSTRIA), Dai Yeqi (SHECA), David Moeller (Sectigo), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Du Zhiqiang (GDCA), Dustin Hollenback (Microsoft), Edwin Zhai (TrustAsia), Enrico Entschew (D-TRUST), Eva Van Steenberge (GMO GlobalSign LTD), Fangguo ZHANG (Sun Yat-sen University), George Chew (PrimeKey), Halton Huo (360), Hongquan Yin (Microsoft), Jack Zhang (DigiCert), Jeff Tang (360 Group), Jeff Ward (WebTrust / BDO), Jinta Nakamura (SECOM), Kirk Hall (Entrust Datacard), Lei Xiu (GDCA), Mariko Kusakabe (GlobalSign), Michał Malinowski (Asseco Data Systems S.A.), Mike Reilly (Microsoft), Miwa Yoshida (GlobalSign), Nathalie Weiler (SwissSign), Nick France (Sectigo), Nik Khairul (eMudhra), Ning Yu (iTrusChina), Philippe Bouchet (ACAB’c/LSTI), Qiu DaWei (CFCA), Ralph Zeng (TrustAsia), Richard Wang (360 Group), Robin Alden (Sectigo), Rollin Yiu (TrustAsia), Scott Rea (DarkMatter), Sun Luwen (iTrusChina), Tadahiko Ito (SECOM), Tim Hollebeek (DigiCert), Timo Schmitt (SwissSign), Tomas Gustavsson (PrimeKey), Toria Chen (SHECA), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo (Chunghwa Telecom), Yang Chen (SCA), Yang Yang (SCA), Zheng Huitao (SZCA), Curt Spann (Apple), Devon O’Brien (Google), Don Sheehy (WebTrust), Li-Chun Chen (Chunghwa Telecom), Niko Carpenter (SecureTrust), Ryan Sleevi (Google), Tim Callan (Sectigo), Wayne Thayer (Mozilla).

## Server Certificate Working Group

### Recap of CA/B Forum discussions related to Quantum Cryptography

_Presenter:_ Tim Hollebeek (Digicert), Tadahiko Ito (Secom)    
_Note Taker:_ Zhang Yi (CFCA)    

Quantum computing is being discussed for the 3rd CABF Face to Face in a row.

It has been known for ~25 years that a quantum computer could break RSA and ECC if you could build one; in the past few years people have actually started making progress at building them.

Current computers are primitive and take up entire rooms. Quantum supremacy is the point where a quantum computer can do ANYTHING that a classical computer can’t, and we’re about at that point.

Quantum computers will never be general computers, but are superior for a specific set of problems; one of them happens to be breaking cryptography.

Two more milestones:

– When a quantum computer is powerful enough to solve a practical problem, which will drive additional investment. For example, simulating and predicting the behavior of a quantum system. – When a quantum computer is powerful enough to threaten asymmetric cryptography. Far beyond where we are today (millions of qubits vs ~50 qubits)

Previous cryptographic transitions have taken decades, plural. So it’s time to get started now.

Post-quantum cryptography involves new cryptographic algorithms that are based on hard math problems that are also hard for quantum computers. NIST is standardizing them now and had a review conference in August.

The details don’t matter so much for us now; the APIs are standardized. What matters more is how we plug those algorithms into CA systems.

NIST is also standardizing hash-based signatures, which are useful for code-signing, so it is useful that the code-signing working is considering quantum-safe signatures.

TLS are one of the last thing that needs to be updated, because browsers update relatively quickly and certificate lifetimes are short compared the transition timeline. TLS certificates will not likely be attacked sometime soon.

However, TLS key exchange can be attacked. Amazon and Cloudflare have been experimenting with quantum safe key exchange.

One of the problems we had with the SHA-1 to SHA-256 transition was that many systems forced choice of a single algorithm. It would be best if all cryptographic systems supported algorithm agility, where switching between multiple algorithms is easy, and we aren’t there yet. It’s something we could be working on now.

### Guest Speaker – Quantum Safe Cryptography

_Presenter:_ Mike Brown (ISARA)    

- Presentation: [Quantum Safe Cryptography][4]

### ETSI Update

_Presenter:_ Arno Fiedler (ETSI ESI)    
_Note Taker:_ Clemens Wanko (ACAB’c / TUV Austria)    

- Presentation: [ETSI Update][5]

ETSI a not-for-profit Institute with more than 850 member organizations worldwide, drawn from 65 countries and five continents. The members comprise a diversified pool of large and small private companies, research entities, academia, government and public organizations.

In support of Regulation No 910/2014 on electronic identification and trust services for electronic transactions ETSI Technical Committee on Electronic Signatures and Infrastructures (ETSI TC ESI) has developed a set of “policy” requirements for “Trust Service Providers” aimed at meeting the requirements of the Regulation, and requirements for conformity assessment to the Regulation and its supporting standards. This includes policy and security requirements for trust service providers :

- ETSI EN 319 411 parts 1 and 2 issuing certificates,
- ETSI EN 319 421 issuing Time-Stamps
- ETSI TS 119 431 parts 1 and 2: providing remote signature creation services including use of remotely controlled signing key
- ETSI TS 119 441: providing signature validation services
- ETSI TS 119 511: providing signature preservation services
- ETSI EN 319 521: providing registered e-delivery / e-mail services

## Associated Evaluation Scheme and Governance

ETSI EN 319 403 defines conformity assessment requirements for all the above services, and any other trust service (i.e. electronic service which enhances trust and confidence in electronic transactions) which has well defined requirements. ETSI EN 319 403 is based on ISO 17065 “Conformity assessment - Requirements for bodies certifying products, processes and services”.

Under eIDAS the operation of the trust service providers is overseen by national supervisory bodies which make the final decision of the trust based on the audit report. The results of this trust decision is represented in national trusted lists as specified in ETSI TS 119 612. More specific requirements for the audits to be passed to supervisory bodies is defined in ETSI EN 319 403-3.

A scheme based on EN 319 403 is also applied by major web browser software suppliers which make the final decision of the trust based on the audit report. More specific requirements for the audits to be passed to web browser software suppliers is defined in ETSI EN 319 403-3.

All ETSI standards are published by consensus of its members. ETSI ENs also require approval through a ballot of National Standards Organisations. Conformity assessment bodies are required to be accredited by their national accreditation body for carrying out conformity assessment based on EN 319 403.

Info about regular updates:

EN 319 411: planned updates are the following

- “minor revisions to clarify areas where there has been uncertainty in interpretation of the standard”
- Short term certificates (less than revocation notification period)
- Avoiding CAB Forum issues impacting QWACs, in particular for EV

EN 319 412-1 / TS 119 412-1: planned updates are the following

- Support for LEI in Subject
- Support for eID attributes in Subject Name
- Short term certificates

EN 319 412-2 & 3: planned updates are the following

- Clarification on Key usage
- Ongoing: Removal of RFC 5280 attribute size limits (e.g. organisation name > 64 characters)
- EN 319 412-5 QCStatement for non-EU countries

TS 119 495 Qualified Certificates under PSD2: planned updates are the following

- Coordinated with European Banking Association / Open Banking Europe
- Clarifications on Authorisation Number
- Email interface with “National Competent Authorities” for notifications of certificate issuance and revocation

Draft EN 319 403 -1: planned updates are the following

- Audit of component services
- Clarification regarding handling of TSP requiring corrective actions
- Audit report issued identifying corrective actions required.
- Minor non-conformities to be corrected in 3 to 6 months
- New Annex on determining audit time (specifics removed)

New Document TS 119 403-2 (2019-03): Part 2: Additional requirements for Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates (e.g. as in CA/Browser Forum)

New Document TS 119 403-3 (2019-4): Part 3: Additional requirements for Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates

The Study “Report on Global acceptance of European Trust Services” an Executive summary (TR 103 684) will be published soon.

All final ETSI Standards are for free, please see Information on available standards and current activities: https://portal.etsi.org/TBSiteMap/ESI/ESIActivities.aspx ETSI standards: available for free download http://www.etsi.org/standards-search

The next TSP/CA Day in Berlin is planed for September 22 and 23.

- RyanS raised concern about the removal of the RFC 5280 limits; does this mean the ETSI documents will be incompatible?
- Arno stated he didn’t think it would be, but Ryan raised concern.
- Dimitris said he believed RFC 5280 had been obsoleted and that these removals were included in a newer version.
- Ryan explained that it was not 5280 that was obsoleted, but a new version of X.509 that removed _some_ of the limits. However, the IETF had rejected that removal, because it would not be backwards compatible.
- Arno was going to follow-up with the IETF liason from ETSI to raise this issue and see how to address it

### ACAB’c Update

_Presenter:_ Clemens Wanko (ACAB’c / TUV Austria)    
_Note Taker:_ Arno Fiedler (ETSI ESI)    

Clemens Wanko and Philippe from ACAB’c provided an update on the status and the ongoing work of the council:

– Membership & coverage Number of Accredited Conformity Assessment Bodies increasing (currently 7 with two in the application process). Interrelationship with other stakeholder: close co-operation has been agreed between ACAB’c and FESA (Board of EU supervisory Bodies). ACAB CABs cover > 30% of ETSI/eIDAS certifications.

– ACAB’c Services for CAB working documents (harmonized) . Conformity Assessment Report (EU-CAR) . Audit Attestation (CA/B-Forum Browser requirements) . position papers and herewith guidance on standard interpretation . experience exchange

– 2020 schedule Enforce EU harmonization activities on level of . EU commission . FESA (national SB), ETSI and ENISA Contribution to . revision of EN 319 411-1/2 . revision of eIDAS EU Regulation 910/2014

See slides for details.

Presentation: [ACAB’c Update][6]

### WebTrust Update

_Presenters:_ Jeff Ward (BDO)    
_Minute Taker:_ Chris Bailey (Entrust Datacard)    

- Presentation: [WebTrust Update][7]

- Kirk Hall asked who would use the Detailed Controls Report

- Jeff responded that it was hard to answer that. He described that it’s similar to SOC2 reporting. For example, sometimes clients require more detailed audit reports. For example, a browser might require such a report if there’s a pattern of issues in order to be assured of remediation. It’s difficult to say directly, but it’s been a frequently requested report, and so it was important to do.

- Jeff asked if anyone is interested in this very draft report to send him an email.

### Creating a more intuitive method of displaying secure sites to internet users

_Presenter:_ Chris Bailey (Entrust Datacard)    
_Note Taker:_ Trevoli Ponds-White (Amazon)    

- Presentation: [Creating a more intuitive method of displaying secure sites to internet users][8]

What’s the purpose of the Forum? We’ve done a lot of work related certs but not a lot in a second area -[2] creating a more intuitive method of displaying secure sites to Internet users.”

People learn to intuit things through repetition. Standards can be leveraged to provide a path for users to have repetition and thus intuition.

Browsers use security indicators to communicate connection security states, website trustworthiness, or a combination of the two. Traditionally security indicators haven’t been standardized so humans don’t have a repeatable experience to leverage.

Fortunately there has been research on challenges to creating indicators. Additionally elements of some of the browsers current elements. Both of these sources can be used as guidance to create recommendations on ways to create a more intuitive user experience.

For example Apple has a method of displaying that is consistent on the platforms and easy to distinguish and Firefox has a very clear way of displaying the details of a certificate.

Primary source for security indicator info:  
https://www.usenix.org/system/files/conference/soups2016/soups2016-paper-porter-felt.pdf

Comment: In addition to browsers perhaps these common elements can be incorporated into other platforms like mail clients.

- Q) Are there IP concerns for browsers?
  - A) Not sure, the browsers would need to provide this answer
- Q) Would the browsers be required to implement this in an all or nothing manner?
  - A) No
- Q) Why is the CA/B Forum a better place to do this than the current standards development organizations that the browsers are already collaborating on common UI elements work in?
  - A) This is a key part of the bylaws that the group decided to put into the bylaws in the past because of the recognized importance. Counter point: Ryan pointed out our Bylaws were descriptive, not prescriptive: what we had done, not what we must do. At some point the forum voted to not adopt a document related to standards for certificate consumers. Ryan will provide the link to the mail thread when this was previously discussed. Currently, the Bylaws do not agree with this point of view.

There are standards development organizations that are already actively working on common browser ui elements so perhaps parties that are the most invested in contributing should join those SDOs to contribute there. Ryan will provide details on which SDO are working on organization identity and organization identity presentation issues.

Follow up, Ryan provided resources: https://lists.cabforum.org/pipermail/servercert-wg/2019-November/001440.html

### Special Challenges and concerns for Certification Authorities located in Asia

_Presenter:_ Xiu Lei (GDCA)    
_Minute Taker:_ Xiu Lei (GDCA)    

**A total of 20 attendees participated in the discussions, and the following topics were covered:**

- Discussion was mostly focused on the challenges and concerns presented by Vijay Kumar (eMudhra) from last F2F in Thessaloniki, Greece.
- An additional item of concern: there are areas that have no real standardized physical addressing but strong PO Box binding for organizations and individuals with a local presence – this is problematic for EV in particular.
- Challenges in relation to State/Locality name translation, and organization translation were shared by many CAs in this region. Eva from GlobalSign shared with us their internal research on Standardization of LocalityName andStateOrProvinceName, which is very helpful.
- SM2/SM3 being pushed for SSL/TLS certificates issuance in China, potential implications posed to the publicly trusted CAs in China.
- Disputed Territories country code (EX: Republic of Cremia).
- The possibility of creating a mailing list to manage and follow up these issues.
- A question from Chunghwa Telecom to the Browser members: “What is the acceptable audit scheme for an intermediate time-stamping CA with technical constrained”?
- Dimitris Zacharopoulos (HARICA): Not representing a Browser member, but if it is audited according to the WebTrust audit criteria, it will be WebTrust for CA, and if it is ETSI, then it will be ETSI EN 319 411-1, as the baseline.
- Ryan Sleevi (Google): Google does not recognize time-stamping, Microsoft requires WebTrust for CA for time-stamping.It is important to note that, as highlighted by Wayne during the Mozilla Root Program update, it matters what an intermediate is capable of, not what it is intended to be used for. A time-stamping CA that is technically capable of TLS issuance will need appropriate audit for a TLS capable CA, even if the CA is only intended for time-stamping. Need to look at the time-stamping requirements for each Root Program, at least with respect to Mozilla documented what is out of scope, and to Microsoft which recognized time-stamping, documented what it is in scope.If an Extended Key Usage that is properly set such that the intermediate is not capable of issuing SSL/TLS, and not capable of issuing any other types of certificates that might be governed by root program requirements, then will need to see if these EKUs are in scope of root programs.Of the root programs that are Browser members, Microsoft is the one that has time-stamping requirements, and that’s WebTrust for CA.
- Mike Reilly (Microsoft): That’s correct, as Dimitris mentioned as well.

### Special Challenges and concerns for Certification Authorities located in Europe

_Presenters:_ Enrico Entschew (D-Trust)    
_Minute Taker:_ Aleksandra Kapinos (Asseco Data Systems)    

- Presentation: [Special Challenges and concerns for Certification Authorities located in Europe][9]

A total of 10 attendees participated in the discussions, the main topic of the discussion is a relation between QWACs, EV and OV certificates.

There are still some troubles to interpret ETSI standards, these problems can lead to different interpretations and different interpretations can lead to misunderstandings. ETSI standards are not clear in reference to QWAC’s. In ETSI TS 119 495 there are some references to baseline for OV not an EV but they’re SSL certificates with nearly the same or the same criteria of the EV guidelines.

We will establish a new email group to discuss about some experience and problem with misinterpretations. This group will be dedicated for CAs from Europe but it will be open for every CA which would like to participate.

The first results about working with this issue will be presented in next F2F meeting in Bratislava.

Dimitris: QWACs are using the entire validation methods, validation rules of a EV Guidelines all the revocation requirements are in the EV Guidelines which are referenced to Baseline Requirements. I think we are going to focus on describing different interpretations about certificate profiles. I think this is a main issue at this time.

Ryan: Just a clarification, it’s not that all QWACs meet the EV Validation part, it’s just the QWACs that have been certified by conformity assessment body that uses ETSI EN 319 411-1 and ETSI EN 319 411-2, because you can be like a QWAC and you can use TS scheme for example, and so you may not be using the ETSI documents at all.

Dimitris: We agree that QWACs are described in the ETSI documents, include parts of EV Guidelines, including all parts about validation and policies, and some differences exist for certificate profiles. There is some misunderstanding in that part. We are going to try to created a problem statement with links to specific sections of this document, that will make it more clear why we have different interpretations.

### Update on London Protocol

_Presenters:_ Kirk Hall (Entrust Datacard)    
_Minute Taker:_ Dimitris Zacharopoulos (HARICA)    

Presentation: Update on London Protocol (to be uploaded)

Kirk and Chris gave an update on the “London Protocol”. Kirk explained that the Protocol got its name because it was announced at the Forum meeting in London the prior year. Basically a group of CAs (starting with the CA members of the CA Security Council) have agreed to receive notice of OV and EV certificates each has issued that have been flagged for phishing across multiple anti-phishing engines. The process is totally confidential and voluntary, and includes the following steps:

## What Happens After A Customer Phishing Site Is Detected And Confirmed?

- **Step 1:** Participating CAs are notified when customer OV or EV site using their cert is flagged for phishing
- **Step 2:** The Issuing CA contacts the customer and provides details of the URL(s) of phishing content, screen shots where the phishing content is found on the site, and the nature of phishing content. In the cases to date, the customers are generally grateful for the contact from the CA, as they were unaware that their sites had phishing content (sometimes lodged in the site Directory where the website owner can’t see it. If the site is using a shared certificate with multiple SANs or independent pages (typically OV only, such as Cloudflare, where Cloudflare is not in control of the website content for the SANs), the customer is told which SANs or pages were flagged for phishing.
- **Step 3:** The CA works with the customer with advice to help remove the phishing content, and ways to protect the site. If the customer will not remediate the CA can consider other steps, even to revocation – each CA decides on its own in compliance with the revocation terms of its CPS.
- **Step 4:** The anti-phishing Service continues to monitor a flagged phishing website for 30 days to see if phishing content returns, and if yes the issuing CA will receive additional notices from the Service, or the issuing CA can clear the website’s status on the phishing list.

Chris said the latest numbers he had indicated again there were zero instances of EV phishing sites, and a moderate number of OV phishing sites (e.g., SANs in a Cloudflare cert) because the Subject does not control the content on the independent SANs. This means that EV sites are much safer for users (and even OV sites) than DV sites, which are full of phishing. The internet community should make use of that fact to protect users.

Kirk invited all CAs in the Forum to participate – there is no charge, and no need to join the CA Security Council. CASC will add the CA’s roots to the anti-phishing engine, and will start sending notice of any OV or EV sites that are flagged for phishing across multiple anti-phishing services.

Finally, Chris provided some new statistics from the Anti-Phishing Working Group that shows just how much encrypted phishing has increased in the past quarter, and said more needed to be done to protect users.  
https://www.businesswire.com/news/home/20191105005324/en/APWG-Q3-Report-Phishing-Attacks-Highest-Level

Statistics for phishing for the past 30 days.

- 355 OV phishing mostly issued to Cloudflare
- flatline for EV phishing with 0 phishing events

## Brands Under Siege Rise to More Than 400 in Q3 2019

According to the APWG’s new Phishing Activity Trends Report, the number of phishing attacks continued to rise into the autumn of 2019. The total number of phishing sites detected by APWG in July through September 2019 was 266,387. This was up 46 percent from the 182,465 seen in the second quarter of 2019, and almost double the 138,328 seen in Q4 2018.

Total number of phishing sites detected by APWG in July through September 2019 was 266,387, up 46 percent from 182,465 in Q2 2019. “This is the worst period for phishing that the APWG has seen in three years, since the fourth quarter of 2016,” said Greg Aaron, APWG Senior Research Fellow and President of Illumintel Inc.

In addition to the increase in phishing volume, the number of brands that were attacked by phishers in Q3 was also up notably. APWG contributor MarkMonitor saw attacks against more than 400 different brands (companies) per month in Q3, versus an average of 313 per month in Q2. Stefanie Wood Ellis, Anti-Fraud Product & Marketing Manager at MarkMonitor, noted: “The top targeted industries are largely consistent with previous quarters. Webmail and SaaS sites remained the biggest targets of phishing.”

Meanwhile, “Business e-mail compromise” or BEC scams remained highly damaging. These attacks target employees who have access to company finances or valued data assets, usually by sending them email from fake or compromised email accounts (a “spear phishing” attack).

According to APWG contributing member Agari, 40 percent of BEC attacks use a domain name registered by a scammer. These domains are often variations of a trusted, existing company name, meant to fool unwary victims. In the third quarter, attacks involving wire transfers from victims were for an average of $52,325.

### Guest Speaker – Research Status of the ECDLP

_Presenter:_ Prof. Fangguo Zhang (Cyberspace Security Department, School of Data and Computer Science, Sun Yat-Sen University)    

- Presentation: [Research Status of the ECDLP][10]

### Any Other Business

Dimitris asked for some clarifications from the participants about a previous remark by Ryan during the session lead by Chris Bailey related to the Purpose of the Forum.

In Section 1.1 of the Bylaws it says “Members of the CA/Browser Forum have worked closely together in defining the guidelines and means of implementation for best practices as a way of providing a heightened security for Internet transactions and creating a more intuitive method of displaying secure sites to Internet users” the question came up as to whether or not this is a current or not based on whether or not it matters that the language happens to be in past tense. He asked because there seems to be a different interpretation by Ryan.

Robin responded that although the text is using past tense, it is not only about what the Forum did in the past but what the Forum is supposed to be doing now as well. This language is in a section that is called “Purpose of the Forum”.

Mike said that it seems like we do a lot more than this now (code signing, talking about S/MIME) and this seems very specific on UI.

Kirk replied that he created the first draft of the Bylaws in 2012. This language was on our website and moved in the Bylaws. The intent was that this is our bylaws. Mike may be right that we are doing more than that. Something in the Bylaws doesn’t go away until it is replaced by a ballot of the Forum.

Dimitris tried to combine the statements from Mike and Kirk and mentioned that the current language in the Bylaws describe “at least” what the Forum is supposed to be doing, and we may do “additional” things like code signing which could be interpreted to fit in the “Internet transactions” part.

Ben asked if Mike’s comment was about keeping this language for a very long time.

Mike replied that this language may not be very accurate to reflect what we are doing, especially to new people that join.

No further discussion.

### Arrangements for Next Meeting

Next F2F meeting is taking place February 18-20 Bratislava hosted by Disig

[1]: https://docs.google.com/document/d/1EtrIy3F5cPge0_M-C8J6fe72KcVI8H5Q_2S6S31ynU0
[2]: /uploads/12-CABFORUM_F2F48_360_Browser_Update.pdf
[3]: /uploads/13-Microsoft-CABF-48-Update.pdf
[4]: /uploads/17-CABForum-Presentation-ISARA.pdf
[5]: /uploads/18-ETSI-ESI_Standardisation_Update_for_CAB-Forum-11-19.pdf
[6]: /uploads/19-CABForum_ACABc_presentation_1.0.pdf
[7]: /uploads/20-Webtrust-CABF-update-Nov-2019.pdf
[8]: /uploads/21-CABF-Presentation-Common-UI.pdf
[9]: /uploads/23-Meeting-of-European-CAs.pdf
[10]: /uploads/25-Research-Status-of-ECDLP-2019CAB.pdf