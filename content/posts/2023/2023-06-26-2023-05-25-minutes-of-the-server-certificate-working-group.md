---
aliases:
- /2023/06/26/2023-05-25-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2023-06-26 11:17:07
tags:
- Minutes
- Server Certificates
title: 2023-05-25 Minutes of the Server Certificate Working Group
type: post
---

# Server Certificate Working Group Meeting May 25, 2023

## Attendees

Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Cade Cairns – (Google), Chad Ehlers – (IdenTrust), Clint Wilson – (Apple), Corey Bonnell – (DigiCert), Corey Rasmussen – (OATI), Daryn Wright – (GoDaddy), Dean Coclin – (DigiCert), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Enrico Entschew – (D-TRUST), Eva Vansteenberge – (GlobalSign), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Jamie Mackey – (US Federal PKI Management Authority), Joanna Fox – (TrustCor Systems), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Kiran Tummala – (Microsoft), Kyle Duren – (Yahoo Inc), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Marco Schambach – (IdenTrust), Michelle Coon – (OATI), Miguel Sanchez – (Google), Nate Smith – (GoDaddy), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Ryan Dickson – (Google), Scott Rea – (eMudhra), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Trevoli Ponds-White – (Amazon), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services).

Server certificate WG

- Minutes:

- May 11th, circulated: approved

- April 22nd, sent this morning: put for approval for next call

- Membership:

- Yahoo: invited: Kyle: you have to be invited for every call, not granted by default.

- Commscope: we received IPR. Dean: Associate member status, their root has not been accepted by browsers. Should be non-controversial.

- QikFox: Paul van Brouwershaven (Entrust) downloaded application; confirmed browser.

- Ben Wilson (Mozilla) noted this was not a criteria for membership, but for maintaining membership: update their software at least every 6 months?

- Clint Wilson (Apple) raised that chromium (as the engine) hasn’t been updated since August/September 22, no update log, no schedule, couldn’t find when it was last updated.

- Dimitris Zacharopoulos (HARICA) asked if there is a requirement when they enter the group to ask? It is an ending requirement, people could challenge them once they joined but it’s not an impediment to become a member.

- Paul van Brouwershaven (Entrust) confirmed he checked the signature which was dated on 14th of February 2023, so within 6 months.

- Clint Wilson (Apple) pointed out that this was not necessarily an indication of an update

- Paul van Brouwershaven (Entrust) confirmed this was merely the last time they signed the browser, but no change log.

- Iñigo Barreira (Sectigo) asked a question to Dean, if we did reply with something?

- Dean: nothing since before the last meeting (confirmation they were a browser was necessary)

- Iñigo Barreira (Sectigo) confirmed that we hadn’t replied to them for a while. Approve the application?

- Dean: Unless there’s a call to vote, dissent noted in previous minutes, unless someone does, there’s no choice but to approve.

- Dimitris Zacharopoulos (HARICA) confirmed interpretation

- Dean: confirmed membership is approved, will inform them and upload IPR and addition to mailing list and wiki

- Inform Commscope:

- Logius: waiting for SMIME WG decision, if SMIME accepts, then we can remove from server cert wg. Will contact Steven.

- Issues:

- Issues related to NetSec have been moved to NetSec. Informed Clint there will be a few open issues there.

- Question: proposal for 3.3 by external person. Can external people propose?

- Dean Coclin (DigiCert) clarified they can’t because they didn’t sign IPR

- Dimitris Zacharopoulos (HARICA) highlighted that they can post because it’s public.

- Past practice is to respond to the issue that they have to sign the IPR agreement and become an interested party, then close issue. There’s several examples handled by Ryan Sleevi in the past.

- Ben Wilson (Mozilla) asked Dimitris Zacharopoulos (HARICA) if he wrote something.

- Dimitris Zacharopoulos (HARICA) confirmed that it was short because he happened to know the external party, and wasn’t sure if the IP issues were resolved or not. He said that this can be handled however the chair wants to handle it, can be long or short.

- Clint Wilson (Apple) agreed with everything that’s been said. He asked if the question could have been sent to the questions list – maybe that’s a way to respond, divert them to the question list.

- Dimitris Zacharopoulos (HARICA) pointed out that this could bypass the IP protections.

- Clint Wilson (Apple) suggested that what was posted wasn’t a proposal, but a suggestion to take up this topic. There was no contribution, just pointing towards an RFC.

- Tim Hollebeek (DigiCert) raised the more general point that we don’t have an answer. In Github, we couldn’t always enforce access control because things were being discussed in private repositories. This was a big issue with the profile ballot discussion, outside of an IP control area. It’s a reasonable concern that was never properly resolved, and that we should look at github process to make it more compliant with IP protection, especially in the light of contributors (not as much for people asking questions).

- Dimitris Zacharopoulos (HARICA) suggested we could ask the person to become interested party and participate in mailing list.

- Iñigo Barreira (Sectigo) said he would reply and say just that, just sign IPR.

- Iñigo Barreira (Sectigo): Tables weren’t correctly formatted – what is the status? Part of the clean-up?

- - - Ryan responded that Jos mentioned this would be brought up in the forum infrastructure working group?

- Last point: QGIS validation.

Pedro mentioned that this topic was already discussed a few weeks ago, more or less consensus that EVGs, by fact that they don’t specify the use of QGIS when doing organization validation, it could be understood that it is not allowed. On the other hand he highlighted that there’s no stipulation to disclose QGIS for certain validations. Pedro shared previous slides on the topic. Minutes show the presented (and comprehensive) slides.

Ben Wilson (Mozilla) had some comments but didn’t want to take more time. He asked if this could be moved to an email tread or to the F2F or some other forum?

Iñigo Barreira (Sectigo) suggested adding it to the F2F agenda.

Pedro was happy to share the text for discussion.

Dimitris Zacharopoulos (HARICA) suggested sharing a PDF, and Iñigo Barreira (Sectigo) proposed taking the discussion to Github. Tim Hollebeek (DigiCert) said he was willing to work with Pedro on this for a ballot.

- Potential topics for the F2f agenda:

- - New meeting slot.
    - Presentation from Paul.
    - Another presentation by Amazon Trust Services
    - Any other topic? Just let Iñigo Barreira (Sectigo) know.

- Ballot status

- Ryan is working on SC63, lots of comments on Github. We’re in version 2, continue discussion there?

- Ryan said that comments died down, there was a suggestion for some structural changes. This was incorporated. Rob from Sectigo had a comment which was also addressed.

- Ryan specified it was the intent to proceed with the discussion in version 3, which he hoped would be the last version and he encouraged checking changes. He appreciated everybody sticking by while the text was fine-tuned. He noted that there’s a separate branch. This will be the basis for version 3.

- Debian weak keys: Tom confirmed that there were two endorses and the final language was being approved, and hopefully the ballot should be on the list today.

- Moratorium: Ben Wilson (Mozilla) is working on this, but he needs a second endorser. With the approval of QikFox, he mentioned he didn’t want to go through another application and have the same situation happen.

No other business.

Next call on June 22nd.