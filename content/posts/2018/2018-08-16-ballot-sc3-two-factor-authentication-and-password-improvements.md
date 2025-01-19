---
aliases:
- /2018/08/16/ballot-sc3-two-factor-authentication-and-password-improvements/
author: Jos Purvis
date: 2018-08-16 14:12:36
tags:
- Ballot
- Server Certificates
title: 'Ballot SC003: Two-Factor Authentication and Password Improvements'
type: post
---

The voting period for Ballot SC3 has ended, and the ballot has PASSED. Here are the results.

**Voting by CAs – 17 votes total including abstentions**
17 Yes votes: Amazon, Buypass, CFCA, Chunghwa Telecom, D-TRUST, DigiCert, Disig, Entrust Datacard, GDCA, GlobalSign, GoDaddy, HARICA, Kamu Sertifikasyon Merkezi, QuoVadis, SHECA, TWCA, TrustCor
0 No votes
0 Abstain
_100% of voting CAs voted in favor_

**Voting by browsers – 5 votes total including abstentions**
5 Yes votes: Apple, CSS, Microsoft, Mozilla, Opera
0 No votes
0 Abstain
_100% of voting browsers voted in favor_

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 10, so quorum was 11 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

## The ballot passes.

## Ballot SC3: Two-Factor Authentication and Password Improvements

**Purpose of Ballot:** The Network Security Working Group met a number of times to improve the Network Security Guidelines requirements around authentication, specifically by requiring two-factor authentication, and improving the password requirements in line with more recent NIST guidelines.

While CAs are encouraged to improve their password requirements as soon as possible, a two year grace period is being given to allow organizations to develop and implement policies to implement the improved requirements, especially since some organizations may have to simultaneously comply with other compliance frameworks that have not been updated yet and are based on older NIST guidance about passwords.

The following motion has been proposed by Tim Hollebeek of DigiCert and endorsed by Dimitris Zacharopoulos of Harica and Neil Dunbar of TrustCor.

- MOTION BEGINS –

This ballot modifies the “Network and Certificate System Security Requirements” as follows, based upon Version 1.1:

In the definitions, add a definition for Multi-Factor Authentication:

“Multi-Factor Authentication: An authentication mechanism consisting of two or more of the following independent categories of credentials (i.e. factors) to verify the user’s identity for a login or other transaction: something you know (knowledge factor), something you have (possession factor), and something you are (inherence factor). Each factor must be independent. Certificate-based authentication can be used as part of Multifactor Authentication only if the private key is stored in a Secure Key Storage Device.”

Capitalize all instances of the defined term “Multi-Factor Authentication”.

Add a definition for Secure Key Storage Device:

“Secure Key Storage Device: A device certified as meeting at least FIPS 140-2 level 2 overall, level 3 physical, or Common Criteria (EAL 4+).”

In section 1.j., capitalize Multi-Factor Authentication, and strike the parenthetical reference to subsection 2.n.(ii).

In section 2.f., add “(for accountability purposes, group accounts or shared role credentials SHALL NOT be used)” after “authenticate to Certificate Systems”.

Change section 2.g. to read:

“g. If an authentication control used by a Trusted Role is a username and password,
then, where technically feasible, implement the following controls:
i. For accounts that are accessible only within Secure Zones or High Security Zones, require that passwords have at least twelve (12) characters;
ii. For authentications which cross a zone boundary into a Secure Zone or High Security Zone, require Multi-Factor Authentication. For accounts accessible from outside a Secure Zone or High Security Zone require passwords that have at least eight (8) characters and are not be one of the user’s previous four (4) passwords; and implement account lockout for failed access attempts in accordance with subsection k;
iii. When developing password policies, CAs SHOULD take into account the password guidance in NIST 800-63B Appendix A.
iv. Frequent password changes have been shown to cause users to select less secure passwords. If the CA has any policy that specifies routine periodic password changes, that period SHOULD NOT be less than two years. Effective April 1, 2020, if the CA has any policy that requires routine periodic password changes, that period SHALL NOT be less than two years.

In section 2.h., change “Require” to “Have a policy that requires”

In section 2.i., change “Configure” to “Have a procedure to configure”

Change section 2.k. to read:

“k. Lockout account access to Certificate Systems after no more than five (5) failed access attempts, provided that this security measure:
i. is supported by the Certificate System,
ii. Cannot be leveraged for a denial of service attack, and
iii. does not weaken the security of this authentication control;”

Change section 2.n. to read:

“Enforce Multi-Factor Authentication for all Trusted Role accounts on Certificate Systems (including those approving the issuance of a Certificate, which equally applies to Delegated Third Parties) that are accessible from outside a Secure Zone or High Security Zone; and”

## Motion ends

A comparison of the changes in this ballot can be found at <https://github.com/cabforum/documents/commit/4a98c0917510937432d1f004cf36fd989851cdb8#diff-50fc941f7be640a0bf58764b83d5d9e7>

The procedure for approval of this ballot is as follows:

Discussion (7+ days)
Start Time: 2018-07-26 17:45 Eastern
End Time: 2018-08-09 11:45 Eastern

Vote for approval (7 days):
Start Time: 2018-08-09 11:45 Eastern
End Time: 2018-08-16 11:45 Eastern