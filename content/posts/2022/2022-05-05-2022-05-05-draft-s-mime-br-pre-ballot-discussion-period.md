---
aliases:
- /2022/05/05/2022-05-05-draft-s-mime-br-pre-ballot-discussion-period/
author: Stephen Davidson
date: 2022-05-05 15:18:41
tags:
- S/MIME
- Ballot
title: 2022-05-05 Pre-Ballot Discussion Period for S/MIME Baseline Requirements
type: post
---

The S/MIME Certificate Working Group (SMCWG) of the CA/Browser Forum commences a 30-day pre-ballot discussion of the draft text of the “Baseline Requirements for the Issuance and Management of Publicly-Trusted S/MIME Certificates” (S/MIME BR).

The S/MIME BR describes an integrated set of technologies, protocols, identity-proofing, lifecycle management, and auditing requirements for certificate Issuers. The draft is the culmination of work started in 2020 by a group of Certificate Issuers, Certificate Consumers (including both email user agents and email service providers), as well as other interested parties such as audit schemes and industry groups.

As agreed by the SMCWG, recognizing that the S/MIME BR will be a new standard, the pre-ballot discussion period allows organizations to complete their internal reviews of the draft before the final ballot is assembled.

Comments may be submitted by SMCWG members to the SMCWG public listserv () or using the Issues functionality on GitHub ().

The SMCWG will take advantage of the summer face-to-face meeting of the CABF to discuss and categorize any remaining issues that arise for resolution in this draft or a future version of the standard.

At that time, a roadmap will be set to solicit endorsers and to conduct an adoption ballot for version 1 of the S/MIME BR later in the summer, subject to the voting rules of the SMCWG charter and the CABF bylaws which call for a 7-day review and a 7-day ballot period. A successful ballot will lead to a 60-day IPR review.

The draft of the S/MIME BR may be found at .

## Summary

The S/MIME BR describe four profiles for S/MIME certificates including:

- Mailbox-validated (include only an email address);
- Organization-validated (where the Subject is a Legal Entity);
- Sponsor-validated (where the Subject is a Natural Person associated with a Legal Entity, and recognizing the common use of Enterprise-specific registration authorities for this type of certificate); and
- Individual-validated (where the Subject is a Natural Person).

Each profile has Legacy, Multipurpose, and Strict generations with varying technical specifications for certificate content including Subject DN fields, extended key usages, and extensions.

Acknowledging that few standards exist today for the issuance of S/MIME certificates, and therefore there is great variety in existing practice, the draft standard has been designed to provide flexibility for CAs in bringing Publicly-Trusted S/MIME under a consistent regime, while moving to more defined standards over time.

In line with the SMCWG Charter, the S/MIME BR draft has maintained consistency where relevant with other CABF standards.

Given the greater handling of personal information for S/MIME certificates, the S/MIME BR includes requirements for data protection.

The SMCWG intends to move forward with additional standards work in future versions of the S/MIME BR, for example defining additional methods for verifying email control, the use of Certificate Authority Authorization (CAA), and addressing topics such as key generation and recovery in greater detail.