---
aliases:
- /2023-03-09-2023-03-09-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-03-09 16:00:10
tags:
- Code Signing
title: 2023-03-09 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Andrea Holland (SecureTrust), Atsushi Inaba (GlobalSign), Brianca Martin (Amazon), Bruce Morton (Entrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Ian McMillan (Microsoft), Inigo Barriera (Sectigo), Janet Hines (VikingCloud), Rollin Yu (TrustAsia), Tim Hollebeek (DigiCert), Tomas Gustavsson (Keyfactor)

# Minutes

1. Assign Minute taker (start recording)
1. Brianca is taking minutes
1. Antitrust Statement
1. Dean reminded all participants that they must comply with the CA/Browser Forum anti-trust policy, code of conduct, and intellectual property rights agreement. Please contact the chair with any comments or concerns about these policies.
1. Meeting Minutes
1. February 9th meeting minutes pending receipt from Trevoli Ponds (Amazon).
1. Martijn took minutes at the F2F Meeting on February 28th.
1. Agenda – Items discussed in the F2F meeting

**a. Ian provided an overview from Microsoft’s perspective.**

Subscribers (buy certs, sign code) and consumers (consume the code/application that is signed/application).

Subscriber process is difficult and expensive, especially in the India dev space for the larger ISVs, but they are transitioning CI/CD pipelines into cloud spaces, which presents a challenge for private key protection. Subscribers should be able to take advantage of signing services (private key protection services) should be available for them to use. Even when they get their private keys and secure them, complexity comes in as to when it should be used. Some sign everything, which means providing access to their, their private keys across a wider range of their engineers and, and their infrastructure in many of those cases. For TLS, we go through certificate and key lifecycle management, it’s just hard.

For consumer end, there is too munch unsigned code (30% code windows code in 2019). Among the unsigned code is malware, 92% unsigned, less than 1% is signed with a valid cert and signature. 7% is not signed properly plays on the social engineering aspect – signature presence for a certificate is displayed in in various forms. Effectiveness and timeliness of revocation is a challenge – time to detect and remediate. What is the impact of revocation? Transitioning to shorter lived certificates for store apps, revocation is possible without impact issues but still comes with challenges. Focus is all the way from the time that we’re trying to get subscribers to sign up and do code signing securely all the way to consumers consuming it and how we leverage the remediation actions such as revocation.

Bruce asked which of those items we can deal with and stated that if code is unsigned, we should reject it and not install it.

Ian stated that Windows 11 2022 H2 introduced a new feature called smart app control. If any piece of code is unsigned, it must have a good enough reputation with Microsoft’s cloud protection service for it to be able to run. If it doesn’t, it will not run, unless it’s signed with a publicly trusted code signing certificate.

Dimitris stated he thought there was some kind of a reputation building based on the identity of the certificate (company in the subject of the certificate).

Ian stated that is correct but only after you’ve signed after you signed. Message to developers is to gain reputation, they can submit the Microsoft Defender file submission portal, but that can take time. There is no timeline around when reputation might be built or if it’ll be enough from that 1 submission. The overwhelming messages sign your code.

Bruce asked if there were any steps we can do in the working group to support. Problems feel like they are at the Windows end, not the CA end.

Ian asked that we look at identity verification and build in something that allows us to detect when a developer or cert has gone bad. How do we monitor what we have subscribed or issued?

**b. Certificate validity period**:

Bruce recapped other items we discussed shorter validity period for code signing certificates is better than longer validity period.

Ian mentioned the availability of legit search on the dark web from search to non-search to non-search with reputation, built into them or condition searches, and the cost is not too expensive ($400).

Dimitris stated that one of the biggest arguments for short term certificates is to, uh, be able to have a more granular revocation.

Ian stated for the attacker, how do I reduce their velocity to ROI?

**c. Certificate transparency**

-

Bruce state that you need a log or some logs you need a policy.

Ian stated he was interested in what the cost is to all of us and if it’s worth it.

Tim stated that the costs are actually relatively low. The biggest cost is actually the amount of time. It would take figuring out how this would work and the policies, and, the contractual requirements of who’s logging to who and so it would take a little bit of effort to get it set up. From a tactical point of view, and the cost of actually operating the logs they have been operating them for almost a decade. Not a ton of code signing certs, if we can do it for TLS we can do it foe code signing.

Dean asked about the cost benefit analysis or tax. It seems like to be able to put these out there and have companies monitor for certificates. That might be issued in their name.

Tim state that there’s not a lot of transparency in the code setting ecosystem and it makes it a lot tougher to make the code sending ecosystem better and one of the things we did learn from our experience with certificate transparency in TLS is it does allow a lot more transparency about what’s actually out there and makes it easier to have discussions about how the ecosystem needs to be improved.

Dimitris stated that we need to write down what the problems are trying to solve with certificate transparency, detecting malware is not one of those problems

Tim stated that the one spot where it does provide some benefit is in the event that we do find, let’s say, we find a bad actor that’s using a certificate issued. The fact that you have all the other certificates from the ecosystem log does help in tracking down if the bad actor had gotten certificates from other CA’s.

Ian stated that he liked the idea of these companies being able to monitor what search have been issued on their name and individuals as well.

Ian asked if CA’s could see the reason code on the certificate and why it was revoked, have they received a cert from another CA that has been revoked for signing malware.

Brianca would like to see us extend that not only for certificates issue in the company’s names, but subsidiaries as well.

Bruce mentioned that if I had someone monitoring, so I can allow customers to see if anybody ever gets us here with their name in it. CT and monitoring would not provide value to the customer.

Ian stated that companies are protecting their brand would invest in monitoring.

Brianca stated that monitoring is valuable be it allows companies, when requirements change to be able to know which certificates that they have been issued that need to comply.

**d. Simplify EV verification**

Bruce noted that the process is complicated and we should figure out how to make it less complicated.

Tim stated that the main thing that has changed a lot with respect to validation is the validation requirements go back to a time when getting a hold of corporate records was involved, going down into a basement and going through microfiche and things like that. And the widespread availability of publicly available corporate records that you can just say, hey, here’s the jurisdiction. Here’s the serial number. We verified it. You can. We’ll check in by looking up the records online as well. I mean, a lot of this stuff is just much easier than it was 20 years ago and yes, it could definitely be simplified.

Ian stated that the due diligence with a person peer review could be corrupted.

Dimitris stat that they are less corruptible and asked if the comment was for automated identity proofing.

Ian stated yes, but the true Id technology to leverage attestations. There is likely a better solution.

Bruce said we should clean up EV from the CA/B forum point of view.

1. Ballot Status
1. **Malware based verification ballot**: Bruce stated that the new direction is to make it in line with how we have revocation done in the SSL BRs and add in the extra items around if suspect code gets signed.
1. **Signing Service ballot**: Tim added a review to the latest ballot on GitHub, only 1 or 2 issues that need a little more work, around audits and scoping. Plan to tidy it up in a week or two. Take items that are more complicated out of scope from this ballot. Everyone should make comments by the next meeting.
1. **Remove BR References ballot**: Dimitris and Cory discussed changes and pushed them to the branch on GitHub.
1. Next Meeting

- March 23, 2023.