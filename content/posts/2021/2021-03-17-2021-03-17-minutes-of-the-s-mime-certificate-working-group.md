---
aliases:
- /2021/03/17/2021-03-17-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2021-03-17 22:37:00
tags:
- Minutes
- S/MIME
title: 2021-03-17 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

March 17, 2021

These are the Approved Minutes of the Teleconference described in the subject of this message.

### Attendees

Adrian Mueller (SwissSign), Andrea Holland (SecureTrust), Ali Gholami (Telia Company), Atsushi Inaba (GlobalSign), Burkhard Wiegel (Zertificon), Bruce Morton (Entrust), Ben Wilson (Mozilla), Christy Berghoff (Federal PKI), Clint Wilson (Apple), Corey Bonnell (DigiCert), Curt Spann (Apple), Dean Coclin (DigiCert), Enrico Entschew (D-TRUST), Hazhar Ismail (MSC Trustgate.com), Russ Housley (Vigil Security), James Knapp (Federal PKI), Janet Hines (SecureTrust), Klauss Voss (Zertificon), David Kluge (Google), Inigo Barreira (Sectigo), Juan Ángel Martin (Camerfirma), Morad Abou Nasser (TeleTrust), Niko Carpenter (SecureTrust), Pedro Fuentes (OISTE), Patrycja Tulinska (PSW), Li-Chun Chen (Chunghwa Telecom), Rebecca Kelley (Apple), Sebastian Schulz (GlobalSign), Stephen Davidson (DigiCert), Thomas Connelly (Federal PKI), Wendy Brown (Federal PKI)

### 1. Roll Call

The Roll Call was taken.

### 2. Read Antitrust Statement

The Antitrust/Compliance Statement was read.

### 3. Review Agenda

It was noted that the listserv may not have been distributing messages, including the agenda (which was redistributed offlist before the meeting). The listserv issues appear to now have been resolved.

### 4. Approval of minutes from last teleconference

The minutes of the February 17 teleconference were approved.

### 6. Discussion of certificate profile

A discussion commenced regarding the allowed fields in the Subject DN for the various S/MIME certificate types:

{joint-iso-itu-t(2) international-organizations(23) ca-browser-forum(140) certificate-policies(1) smime-baseline(5) smime-type (X) smime-grade (y)}

- Mailbox-validation (1)
- Organizational-validation (2)
- Sponsored-validation (3)
- Individual-validation (4)

For each grade:

- Strict (1)
- Multipurpose (2)
- Legacy (3)

Clint Wilson asked what minimum fields a Certificate Consumer (client software) might expect to see in an S/MIME certificate as this was relevant to any discussion of the Subject. Curt Spann expanded upon that to ask what is the absolute baseline for all cert fields. It was noted that in previous discussions the WG had worked through requirements known to us including those from Mozilla and gmail.

It was noted that following recent discussion in the IETF, [https://tools.ietf.org/html/draft-rsalz-use-san-00](https://tools.ietf.org/html/draft-rsalz-use-san-00) would likely not seek to ban the use of CN and Subject Email in S/MIME certs. Corey Bonnell noted that rfc822 SAN was required by RFC 5280 if Subject Email was used.

Wendy Brown raised that multiple emails should be allowed in SAN, assuming that the issuer has verified mailbox control/authorization for each address before issuance. All email addresses in the Subject should be in the SAN. Morad Abou Nasser questioned if encryption certificates should be allowed to have multiple mail boxes (vs aliases).

It was noted that Outlook has provided some information on S/MIME cert processing to the WG. Sebastien Schulz suggested that we more formally survey the Certificate Consumers. Ben and Clint offered to assist. In the absence of direct feedback, Ben Wilson suggested that test certificates might be created to verify behavior in different clients. Questions might include:

- What are the minimum certificate requirements for processing an S/MIME message?
- What certificate contents (or absence of contents) would cause S/MIME to fail?
- Are there failure messages related to certificate configuration?
- What certificate information is used for display to the mailbox owner by default?
  - In other words, in what order does the software look through cert contents for display?
  - Is this configurable?
- Does the mail client software have issues processing certificates with more than one rfc822 in the SAN?
- Does the email software have ability to act upon S/MIME messages based upon information in the certificate? (ie to trigger processing rules)
- Are there S/MIME certificate current practices that are known to be problematic for mail clients?

### 6. Any Other Business

None

### 7. Next call

Next call: Wednesday, March 31, 2021 at 11:00 am Eastern Time

### Adjourned