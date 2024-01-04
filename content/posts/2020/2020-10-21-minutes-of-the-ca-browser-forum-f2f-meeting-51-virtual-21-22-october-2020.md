---
aliases:
- /2020-10-21-minutes-of-the-ca-browser-forum-f2f-meeting-51-virtual-21-22-october-2020/
author: Jos Purvis
date: 2020-10-21 03:38:00
title: Minutes of the F2F 51 Meeting, Virtual, 21-22 October 2020
type: post
---

## Wednesday, 21 October 2020 – Plenary Meeting (Day 1) {.wp-block-heading}

### CA/B Forum Plenary {.wp-block-heading}

The Antitrust statement was read.

### Attendees {.wp-block-heading}

Doug Beattie, Jeff Ward, Don Sheehy, Ryan Sleevi, Dean Coclin, Atsushi Inaba, Nick France (Sectigo), Dustin Hollenback, Aneta Wojtczak-Iwanicka, Tim Callan, Dimitris Zacharopoulos, Clemens Wanko, Tadahiko Ito, Andreas Henschel, Enrico Entschew, Devon O’Brien, Matthias Wiedenhorst, Eva Van Steenberge, Jos Purvis, Mike Reilly, Karina Sirota, Clint Wilson, Trevoli Ponds-White, Arno Fiedler, Vijay Kumar, Arvind Srinivasan, Saiprasad KP, Bruce Morton, Wayne Thayer, Stephen Davidson, Janet Hines, Hongquan Yin, Peter Miskovic, Hazhar Ismail, Wang Chunlan, Xiu Lei, Leo Grove, Chris Kemmerer, Tom Zermeno, Abdul Hakeem Putra, Ahmad Syafiq MD Zaini, Pedro Fuentes, Tobias Josefowitz, Kathleen Wilson, Ben Wilson, Wendy Brown, Michelle Coon, Li-Chun Chen, Matthias Wiedenhorst, Andrea Holland, Daniela Hood, Clint Wilson, Adrian Mueller, David Kluge, An Yin, Neil Dunbar, Curt Spann, Jan Völkel, Arnold Essing, Paul van Brouwershaven, Hiroshi Sakai, Andrew Whalley, Tim Hollebeek, Sooyoung Eo, Wei YiCai, Rae Ann Gonzales, Mads Henriksveen, Rebecca Kelley, Niko Carpenter, Rich Smith, Doug Hill, Mariusz Kondratowicz, George Sebastian, Aaron Poulsen (Digicert), Eric Mill, Hannah Sokol (Microsoft).

### Approval of CABF Minutes from last teleconference {.wp-block-heading}

The minutes were approved.

### Report from Code Signing Certificate Working Group {.wp-block-heading}

_Presenters:_ Bruce Morton (Entrust Datacard), Dean Coclin (Digicert)
_Note Taker:_ Dustin Hollenback (Microsoft)

Dean Coclin presented

Bruce Morton (Entrust Datacard) has been nominated for Vice Chair position

Ballot CSC-4 is approved sent for IPR review. This ballot was mainly to push out some dates for key sizes to move to 3072 bit RSA.

Conditional audit report update

- Audit criteria for Code Signing (CS) and EV Code Signing (EVCS) have been merged.
- Investigating how to handle audits that occurred in between the Code Signing/EV Code Signing reports being created
- Don Sheehy, Mike Reilly, Karina Sirota, Ian McMillan and a few others will meet on next steps

Time-stamping to be discussed in more detail at next meeting

Parking lot list started. Dean will add updated list here later. It will be discussed at next meeting.

### Report from S/MIME Certificate Working Group {.wp-block-heading}

_Presenters:_ Stephen Davidson (Digicert)
_Note Taker:_ Andreas Henschel (D-TRUST)
_Presentation:_ [SMCWG Update][1]

**Notes other than presentation:**

- Chance to create a worldwide standard because there are a lot of different standards and requirements in place
- Many discussions within the group on the different use cases of s/mime certificates
- Creating a parking lot on requirements for later discussions
- Already identified key issues: key storage, key escrow, key archiving and other aspects of key management
- First version of the draft: Certificate profiles for leaf and CA certificates, Verification of control over email addresses
- The main goal of the WG is to create a best practices standard based on the already identified requirements and standards like Google, Mozilla, ETSI, US Federal PKI, etc.

Discussion after the presentation:

- Dean asked if there are pending member applications to the WG
- Stephen said that Google joined the WG on the last meeting and other members of the CA/B-Forum with interest are welcome to join the WG as well

### Report from Forum Infrastructure subcommittee {.wp-block-heading}

_Presenter:_ Jos Purvis (Cisco)
_Note Taker:_ Wayne Thayer (Mozilla)

- Jos said that the subcommittee met yesterday and discussed the upcoming separation of the documents repo into separate repos in GitHub, one for each working group. History will be maintained in the migration. Wayne sent an email to the management list describing the plan, and no feedback has been received. The SC plans to make the changes during their Nov 4 meeting.
- Ryan is working on moving artifact rebuild code from Travis-CI to GitHub actions. He has a prototype in place. When this is in place, we will be able to securely create artifacts upon each pull request, allowing for review of the new Word/pdf documents before merging the pull request.
- We discussed the need to revamp the current cabforum.org website. We encourage involvement from anyone interested in website design. We also discussed the intended audience, breaking the site into working groups, and cases where the WordPress conversion jumbled content. If you find issues on the site, please report it to an infrastructure SC member or email questions@.
- Jos said that we are soliciting feedback on the new wiki that we began using about 1 year ago. If you have any comments, please let Jos know.
- We discussed membership management, which is currently a very manual process. We agreed that this is the next to-do. We want to create a standardized place to request changes first, then implement some automation for implementing the changes.
- We discussed the migration of the mailing lists from GoDaddy to AWS. GoDaddy is planning this to happen in the next month, but we will do it at a time when there are no ballots in the voting period to ensure that votes are not lost. Please let the SC know if you are planning to bring forth any ballots soon.
- We moved passwords into Bitwarden so that they are accessible to the SC and WG leaders.

Question in chat: What about group photo from last F2F meeting? Jos said that these photos will be posted to the wiki today.

### Discussion on possible Bylaws issues {.wp-block-heading}

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Dean Coclin (Digicert)

Most of these issues were tackled during a recent Bylaws update.

Issue 1: Who must sign the IPR Agreement?

Issue 2: Consider removing the need to “READ” the antitrust statement before each meeting

Issue 3: Consider adding minimum days for review of minutes for regular teleconferences and F2F meetings

Issue 4: Consider review and alignment of WG Charters

Issue 5: Resolve ambiguity for where to send/post CWG minutes

We have a [doc listing open Bylaws issues][2]

### Summary of accomplishments (2018-11-01 to 2020-10-31) {.wp-block-heading}

_Presenters:_ Dimitris Zacharopoulos (HARICA)
_Note Taker:_ Dean Coclin (Digicert)
_Presentation:_ [Summary of accomplishments 2018-11-01 to 2020-10-31][3]

### Guest Speaker #1 {.wp-block-heading}

_Presenters:_ Doug Hill (RealRandom)
_Presentation:_ [What’s All the Fuss About Randomness][4]

### Any Other Business {.wp-block-heading}

No other business was discussed.

Adjourned

## Server Certificate WG Plenary {.wp-block-heading}

### Attendees {.wp-block-heading}

Doug Beattie, Jeff Ward, Don Sheehy, Ryan Sleevi, Dean Coclin, Atsushi Inaba, Nick France (Sectigo), Dustin Hollenback, Aneta Wojtczak-Iwanicka, Tim Callan, Dimitris Zacharopoulos, Clemens Wanko, Tadahiko Ito, Andreas Henschel, Enrico Entschew, Devon O’Brien, Matthias Wiedenhorst, Eva Van Steenberge, Jos Purvis, Mike Reilly, Karina Sirota, Clint Wilson, Trevoli Ponds-White, Arno Fiedler, Vijay Kumar, Arvind Srinivasan, Saiprasad KP, Bruce Morton, Wayne Thayer, Stephen Davidson, Janet Hines, Hongquan Yin, Peter Miskovic, Hazhar Ismail, Wang Chunlan, Xiu Lei, Leo Grove, Chris Kemmerer, Tom Zermeno, Abdul Hakeem Putra, Ahmad Syafiq MD Zaini, Pedro Fuentes, Tobias Josefowitz, Kathleen Wilson, Ben Wilson, Wendy Brown, Michelle Coon, Li-Chun Chen, Matthias Wiedenhorst, Andrea Holland, Daniela Hood, Clint Wilson, Adrian Mueller, David Kluge, An Yin, Neil Dunbar, Curt Spann, Jan Völkel, Arnold Essing, Paul van Brouwershaven, Hiroshi Sakai, Andrew Whalley, Tim Hollebeek, Sooyoung Eo, Wei YiCai, Rae Ann Gonzales, Mads Henriksveen, Rebecca Kelley, Niko Carpenter, Rich Smith, Doug Hill, Mariusz Kondratowicz, George Sebastian, Aaron Poulsen (Digicert), Eric Mill, Hannah Sokol (Microsoft).

### Approval of SCWG Minutes from last teleconference {.wp-block-heading}

The minutes were approved.

### Apple Root Program Update {.wp-block-heading}

_Presenter:_ Clint Wilson (Apple)
_Note Taker:_ Curt Spann (Apple)
_Presentation:_ [Apple Root Program Update][5]

- Presentation about Apple’s Root Program updates presented by Clint Wilson
- A recap of upcoming changes to the Apple CT Policy (see presentation for details)
- Timeline for new CT Policy: April 1, 2021

Discussion/Questions

Are the changes going to be published somewhere?

- Been published in the CT Policy mailing list
- Will also be published to Apple’s CT Policy page

What is the audit scheme for SMIME sub CAs chaining up to root trusted for other uses (TLS server auth)?

- Apple will provide a response at later time

Details of question from Li-Chun: What is the audit scheme if an intermediate S/MIME CA chain up to a Root with website and secure-email trust bit/EKU ? The intermediate S/MIME CA’s CA & EE certificates are with e-mail protection and clientauth EKU.

- Besides WebTrust for CA, does this intermediate S/MIME CA need to pass principle 4 of WebTrust for CA-SSL Baseline Requirement with Network Security Audit?
- Principle 4 of WebTrust for CA-SSL Baseline Requirement with Network Security Audit is corresponding to Network and Certificate System Security Requirements.
- Or Principle 4 of WebTrust for CA-SSL Baseline Requirement with Network Security Audit is only for a CA with anyEKU in CA certificates but not issues to SSL certificates.

### Cisco Root Program Update {.wp-block-heading}

_Presenter:_ Jos Purvis (Cisco)
_Note Taker:_ Vijay Kumar (eMudhra)

Presentation: [Cisco Root Program Update][6]

**Notes other than presentation:**
Conversion to CCADB: This has been happening in Cisco Root Program for about an year now. It has been finished the first wave of conversion to CCADB content in Cisco intersect and union root stores. Cisco is doing its regular releases using CCADB content, which is the primary source for root inclusion now. This is based on the common trust by other trust stores. The next step on this one is to move to principal inclusion instead of trusting other root stores, which needs direct interfacing with CAs. This is tentatively expected by Spring. CAs should expect a brief request from CCADB channels to confirm their continued inclusion in Cisco Trust Stores. We will then be working on third phase, which includes some sort of contractual relationship with CAs that are included.
Miscellaneous updates: In reviewing the issues that arose in the summer with OCSP and PKIX no-check OCSP Signer flag issues, the tentative plan at this point is to look at establishing a flag date somewhere in the mid-2021 range, by when CAs need to be fixing this problem for TLS certificate roots that is included in Cisco root program. Will circulate the dates way in advance than the deadline. CAs are to be prepared for the same. Planning to work with CAs one-on-one. Will be sharing more in next face-to-face.
Some adjustments to code on intersect and Union, we are doing some more aggressive removal of expiring roots. There were some past problems with AddTrust, etc. What it means is that CAs should be on top of things in getting their newer replacement roots in place, so that it can be made sure that these are included.

### Microsoft Root Program Update {.wp-block-heading}

_Presenter:_ Karina Sirota (Microsoft)
_Note Taker:_ Rae Ann Gonzales (GoDaddy)
_Presentation:_ [Microsoft Root Program Update][7]

**Notes other than presentation:**

All key points available in slide deck.

Dimitris asked for more detail on the flighting releases. Karina replied that it is for different MS “rings”, early releases for selected users that want to test what’s coming early.

### Google Root Program Update {.wp-block-heading}

_Presenter:_ Eric Mill, Devon O’Brien, Ryan Sleevi (Google)
_Note Taker:_ Michelle Coon (OATI)

Presentation: [Chrome Root Program Update][8]

**Notes other than presentation:**

TLS 1.0/1.1 Deprecation delayed, but still rolled out on schedule.
DNS over HTTPS support is not on for everyone by default, but if a browser is already set to use a custom DNS provider, and we know that the custom DNS provider also supports a secure channel, then Chrome will, without changing the provider, enable a secure connection to the user’s already chosen DNS provider.
Blocking insecure downloads from secure pages – staged plan available in slides and the blog post.
Forms on secure page posting to insecure URL – Show strong warning to users within the form before they submit (full page interstitial to confirm they want to submit insecurely). Disable auto-fill; exception for password forms.
URL Display Experiment – Attempting to tackle misleading domains (used in phishing and deceptive campaigns). Just show domain name on URL and cut off the full path. Measuring whether or not limiting to just domain name helps with phishing precautions. May also hide the sub-domain depending on length (deceptive use of sub-domains). Results will be out in 2021.

Certificate Transparency
Substantive re-write presented at CT days in September.

- Sharding required in CT logs in order to become qualified in Chrome.
- Certificates logged multiple times to a CT log could be issued duplicate SCTs that did not actually then get included in the log.
- Exclusively embedded SCTs or exclusively OCSP or TLS SCTs – no longer allow via policy “mixed” SCT; rarely used mechanism. Chrome behavior has not changed, but no longer endorsed by policy.
- Edge and Chrome compatibility with other browser programs.

Chrome Root Program Updates

- Revamp of Chrome Root Program Policy.
- Timeline for Chrome Root Store is TBD yet; follow the root store page.
- Prioritization for inclusion requests.

Questions:

Dean asked about incident reporting and where to disclose incidents and whether or not this needs to be in addition to disclosure on Mozilla list. Ryan responded that this is in addition to the Mozilla list.

Dean asked how the Chrome Root certificate list was populated. Ryan answered that the principles there are captured within the policy – bolded list.

Doug asked if root policy is only for TLS roots or does it include S/MIME? Ryan said that they are focused on Chrome root policy right now. Primary focus right now is on the roll out of Chrome Certificate Verifier in the Chrome Root Store across the various Chrome platforms.

Doug asked if S/MIME Roots are TBD or inherited from the platform in which the browser is operating? Ryan noted that the browser does nothing with S/MIME today. Doug: Use the roots that are known to be trusted globally and not just Chromium Roots. Ryan: Multiple google root stores for multiple google products and teams. S/MIME is separate as they don’t have this in Chrome – close collaboration with other teams and gmail.

Ryan: Prioritizing inclusions of CAs and replacement of CAs, focused on CAs for single trust meaning that for a given certificate and everything beneath it is used for a consistent singular purpose. Previous discussion on having a root trusted for TLS and S/MIME – for Chrome Root Store, ensuring that the hierarchy is for a singular purpose.
Andrew mentioned that for S/MIME there are help center articles on the Google workspace admin help center that discuss how they are used in gmail which is managed independently from Chrome.

### Mozilla Root Program Update {.wp-block-heading}

_Presenter:_ Ben Wilson (Mozilla)
_Note Taker:_ Neil Dunbar (Trustcor)
_Presentation:_ [Mozilla Root Program Update][9]

Dimitris recommended following any questions with the Mozilla team regarding the Bugzilla CA-compliance statistics, owing to the level of detail in the presentation, and regarding the pressure of maintaining meeting schedule.

### CCADB Update {.wp-block-heading}

_Presenter:_ Kathleen Wilson (Mozilla)
_Note Taker:_ Devon O’Brien (Google)
_Presentation:_ [CCADB Update][10]

Topics:

- Update for multiple CP/CPS documents with a many to many mapping to root certificates
- Discussion of ALV and guides on how to use
- Add field called “Full CRL issued by this CA”

Clint: Apple would like CAs to publish links to full CRLs

Discussion being taken to M.D.S.P. due to running behind schedule.

### Report from SCWG Network Security Subcommittee {.wp-block-heading}

_Presenter:_ Neil Dunbar (Trustcor)
_Minute Taker:_ Trevoli Ponds-White (Amazon Trust Services)
_Presentation:_ [Network Subcommittee Update (Summary)][11]
_Presentation:_ [Network Subcommittee Update (Main)][12]

**Notes other than presentation:**
A new Net Sec sub team to explore usage of cloud service providers is forming and would like new participants. The Net Sec group will also be re-organizing the meeting schedule for the sub teams to better align with the primary meetings.

## Thursday, 22 October 2020 – Plenary Meeting (Day 2) {.wp-block-heading}

## Server Certificate Working Group (cont’d) {.wp-block-heading}

### Attendees {.wp-block-heading}

Jeff Ward, Don Sheehy, Ryan Sleevi, Dean Coclin, Atsushi Inaba, Nick France (Sectigo), Dustin Hollenback, Tim Callan, Dimitris Zacharopoulos, Clemens Wanko, Tadahiko Ito, Andreas Henschel, Enrico Entschew, Devon O’Brien, Matthias Wiedenhorst, Eva Van Steenberge, Jos Purvis, Mike Reilly, Karina Sirota, Clint Wilson, Trevoli Ponds-White, Arno Fiedler, Vijay Kumar, Arvind Srinivasan, Saiprasad KP, Bruce Morton, Wayne Thayer, Janet Hines, Hongquan Yin, Peter Miskovic, Hazhar Ismail, Xiu Lei, Leo Grove, Chris Kemmerer, Abdul Hakeem Putra, Ahmad Syafiq MD Zaini, Pedro Fuentes, Tobias Josefowitz, Ben Wilson, Wendy Brown, Michelle Coon, Li-Chun Chen, Matthias Wiedenhorst, Andrea Holland, Daniela Hood, Clint Wilson, Adrian Mueller, David Kluge, Neil Dunbar, Nikolaos Soumelidis, Jan Völkel, Arnold Essing, Paul van Brouwershaven, Hiroshi Sakai, Andrew Whalley, Tim Hollebeek, Wei YiCai, Mads Henriksveen, Rebecca Kelley, Niko Carpenter, Rich Smith, Michael Jahnich, Mariusz Kondratowicz, Aaron Poulsen (Digicert), Tsung-Min Kuo, Julie Olson (Globalsign), Christoph Broter.

### Report from SCWG Validation Subcommittee {.wp-block-heading}

_Presenter:_ Tim Hollebeek (Digicert)
_Minute Taker:_ Julie Olson (GlobalSign)
_Presentation:_ [Validation Subcommittee Update][13]

On the topic of moving from Trello to Github
Dean: Is there a way to automatically propagate github to a public list?
Tim has asked a few people if there are significant github discussions and has tried to get cross discussions going through that platform, would be a useful resource for all to employ

Dimitris: It’s difficult to follow conversation/discussion on github. From his perspective, it would be better to see changes/proposals on github, but conversations/discussions should be on the mailing list.

Paul VB: Migrating to github is better because keeps everything in one spot. Mailing list doesn’t have any search functionality, github is easier to track changes/search for topics.

Tim: Mailing list archives ARE searchable, but not the most intuitive. If the mailing list could automatically insert archived posts in each new message from prior discussion that would be helpful.

Paul: Would also be good to mirror all mailing list discussions to googlegroups.

Ryan: Mailing lists have search functionality. It could be useful to send out digest summaries, google has tools available to accommodate this. There’s room for improvement from infra side and google is researching. You can also subscribe to CABF github and get notified on poll requests etc.

Tim: Will be moving subcommittee items (missed which ones) form trello to github, into appropriate issues, in the next few weeks.

### Report from Quantum Cryptography liaisons {.wp-block-heading}

_Presenters:_ Tadahiko Ito (Secom), Tim Hollebeek (Digicert)
_Note Taker:_ Tobias Josefowitz (Opera)
_Presentation:_ [Update on Post-Quantum Cryptography][14]
_Presentation2:_ [Update on Post-Quantum Cryptography Tarahiko][15]

**Notes other than presentation:**

(Tim Hollebeek presents (see first Presentation))

Tim Hollebeek: Questions?

Dimitris: Things are still quite safe?

Tim Hollebeek: Yes, but it is important to keep up to date on this. It depends on your timeline. If you are producing signatures for highly trusted applications that you want to be able to verify ten years into the future, the timeline is suddenly looking a lot less safe. You have to look at individual use cases, they will need different transition dates.

(Tadahiko presents (see second Presentation))

Dimitris: Is there any algorithm that is a very strong candidate to be used for quantum-safe authentication? Tadahiko: In my opinion, FALCON or DILITHIUM. There are maybe a few more, but there are not that many quantum-safe signature algorithms.

Dimitris: The authentication ones would be the most appropriate and compatible with this working group because we focus on authentication?

Tadahiko: Our authentication data does not have a very long lifetime, it is in fact rather short, so for our use case it may not be extremely relevant yet, in my opinion.

Ryan Sleevi: The term “authentication” might be a bit ambiguous here, we are talking about either key exchange or dignital signatures, and digital signatures is as Tadahiko was saying the question of how long that digital signature needs to be valid. In a TLS exchange for example, digital signature of the key material only needs to be valid minimally for the duration of that session. The digital signature of the certificate used in that negotiation needs to be valid longer, but that is still bounded by say one year. The use of digital signatures for code signing maybe needs to be valid for, say, a decade, and so there are differences there. When we say “authentication”, it may help to be precise here, to talk about “key exchange”, “digital signature”, and how long these things things need to be valid. Dimitris: Thanks for the clarification, that is exactly what I had in mind. I was wondering if there is any differentiation or any different candidate algorithms for this particular case, and for the longterm case, mainly if there is any approach in NIST or other research.

Tadahiko: It seems NIST is concerning itself with the key encryption purpose, but not so much with the digital signature case, so for digital signature, the easiest way is using extended signature schemes. I think hash based signature scheme seems to work a bit better than the next best one, for large inputs. I think we need to think about this; it seems there is not that much discussion about it, currently, and we need to think about it here.

Tim Hollebeek: From my perspective, NIST has started talking the approach that the long term ones are also perfectly appropriate for more shorter termed things, so there is a split between key exchange and signatures and things like that, but other than that they are trying to do something like AES where we have a small number of use case based well-vetted algorithms that work for all of the use cases that they need to, instead of trying to fracture it up and have several different schemes.

### ETSI Update {.wp-block-heading}

_Presenter:_ Arno Fiedler (ETSI ESI)
_Note Taker:_ Enrico Entschew (D-TRUST)
_Presentation:_ [ETSI ESI Activities Update][16]

**Notes other than presentation:** All key points available in slide deck. Main highlight for CAB-Forum is the updated version of ETSI TS-119 403-2 (Part 2: Additional requirements for Conformity Assessment Bodies auditing Trust Service Providers that issue Publicly-Trusted Certificates).

### ACAB’c Update {.wp-block-heading}

_Presenters:_ Clemens Wanko (TÜV AUSTRIA)
_Minute Taker:_ Mads Henriksveen (Buypass)
_Presentation:_ [ACAB’c Update][17]

**Notes other than presentation:**

No additional discussion.

### WebTrust Update {.wp-block-heading}

_Presenters:_ Jeff Ward (BDO), Don Sheehy (WebTrust)
_Minute Taker:_ Andrea Holland (SecureTrust)
_Presentation:_ [WebTrust Update][18]

**Notes other than presentation:**

– WebTrust Temporary Seal is meant to be stop sign or caution sign used if the auditor cannot complete audit procedures within the 90 day deadline due to COVID-19 restrictions.

– Reporting Templates are being updated for consistency of reporting as some standards have changed or been modified slightly. This is in the review stage.

– Updated WebTrust Documents: Discuss effective date with primary certificate users on how these reports are handled for the transition of EV Code Signing merged into Publicly Trusted Code Signing version 2.0. Standard transitional recommendation would be for new audit periods commencing on or after but with an asterisk to contact the certificate users to get agreement on what the transitional report should be for 2020.

– Historically all the WebTrust documents have been on the CPA Canada website this is going to change due to the AODA. CPA Canada decided to only include the latest document on the website and the historical documents will be removed. CPA Canada is working out an effective solution to handle the hyperlinks in the audit reports. One possible solution is a password protected link that is hidden from the public, so that the users of the report can understand what criteria was used.

– CPA Canada figuring out how to handle validating the qualification of auditors. Potential option for practitioner guidance to require passing an exam, this is not expected until late 2021.

No additional discussion.

### Guest Speaker #2 {.wp-block-heading}

_Presenters:_ Michael Jahnich (achelos)
_Presentation:_ [Compliance testing of electronic certificates][19]

### Any Other Business {.wp-block-heading}

### Arrangements for Next Meeting {.wp-block-heading}

Next F2F meeting is taking place Feb-March virtually.

Adjourned.

[1]: /uploads/3.SMCWG_cabf-virtual_day2.pdf
[2]: https://docs.google.com/document/d/1EtrIy3F5cPge0_M-C8J6fe72KcVI8H5Q_2S6S31ynU0/
[3]: /uploads/6.CABF51-Summary-of-accomplishments-2018-11-01-to-2020-10-31.pdf
[4]: /uploads/7.Cab_rr_entropy_authority_douglass_s_changes_2020-10-20_.pdf
[5]: /uploads/9.2020-October-CABF-Apple.pdf
[6]: /uploads/10.Cisco-TRSUpdate-F2F51.pdf
[7]: /uploads/12.Microsoft-CABF-51-Update-PDF.pdf
[8]: /uploads/13.CABF-F2F-51-Chrome-Browser-Update.pdf
[9]: /uploads/13.CAB-Forum-October-2020-Mozilla-Update.pdf
[10]: /uploads/14.CCADB-News-CABF-F2F-October-2020.pdf
[11]: /uploads/15.NetSec-F2F-51-Summary-Presentation.pdf
[12]: /uploads/15.NetSec-F2F-51-Main-Presentation.pdf
[13]: /uploads/16.2020-10-20-Validation-Subcommittee.pdf
[14]: /uploads/17.2020-10-21-PQC.pdf
[15]: /uploads/17.2020-10-21-PQC-2.pdf
[16]: /uploads/18.ETSI_ESI_Update_CAB-Forum-10-2020.pdf
[17]: /uploads/19.20201022_CABForum_Tokio_ACABc_Slides_01.pdf
[18]: /uploads/20.Webtrust-CABF-update-Oct-2020.pdf
[19]: /uploads/21.2020-10-22-CAB-Forum-Presentation-achelos.pdf