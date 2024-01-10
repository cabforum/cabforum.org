---
aliases:
- /2023/04/13/2023-04-13-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2023-04-13 17:20:04
tags:
- Minutes
- Server Certificates
title: 2023-04-13 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting April 13, 2023

## Attendees

Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), David Kluge – (Google), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Joanna Fox – (TrustCor Systems), Johnny Reading – (GoDaddy), Jos Purvis – (Fastly), Mads Henriksveen – (Buypass AS), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Ryan Dickson – (Google), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wayne Thayer – (Fastly), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services)

## Server Certificate Working Group Agenda – 13 April 2023

1. Roll Call and Begin Recording (\* not needed)
1. Read Antitrust Statement (\* not needed)
1. Review Agenda
1. Minutes:

- F2F minutes published
- 16 March to be approved during the call
- 30 March not ready yet

5. Certificate consumers moratorium

- Qikfox application

6. Issues to discuss:

- GitHub issues

1. #370 à “annual” audits. Considering recent change done by the Chrome program
1. Clarification sent out by Chris Clements (email of 31/3)
1. #417 à Parked CA keys
1. #419 à Improve CRL profile specificity in section 7.2

- Email issues

1. Common Name recommendation vs practice

- Future for the EV Guidelines:

1. Convert it into RFC 3647 format
1. Ballot Status – see list below
1. Any Other Business
1. Next call: 27 April
1. Adjourn

## Ballot Status

- Passed
- SC62: Certificate profiles. Under IPR review.
- Failed
- None
- Voting Period
- None
- Discussion Period
- None
- Review Period
- None
- Draft / Under Consideration
- SC59 – Revival of Debian Weak Keys Ballot – Chris Kemmerer (SSL.com)
- SCXX – SLO/Response for CRL & OCSP Responses – David Kluge (Google) / Clint Wilson (Apple): on hold
- SCXX – Make OCSP optional, require CRLs – Chris (Google). On hold?
- SCXX – Clean-up ballot
- Fix inconsistencies between BRs and EVGs
- ISO 3166 (allow 3 characters) in EVG 9.2.8
- Typo in section 7.2.2 of the BRs à to be fixed before the publication of the new version as per SC62
- Changing titles in BRs and EVGs to reflect that are for TLS cert types

## Minutes

Inigo said that the servercert-wg and validation-sc F2F meeting minutes were approved and

published yesterday.

The meeting minutes for March 16th were approved.

## Certificate consumers moratorium

Inigo said we will not discuss the QuickFox inclusion request for today at Ben’s

request for a moratorium on new Certificate Consumer members. Ben said there

was an initial meeting on adjusting the Certificate Consumer membership

criteria yesterday. The group is contemplating changes to the requirements

in a document. Ben said that at the F2F, it was agreed that changes are

required to the membership criteria and did not want to proceed with approving

prior to that discussion. Dean said that there was an outstanding question

to the QuickFox representative to proceed with the request but there has been

no response.

Trev asked Ben if we change the membership criteria, will existing members

need to reaffirm their qualifications? Ben said yes. Dimitris said the Bylaws

allow members to challenge the qualifications of another member. That mechanism

can be used in this case. Trev said that it would be good to add a requirement

that a Certificate Consumer cannot propose requirements that would cause

interoperability issues with Certificate Consumers. Ben said that there may be

interpretation issues of a particular standard and Consumers implement

non-interoperable technologies.

Trev also suggested that we should adopt a culture of “blameless post-mortems” and

not sanction individuals. Ben said that improvements to the Code of Conduct can also

be considered as part of this work. Inigo said that we will continue these

matters on an upcoming call. Inigo then asked the group for next steps on the QuickFox

inclusion request. Dean said that we cannot proceed until they respond to our

request for information. Ben said that with the current criteria, Mozilla will

vote to deny the request, so perhaps waiting until the new membership criteria

are in place may be to QuickFox’s advantage.

Toby suggested that a ballot be created establishing the moratorium. Trev questioned

whether this would create a lot of work. Dimitris said that we have not added

risk by previously accepting new members and questions whether it is good to do

that now.

## GitHub issues

Inigo raised the issue of annual audits (Github issue #370). Ryan said that instead

of “365 days”, it can be changed to “366 days in a leap year” to avoid drifting

due to leap years.

Inigo raised the proposal of upping the version of BRs to 2.0.0 for SC-62, as it is

a very large change. Dimitris agreed with this proposal.

Inigo raised the parked keys issue (Github issue #417). Ben said that Bruce Morton

sent a conceptual example of how this can be done by CAs and invited others to

send him suggestions.

Inigo asked Ryan whether Github issue #419 (CRL profile) is part of the short-lived

certificate/OCSP optional ballot. Ryan confirmed that it is and expects to bring the

ballot to formal discussion in the next few weeks.

Ryan said that having a sheet of all open issues to discuss the disposition of open

Github issues would be make it easy to collaborate.

## Future of the EV guidelines

Inigo volunteered to reformat the EVGs in RFC 3647 format.

## Any other business

There was no other business. Next call will be April 27th.

Meeting adjourned.