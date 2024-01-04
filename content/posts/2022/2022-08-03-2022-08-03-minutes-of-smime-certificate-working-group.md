---
aliases:
- /2022-08-03-2022-08-03-minutes-of-smime-certificate-working-group/
author: Stephen Davidson
date: 2022-08-03 02:10:00
tags:
- S/MIME
title: 2022-08-03 Minutes of SMIME Certificate Working Group 
type: post
---

## Minutes of SMCWG {.wp-block-heading}

August 3, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees {.wp-block-heading}

Ashish Dhiman (GlobalSign), Christophe Bonjean (GlobalSign), Daniel Zens (GlobalTrust), David Kluge (Google), Eva Vansteenberge (GlobalSign), Inigo Barreira (Sectigo), Judith Spencer (CertiPath), Li-Chun Chen (Chunghwa Telecom), Lynn Jeun (Visa), Mads Henriksveen (Buypass AS), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Mrugesh Chandarana (IdenTrust), Patrycja Tulinska (PSW), Renne Rodriguez (Apple), Stephen Davidson (Digicert), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call {.wp-block-heading}

The Roll Call was taken.

### 2. Read Antitrust Statement {.wp-block-heading}

The Antitrust/Compliance Statement was read.

### 3. Review Agenda {.wp-block-heading}

### 4. Approval of minutes from last teleconference {.wp-block-heading}

The updated minutes of the June 22, 2022 and the minutes of the July 20, 2022 teleconferences were approved.

### 5. Discussion {.wp-block-heading}

The WG discussed the expression of interest of Zone Media OÜ to join the SMCWG as a Certificate Consumer. Under the charter a Certificate Consumer “must produce and maintain a mail user agent (web-based or application based) or email service provider that processes S/MIME certificates.” From the context of the past charter discussions, this was understood to mean the native ability to sign/encrypt using S/MIME certificates from within the MUA or service.

Zone Media provides email hosting services, which includes a webmail mail user agent. The mail servers process S/MIME messages, but the mail user agent does not currently support the use of S/MIME certificates to sign/encrypt. It was agreed to extend Associate Membership to Zone Media, with the acknowledgement that if their MUA is extended to support the use of S/MIME certificates, they will be eligible to change to the Certificate Consumer category.

The WG returned to the discussion of the draft S/MIME Baseline Requirements available at .

The WG discussed a PR proposed by Judith Spencer found at which seeks to exclude “certificates by enterprises that interoperate via a Bridge CA environment” from the SBR scope, and to clarify that the SBR apply to all CAs within a Publicly-Trusted chain of trust. It was agreed to accept the change and to add “Bridge CA” to the definitions.

(Note: after the teleconference, these changes were made to the draft and a discussion occurred on the mailing list, which concluded that these changes were not necessary with the clarifications made that the SBR apply to all Publicly-Trusted CAs. The changes were subsequently withdrawn).

The group returned to the prior discussion of the validation method which allow reliance by the Certificate Issuer upon digital signatures from certain signature schemes in support of vetting individual identity. See section 3.2.41 subsection 4. It was previously agreed to expand the list of accepted schemes if corresponding acceptance criteria was defined for those schemes.

The WG discussed draft text provided by Eva Van Steenberge. Wendy Brown noted that the listing of the NIST and Kantara assurance levels should be specified as IAL2 or higher, and that the FBCA mention is not appropriate in current form.  Judith Spencer noted that self-assessment of the schemes was not appropriate and the WG needed to be able to review and update the list of approved schemes.

(Note: Following the teleconference, based on the discussion Stephen Davidson proposed a new PR at and a further discussion occurred on the mailing list).

The WG returned to the topic of the use of geographic attributes in the Subject DN. Stephen noted that conflicting text on the use of the L and ST attributes that had been copied from the TLS BR has now been removed. He noted that the attributes are not allowed in Mailbox-validated profiles, and that the WG had previously agreed to allow significant flexibility in the Legacy generation profiles. As it stands, the SBR stipulates MAY for the attributes in the Organization-, Sponsored-, and Individual-validated profiles.

Stephen Davidson again noted that edits are being checked in with noncontroversial updates and corrections based upon feedback. He thanked members who have contributed to proof reading the draft, and provided substantive comments on its content.

Stephen noted that the goal remains to move to ballot at the close of the summer when vacation absences are less prevalent. Stephen noted that that some items were clearly tagged for a future version of the SBR (such as CAA, new email control methods, and the discussion of optional CRL or OCSP). He emphasized if WG members have significant issues they should be brought to the table now. Judith Spencer noted that she had a list of comments on Github, which Stephen agreed to review.

### 6. Any Other Business {.wp-block-heading}

None

### 7. Next call {.wp-block-heading}

Next call: Wednesday, August 17, 2022 at 11:00 am Eastern Time

### Adjourned {.wp-block-heading}