---
aliases:
- /2016/07/28/ballot-173-removal-requirement-cease-use-private-key-due-incorrect-certificate-info/
author: Ben Wilson
date: 2016-07-28 18:03:50
tags:
- Ballot
- Server Certificates
title: Ballot 173 – Removal of requirement to cease use of private key due to incorrect
  certificate info
type: post
---

Voting on Ballot 173, Removal of requirement to cease use of public key due to incorrect info, has now closed. The results are as follows:

From the CAs, we received 16 YES votes, 1 NO vote and 0 Abstentions.

From the Browsers, we received 3 YES votes, 0 NO votes and 0 Abstentions.

Therefore the ballot passes.

The effective date is 45 days from July 28, 2016.

Dean Coclin

CA/B Forum Chair

## Ballot 173 – Removal of requirement to cease use of private key due to incorrect certificate info

The following motion has been proposed by Josh Aas of ISRG / Let’s Encrypt. Ben Wilson of Digicert and Chris Bailey of Entrust endorse.

## Background

BR Section 9.6.3 point 5 says:

“Reporting and Revocation: An obligation and warranty to promptly cease using a Certificate and its associated Private Key, and promptly request the CA to revoke the Certificate, in the event that: (a) any information in the Certificate is, or becomes, incorrect or inaccurate, or (b) there is any actual or suspected misuse or compromise of the Subscriber’s Private Key associated with the Public Key included in the Certificate;”

There is a problem here, which is that this requires a subscriber to stop using a private key just because information in a certificate is inaccurate or incorrect. People should stop using a cert with inaccurate or incorrect information, but they shouldn’t be required to stop using a key pair unless there is known or suspected compromise.

This is particularly problematic for HPKP.

–Motion Begins–

Effective upon the date of passage, the following modifications are made to the Baseline Requirements:

Change the following text in Section 9.6.3:

\=======================

Reporting and Revocation: An obligation and warranty to promptly cease using a Certificate and its associated Private Key, and promptly request the CA to revoke the Certificate, in the event that: (a) any information in the Certificate is, or becomes, incorrect or inaccurate, or (b) there is any actual or suspected misuse or compromise of the Subscriber’s Private Key associated with the Public Key included in the Certificate; =======================

To:

\=======================

Reporting and Revocation: An obligation and warranty to: (a) promptly request revocation of the Certificate, and cease using it and its associated Private Key, if there is any actual or suspected misuse or compromise of the Subscriber’s Private Key associated with the Public Key included in the Certificate; and (b) promptly request revocation of the Certificate, and cease using it, if any information in the Certificate is or becomes incorrect or inaccurate.

\=======================

–Motion Ends–

The review period for this ballot shall commence at 2200 UTC on 14 July 2016, and will close at 2200 UTC on 21 July 2016. Unless the motion is withdrawn during the review period, the voting period will start immediately thereafter and will close at 2200 UTC on 28 July 2016. Votes must be cast by posting an on-list reply to this thread.

A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response.

Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is currently ten (10) members– at least ten members must participate in the ballot, either by voting in favor, voting against, or abstaining.