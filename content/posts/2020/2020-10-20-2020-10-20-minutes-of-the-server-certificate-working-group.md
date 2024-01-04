---
aliases:
- /2020-10-20-2020-10-20-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2020-10-20 03:45:00
title: 2020-10-20 Minutes of the Server Certificate Working Group
type: post
---

_Note: These minutes are for the session that took place the day before the CA/B-F Face-to-Face 51 sessions._

## Attendees {.wp-block-heading}

Doug Beattie, Don Sheehy, Ryan Sleevi, Dean Coclin, Atsushi Inaba, Nick France (Sectigo), Dustin Hollenback, Aneta Wojtczak-Iwanicka, Dimitris Zacharopoulos, Clemens Wanko, Tadahiko Ito, Andreas Henschel, Enrico Entschew, Devon O’Brien, Matthias Wiedenhorst, Eva Van Steenberge, Jos Purvis, Mike Reilly, Karina Sirota, Clint Wilson, Trevoli Ponds-White, Derek Bronson, Arno Fiedler, Vijay Kumar, Arvind Srinivasan, Saiprasad KP, Bruce Morton, Wayne Thayer, Stephen Davidson, Janet Hines, Hongquan Yin, Peter Miskovic, Hazhar Ismail, Wang Chunlan, Xiu Lei, Leo Grove, Chris Kemmerer, Tom Zermeno, Abdul Hakeem Putra, Ahmad Syafiq MD Zaini, Tobias Josefowitz, Ben Wilson, Wendy Brown, Michelle Coon, Aaron Gable, Li-Chun Chen, Matthias Wiedenhorst, Andrea Holland, Daniela Hood, Clint Wilson, Adrian Mueller, David Kluge, An Yin, Neil Dunbar, Curt Spann, Jan Völkel, Arnold Essing, Paul van Brouwershaven, Hiroshi Sakai, Andrew Whalley, Tim Hollebeek, Wei YiCai, Rebecca Kelley, Niko Carpenter, Rich Smith, Leticia Webb, Mariusz Kondratowicz, Michael Slaughter, George Sebastian, Aaron Poulsen (Digicert).

## Network Security Subcommittee {#network_security_subcommittee.wp-block-heading}

_Presenter:_ Neil Dunbar (Trustcor)
_Note Taker:_ Ben Wilson (Mozilla)
_Presentation:_ [Network Subcommittee Update (Summary)][1]
_Presentation:_ [Network Subcommittee Update (Main)][2]

Neil presented slides showing the focus of the Subcommittee.

Slide 3- problem statement and objectives – the NCSSRs are some times hard to interpret and were written with older technologies in mind. New technologies, however, also bring in new complexities. We want to allow new technologies and remove ambiguities.

Slide 4- E.g. multi-spectrum DNS. – perform multiple CAA verfications geographically dispersed. How do different data centers or cloud providers affect audits? How are the NCSSRs 2. (m)(n)(o) measured in a shared responsibility model?

Slide 5 – We would like the NCSSRs to get to how you deploy. We need to get to a point where everybody agrees on what a term means. E.g. what does “system account” mean?

Slide 6 – We’re trying to reach out earlier to the SCWG and get feedback before we get to the balloting stage. Also, when we work on proposals, we have a Google drive. We need to make sure that these issues are adequately addressed in discussion documents.

We still believe that automation is useful, but then configuration becomes an important aspect that has to be examined. Also, there has to be assurance that automation has caught everything that a human review would catch.

Slide 7 – In our network security subcommittee, we need to take a more skeptical view and identify any “bad actor” behaviors that the words might allow.

Three subgroups make up the subcommittee: 1) Pain points (CAs and auditors), 2) Threat modelling and 3) Document restructuring

### Document restructuring subgroup {#document_restructuring_subgroup.wp-block-heading}

Slide 9 – Document Structuring has been trying to move away from “zones” to a focus on logical security, without weakening security. We also want to add a new section to the NCSSRs that deals with offline/air-gapped CAs. Also there are efforts to add physical security to the BRs.

### Threat modelling subgroup {#threat_modelling_subgroup.wp-block-heading}

Slide 10 – Headed by Mariusz Kondratowicz, the intent is to discuss risks and prepare risk analysis for netsec ballots.

### Pain Points subgroup {#pain_points_subgroup.wp-block-heading}

Slide 11 – A lot of work has been done by this group. The current view is that short-term issues have been addressed to the extent that they can be. So they will be winding down activity, but can restart as need be.

Slide 12 – Members of this group want to start an experimental group to review cloud services.

Slide 13 – Shows some of the cloud services that this group will review.

Slide 14 – To summarize, SC28, SC32, Offline CAs ballot, and SC34.

Comments/Questions: (Comment related to discussion of Slide 4, “Low value FQDN” – there is no such thing.)

Ryan: Looking at the Diginotar/Black Tulip report, now here in 2020, to what extent has this group looked at it?  What are the practices that the network security group is looking at?

Neil: With the zones ballot, nothing was intended to weaken the security. Compensating controls including authentication, encryption, etc. A reason we took it back for re-drafting is in response to comments.

Trev: When we looked at zones, it muddied offline systems with online systems. So, things that are offline were treated as “handled.” But we need to look at offline/air-gapped security, and

Ryan: There are a number of requirements that don’t make sense in an offline system. Could Diginotar pass an NCSSR audit today? Yes. One of the failures of Diginotar was the failure to report. We should still be worried. Where do we want to be in 2020-2021.

Don: Comment on the use of cloud providers-there is a significant audit impact, at that point, with aspects of physical and environmental security, there are complexities in dealing with cloud service providers. Audit schemes should be in touch with this proposed cloud security subgroup.

## Validation Subcommittee {#validation_subcommittee.wp-block-heading}

_Presenters:_ Tim Hollebeek (Digicert), Wayne Thayer (Mozilla)
_Note Taker:_ Rich Smith (Sectigo)

Tim opened with agenda for the meeting.

### Review since last F2F {#review_since_last_f2f.wp-block-heading}

Review since June:

- Should come back to acceptable status codes
- Should follow up validation re-use discussion
- Should follow up github vs. Trello for tracking open issues
- Ongoing discussion on OU revision
- Ongoing discussion of certificate profiles

### Certificate Profiles {#certificate_profiles.wp-block-heading}

Certificate Profiles:

- First pass review complete
- Path forward/next steps?

Ryan stated there are still open questions. Tables is probably the best approach to clarify profiles. How best to logically divide up the profiles and reflect where things still diverge.

Trev suggested formulating table w/out worrying about outliers for the moment, then try to sort outliers after a basic format has been accepted.

Ryan and Tim see a default set of profile tables for OV, DV, EV covering all but Subject DN. The default table will point to a separate section/set of tables to cover the Subject DN permutations.

Should all tables reside in Section 7 or should Section 7 point off to an Appendix which contains the profile tables? The answer may depend upon the final number of profiles/tables.

### Discussion about organizationalUnitName {#discussion_about_organizationalunitname.wp-block-heading}

OU Discussion Overview: Two basic approaches:

1. Define actual verification rules
1. Sunset/disallow OU field

Entrust has presented a proposal for Option 1

Paul stated that there is strong interest from large enterprises and governments to continue to allow the OU field. That these companies require the field as a subscriber to identify the owner (especially when a certificate is not ordered though the normal channels or commonly used CA). And that we should not forget that the relying party most likely will have the same identification challenge for these type of organizations. With this proposal we try to align the subject:organizationalUnitName with the purpose as described by the ITU-T X.520 section 6.4.2 Organizational Unit Name.

The proposal ():

- introduces a requirement to verify the existence and affiliation of the unit with the Applicant
- requires self-reported values to be preceded or followed by a whitespace and the well-known words “department”, “division”, “unit” or …
- supports automation by linking to a directory system of the applicant and by allowing well-known pre-approved values such as “information technology”, “marketing” or “sales” without the requirement to verify the existence of and affiliation
- supports manual validation using existing methods listed in 3.2.2.1/3.2.2.2, an organization charts or public directory (e.g. )
- allows values or series as defined by a government, standard, or regulatory body
- allows certificate tracking using numerals which can be preceded or followed by two alphabetical characters for easier identification.

Ryan stated that he does not think this proposal is workable. The very definition of the OU renders it unverifiable as it originates solely with the Subject organization and any mention of the OU anywhere else is simply a repeat of self-reported information. {x500 did not pan out and was known to have not panned out}

Paul: OU is an internal name and Organizations are their own naming authority. The CA is responsible to challenge the information and the applicant must be accountable to provide accurate information.

Dimitris: I agree that the validation process in the proposal doesn’t follow the same principles of other validation procedures of section 3.2, because OU information cannot be independently verified, and it is actually self-reported by the Applicant, which -however- is consistent with the purpose of this field. The Applicant is responsible to report on its internal structure. Entrust just added some additional steps to ensure that this information actually comes from the Applicant as validated for the organizationName process, and not some irrelevant third-party that acts on behalf of the Applicant Organization. I have always considered organizationalUnitName as supplemental to the organizationName subjectDN field. If the question is how is this information useful to Relying Parties, a simple answer is that it is as useful as the organizationName because these two are tied together. Adding a prefix/suffix from a well-defined allow-list of common words used to describe divisions/sub-divisions of organizations, seems to be a good step forward and achieve the goal described in the BRs, which is to avoid misleading information (like DBAs, etc) for Relying Parties. I think we should now allow any DBA or other information to be included in OUs except for units and sub-units of that organization. Finally, I believe that the proposal for alphanumeric values might also be safely considered as “not misleading” for Relying Parties, thus meeting the goal described in the BRs.

Ryan said even if an allow list is correctly implemented he disagrees that a prefix or suffix will be unambiguous. The only use case comes down to OU helps the Applicant organize their certificates, and this can be done in better ways that do not introduce potential threats to relying parties.

Jos asked Ryan to confirm his position that there is no use case for the OU field for relying parties. Ryan confirmed. Jos asked if Ryan had data to back up that assertion.

Ryan said it comes down to does manual inspection of certificates work, do the small number of people performing such manual inspections understand the state of the x.500 specification sufficiently to not be mislead by the fact that the intended hierarchy does not exist, and therefore the OU, if it is allowed to contain arbitrary values, cannot be verified. His position is that the answer is no, so we come back to only allowing a set of whitelisted values which are not of use to relying parties.

Dimitris said he does think that there is value to the relying party who views the Subject data to know what organization department they are dealing with.

Michelle from OATI agreed with Dimitris that there are more uses for OU field than just tracking certificates.

Dimitris: Entrust should try to describe some “bad actor” scenarios that would try to exploit their proposal with the “allow list” and the alphanumeric values for OU.

Going forward:

- Continue work on profiles
- Incorporation/Registration agencies
- OUs

Adjourned

[1]: /uploads/15.NetSec-F2F-51-Summary-Presentation.pdf
[2]: /uploads/15.NetSec-F2F-51-Main-Presentation.pdf