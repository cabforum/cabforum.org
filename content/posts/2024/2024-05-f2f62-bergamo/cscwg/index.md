---
author: Corey Bonnell
date: 2024-05-29 00:00:00
tags:
- Minutes
- Code Signing
title: 2024-05-29 Minutes of the Code Signing Certificate Working Group
type: post
---

# 2024-05-29 Minutes of the Code Signing Certificate Working Group

## Attendees

### In the room

Paul van Brouwershaven (Entrust), Bruce Morton (Entrust), Dave Chin (CPA Canada), Ben Wilson (Mozilla), Wayne Thayer (Fastly), Martijn Katerbarg (Sectigo), Dean Coclin (DigiCert), Corey Bonnell (DigiCert), Leo Grove (SSL.com), Tim Hollebeek (DigiCert), Tsung-Min Kuo (Chungwa Telecom), Rob Stradling (Sectigo), Nick France (Sectigo), Inigo Barreira (Sectigo), Sven Rajala (Keyfactor), Wei-Hao Tung (Chungwa Telecom), Romain Delval (Certigna), Josselin Alexmandou (Certigna), Arvid Vermote (Globalsign), Andreas Henschel (D-Trust), Kateryna Aleksieiva (Asseco), Joanna Brawata (Asseco), Eva Van Steenberge (Globalsign), Paul Brown (Globalsign), Christophe Bonjean (Globalsign), Stephen Davidson (DigiCert), Stefan Kirch (Telekom Security), Tadahiko Ito (SECOM), Michal Malinowski (Asseco), Adrian Mueller (Swissign), An Yin (iTrusChina), Chorus Li (iTrusChina), Mats Rosberg (Keyfactor), Kiran Tummala (Microsoft), Puja Sehgal (Microsoft), Mahua Chaudhuri (Microsoft), John Sarapata (Google Trust Services), Miguel Sanchez (Google Trust Services), Adriano Santoni (Actalis), Scott Rea (eMuhdra

### On WebEx

Tobias Josefowitz (Opera), Ashish Dhiman, Vinay (OATI), Aggie Wang, Tim Callan (Sectigo), Nate Smith (GoDaddy), Arnold Essing (Telekom), Josef Nigut (DiSig), Devon O’Brien (Google), Thomas Zermeno (SSL.com), Antti Backman (Telia), Atsushi Inaba (Globalsign), Ryan Dickson (Google), Yoshiko Matsuo (JPRS), Mohit Kumar (Globalsign), Alvin Wang (SHECA), Peter Miskovic (Disig), Marco Schambach (Identrust), Janet Hines (Viking Cloud), Luis Cervantes (GoDaddy), Brianca Martin (Amazon), Mrugesh Chandarana (IdenTrust), Li-Chun Chen (Chungwa Telecom), Nicol So (CommScope), Ian McMillan (Microsoft), Andrea Holland (Viking Cloud), Trevoli Ponds-White (Amazon), Pedro Fuentes (Wisekey), Nome Huang (Trust Asia)

## Minutes

### Elections

Dean and Bruce cannot be re-elected in their respective roles. Bruce is automatically nominated as chair, Dean may be elected as vice chair if he volunteers. Topic for the next few calls.

### Ballot status

* CSC-24: timestamping ballot failed by one vote. Republish vote, start again, new ballot number, new discussion period. Not sure if it can be a new version number because this one officially failed.
* Importing EV Guidelines in CS Baseline Requirements - no further update. Pick-up at next meeting.
    
### OrgID for CodeSigning

Just another field that can be added. 

Options:

* Do nothing
* EV OrgID Requirements
* define it in line with the SMIME BR Requirements, provides more options.

Question from Martijn Katerbarg - Sectigo: Optional or required field? 
Answer: Optional.

Tim Hollebeek - DigiCert: Would MS use it for anything?
Ian McMillan - Microsoft: If it goes into Subject DN, it impacts certain packaging technologies. No desire to change the norms, as not to impact the customers.
Tim: If nobody is going to use it, there's no point in further discussion. Could be used as a unique handle for reputation building purposes. 

Bruce Morton - Entrust: Will get more interesting once we look at having one profile. Currently with OV and EV, there's two types of profiles. EV has org-ID like fields. 

Tim: Preference for the SMIME BR OrgID.

Doing nothing won't impact anything. Hold this for now, if there's a desire to include it, we can discuss it further.

### Reduce CodeSign Certifcate validity to 15 (or other number) of months.

Reducing from 39 months to something smaller.

Ian confirms 15 months. Explains the reasoning: limiting the impact that revocation has. When considering the impact, one consideration is what code is out there that will be revoked now, vs inadvertedly signed as malware. Reducing validity is a great help with that question. Trying to understand where 39 months came from.

Bruce explains TLS was 3 years + 3 months to allow for revalidation. Now it's 398 + 1 month overlap. 398 days would be acceptable instead of 15 months as well, to have the same validity across different.

Ian mentions that internally at Microsoft, it's 15 months, for the same reasons. The actual "validity" is 12 months. Shorter doesn't make much sense - 398 days would be good too. Feedback from CAs about customer behavior was almost 50/50 split between 1 and 3 year, regardless of OV and EV. Agrees that 398 would simplify.

Martijn highlights that CodeSign is a bit different from TLS because it is not a fully digital process - there's a token involved, more testing from customers. The window to replace might be too small.

Tim concurs, especially when using a token. Suggests phased approach. 

Bruce asks if there's any objections to reduction from 39 months to 15 months. Choosing the number might be easier if we agree on the principle of reducing.

Iain likes the idea of 15 months, so it gets customers into a habit of renewing 3 months early.

Tim states he's strongly in favor 398 days. 15 months might confuse customers.

If we choose 15 months, it should be converted to days for linting purposes.

Ian says point about subscriber confusion is taken. Equally lifecycle management is not easy. Concentrate on giving the subscribers enough time.

Bruce mentions there's no key-usage period in the document. Suggests maybe there should be. Ian agrees.

Tim mentions that we could set the not-before date in the future but issue a 398 day cert, to account for the sending of the token. 

Bruce create a draft ballot, we are discussing the number of days, less about the principle itself. Ian to draft a ballot and start with 398 days.

Tim mentions the need to have a serious discussion on the time it takes subscribers to renew.

### Changes to EV CodeSign

Context: creating one type of code signing certificate following changes to the Microsoft Root Program.

Ian talks about how Microsoft Root program has it changes. HDC require an EV certificate to register as a HDC partner. Not required to sign anything after that, just for application to the program. That will change in alignment with the root program, announcement to follow. EV certificate will become optional initially (but still supported). Change by the end of the year (probably). This opens the door to discuss merging EV and OV. Highlights that this is not about getting rid of EV, as much as raising the bar for OV.

Question: How does HDC know it is an EV certificate? Ian: based on issuers. Suggestions from the group: also based on the OID.

Bruce mentions that the discussion is happening, but the new model will take some time. What will this model be? 

Tim says that this has been discussed previously. Proposal was to uplift the strength of validation to EV level, but complexity of the certificate down to OV level. 

Ian: We seem to be stuck with this question. Should we do this? When? Put together a proposal to see what it would look like.

Tim: Digicert and Entrust are looking to work together to look at the question which of the EV requirement provide value, and which ones do not. 

Ian: agrees with this initiative. Invites other CAs to provide input.

Bruce: Good starting point is the work from SMIME, including the Organization Identifier.

Martijn prefers EV light over OV plus.

Tim suggests moving away from EV and finding a new name.

Iain points out that it doesn't matter for subscribers.

Eva Van Steenberge - GlobalSign mentions that in evaluating which elements provide value, it first needs to be established what the goals are. EV validation steps allow to filter out bad-actors for example. If the goal is to filter out bad actors, then certain EV validation steps may have more value. Agree on what it means to be valuable.

Martijn mentions that one motivation might be that a bad actor might want to spend as little money as possible.
    
Bruce shares an example to minimize bad actors: by requiring virtual face to face when paying by credit card.

Speaker unknown: question, is the purpose to making it easier for legitimate customers? Or stopping bad actors? EV is pretty good filtering out bad actors. But there's multiple options to mitigate the risk of bad actors.

Iain says that the goal is balance between making it easier to get code and stopping bad actors. Don't want to have a high barrier for new organizations, for example. Physical address is a barrier. Regardless of validation, bad actors will keep happening. It is more valuable to focus on mitigating the risk, rather than permanently remove the risk.

Speaker unknown: The face-to-face really helps a lot with reducing the risk, whatever we want to call it. Just need to look at what works. Country can act as a signal, but physical address might add less value. We need to evaluate what works.

Bruce asks about requirements for individuals. Ian mentions they can already get certificates today. Bruce compares to AATL which has certain strict requirements regarding hardware and face-to-face for individuals. Code Signing just has the hardware requirement. We're behind on the document signing requirements. For individuals there's a need for doing things better.

Ian agrees, but not just for issuing to individuals, even when issuing to organizations, we should do a better job at identifying the person requesting the certificate.

Dean points out that this is done for Verified Mark Certificates, and that has worked well so far.

Bruce thinks this extra step might add more value when issuing to individuals. 
    
Question: certificates on hardware or signing service. What is the feedback on these changes? 
Ian says that there's no specific data. It might take some time to see how effective these measures are.

Tim to organize a focused group to get a proposal together.

### CT for CS

Tim mentions that Microsoft's input is required for forward motion.

Ian suggests the same approach as discussed earlier: smaller group to work out a proposal. 

Martijn reminds the group to keep in mind fragile state of CT for TLS. There's even less parties for Code signing.

Tim concurs. Good topic for server cert - very valuable too.

Trevoli Ponds-White Amazon Trust Services mentions that there are less CodeSign certs.

Martijn adds that some parties issue many certificates. 

Plus, it should be noted that these certificates are important past expiry.

Tim points out that robustness might be less important because there's no live-checking.

Dean asks the question about the benefits, and who benefits most. This impacts how the solution is designed.
 
Ian says there's an expectation. Additionally, another major part is identifying bad actors, understanding the scope.

Dean asks if this could be resolved by a notification system to Microsoft rather than a CT log. 

Ian wants that all CAs are able to see it. Also it could be used as a tool for relying parties to determine what they want to trust. 

Bruce highlights again the usefulness of the unique identifier in this context.

Next step to get together in smaller group to discuss further and come up with a proposal.

### Other business

None.
