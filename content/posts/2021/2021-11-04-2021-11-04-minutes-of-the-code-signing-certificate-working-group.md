---
aliases:
- /2021-11-04-2021-11-04-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2021-11-04 17:00:00
tags:
- Code Signing
title: 2021-11-04 Minutes of the Code Signing Certificate Working Group
type: post
---

## Attendees 

Andrea Holland, Atsushi Inaba, Ben Wilson, Bruce Morton, Chris Kemmerer, Corey Bonnell, Dean Coclin, Dimitris Zacharopoulo, Ian McMillan, Inigo Barreira, Janet Hines, Joanna Fox, Martijn Katerbarg, Michael Sykes, Sebastian Schulz, Tim Crawford, Tim Hollebeek, Tomas Gustavsson

## Minutes 

**Minute Taker:** Martijn

**Anti-Trust statement
** Dean read the anti-trust statement

**Previous Minutes
** Minutes from October 13th and October 21st are approved. Dean will send them out to the public list

### SC-50 – Remove the requirements of 4.1.1.**

** 

Bruce: SC50 In the Server Certificate working group s a ballot where they would change 4.1.1 to say “No Stipulation”. Do we care about this or not, and do we want to add any additional information here.An email was sent out about this on the 1st of November.

Basically our CSC BR call up a specific version of the BR’s due to which it will not impact us. Now the question is if we want this to impact us, do we just delete it?

Tim: No we just handle it the same way we handle the process to stay in sync with BR updates. Next time we review we can just update the version number. We will need to review the text when we do that

Bruce: In two weeks that ballot will be approved or not. After that we can take steps to see if we need to change anything.

Tim: Are we going to review every time they pass ballots now?

Bruce: I think we should do that. Sometimes it makes sense to have a different process but CA’s don’t like having different processes for different certificate types when they don’t have to.

To be kept on the agenda for the next meeting

### Ballot status on ballots 11 and 12 

Bruce provided an update on both:

- CSC-11 has gone though IPR review and is now complete. The version of the CSC BR document has been sent out and published.
- CSC-12 is now out for IPS review running through December 3rd 2021.

### CSC-6 Subscriber key protection 

- Ian has sent out a draft on November 3rd based on CS BRs version 2.5. If needed a redline based on 2.6 can be created and sent out. All changes are centered around section 16.3
- A few changes were received from Bruce regarding signing services which was mainly cleanup items in terms of EV vs non-EV.
- EV references and stipulation date removed from 16.2
- Short discussion on the required FIPS level ensued:
- Corey: In 16.2 we’re specifying FIPS level 2, which with current wording would prohibit higher levels. Don’t we want this to say “Meets or Exceeds” or “At Least”?
- Ian: Yes indeed. This needs to be updated.
- Dimitris: From 16.3 we removed the equivelant part?
- Ian: Yes.
- Dimitris: But we keep it in the signing services
- Ian: Is it? We should get rid of that too
- Dimitris: So we only recognize FIPS and Common Criteria (CC)?
- Ian: Correct
- Subsection 16.3.1 was added. We’re creating a common bar for all CS certs and how keys are generated and protected.
- TPM and software protected keys are no longer supported
- Subscriber needs to host a hardware crypto module that meets the specified requirements, or a cloud based key generation protection solution that meets those requirements and is configured in a way to log all access operation and configuration changes on the resource securing that private key.
- Ian: One thing that has come up for discussion around MS is the increasing popularity of confidential computing mechanisms such as SGX Enclaves and other competitive solutions with none of them meeting FIPS compliance or certification as far as we are aware. In the future I can see subscribers wanting to leverage these. I don’t want to say no to something new, but I don’t believe we need it for now.
- Private Key Verification was for EV only previously, now for all. We also changed that a CA can now ship with or without a preinstalled key pair. Previously this was only with a preinstalled key pair. This way subscribers can generate their own keys on it.
- A discussion is started on key verification:
- Sebastian: Could we have this say that CA makes sure the appropriate module is received. I want to keep it more open that the subscriber can receive the token a different way for example by a third party contractor.
- Inigo: In fact sometimes users buy their own token.
- Dimitris: If you are delegating this to a third party that is part of your audit, I don’t think we need a different language.
- Sebastian: Yes, making the requirements that the subscriber must receive a module, leaves to interpretation and have the CA ship it directly, or have a hardware vendor or third party do that.
- Tim: Is the CA able to make sure that the subscriber received the token? The CA might ship it, but it might not get there.
- Dimitris: I actually like the original text. The original text makes sense, the new text, it doesn’t really matter. The subscriber can go buy their own module from the local store. For preinstalled keys, yes they must ship it, but without preinstalled keys, the subscriber should be able to buy their own. I think we should separate the 2.
- Bruce: Yes we should indeed. Preinstalled key is 1 item. But how do we verify when it’s not preinstalled.
- Dimitris: Any of the other items, such as an Audit verifying they generated the key on the module.
- The wording is discussed further, there being a strong favour for key attestation to be used. Ian will make adjustments to the suggested text for the ballot.
- If a CA comes up with new means they shall publish it in their CPS and they must propose this to the CA/B forum within 6 months. Dimitris adds that we should have that as item 7, Any other method

### CS BR Format Change**

** 

Corey went through the CS BR’s and did a section by section comparison with the TLS BR’s. It looks mostly consistent. The next step will have to be a review to see there haven’t been made any mistakes and then get it up for a vote.

**Other Business
** None

**Next Meeting
** November 18th