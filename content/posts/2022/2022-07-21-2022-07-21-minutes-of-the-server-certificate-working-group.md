---
aliases:
- /2022-07-21-2022-07-21-minutes-of-the-server-certificate-working-group/
author: Jos Purvis
date: 2022-07-21 17:39:00
tags:
- Server Certificates
title: 2022-07-21 Minutes of the Server Certificate Working Group
type: post
---

## Attendees {.wp-block-heading}

Aaron Poulsen (Amazon), Adam Jones (Microsoft), Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust), Chris Clements (Google), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (Digicert), Corey Rasmussen (OATI), Daryn Wright (GoDaddy), Dean Coclin (Digicert), Devon O’Brien (Google), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Fumi Yoneda (Japan Registry Services), Hogeun Yoo (NAVER Cloud), Hubert Chao (Google), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Janet Hines (SecureTrust), Johnny Reading (GoDaddy), Jos Purvis (Fastly), Karina Sirota (Microsoft), Kiran Tummala (Microsoft), Lynn Jeun (Visa), Marcelo Silva (Visa), Michelle Coon (OATI), Nargis Mannan (SecureTrust), Nicolas Lidzborski (Google), Paul van Brouwershaven (Entrust), Peter Miskovic (Disig), Rebecca Kelley (Apple), Sooyoung Eo (NAVER Cloud), Stephen Davidson (Digicert), Steven Deitte (GoDaddy), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tobias Josefowitz (Opera Software AS), Tyler Myers (GoDaddy), Wayne Thayer (Fastly), Wendy Brown (US Federal PKI Management Authority), Yoshiro Yoneya (Japan Registry Services)

## Minutes {.wp-block-heading}

### 1. Read Antitrust Statement {.wp-block-heading}

Jos Purvis read the antitrust statement.

### 2. Review Agenda {.wp-block-heading}

No changes were made to the agenda.

### 3. Approval of Minutes from Last Teleconference {.wp-block-heading}

The minutes from the 7-July call were approved with the inclusion of the correction of affiliation that was requested by Vijay Kumar on the mailing list. Warsaw face-to-face minutes have been published to the wiki.

### 4. Roll Call {.wp-block-heading}

Wayne Thayer read the roll.

### 5. Validation Subcommittee Update {.wp-block-heading}

Corey Bonnell said that the subcommittee had a productive meeting last Thursday. Corey demonstrated the move of the certificate profiles ballot into the cabforum/servercert repo. Thanks to Jos, we’re ready to accept PRs. Next, the group reviewed issues with the profiles ballot that had been discussed at recent meetings and found volunteers to draft fixes. Finally, there was a brief discussion of dividing time between profiles and other items such as refinements to domain validation methods. Next week the group will review some of the items on the backlog to determine which to pursue next.

### 6. Ballot Status {.wp-block-heading}

#### Ballots in Discussion Period {.wp-block-heading}

None

#### Ballots in Voting Period {.wp-block-heading}

None

#### Ballots in Review Period {.wp-block-heading}

None

#### Draft Ballots Under Consideration {.wp-block-heading}

**_Revival of Debian Weak Keys_**

Chris Kemmerer said there has been discussion of how to direct consumers and CAs to external resources that help with implementation. Found that those resources are already listed on the CAB Forum website under /resources/tools. Wondering if the BRs should direct users there with the caveat that these are potentially useful. Tim pointed out that we should not use shall/should/may to refer to these resources. Jos said that we had already considered this option. Chris said that we’ve already written the disclaimer on the website and posted the links, so it makes sense to avoid duplication. Is there a need for any links in the ballot? Dimitris said that we are going in circles with this. When originally proposed, the ballot included normative language and that was the point. Chris said that the normative language will remain in the ballot, but the debate now is around directing readers to resources that help them to implement the normative requirements. So the question is if we actually want/need to link to those resources in the ballot. Dimitris Zacharopoulos said that vetted information can be included in the ballot.Chris said that none of these resources are vetted. Dimitris said that HARICA and Sectigo have vetted each other’s keys. The third resource has not yet been vetted. Chris is happy to remove these links to resources altogether. Jos suggested that we remove the tooling language from the ballot, and modify the website to reference the BR requirements. Wayne agreed that we should keep external resource links out of the BRs when possible. Chris said that he would resubmit the ballot without the resource links.

**_SLO/Response for CRL & OCSP Responses_**

David Kluge was not on the call. Clint Wilson said that they are still working on the phrasing of these complex requirements. The direction being taken is to require CAs to publish their OCSP uptime expectations in their CPS so that we can then determine what a reasonable requirement would be. Would like to hear any ideas for alternatives.

### 7. Any Other Business {.wp-block-heading}

#### Membership Application Requirements {.wp-block-heading}

Jos said that there has been good discussion on the list about the requirements for membership. Specifically, the requirement for submitting a 3rd party website using a certificate from the CA. How 3rd party does the site need to be, and how do we test this? Or is this requirement even relevant? Dimitris said that he considers this test to be an easy way for members to test if they are in a root store. Had the same discussion in the S/MIME WG where the applicant was a bridge CA that cannot issue end-entity certificate. Need to revise the requirement in the Bylaws. Dean Coclin said that the requirement was added to verify that the CA was issuing certificates to the public and not just an enterprise CA only issuing certificates to themselves. Jos asked about (hypothetically) the ‘government of Peru’ that has a root trusted in a browser but only plans to issue certs to Subscribers within their government. Jos said that CAs that are governed by the rules of the Forum should be eligible for membership. Dean said that the rules don’t permit CAs that are not issuing to the public to be members. Dimitris said that we are talking about changing the rules, CAs that may not meet the 3rd party requirement still have valuable contributions to make. In the past, HARICA only issued to educational institutions for some time, but HARICA became a full member when a root was included by a browser. Tobi said that the case of a government CA that is just issuing to itself is different from other CAs because their goals are different. Member CAs provide a service to browsers. CAs that do not issue to the public may not care about meeting browser’s requirements. Jos said that there are exceptions for entities that go through an alternate audit scheme. Should CAs be required to demonstrate that they are subject to CAB Forum guidelines? Wayne said that any CA that is in a root store cares about meeting the root store’s requirements. Wendy said that she thought the point of the requirement was issuing to sites that are publicly trusted. No difference if issuing only to your own users, if you follow all the rules. Tobi said that it is about more than the rules. It’s about securing users. It might be possible that a government CA is interested in controlling their own certificates and serving both public and internal use cases. These are interests that fundamentally are not super aligned. Dimitris said that he understands Dean’s point about issuing certificates for internal use. Bylaws say ‘certificates intended for use by the general public’. However, he can’t find a reason not to be more inclusive. Dean said that the Bylaws refer to ‘certificates intended for use by the general public’. Jos said that a publicly-accessible site is for the general public, even if it’s not a 3rd party site. Do we mean the website or the CA’s services are ‘intended for use by the general public’? Clint said that the same language could be read to refer to software published by certificate consumers. The current bylaws don’t clearly articulate why the requirements are in place, so we’re left to look at history. We should be discussing the current purpose for these requirements. Certificate consumers want certs to be well-formed, the CA to perform proper validation, etc. We could make these membership requirements much more comprehensive if we wanted. The third party requirement is more pertinent to certificate consumers deciding to include a CA in their root store. Due to time constraints, Jos asked that the discussion continue on the list. Dimitris said that we need to separate Bylaws language from the SCWG Charter requirements that are more specific.

### 8. Next call: 4-August 2022 at 11AM Eastern {.wp-block-heading}

Adjourn; Immediately convene meeting of CA Browser Forum (same call)