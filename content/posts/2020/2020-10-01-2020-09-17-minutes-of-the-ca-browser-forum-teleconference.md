---
aliases:
- /2020-10-01-2020-09-17-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2020-10-01 17:20:00
title: 2020-09-17 Minutes of the CA/Browser Forum Teleconference
type: post
---

## Attendees (in alphabetical order) 

Amanda Mendieta (Apple), Andrea Holland (SecureTrust), Ben Wilson (Mozilla), Bruce Morton (Entrust Datacard), Chris McMillan (Visa), Clint Wilson (Apple), Chris Kemmerer (SSL.com), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dre Aremeda (GoDaddy), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate), Inaba Atsushi (GlobalSign), India Donald (US Federal PKI Management Authority), Janet Hines (SecureTrust), Joanna Fox (GoDaddy), Karina Sirota (Microsoft), Kirk Hall (Entrust Datacard), Mayur Manchanda (Visa), Michelle Coon (OATI), Michol Murray (GoDaddy), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Patrick Nohe (GlobalSign), Pedro Fuentes (OISTE Foundation), Peter Miskovic (Disig), Rae Ann Gonzales (GoDaddy), Rebecca Kelley (Apple), Rich Smith (Sectigo), Ryan Sleevi (Google), Shelley Brewer (Digicert), Sissel Hoel (Buypass AS), Stephen Davidson (Digicert), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Trevoli Ponds-White (Amazon), Vijayakumar (Vijay) Manjunatha (eMudhra), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority).

## Minutes 

### 1. Roll Call 

The Chair took attendance.

### 2. Read Antitrust Statement 

The Antitrust Statement was read.

### 3. Review Agenda 

No changes to the agenda were noted. Dimitris took minutes for this meeting. Jos will take the minutes for the next call.

### 4. Approval of minutes from previous teleconference 

Accepted without objections.

### 5. Forum Infrastructure Subcommittee update 

Jos gave the update stating that the subcommittee reviewed previous tasks. There was also a discussion about a recent proposal for separating WG documents in different GitHub repositories so they are no longer shared. This discussion then moved on to the mailing list. Right now the subcommittee thinkgs it has a skeleton of how each repo should look like, but there were some details to clarify about the documents repository and whether we should freeze, rename, etc.

There was also discussion about which repositories to create as clean, which ones should be forked so that all history is retained.

The subcommittee considered the plan to separate repositories for WGs and concluded that not all WGs will immediately start using GitHub.

Dimitris added that the WebEx donation has been renewed for another year.

### 6. Code Signing Working Group update 

Dean gave the update.

He noted that there is a Key size change coming up in January 2021 in the current Code Signing Baseline Requirements Document which is included in an Appendix.

RSA 3072 must be used starting january 1st. There were some concerns that some devices did not support that key size (Yubikey was sited as one of the examples). There were also some issues mentioned about some cloud devices.

There was a proposal to move the date further out not just because of that but also because it was too close to the holidays. A proposal was to move it at the end of 2nd Quarter. A ballot will be created soon.

Bruce has been going through the combined document looking at EV vs non-EV, trying to identify what are the differences, do we need distinct rules, and in general try to harmonize the requirements.

On September 24th there will be discussion on high risk certificate requests. They have invited Guest Speakers. Discuss whether we need to treat high risk requests differently or the same way.

### 7. S/MIME Working Group update 

Stephen gave the update. Current members are 25 Certificate Issuers, 3 Consumers.

The WG is currently looking at certificate policies for S/MIME Certificates, RFC5280 and governmental documents that could be applicable.

Another areas of discussion:

- the development of methods for establishing email control associated with the certificates.
- CA operational practices
- issues including subjectDN.
- Certificate Profiles
- Certificate validity period.

The last topic triggered a lively discussion because in the TLS world, the prime driver for shortening the validity period of the certificates was crypto agility. There was some discussion about other factors that come into play at S/MIME Certificates. There was discussion whether the renew of the certificate is related to the binding with the organization or re-establishing control of keys. SSL Certificates are used for a session. Shortening the lifetime of an S/MIME certificate brings burden on the User to handle keys over time. Depending where the key resides (cloud, token, etc) the validity is probably affected.

This is an area that the Working Group would welcome input from Members with strong opinions on these matters, perhaps describe different cases like cloud protected keys or software or on a crypto-token. Or perhaps it might have a different validity period depending whether the certificate is for signing or encryption.

This is an issue where the WG is seeking feedback from people for levels of SHOULD vs SHALL for S/MIME Certificates regarding validity.

Ryan: In the past when documents were being developed, we would solicit feedback by publishing a draft document, and then ask for whoever is interested to send input in “questions@xxxx”. This could be used for questions like the validity issue soliciting broad input. That was an approach used even before the final draft. Has the WG discussed how to ask for this broad public feedback?

Stephen: It was discussed in the recent meeting. Process-wise the WG has discussed how to address this issue. We could either set specific examples and the reasoning behind it or set the parameters initially rather wide in version 1 and have a discussion later about which periods are more applicable. There are many use cases that must be understood for S/MIME Certificates, some of which are still evolving.

Ryan: State some of the challenges and scoping issues. Similarly the SCWG had scoping discussions trying to determine whether it should address machine-to-machine communications, payment terminals, etc. This is a good way to constrain the problems. It would help to understand some use cases that the working group is working on. Is this for Enterprise Authentication Scenarios? Authentication of Email Addresses on the wider Internet? It looks like a good opportunity to solicit feedback both on scope of applicability and use cases.

Ryan also mentioned that the driving factor for shortening the lifetime of TLS Certificates was the Policy agility which is more important than the crypto agility. It is important for the SMCWG to consider how these documents will evolve over time. Validation of OrgName might change over time and has deficiencies that have been identified and corrected. How would that propagate in a sufficient time? Getting this feedback would help prioritize tasks.

### 8. Elections update 

Confirmation ballots end on Monday. Dimitris will start preparing the elections for the Vice Chair positions after that.

### 9. Topics for the next virtual F2F 

Dimitris asked for Members to propose new topics for the upcoming F2F.

There was a short discussion about proposed guest speakers. Dean will follow-up with Dimitris and Wayne on this issue.

### 10. Any Other Business 

No other business was discussed.

### 11. Next call 

The next call will take place on October 1, 2020 at 11:30am Eastern Time.

### Adjourned