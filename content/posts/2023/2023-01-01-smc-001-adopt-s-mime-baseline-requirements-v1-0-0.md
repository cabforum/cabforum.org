---
aliases:
- /2023/01/01/smc-001-adopt-s-mime-baseline-requirements-v1-0-0/
author: Ben Wilson
date: 2023-01-01 17:43:00
tags:
- S/MIME
- Ballot
title: Ballot SMC01 – Adopt S/MIME Baseline Requirements v1.0.0
type: post
---

The Intellectual Property Review (IPR) period for Ballot SMC-001 (Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates) has completed. No IPR Exclusion Notices were filed, and the ballot is adopted as of January 01, 2023. The S/MIME BR become effective on September 01, 2023.

The S/MIME Baseline Requirements version 1.0.0 is available in PDF form [here](/working-groups/smime/documents/) in accordance with the Bylaws.

## Results of SMC01v3: Final Guideline for “S/MIME Baseline Requirements”

The voting period for ballot SMC01v3 (Final Guideline for “S/MIME Baseline Requirements”) has completed, and the ballot has **passed**.

## Voting Results

## Certificate Issuers

22 votes total, with no abstentions:

- **19 Issuers voting YES:** Asseco Data Systems SA (Certum), Buypass AS, DigiCert, D-TRUST, eMudhra, Entrust, GDCA, GlobalTrust, HARICA, IdenTrust, MSC Trustgate Sdn Bhd, SECOM Trust Systems, Sectigo, SecureTrust, SSL.com, SwissSign, Telia Company, TrustCor Systems, Visa,
- **3 Issuers voting NO:** AC Camerfirma SA, AC Firmaprofessional SA, OISTE Foundation/WiseKey
- **0 Issuers ABSTAIN**

A YES vote from Actalis was sent outside the voting period so is not counted here.

## Certificate Consumers

4 votes total, with no abstentions:

- **4 Consumers voting YES:** Apple, Mozilla, rundQuadrat, Zertificon
- **0 Consumers voting NO**
- **0 Consumers ABSTAIN**

## Bylaws Requirements

1. Bylaw 2.3(f) requires:
   0\. A “yes” vote by two-thirds of Certificate Issuer votes and by 50%-plus-one of Certificate Consumer votes. Votes to abstain are not counted for this purpose. This requirement was **MET** for Certificate Issuers and**MET** for Certificate Consumers.
   1. At least one Certificate Issuer and one Certificate Consumer Member must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.
1. Bylaw 2.3(g) requires that a ballot result only be considered valid when “more than half of the number of currently active Members has participated”. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three meetings. Votes to abstain are counted in determining quorum. Half of the currently active Voting Members at the start of voting was 9, so the quorum was 10 for this ballot. This requirement was **MET**.

This ballot now enters the 60-day IP Rights Review Period to permit members to review the ballot for relevant IP rights issues. The IP Rights Review Period ends at 2359 UTC on January 1, 2023.

## Ballot SMC01v3: Final Guideline for “S/MIME Baseline Requirements”

## Purpose of Ballot

The S/MIME Certificate Working Group was chartered to discuss, adopt, and maintain policies, frameworks, and standards for the issuance and management of Publicly-Trusted S/MIME Certificates. This ballot adopts a new “S/MIME Baseline Requirements” that includes requirements for verification of control over email addresses, identity validation for natural persons and legal entities, key management and certificate lifecycle, certificate profiles for S/MIME Certificates and Issuing CA Certificates, as well as CA operational and audit practices.

An S/MIME Certificate for the purposes of this document can be identified by the existence of an Extended Key Usage (EKU) for id-kp-emailProtection (OID: 1.3.6.1.5.5.7.3.4) and the inclusion of a rfc822Name or an otherName of type id-on-SmtpUTF8Mailbox in the subjectAltName extension in the Certificate.

The following motion has been proposed by Stephen Davidson of DigiCert and endorsed by Martijn Katerbarg of Sectigo and Ben Wilson of Mozilla.

## Motion begins

This ballot adopts the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (“S/MIME Baseline Requirements”) as Version 1.0.0.

The proposed S/MIME Baseline Requirements may be found at <https://github.com/cabforum/smime/pull/178/files> or the attached document.

The SMCWG Chair or Vice-Chair is permitted to update the Relevant Dates and Version Number of the S/MIME Baseline Requirements to reflect final dates.

## Motion ends

This ballot proposes a Final Guideline. The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 14 October 2022 18:00 UTC

End Time: not before 21 October 2022 18:00 UTC

Vote for approval (7 days)

Start Time: 25 October 2022, 14:00 UTC

End Time: 1 November 2022, 14:00 UTC

IPR Review (60 days)

## Charter Voting References

Section 5.1 (“Voting Structure”) of the SMCWG Charter says:

In order for a ballot to be adopted by the SMCWG, two-thirds or more of the votes cast by the Certificate Issuers must be in favor of the ballot and more than 50% of the votes cast by the Certificate Consumers must be in favor of the ballot. At least one member of each class must vote in favor of a ballot for it to be adopted. Quorum is the average number of Member organizations (cumulative, regardless of Class) that have participated in the previous three (3) SMCWG Meetings or Teleconferences (not counting subcommittee meetings thereof).