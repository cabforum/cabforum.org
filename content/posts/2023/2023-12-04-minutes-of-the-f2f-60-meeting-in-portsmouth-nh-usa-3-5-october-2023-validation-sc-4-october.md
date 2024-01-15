---
aliases:
- /2023/12/04/minutes-of-the-f2f-60-meeting-in-portsmouth-nh-usa-3-5-october-2023-validation-sc-4-october/
author: Iñigo Barreira
date: 2023-12-04 16:02:43
tags:
- Face-to-Face
- Minutes
- Server Certificates
title: Minutes of the F2F 60 Meeting in Portsmouth, NH, USA, 3-5 October 2023 – Validation
  SC (4 October)
type: post
---

# Validation Subcommittee

Date: October 4, 2023

Minute Taker: Clint Wilson (Apple)

Validation WG Chair: Corey Bonnell (DigiCert)

Prior Meeting Minutes approved

## Agenda

Report on validation-sc progress since F2F #59 (5 minutes)

Presentation of results from the domain validation threat modeling tiger team (1 hour to 1 hour and 15 minutes, led by Michael @ ATS)

Presentation on MPDV/MPIC (30-45 minutes, led by Ryan & Chris @ Chrome)

(Time permitting) backlog grooming

## Report on validation-sc progress since F2F #59

Slides:

- Threat modeling team has met several times regarding primary discussion topic today (results from the domain validation threat modeling tiger team) and has made good progress.

- Progress made on MPIC with presentation to follow today.

- Review of Applicant/Applicant Representative analysis resulted in several changes as part of “Subscriber Agreement” ballot, some items moved to SCWG, and documented others in Github for future work.

- Q Misell presented on use of ACME for certificates issued with Onion domain names, with a focus on CAA checking for Onion domain names. Work continues at IETF with additional participation by members of CA/BF.

## Presentation of results from the domain validation threat modeling tiger team – Michael Slaughter (Amazon)

Slides:

(Comments added beyond slide content)

- Purpose is to walk audience through conversation which took place amongst tiger team and discuss within broader group

- Team put together to explore risks, threats, implications, etc. related to formalizing allowance of CAs to have DNS delegated to them for the purpose of validation Applicant domains under method 7 (3.2.2.7) of the TLS BRs.

- Today is focused on presenting threat model, gathering feedback, and (as necessary) continuing to improve it.

- Assumptions were important to ensure the threat model was addressing specifically the delegation of dns for domain validation, not issues inherited from internet at large.

- In scoping this threat model, it was focused solely on the domain control verification system (regardless of whether that’s a system which shares properties with other systems or not)

- Now is a good time to provide feedback so we can continue this work; on to the discussion

(Post presentation)

Aaron G: 2 small things.

1. There’s parallel work in DNSOP WG of IETF, draft around domain verification techniques. While it’s likely not going to be a normative RFC, it does call out that if you’re doing domain control verification via CNAME records, then the value you’re delegating to should be a random value. This guarantees that the subdomains used by the CA are unique to each Applicant/Subscriber. 

Slaughter: Is the important attribute the randomness or the uniqueness?

Aaron G: The draft isn’t clear on that point, but it says it SHOULD be a random value and has a bit of justification/explanation.

2. Revisiting the idea of removing the use of the random value or request token by the CA; if there’s no random value at all (if the subdomain delegated to is a hash of the account ID, for example), that puts us in the situation of dangling delegation and issuance. The Applicant’s control of DNS could disappear and issuance could persist, so having a random value \_somewhere\_ seems important, whether that’s in the TXT or the CNAME.

Paul V: Where the CA creates a random value and then sets it in the zone the Applicant delegates to; what’s the value then of that random value?

Aaron G: Yes it could be pointless in some circumstances, but if validation can continue to succeed when the Applicant no longer has control over their DNS.

Paul V: If the domain loses control then the DNS gets reset, so the records won’t be there. Maybe a domain operator forgets, but that’s the responsibility of the domain operator.

Aaron G: Suppose an Applicant sets up a CNAME record pointing to the CA. CA looks at CNAME, sees it’s pointing at me, and just stops there. How is that different than looking up a CAA record, seeing that it says the CA can issue, and using that as evidence to issue?

Paul V: If these aren’t any different, then maybe it’s fine and we should allow it. Maybe in combination of the account-uri binding.

Slaughter: This topic is really about future possible work, where perhaps it \_could\_ be done differently.

Paul V: The task force should look at the random value so we can determine which way we go.

Slaughter: To clarify, we’re proposing going 2 different directions.

Aaron G: The CAA with account-uri could be equivalent.

Tim H: One key thing here is that this would be new semantics, where CAA records set up without this intent need to be explicitly acknowledged. Even just a boolean flag.

Dimitris: Is there a maximum timeframe where the delegation needs to be renewed? Or could it be an indefinite delegation?

Slaughter: We discussed this; are you suggesting that a new CNAME needs to be added some period of time?

Dimitris: Something to indicate the Applicant’s awareness and the time it’s allowed for, with a maximum value.

Tim H: We haven’t had great success with 5280’s time bomb, so I don’t we should do that.

Slaughter: What’s the concern or reason for that?

Dimitris: To ensure the Applicant’s aware of the delegation, that they’re not setting/forgetting it.

Trev: Perhaps an assumption should be added that Applicants won’t forget how to manage their certificates/domains.

Paul V: Include the date the delegation was created, then have the CA determine when appropriate to update/renew.

Tim H: Yeah this can be a certificate management feature/function, not BR-mandated.

Clint: Tim, by time bomb did you just mean notAfter?

Tim H: Yes, it’d be great to have something better than notAfter.

Aaron G: What does this do to CA agility? There are ACME clients that drop the account private key after issuance, creating a new ACME subscriber account for each issuance. This has downsides, but one of the upsides is that each time they contact the CA, they’re brand new getting the most up to date of whatever. If someone sets delegation and forgets it, what does that do to the CA’s ability to change the format of their CAA records, or evolve their validation methods over time? If the Applicant is never contacting the CA, what would that do?

Slaughter: I think this would allow decoupling of issuance from validation, so there’s still the need to communicate with the Subscriber.

Trev: The Subscriber’s still going to get a new certificate, so there’s still the same frequency of contact with the CA.

Slaughter: It also enhances agility in some ways, for example during subCA migration to enable pro-active re-validation and issuance from an updated subCA.

Trev: We had a discussion earlier today about revocation, and something here is you can develop mechanisms to check when Subscribers validation is likely to fail.

Slaughter: Which generalizes to the same communication path and problem of contacting the Applicant/Subscriber to inform them “your validation is going to expire”.

Corey: Next steps will be producing ballot text for updating method 7 and then separately working on identifying ways this type of delegation can be extended further (like CAA). If anyone would like to join the tiger team working on that, it’s certainly open. Discussions will continue!

## Presentation on MPDV/MPIC

Slides: [https://drive.google.com/file/d/1LTwtAwHXcSaPVSsqKQztNJrV2ozHJ7ZL/view?usp=drive_link](https://drive.google.com/file/d/1LTwtAwHXcSaPVSsqKQztNJrV2ozHJ7ZL/view?usp=drive_link)

(Regarding slide around RPKI’s ability to impact equally-specific prefix attack)

Paul V: I believe the source will be announced and only the autonomous number is trusted to announce the route. But RPKI must be enabled by all parties in order to address the issue, so that’s how it doesn’t address the problem.

Tobias: No, this is not correct. This is the understood state of RPKI, you can always inject one of the ASes that is allowed for the originated prefix, just in front of your announcement.

Paul V: You can’t announce someone else’s AS.

Tobias: You can. It was intended to catch misconfigurations more than provide security, though it has security properties because if you inject a path this way it’ll basically always be longer since there’s at least one additional element.

Paul V: It’s not important. It was just a comment that it might be a more detailed scenario, but what you’re saying might be true.

(Regarding slide on “Applicable Validation Methods”)

Martijn: This would be applicable for looking up the email, but not for sending the email, is that right?

Ryan D: Email-based validation is out of scope.

Clint: So if using 3.2.2.4.2, would looking up the SMTP server/ MX record be susceptible? Or susceptible, but out of scope?

Ryan D: Out of scope.

Paul V: Doing MX record lookups through MPIC would be highly impractical.

Clint: Why?

Paul V: Because it’s done by different infrastructure or not looked up as part of validation, so if you tried to do this you’d get flagged for spam.

(Regarding slide on “Quorum Requirements”)

Martijn: Perhaps raise 2-5 perspectives to 3-5 since 2 wouldn’t really give you sufficient data to know which one’s right/wrong especially if 1 non-Corroboration is allowed.

Ryan D: This does go up over time in the proposed update, increasing to 5 by 2026, but we’ll revisit that lower bound recommendation specifically.

(Regarding slide on “What might it cost to run one of these services?”)

Tim H: If this isn’t 100% necessary, perhaps we shouldn’t be discussing this because of the IPR policy.

Ryan D: Good point, I’m trying to highlight that it’s reasonable to conclude that the cost of implementation/operation is less than the cost of the active attacks occurring.

(Post presentation)

Tim H: I think the IETF is a great idea, it’s perfectly acceptable to run these ideas by them and get expert feedback.

Ryan D: We really are appreciative of feedback and comments, ideally in Github, but wherever you can.

Corey: It’s great to see the progress from a presentation to a concrete ballot in just a couple meetings.