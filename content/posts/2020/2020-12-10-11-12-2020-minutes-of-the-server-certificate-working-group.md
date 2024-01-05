---
aliases:
- /2020-12-10-11-12-2020-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-12-10 19:17:00
tags:
- Minutes
- Server Certificates
title: 2020-12-11 Minutes of the Server Certificate Working Group
type: post
---

## Attendees (in alphabetical order) 

Adrian Mueller (SwissSign), Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (SecureTrust), Christy Berghoff (Federal PKI), Curt Spann (Apple), Daniela Hood (GoDaddy), David Kluge (Google), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Li-Chun Chen (Chunghwa Telecom), Mads Henriksveen (Buypass AS), Michelle Coon (OATI), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority)

## Minutes 

### 1. Roll Call 

The Chair took attendance.

### 2. Read Antitrust Statement 

The Chair read the Antitrust Statement.

### 3. Review Agenda, assign minute taking 

Tobi takes minutes for the current call, Dustin from Microsoft will take minutes for the next call.

### 4. Approval of minutes from the F2F 

Previous teleconference minutes were approved at the F2F, so this is about approving the minutes from the F2F. No objections to approving the minutes from the F2F.

### 5. Validation Subcommittee Update 

_Tim reports:_

First we had a brief discussion of the proposal from Secure Trust to finish up the Ballot on HTTP validation that we talked about after the last F2F and the current F2F, so it seems like we’re down to a list of codes that everybody kind of agrees on, so I hope the discussion process for that will get started soon. Everybody on the call seemed to like the current proposal.

Then we spend most of the time talking about the continuing certificate profile effort, mostly around as we discussed at the F2F what the strategy for actually expressing these certificate profiles in mark down with pretty table formats so that we can start working on getting this in the form where the profiles could actually be included in the Ballot and put back in the Baseline Requirements.

We’re going to continue discussing that at the next meeting, and we’re going to have an actual example to look at in Markdown, it.’s going to be very exciting. We’re starting with the most complicated use case first, which is the TLS and identity ones, and the rationale for that was we want to make sure what actual markdown table format we come up with is robust to the most complicated use case so we’re starting with that one, and if that looks good then we’ll go ahead and do the Root and iCA profiles which mostly involves just deleting things and changing a couple of things here and there.

That’s where we’re at, so we’re hopefully going to have a very productive call next week.

### 6. NetSec Subcommittee Update 

_Neil reports:_

Not a great deal to report, short meeting. Currently in the process of rescheduling our meetings, intending to have the SC call just before the bi-weekly SCWG call instead of after the forum call. We noticed a reference to 7 years log retention overlooked by Ballot 28 (5.5.2), we will try to bring that into the same scheme as 5.4.3. SC39 fixes the NCSSRs definition of Critical Security Vulnerability to have the most recent CVSS URL as well as referring to CVSS version 3, not version 2. I hope this will enter the discussion period soon.

### 7. Ballot Status 

No Ballots in discussion, voting or review at the moment.

#### Draft Ballots under consideration 

_SCXX Offline CAs_

Ben: I sent out an email, hoping for some further input from everyone. This is not the same as the Zone Ballot but an entirely different effort, created and pushed forward by the Webtrust People, Tim from BDO worked on it. I could re-send it. Jos: Maybe it would be a good idea to re-send it.

#### Ballots held previous to the F2F 

_Minimum expectations regarding weak keys_

Chris: We have completed our language post SC30/31, pointing to the correct locations. Our plan is to post our final language for discussion, but as far as we are concerned we have the language very close to what it is going to be. We will post it do discussion very soon.

_SC34 Account Management_

Tobi: Not quite sure what to do with it, hoping for some input from the NetSec SC. It was never actually posted, it is currently just a GitHub Pull Request, where we received some feedback. The question is if it somehow can be salvaged and the different aspects combined. If not maybe the right thing here is to drop it.

_Removal of Zones from NCSSRs_

Ben: No updates, but it’s still a pain point and we want to keep pushing those.

### 8. Membership applications 

We have several membership applications that need review.

_KPMG Korea_

Wayne: KPMG Korea is applying as an Interested Party, which is fine but kind of interesting as KPMG of USA is a member. They sent us an IPR agreement signed with a typed signature, we have asked for a properly signed one. I propose to accept their membership as Interested Party pending a properly executed IPR agreement.
Dean: Are they not a WebTrust practitioner and thus an Associated Member?
Ryan: No, we have a WebTrust Task-force and it is under the aegis of CPA Canada. It has named participants, representatives from a number of firms participate in this, and we have our wonderful liaisons of Don and Jeff, so when we talk about WebTrust being an Associated Member, we are really saying here CPA Canada and the WebTrust Task-force that they administer as part of that is an associate member. So these are highly different entities, it is not that every WebTrust practitioner is an Associate Member. We entered into agreement with CPA Canada when we say WebTrust is an Associate Member.
Jos: So if CPA Canada were to designate them as their representative or one of their representatives to the Forum, that would be a different story, but until CPA Canada or the WebTrust Task-force does so, they would be considered independent? Does that make sense?
Ryan: I think we discussed this possibly 2 years ago, with ETSI members wanting to join as associate members. And this is where we have ACABc and what is role of ACABc of vs. ETSI, so this may have been Shanghai, but when it comes to a lot of the individual audit firms we want to sort of deal with the appropriate supervisory body if you will, and then we allow everybody else to join as Interested Party. This is in parts because if everyone were an Associate Member, we would have hundreds of auditors in the room, and the concern at the time was this would be very expensive for the host.
Jos: It also gets confusing because you then have to keep track of who they are speaking for, e.g. WebTrust or KPMG Korea.
Dimitris: Actually we have never had official approval of Interested Parties, as soon as they signed the IP agreement we would automatically admit them as Interested Party.
Jos: Ok, then we will accept them as an Interested Party.

_Telia Company_

Jos: Applying as a Certificate Issuer in the SCWG as well as the S/MIME WG, they submitted a signed membership application signed by someone from their legal department authorized to sign for the company, they submitted the main website to their company, the email addresses of employees who will participate, contact information, URL of their last WebTrust and Baseline audit, third party website that uses their certificates, copy of an issued certificate to demonstrate compliance, and they are already included in at least one Root store. Are there discussions or objections to admitting them as a member?
Dimitris: Have you verified they are part of one root store already?
Ryan: They are part of at least one root store!
Jos: I visited the site they supplied and I got no objection from my browser.
Ryan: Dean has previously replied to their application request, asking for the appropriate authority to sign, so I was not sure if you received an updated IPR agreement, the other thing I thought was missing from the application and that they have already provided in a direct follow-up, what Chartered Working Groups they wish to participate in.
Jos: They did respond back that they want to participate in the SCWG and the S/MIME WG, and the attached membership application was signed by Pasi Mehtonen, who they say is “one of the persons at Telia that can create binding for the company”. There was some direct back and forth between them and Dean, I will forward that out to the management list so that people have a chance to see it.
Ryan: We can keep all the IPR agreements on the wiki.

_POS Digicert (Malaysia)_

Jos: Entirely separate from DigiCert, CA in Malaysia, submitted the list of their representatives, test website, completion of their audits. The question was, they are still waiting for inclusion into Mozilla’s Root Program and are thus applying as an Associate Member.
Dean: Yes, they claim they are pending in Mozilla and are hence asking to become an Associate Member until their application in Mozilla is approved.
Jos: In the past we have granted temporary Associate Membership in such cases, which would expire unless renewed after a year.
Ryan: I understand they are in the MS Root Program but they are distrusted, so they are not permitted to issue any new certificate.
Mike: Typically when we deprecate it is due to not complying with Root Programs requirements.
Jos: They did not try to join on the merit of being in the MS Root Store yet.
Ryan: I just wanted to point that out. To accept them as Associate Members for now sounds acceptable.
Dean: But we should make it temporary. We have done that in the past.
Dimitris: We used to decide for one year but decided to perform the review 1st F2F meeting every year.
Jos: So that would mean reviewing their membership (application) in the April F2F 2021. It does not really take a lot of time to review, so we can just review at F2F.
Dimitris: So the proposal is to accept them as an associate member and we approve it?
Jos: Yes. Any objections to accepting them as an associate member?
Jos: None noted.

### 9. Any Other Business 

No other business.

### 10. Next call 

The next scheduled meeting is 26 November, so it is canceled because it lands on the US holiday of Thanksgiving. 10 December is now the next meeting.