---
author: Wayne Thayer
date: 2025-12-04 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2025-12-04 Minutes of the Server Certificate Working Group
type: post
---


## 1. Roll Call and Housekeeping

Roll Call from Webex. Technical issues with membership tool is being worked on. Manual capturing attendance. Comment by Martijn Katerbarg (Sectigo) that it will be auto-run.

## 2. Reading of Note-well

Dimitris read the note-well.

## 3. Review of Agenda

No additions to agenda.

## 4. Minutes approval

 * October 16th – approved – once the tool is running, online participants will be added
 * November 28th – approved

## 5. Membership applications

 * No new membership applications

## 6. SCWG issues on GitHub:

 * grouping issues into easy, moderate, difficult. Labelling is subject to change. Triage to suggest labelling. 
 * Suggested issues for Validation Subcommittee. 
 * Get clean-up ballot going before end of year. Most clean-up issues have been addressed. Will discuss in more details later.

## 7. Four issues for specific discussion

526: about “Certificate Profile”.

  * Corey Bonnell (DigiCert) explained that the problem is that the defined terms is used in two ways: 1. set of artifacts to issue certificates vs 2. All the stuff in section 7.
These are two different concepts – suggestion to separate those out.

  * Dimitris in favor of clarification, thinks it is suitable for clean-up ballot since it’s not a normative change.

  * Corey to spend time coming up with a different defined term and come up with a pull request.

  * Aaron Gable (ISRG) raises that whether clean-up is appropriate depends on the solution. Not convinced that there’s a problem. Reasoning: Requirement to have CP/CPS, which must have a Certificate Profile section. The CP and CPS both cover different meaning of the Certificate Profile.

  * Corey mentions that the defined term is a bit circular in combination with section 7.

  * Aaron doesn’t see this as a problem.

  * Dimitris confirms that it feels circular. But understands Aaron’s concern. Proposes awaiting Corey’s proposal.

  * Aaron considers the word “requirements” most problematic, because CPS is a not requirement documents, but a descriptive document.

  * Wendy Brown (FPKIMA) highlights that it doesn’t state it must be in the CPS.

  * Aaron says that the relevant sections in the CP/CPS describe the issue.

  * Wendy suggests putting technical restrictions in addition to the requirements in the CP.

  * Aaron confirms this makes sense. Things in the BRs are not certificate profiles, but CP is, then the word “requirements” is problematic.

  * Corey suggests that the easy fix is not using the defined term in Section 7. Wonders if this could be confusing?

  * Aaron says that we already do that in 7.1.2.

  * Corey explains that the definition is needed because there’s requirements in Section 5, which talks about the artefacts that the CA uses.

  * Aaron says that this may cause confusion because of section titles needing capitalization.

  * Scott Rea says he is ambivalent. Require that the CA specify where the profiles are defined.

  * Ben Wilson – Mozilla: Makes suggestion for specific language, remove reference to Section 7.

  * Aaron agrees.

  * Corey will put forward this proposal.

506: Certificate hold revocation reason. The text is a little tricky. The affected end entity certificates are already out of scope for this requirement. Suggestion to introduce a separate ballot to include a prohibition for TLS certificates, and make the comment about the mentioned end-entity certificates being out of scope part of the ballot description.

#499 - Review of EVG cabfOrganizationIdentifier extension 

  * Summary: Extension is not used by relying party software. The proposal is to not require the extension for this information.

  * Clint Wilson has strong objections to this. Reminds that the whole point was to back to ETSI and get them to align on this subject. This information is best kept in an extension.

  * Dimitris explains that improvements have been made to the ETSI standards.

  * Stephen Davidson (DigiCert) reminds that the suggested improvements were taken on. Browsers are not using this extension. It begs the question: what is it for?

  * Clint Wilson explains that there are other elements that are not being used by the browser.

  * Stephen reminds that the historic rational was to drive user interface. When the green bar disappeared, the need of having this information in the extension format disappeared.

  * Dimitris clarifies that the relying parties can read this information, but the extension is not parsed by the browser.

  * Clint is not sure of the relevance for this particular topic. If there is a need to have a consistency between certificate profiles and what is displayed by browsers, that’s a different discussion.

  * Corey shares that certificate viewers don’t generally support a human-readable display of the extension, while they do support the subject attribute.

  * Clint clarifies that a lot of information in the certificates that complicates the display in the browser. That can be addressed, but that would be a big change.

  * Corey reiterates it’s difficult to look at the extension information. Simplifying the standard. Removing the extension is a straightforward approach.

  * Clint is okay with replacing the extension. But believes that this information is best contained in the extension. How the browser parses the information shouldn’t correlate to what information is contained in the certificate. Browser actually doesn’t need much of the information. Narrowing the focus on what is actually being used by the browsers.

  * Corey confirms that for the TLS handshake, the information is ignored, but for the display of the certificate information in the user, it’s not easily presented.

  * Clint: TLS handshake is a core function. The viewer is auxiliary.

  * Ryan Dickson (Chrome): Agreed with Clint. Confirms that the information is contained in a hex dump, but there are plans to improve the viewer in this regard.

  * Summary: not enough consensus to remove, one browser that has plans to improve the viewer to display this information.

  * Corey is happy to hear that Chrome is looking to add support for the viewer.

#580 - Update Section 4.9.1.1 to explicitly reference CAA violations (Dimitris)
Add CAA failures to 24 hour revocation requirement. Included in the clean up ballot because not controversial, even though it’s more than just a clarification.

  * Aaron mentions the plans for a bigger overhaul of 4.9.1.1. Do we want to save this for that bigger re-write which is clearly normative, because this is borderline? No strong feelings.

  * Dimitris explains that this change does not stand in the way of that bigger overhaul.

  * Ryan agrees having it in both places is fine. Uncontroversial – the bigger overhaul may take time to become normative.

  * Ben is also okay with it. He clarifies what the intent is with the bigger overhaul (changes to reason codes). Michael asked questions about the details of the intended changes, which will be further discussed in the ballot discussion.

  * Aaron highlights that if we do this now, and then change the revocation reason, so careful consideration of the ballot.

  * Summary: allow non-controversial change, even if we have to change the revocation reason in the future.

## 8. Ballot Status

Draft Ballots in Progress:

 * SC087: Registration Number Improvement for EV Certificates (Corey)
        Corey: Hopefully pick up in January
  * SC094: DNSSEC exception for email DCV methods (Dimitris)
        No opposition or major concerns received, continue the process in a few more days.
 * SC095: Clean-up 2025 (Karolina)
        Kateryna Aleksieva (Certum) – wait to finalize the ballot description

 * SC0XX: Cleanup for ADN CNAME use (PR 619 from Rich and PR 627 from Jacob)
        No changes. Jacob plans to start a discussion period.
 * SC0XX: Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)
        All comments addressed. Looking for second endorsement. Hopefully start discussion before holidays.
 * SC0XX: Validation method in TLS Certificates (Clint)
        No updates
 * SC0XX: Update Revocation timeline for errors affecting CP/CPS deviations but in accordance with the BRs (Dimitris)
        Under construction, some proposed language, more important topics. Clint: latest version is not something that Apple can support. Dimitris suggests mailing list.
 * SC0XX: Sunset all remaining use of SHA-1 (Ryan)
        Ryan: Pull request in chat. No timeline for when CA certificates must be phased out and revoked. SHA 1 CRLs need to migrate to other solution. Looking for feedback, including timelines, and endorsers.
        Clint very supportive to endorse. Question on how to proceed with OCSP signatures.

## 9. Any other business

None

## 10. Next call: December 18, 2025

## 11. Adjourn

## Attendees

Aaron Gable (Let's Encrypt), Aaron Poulsen (Amazon), Adriano Santoni (Actalis S.p.A.), Alvin Wang (SHECA), Antti Backman (Telia Company), Ben Wilson (Mozilla), Chad Dandar (Cisco Systems), Chris Clements (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Cynethia Brown (US Federal PKI Management Authority), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Enrico Entschew (D-TRUST), Eric Kramer (Sectigo), Eva Vansteenberge (GlobalSign), Hogeun Yoo (NAVER Cloud Trust Services), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel (OISTE Foundation), Jeanette Snook (Visa), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jun Okura (Cybertrust Japan), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Lilia Dubko (CPA Canada/WebTrust), Lucy Buecking (IdenTrust), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Masaru Sakamoto (Cybertrust Japan), Matthew McPherrin (Let's Encrypt), Michael Slaughter (Amazon), Michelle Coon (OATI), Nargis Mannan (VikingCloud), Nate Smith (GoDaddy), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rebecca Kelly (SSL.com), Rollin Yu (TrustAsia), Roman Fischer (SwissSign), Ryan Dickson (Google), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean Huang (TWCA), Stephen Davidson (DigiCert), Steven Deitte (GoDaddy), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yamian Quintero (Microsoft).