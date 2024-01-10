---
aliases:
- /2022/11/09/2022-11-09-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-11-09 17:30:18
tags:
- Minutes
- S/MIME
title: 2022-11-09 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

November 9, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees

Adrian Mueller – (SwissSign), Andrea Holland – (SecureTrust), Andreas Henschel – (D-TRUST), Ashish Dhiman – (GlobalSign), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chris Kemmerer – (SSL.com), Clint Wilson – (Apple), Dimitris Zacharopoulos – (HARICA), Hazhar Ismail – (MSC Trustgate Sdn Bhd), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Judith Spencer – (CertiPath (Private Person)), Lynn Jeun – (Visa), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Renne Rodriguez – (Apple), Stefan Selbitschka – (rundQuadrat), Tadahiko Ito – (SECOM Trust Systems), Tim Crawford – (CPA Canada/WebTrust), Tsung-Min Kuo – (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha – (eMudhra), Wendy Brown – (US Federal PKI Management Authority)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

### 4. Approval of minutes from last teleconference

NA

### 5. Discussion

Martijn Katerbarg chaired the meeting. The teleconference of November 23 will be cancelled due to US Thanksgiving holiday. Dimitris Zacharopoulos suggested setting up a rotation for minutes of meetings as it could be a burden for a single person to perform.

Martijn noted that IP Review was underway, ending on January 1 and leading to an assumed effective date in September 2023. He noted that there may be time in the interim to provide improvement ballots, or to continue the SMCWG’s work on new topics. The WG reviewed the suggested issues that have been noted at

Martijn noted that previous discussions had noted that a deprecation date will be assigned to the Legacy Generation profile, and asked if the group would like to discuss that at this time. Clint Wilson said he’d stated his support for a firm date several times to phase out the Lgeacy profile, and he felt it would be appropriate for the WG to discuss future dates so there is not a rushed deprecation later with little warning. Wendy Brown asked if it was premature as the effect of the SBR was to lessen automated reissuance anyway. Dimitris supported this saying it may be years before we have the right tools in place to allow scaled adoption of the Strict profiles. Paul van Brouwershaven also said that we needed to allow some time for the SBR to take effect, and that the WG should set a sunset for Legacy after the effective date.

Clint said that if such a delayed approach was taken it seemed likely that at least one root program would be able to align its own policies with the SBRs, and all parties would prefer to remain aligned. He noted that it has always been clear that the Legacy profile was not long for life. He encouraged Certificate Issuers to collaborate and engage in setting a future goal post that everyone can work towards.

Paul added that we had not started to use the profiles yet or identified gaps in them and once that work had begun the WG might be better prepared to talk about Legacy deprecation. Choosing a date now might not be realistic. Dimitris noted the recent case of the Code Signing BR where plans for a deprecation needed to be reset as unintended consequences were identified. Client said that a planned deprecation date could be modified but wants to make sure the WG keeps the goal of deprecating the Legacy profile in mind. Stefan Selbitska said he was in favor of setting a date now – or in a few months – even if it is years in the future otherwise many implementations may be built on the Legacy profile complicating the future deprecation.

Clint noted that it really was up to CAs to provide data to inform the S/MIME discussion in the absence of a CT equivalent for this certificate type. He said it would be interesting to know how many certificates were currently compatible with the Legacy profile, and going it would be very interesting to see which profiles were adopted. It would be helpful to see what the path to moving to Strict profiles looked like. Paul noted that the WG had discussed building linters for the SBR profiles – which would be helpful in identifying existing deviations from the SBR.

Martijn moved onto issue 95 regarding keeping certs on CRL after their expiry. Paul said the reason this was interesting is there was no way to check in future (for example after a cert has expired) if the cert was valid at the time of signing. Dimitris noted that testing indicated that many clients do not appear to attempt validation after cert expiry. He noted that Qualified signatures used timestamps to resolve this issue. Client said this should be highlighted to the IETF LAMPS group and he’d be willing to arrange tests if concrete examples were provided. Tadahiko Ito said this was a logical issue to address as users wanted to protect both data in transit and date at rest.

Martijn introduced the topic of CAA. Clint said basically we need to agree on an appropriate tag and get the lengthy registration started. Dimitris asked if this was an issue for CABF or IETF. Bruce Morton noted that it had recently been done for VMC certificates.

Martijn also noted issue proposals for extensions noting the use of 1) enterprise RA, 2) key escrow by the CA, or location of key generation and storage. He also noted that the group will surely return the proposed methods for mailbox control (in issue #3). Clint noted that he’d like to propose an additional method to those noted.

Martijn noted that the Build Guidelines Actions for Github had been implemented, which is the tooling that created the PDF from markdown. Dimitris noted that such changes did not require a ballot at this time.

Dimitris noted that CAs are in vary stages of preparation for the SBR introduction so the WG should be wary about introducing major changes to the SBR before the effective date. He said adding new methods was fine, but removing currently allowed methods must be considered carefully. This was supported by Bruce, noting that the SBR currently do not allow some sources that are allowed in EV so some fine tuning before the effective date might be desired.

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, December 7, 2022 at 11:00 am Eastern Time

### Adjourned