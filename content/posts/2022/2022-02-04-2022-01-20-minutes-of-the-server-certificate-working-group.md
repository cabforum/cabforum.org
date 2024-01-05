---
aliases:
- /2022-02-04-2022-01-20-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-02-04 15:12:00
tags:
- Minutes
- Server Certificates
title: 2022-01-20 Minutes of the Server Certificate Working Group
type: post
---

## Attendees 

Aaron Gable (Let’s Encrypt), Adam Clark (Visa), Adam Jones (Microsoft), Andrea Holland (SecureTrust), Arno Fiedler (D-TRUST), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (Digicert), Daryn Wright (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Fumihiko Yoneda (Japan Registry Services), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Israel Ventura (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (TrustCor Systems), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Kati Davids (GoDaddy), Mads Henriksveen (Buypass AS), Marcelo Silva (Visa), Miguel Sanchez (Google), Natalia Kotliarsky (SecureTrust), Niko Carpenter (SecureTrust), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Ryan Dickson (Google), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Tom Zermeno (SSL.com), Trevoli Ponds-White (Amazon), Tyler Myers (GoDaddy), Vijay Kumar (India PKI Forum), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Minutes 

### 1. Read Antitrust Statement 

Jos Purvis read the antitrust statement.

### 2. Roll Call 

Dean read the roll.

### 3. Review Agenda 

No changes were made to the agenda.

### 4. Approval of Minutes from Last Teleconference 

The minutes from the 6-January call were approved without changes.

Jos said that the minutes from the last face-to-face will be published to the website once one last browser update presentation is received.

### 5. Validation Subcommittee Update 

Tim Hollebeek said that he resigned as the chair, and Corey Bonnell was approved as the new chair by consensus on the last call. The subcommittee (SC) discussed the “Amazon delegation to the CA” method and some concerns that were posted to the list. The concern is when the CNAME is delegated to the CA and the Subscriber is not involved. There is interest in developing a new validation method that resolves these concerns and supports automation. The now-expired ballot SC52 was discussed but it’s unclear how to proceed given concerns that were raised during the discussion period. Paul Van Brouwershaven presented some interesting findings on “Mojibake” IDNs such as when it is not appropriate to mix different encodings. This issue may be taken up by the SC in the future. Finally, Wayne Thayer noted that the literal text of tracking BR version number is not what most CAs actually do. It was agreed that this should be clarified.

Jos thanked Tim for his service as chair.

### 6. NetSec Subcommittee Update 

Jos said that the NetSec SC is now a working group (WG) and their update will shift to the Forum plenary, but any transition items will be discussed here for the next few meetings.

Clint Wilson said that the WG held their inaugural meeting on Tuesday and went through the formation work, such as approving membership and appointing a chair. The NCSSRs have not yet been adopted by the WG. They discussed the goals and initial deliverables, which are all focused around the NCSSRs. Some work – mostly definitions – will continue within the SCWG. Ongoing work such as the risk assessment, document structure, and scope will continue. Most initial membership declarations have been received but it’s not too late to join.

Dean Coclin asked Jos if the plan was to move this WG to the plenary agenda. Jos said yes.

Ryan Dickson asked about handling dependencies on the NCSSRs in the BRs. He said that the discussion back in November was about requiring a notice of NCSSR changes be sent to dependent WGs, and that the implementation of this was not in scope for the NCSSR charter.

Jos said that the first thing we need to do is to amend section 5 of the BRs to amend section 5 of the BRs to adopt a specific version of the BRs (or the current version if we choose). This should be sorted out before the NCSSRs are adopted by the new NetSec WG.

Ryan said that he agrees on the approach of adopting a specific version number rather than blindly accepting and approving new requirements. This approach also reduces IPR risk for SCWG members who are not also members of the NetSec WG.

Dimitris Zacharopoulos said that the Code Signing WG has adopted the practice of referencing a specific version of the BRs and EVGLs.

Tim said that inconsistency in the version of NCSSRs across WGs could be a problem for CAs that must meet multiple requirements from common infrastructure. We also need to determine how to keep the NCSSR version in sync across WGs.

Trevoli Ponds-White noted that the EVGLs reference the BRs without specifying a version, but agreed with Tim’s concerns and urged the WG to consider this risk. If CAs must comply with multiple NCSSR versions from a common system, we are encouraging CAs to build complex, forked systems.

Tim said that the existence of the NetSec WG doesn’t mean that we can’t discuss the implications of the NCSSRs in other WGs such as the SCWG.

Ryan said that we currently face similar obligations in the BRs with other documents that are referenced. He asked if it is possible to restructure the NCSSRs to section off general requirements from those that apply to specific types of certificates?

Tim commented that all the NCSSR requirements are general.

Bruce Morton said that the CSCWG doesn’t have a specific version reference for the NCSSRs as it does for the BRs and EVGLs. This is good because we need to adopt improvements the NetSec WG has made to the NCSSRs. Requirements that are specific to other WGs should land in the respective WGs requirements, not in the NCSSRs.

### 7. Ballot Status 

#### Ballots in Discussion Period 

##### Ballot SC51: Reduce & Clarify Audit Log and Records Archival Retention Requirements 

Clint said that there is great discussion on the list. This ballot originally came from an attempt by Neil Dunbar to reduce the retention period for archives to match the reduced period for audit logs. In the process, it was discovered that there is not a shared understanding of what section 5.5 is about. It eventually became clear that the processing of data is a sequence of events. A large portion of the data comes from event logs. The records archive is a superset that includes audit logs. To clarify the meaning of 5.5, the new ballot language is repetitious and very specific. Clint said that he is open to alternatives, then asked if there is there interest in including the note that Dimitris proposed stating that this is a minimum requirement and CAs are encouraged to go beyond it.

Trev said that one theme in the feedback is that “archive” is an undefined term and the feedback is oriented to individual interpretations. These are the records that you are supposed to keep and for how long. How to store and secure this data is currently undefined.

#### Ballots in Voting Period 

##### Ballot SC53: Sunset for SHA-1 OCSP Signing – voting ends on 24-Jan 

#### Ballots in Review Period 

None

#### Draft Ballots Under Consideration 

##### SC52 (expired) replacement ballot 

### 8. Any Other Business 

None

### 9. Next call: February 3rd, 2022 at 11AM Eastern 

Adjourn; Immediately convene meeting of CA Browser Forum (same call)