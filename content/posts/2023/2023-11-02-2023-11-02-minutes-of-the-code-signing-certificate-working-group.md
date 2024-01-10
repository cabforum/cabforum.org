---
aliases:
- /2023/11/02/2023-11-02-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-11-02 17:00:19
tags:
- Minutes
- Code Signing
title: 2023-11-02 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

- Dean Coclin – DigiCert

- Atsushi Inaba – GlobalSign

- Ben Dewberry – Keyfactor

- Bianca Martin – Amazon

- Bruce Morton – Entrust

- Eva Vansteenberge – GlobalSign

- Inigo Barreira – Sectigo

- Janet Hines – VikingCloud

- Richard Kisley – IBM

- Scott Rea – eMudhra

- Robert Quinones – Intel

- Tim Crawford – CPA Canada/WebTrust

- Mohit Kumar – GlobalSign

# Minutes

- Assign Minute taker (start recording)

- Brianca Martin

- Roll call

- Completed by Dean

- Antitrust Compliance Statement

- Completed by Dean

- Approval of prior meeting minutes

- October 19th – Minutes approved

- F2F Meeting on October 5th– 1st and 2nd half – Minutes approved

- Ballot CSC-21 Signing Service

- Currently in discussion period, made changes to the ballot. Questions raised about auditing signing service, along with a request was to simplify this more.

- One party re-endorsed, the second party did not.

- Question: How long we can keep the discussion period going on for a ballot – minimum is 7 days, no maximum.

- Example provided of a re-seller that also operates an HSM and is providing keys to its customers. By definition, the re-seller would be considered a signing service and the audit requirements would apply.

- Question: How would a CA know if the person they are selling a certificate also offers a signing service and is this tracked? They may not know. The CA does a verification that keys are in an HSM, they don’t know who is operating the hardware. If a CA ran a signing service and the CA had it audited, it could be bundled in with its existing WebTrust for code signing audit report, uploaded to the CCDAB, Microsoft gets to see it.

- Question: How would audit requirements be enforced and what would be done with the results, who does it go to? CA will post the audit and share it with their auditor.

- Comment made that there is leverage on the CA to make sure they are getting it right but no mechanism to enforce it.

- Discussion postponed for 2 weeks. Ballot will remain in the discussion period.

- Ballot CSC-20 Restore Version Reference to EV Guidelines

- Notice for review period sent on 10/30.

- Ballot will be in IPR review for the next 30 days.

- Proposed Ballot High Risk

- Ballot is drafted, no updates. Postponed until CSC-21 is completed.

- Proposed ballot Remove EV Guideline References

- No update.

- Proposed ballot CSCWG Charter Update

- No update.

- Question: Is this a CA/B Forum level ballot or a CSWG ballot? In the server cert working group the ballot is at the working group level – they are not changing their scope, only the rules around voting, etc.

- Comment that it seems odd that a working group can change their charter when it was voted on by the working group.

- Will bring this up in the next CA/B Forum call and have a discussion with governance experts.

- Other business

- Email to questions group from an organization in Hamburg, Germany.

- Question about baseline requirements: Version 3.4, section 1.6.1. Verifying person. Can this organization (they complete tasks like notary, they are not a CA) legitimize their own employees to acquire code signing certificates based on their own authority? Confirmation requested by November 16th.

- The CA does the verification and up it is up to each CA to establish a procedure that their auditor is happy with.

- Appears to be what the requirements allow but it us up to each CA to verify and to make this determination and if they will allow this method.

- Next meeting – 16 November