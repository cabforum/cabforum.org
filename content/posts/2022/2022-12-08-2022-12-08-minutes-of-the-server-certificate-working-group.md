---
aliases:
- /2022-12-08-2022-12-08-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2022-12-08 12:42:17
tags:
- Server Certificates
title: 2022-12-08 Minutes of the Server Certificate Working Group
type: post
---

These are the Minutes of the Teleconference described in the subject of this message.

## Attendees (in alphabetical order) {.wp-block-heading}

Adam Jones  (Microsoft), Andrea Holland  (SecureTrust), Atsushi INABA  (GlobalSign), Ben Wilson (Mozilla), Bruce Morton  (Entrust), Cassie L’Heureux  (GoDaddy), Chris Clements (Google Chrome), Chris Kemmerer (SSL.com), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen  (OATI), Daryn Wright  (GoDaddy), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie  (GlobalSign), Dustin Hollenback  (Microsoft), Enrico Entschew (D-Trust), Fumi Yoneda (Japan Registry Services), Joanna Fox  (TrustCor), Luis Cervantes  (GoDaddy), Lynn Jeun (VISA), Mads Henriksveen  (Buypass), Michelle Coon  (OATI), Nargis Mannan (SecureTrust), Paul van Brouwershaven  (Entrust), Peter Miskovic  (Disig), Rebecca Kelley (Apple), Rollin Yu  (TrustAsia), Stephen Davidson (DigiCert), Tadahiko Ito  (SECOM), Thomas Zermeno (SSL.com), Tim Hollebeek (DigiCert), Tobias Josefowitz  (Opera), Trevoli Ponds-White  (Amazon), Tyler Myers  (Godaddy), Wendy Brown (FPKI), Yoshiro Yoneya  (JPRS)

## Minutes {.wp-block-heading}

The Chair (Iñigo Barreira) and Vice Chair (Kiran Tummala) where unable to run the meeting and asked Dimitris Zacharopoulos to run the meeting.

### **1. Roll call** {.wp-block-heading}

Dimitris Zacharopoulos took attendance

### **2. Read Antitrust Statement  ** {.wp-block-heading}

The antitrust statement was read

### **3. Review Agenda ** {.wp-block-heading}

Today’s agenda was approved

### **4. Approval of minutes of last call ** {.wp-block-heading}

The minutes of November 10 were approved.

### **5. Application of ZT Browser** {.wp-block-heading}

- Dean Coclin reviewed the application, IPR agreement has been signed and all questions have been answered.
- Tobias Josefowitz asked for more time and if this can be postponed to the next meeting.
- It was agreed to postpone the review of this application until the next meeting as it was also not yet been forwarded to the management list.

### **6. Validation Subcommittee Update** {.wp-block-heading}

Corey Bonnell gave the update.

The group discussed three topics during our last meeting:

- Approval of an update to the certificate profiles ballot that integrates the ballots that have passed over the past year and a half.
- Discussion about SHOULD in RFC5280 and NOT RECOMMENDED in the profile for the subject key identifier, there was rough consensus on the call to change this to MAY, but the certificate consumers would like to go back and discuss internally before we make any text changes.
- Policy qualifiers, right now the language in the document says that those are NOT RECOMMENDED, a compromise was agreed to change this to a MAY for CA certificates but keep this NOT RECOMMENDED for subscriber certificates.

### **7. Ballot Status** {.wp-block-heading}

- SCXX – Revival of Debian Weak Keys Ballot – Chris Kemmerer (SSL.com)
- Chris shared that Martijn Katerbarg (Sectigo) has agreed to endorse and that Tim Hollebeek (DigiCert), who had just left the call has expressed interest to endorse as well. As soon this is confirmed we can proceed with the ballot.
- SCXX – SLO/Response for CRL & OCSP Responses – David Kluge (Google) / Clint Wilson (Apple): on hold?
- Clint Wilson confirmed that it’s continuing to be on hold waiting on the proposal from Ryan Dickson to make OCSP optional prior to moving forward with this ballot.
- SCXX – Incorporation of Mozilla Revocation Reason Codes – Ben Wilson (Mozilla)
- Ben Wilson made a couple tweaks to the suggestions from Dimitris and asked Dimitris to review.
- SCXX – Certificate profiles (Digicert)
- See the validation subcommittee update
- SCXX – Make OCSP optional, require CRLs
- Chris Clements confirmed that this is open for discussion and that they are still highly interested in this.

### **8. Any Other Business** {.wp-block-heading}

No other business was discussed.

### **9. Next call** {.wp-block-heading}

Jan 5, 2023

### **10. Adjourned** {.wp-block-heading}