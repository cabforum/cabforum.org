---
author: Iñigo Barreira
date: 2024-06-06 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2024-06-06 Minutes of the Server Certificate Working Group
type: post
---

## Attendance

Aaron Gable - (Let's Encrypt), Aaron Poulsen - (Amazon), Abdul Hakeem Putra - (MSC Trustgate Sdn Bhd), Adam Jones - (Microsoft), Andrea Holland - (VikingCloud), Ben Wilson - (Mozilla), Brianca Martin - (Amazon), Chad Dandar - (Cisco Systems), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Gregory Tomko - (GlobalSign), Inaba Atsushi - (GlobalSign), Jaime Hablutzel - (OISTE Foundation), Janet Hines - (VikingCloud), Jos Purvis - (Fastly), Mads Henriksveen - (Buypass AS), Mahua Chaudhuri - (Microsoft), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Nate Smith - (GoDaddy), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Pedro Fuentes - (OISTE Foundation), Peter Miskovic - (Disig), Rebecca Kelly - (SSL.com), Rich Smith - (DigiCert), Rollin Yu - (TrustAsia), Ryan Dickson - (Google), Sandy Balzer - (SwissSign), Scott Rea - (eMudhra), Sissel Hoel - (Buypass AS), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Wendy Brown - (US Federal PKI Management Authority)

## Roll Call

The call’s recording was enabled.

Inigo greeted participants and opened the meeting.

Chris Clements is taking minutes.

Inigo Barreira opened the meeting and started the roll call. 

## Read Antitrust Statement

Inigo read the Note-well.

## Review Agenda

No additional agenda items were raised for discussion.

## Approval of minutes

Minutes from F2F #62 not ready nor circulated yet.

## Membership

No new applications.

## Discussion

Dimitris Zacharopoulos noted the open question on the Forum list and Management list that mostly affects the SCWG. He asked that we be mindful of time and if we decide to have this conversation in the Forum level meeting, that's fine. We just need to make sure the topic is approached. 

### GitHub open issues

- GitHub´s open issues triage (10 issues per call min): 316, 320, 321, 326, 331, 337, 341, 343, (351 and 352 or 370 and 387?)

   - 316: Inigo asked Clint if this issue has moved to NetSec, to which the answer was no. In short, the TLS BRs use the word “risk assessment” but it’s not defined. Ben suggested moving this issue to the Definitions and Glossary Working Group. Ben also stated that there are certain components of a risk assessment and that it's hard to create a definition for it unless we want to point to some statement of what a risk assessment is. One of the comments in the issue suggests making the definition specific to the CA/B Forum perspective. Clint agreed and stated the original issue was just the fact that there was no definition, but there is a corollary that if we’re going to use risk assessment effectively, that probably requires more changes to the document itself. Outcome: move the issue to the Definitions and Glossary Working Group.

   - 320: This is similar to issue 316. “PKI system” could probably be replaced with the use of one of the definitions from the NCSSRs. This could also be moved to the Definitions and Glossary Working Group instead. Trevoli Ponds-White suggested anything that says “define this term” or similar should be moved to the Definitions and Glossary Working Group. Martijn suggested applying the ‘definitions-candidate’ label for easier tracking. Outcome: move the issue to the Definitions and Glossary Working Group.

   - 321: Aaron Gable sought clarification regarding which section of 4.9.10 is being referenced by this issue. Dimitris suggested maybe 4.9.7 was already updated and this comment could have been from an older version of the TLS BRs. Aaron stated this issue was created before there was a CRL profile in section 7 and this issue is most likely resolved. Trev suggested issues include which version of the BRs is applicable to help future us. Clint is currently working on an issues template that would include data like this and he’ll add this specific item. Martijn suggested adding automation to automatically reference the BR version when the issue is created. Outcome: close the issue.

   - 326: Inigo asked Corey Bonnell if this was being tracked in the Validation Subcommittee. Corey was not sure if this issue was on the project board. Clint stated this is on his backlog and he plans to review, but if the Validation Subcommittee wants to action it, that’s fine too. Corey suggested if Clint wants to take the lead on this issue, that’s great. Outcome: assigned to Clint.

   - 331: Inigo suggested this issue be moved to the Definitions and Glossary Working Group. Dimitris suggested changes were made to section 1.6.1. Clint confirmed they’re incorporated by reference and suggested that instead, this issue can be closed. This issue predates the ballot that incorporated the NCSSRs by reference. Outcome: close the issue.

   - 337: This issue has already been fixed as the title of the TLS BRs has been updated. Outcome: close the issue.

   - 341: This issue should go to the Definitions and Glossary Working Group and then come back to the SCWG. Dimitris clarified that the output from the Definitions and Glossary Working Group should come back to all Working Groups. Outcome: move the issue to the Definitions and Glossary Working Group.

   - 343: Corey believes this issue was resolved with SC-63. Outcome: close the issue.

   - 370: Ben stated he is okay with whatever everyone decides. Section 2 of the TLS BRs uses the word “annual”. Ryan Dickson agreed that adding the specific amount of days is beneficial from the CCADB SC perspective because we want to add automation that will identify when policy documents have gone stale. The point of emphasis in this comment was that it's most likely that updates will happen more frequently due to the amount of changes occurring to the TLS BRs. Regardless, 365 or 366 for a leap year will work. Scott Rea echoed the need to account for leap years. Ben suggested that the language needs to say “at least 365 or 366 days”. Outcome: settled on “at least every 366 days” and the issue was flagged for cleanup.

   - 387: Ben suggested striking everything from “However [...]” to the close of the paragraph, and suggested this be included in a cleanup ballot. Outcome: there was no disagreement with Ben’s suggestion and the issue was flagged for cleanup. 


### PAG

Inigo stated the other day the PAG received an email from GoDaddy asking for more time. Ben Wilson confirmed. The GoDaddy response is expected by the end of this week.


### F2F summary

- Inigo summarized the four presentations. One from Rob Stradling from Sectigo regarding linting in the certificate issuance pipeline and a tool called pkimetal. We had another presentation from SwissSign discussing the complexity of some requirements and additional fields that may not be used by the browsers. We also had another presentation from Martijn Katerbarg from Sectigo about the differences between the TLS BRs and the EVGs regarding DBA. The final presentation was from himself and discussed how to release different versions of the documents, where they are not done by approval but instead by specific dates and gathering all ballots for approval. This is something that needs to be checked with the Bylaws. 
- Several GitHub issues were also discussed during the F2F. 
   

## Current status of ballots

- Passed
   - SC73: Compromised/weak keys (now, under IPR review). No issues have been raised so far.
- Failed
   - None
- Voting Period
   - None
- Discussion Period
   - SC75: Pre-sign linting. A discussion period ended (27th May) but it's still ongoing. Dimitris has been discussing changes with the two endorsers, but is also receiving contributions from others in GitHub. As soon as the discussion stabilizes a version 2 will be created. Dimitris highlighted that the discussion period says that it should be at least 7 days, so the discussion has not expired and it can continue for up to 90 days. As a summary, the ballot will phase in the linting process with two dates, one as a SHOULD (effective September 15, 2024) and one as a SHALL (effective March 15, 2025). Controls for updating linting tools were also discussed. If the CA relies on externally developed tools, they will need to check and update the linting software within 90 days of an update being provided. Also, as a good practice, there is a recommendation for using the linting tool(s) in the 3% self-audits. 

   - SC67 v3: Require domain validation and CAA checks to be performed from multiple Network Perspectives à discussion period ended (31st May) but it´s still ongoing. A new issue appeared in terms of a US patent (https://patents.google.com/patent/US11700263B2/en). Ryan summarized the patent issue, first stating he is not a lawyer. He agrees with Nicol's recommendation that members should review the patent shared on the SCWG mailing list with their counsel. In his own personal review of that document, he did observe that it references both Princeton's prior research and Let's Encrypt's 2017 implementation of what we now refer to as MPIC. Specifically, it references a 2017 blog post from Let’s Encrypt. He makes no opinion on these matters, but he thinks the considerations are worth highlighting to counsel, as they could be interpreted by legal experts as prior art. Again, he emphasized that he is not a lawyer, this is not a legal opinion, and that members should seek counsel using their ordinary means. Google is also following this same advice. Barring further discussion, we are holding on moving to voting. Clint requested patent discussion be limited as much as possible within these calls and if we want to go into a PAG then maybe that’s a more appropriate place to discuss this matter. Trev asked what triggers forming a PAG? Ben suggested a PAG is formed as soon as you are aware that you are on a collision course. Aaron believes the IPR Policy includes language that a PAG could be created to discuss this patent, if desired.
   - Ryan discussed the message from Roman earlier this week that highlighted Princeton’s Open MPIC Project and asking if the ballot should be delayed. He summarized his response from the thread where the intent of the ballot is to close an open vulnerability in the Web PKI. Similar to the discussions that took place regarding adoption of linting tools and using those as blockers for future ballots, we feel the same should be conveyed here. There are many ways the ballot requirements could be satisfied and only one of those ways leverages the Princeton open API. In the spirit of making the web more secure, it doesn't feel reasonable to delay the ballot. There is also no signal that the Princeton open API will not be done before the requirements become effective. Yesterday, Henry (the security researcher from Princeton) uploaded a prototype of the API and provided a nominal schedule for when the API will be finished (estimated September). If we compare that to when blocking behavior is required by the ballot, that gives about 6 months of runway for testing and evaluation. The current timeline for adoption seems sufficient. Trev suggested it feels odd to block the ballot based on the third-parties incentive (or lack thereof) to finish the project. There's nothing to say they won't get reprioritized or some other security issue that becomes more emergent. We simply don't have any guarantees. If people want to make sure it's successful or speed up the development, they should participate. It seems weird to hang out and wait for some people that don’t even participate in the Forum to deliver a thing before we do have a rule. Ryan reiterated that there are multiple ways the requirements of the ballot can be satisfied by not relying on Princeton's open API and the security vulnerability was demonstrated live with production CAs back in 2022. Dimitris stated nothing stops a CA from adopting this technology sooner. 
   - While not in an official Discussion Period, Clint referenced a PR (https://github.com/cabforum/servercert/pull/514/files) he created to update the WebTrust Audit names in the TLS BRs now that some CAs are getting audits using the separate audit criteria. He expressed his concern and his attempt to avoid any unintentional non-compliance. He intends to move this into an official ballot. Dimitris expressed interest in endorsing this PR as an official ballot. 


## Any Other Business

Inigo asked for preference in discussing the open question from the CA/B Forum list. Outcome: discuss on the Forum call.


## Next call

20th June


Meeting adjourned
