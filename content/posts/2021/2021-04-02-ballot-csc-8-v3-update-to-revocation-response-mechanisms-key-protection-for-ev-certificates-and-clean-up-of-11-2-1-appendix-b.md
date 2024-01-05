---
aliases:
- /2021-04-02-ballot-csc-8-v3-update-to-revocation-response-mechanisms-key-protection-for-ev-certificates-and-clean-up-of-11-2-1-appendix-b/
author: Ben Wilson
date: 2021-04-02 19:59:00
tags:
- Code Signing
- Ballot
title: 'Ballot CSC-8 v3: Update to Revocation response mechanisms. key protection
  for EV certificates, and clean-up of 11.2.1 & Appendix B'
type: post
---

The voting period for Ballot CSC-8 has ended and the Ballot has Passed.

Here are the results:

Voting by Certificate Issuers – 7 votes total including abstentions

– 6 Yes votes: Certum (Asseco), DigiCert, Entrust, GlobalSign, HARICA, Sectigo

– 0 No votes

– 1 Abstain: GoDaddy

87% of voting Certificate Issuers voted in favor.

Voting by Certificate Consumers – 1 vote total including abstentions

– 1 Yes votes: Microsoft

– 0 No votes

– 0 Abstain

100% of voting Certificate Consumers voted in favor.

Relevant Bylaw references

Bylaw 2.3(f) requires:

– a “yes” vote by two-thirds of Certificate Issuer votes and 50%-plus-one Certificate Consumer votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both Certificate Issuers and Certificate Consumers.

– at least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was also met.

Under Bylaw 2.3(g), “a ballot result will be considered valid only when more than half of the number of currently active Members has participated”. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting was 5, so quorum was 6 votes – quorum was met.”

Purpose of this ballot:

Address the changes needed in the Baseline Requirement for the Issuance and Management of Publicly-Trusted Code Signing Certificates v2.2 for:

1. Making OCSP optional with CRLs being required (13.2.1, 13.2.2, Appendix B: 3C, 5C)
1. Added Common Criteria EAL 4+ to the supported key protection crypto modules for EV certificates in light of support for RSA 3072 keys (16.3.2)
1. Clean up of Appendix B\[3C\] & \[5C\] (AIA value requirements) and section 11.2.1 contradiction with RFC3161

In Appendix B, it was noted that the requirements for the Timestamping (5C) and Code Signing (3C) certificates had AIA value requirements to include the root certificate URL, but that should be the issuing CA URL. This has been included in this ballot.

Corey Bonnell noted a contradiction in the section 11.2.1 regarding Timestamp in the clause “and appends it own Timestamp Certificate” is an unconditional requirement for a timestamp response to include the TSA certificate chain, but this conflicts with RFC3161 making this clause a conditional requirement based on the certReq field (missing or set to false). This clean up has the clause removed from section 11.2.1.

The following motion has been proposed by Ian McMillan of Microsoft, and endorsed by Dimitris Zacharopoulos of HARICA and Bruce Morton of EnTrust.

— MOTION BEGINS —

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates” version 2.2 according to the attached redline.

[Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates v.2.3](/uploads/baseline_requirements_for_the_issuance_and_management_of_code_signing.v2.3.pdf)
[Baseline Requirements for the Issuance and Management of Publicly‐Trusted Code Signing Certificates v.2.3 (redline)](/uploads/baseline_requirements_for_the_issuance_and_management_of_code_signing.v2.3_redline.pdf)

— MOTION ENDS —

The procedure for approval of this ballot is as follows:

Discussion (7 days)
Start Time: 2021-03-18, 17:30 Eastern Time (US)
End Time: not before 2021-03-25, 17:30 Eastern Time (US)

Vote for approval (7 days)

Start Time: 2021-03-25, 17:30 Eastern Time (US)

End Time: 2021-04-01, 17:30 Eastern Time (US)