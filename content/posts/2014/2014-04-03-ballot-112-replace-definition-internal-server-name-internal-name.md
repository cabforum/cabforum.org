---
aliases:
- /2014-04-03-ballot-112-replace-definition-internal-server-name-internal-name/
author: Ben Wilson
date: 2014-04-03 23:29:22
tags:
- Ballot
- Server Certificates
title: Ballot 112 – Replace Definition of “Internal Server Name” with “Internal Name”(passed)
type: post
---

Ballot 112 – Replace Definition of “Internal Server Name” with “Internal Name”

**Votes in Favor:** ANF, Buypass, Comodo, DigiCert, Disig, FirmaProfesional, GlobalSign, GoDaddy, Logius PKIoverheid, QuoVadis, Sertifitseerimiskeskus, SSC, StartCom, SwissSign, Symantec,Trend Micro, Trustis, TURKTRUST, TAIWAN-CA, WoSign, Mozilla and Google

No abstentions or nay votes.

**Ballot passed.**

The current definition of Internal Server Name is ambiguous. It reads, “A Server Name (which may or may not include an Unregistered Domain Name) that is not resolvable using the public DNS.”

“Internal Server Name” is used four times in the Baseline Requirements–three times in Section 9.2.1 (Subject Alternative Name Extension) and once in Section 11.1.4 (New gTLD Domains). Those provisions set forth the program by which the CA/B Forum will sunset the issuance of Certificates with Internal Server Names, so it is of high importance that the terminology be clear.

Ben Wilson of DigiCert made the following motion, and Chema López of Firma Profesional, Kirk Hall of Trend Micro, and Ryan Sleevi of Google have endorsed it.

**Motion Begins**

1. REPLACE the Definition of “Internal Server Name” in the Baseline Requirements by DELETING the current definition and INSERTING the following:

Internal Name: A string of characters (not an IP address) in a Common Name or Subject Alternative Name field of a Certificate that cannot be verified as globally unique within the public DNS at the time of certificate issuance because it does not end with a Top Level Domain registered in IANA’s Root Zone Database.

2. REPLACE “Internal Server Name” with “Internal Name” elsewhere throughout the Baseline Requirements, including in the table of Relevant Compliance Dates, Section 9.2.1, and Section 11.1.4.

**Motion Ends**

The review period for this ballot shall commence at 2200 UTC on Thursday, 20 March 2014, and will close at 2200 UTC on Thursday, 27 March 2014. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on Thursday, 3 April 2014. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Also, at least six members must participate in the ballot, either by voting in favor, voting against, or abstaining.