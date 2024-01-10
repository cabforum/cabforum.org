---
aliases:
- /2023/10/05/2023-10-05-minutes-of-the-f2f-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-10-05 21:00:43
tags:
- Face-to-Face
- Minutes
- Code Signing
title: 2023-10-05 Minutes of the F2F Code Signing Certificate Working Group
type: post
---

# Attendees

Adam Jones – (Microsoft), Aleksandra Kurosz – (Asseco Data Systems SA (Certum)), Andrea Holland – (VikingCloud), Arvid Vermote – (GlobalSign), Ashish Dhiman – (GlobalSign), Ben Dewberry – (Keyfactor), Ben Wilson – (Mozilla), Brianca Martin – (Amazon), Bruce Morton – (Entrust), Christophe Bonjean – (GlobalSign), Clemens Wanko – (ACAB Council), Corey Bonnell – (DigiCert), Dave Chin – (CPA Canada/WebTrust), Dean Coclin – (DigiCert), Don Sheehy – (CPA Canada/WebTrust), Doug Beattie – (GlobalSign), Ellie Lu – (TrustAsia Technologies, Inc.), Eva Vansteenberge – (GlobalSign), Hannah Sokol – (Microsoft), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), John Mason – (Microsoft), Jozef Nigut – (Disig), Kateryna Aleksieieva – (Asseco Data Systems SA (Certum)), Li-Chun Chen – (Chunghwa Telecom), Marcelo Silva – (Visa), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Mohit Kumar – (GlobalSign), Nate Smith – (GoDaddy), Naveen Kumar – (eMudhra), Nikolaos Soumelidis – (ACAB Council), Nitesh Bakliwal – (Microsoft), Paul van Brouwershaven – (Entrust), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Rich Kapushinski – (CommScope), Rollin Yu – (TrustAsia Technologies, Inc.), Roman Fischer – (SwissSign), Scott Rea – (eMudhra), Stephen Davidson – (DigiCert), Sven Rajala – (Keyfactor), Thomas Zermeno – (SSL.com), Tim Callan – (Sectigo), Tim Crawford – (CPA Canada/WebTrust), Tim Hollebeek – (DigiCert), Trevoli Ponds-White – (Amazon), Tsung-Min Kuo – (Chunghwa Telecom), Vijayakumar (Vijay) Manjunatha – (eMudhra)

# Minutes

**Minutes Approval** – Approved for 7th September 2023 and 21st September 2023

**Interested Party status** – IBM added as interested party

## Ballot Proposals Status:-

Cleanup Ballot – Proposal shared , to be pursued forward for discussion period

Signing Service Ballot – reviewed and have 2 endorsers, to be pursued forward for discussion period

Remove EV guidelines references – Discussion happened if working group wants to copy exact requirements from EV guidelines or if they want to first review what is really required and then add it to the baseline requirements for Codesigning. Approach decided to bring all the requirements with reference to EV guidelines in a pull request, highlight which are new compared to 1.7.1 and then review what is relevant and only then bring it in Codesigning BRs.

Code Signing Working Group Charter Update – Proposed language update. Changes done to add scope to manage the issuance and management of Timestamping for Codesigning determined by Policy OID 2.23.140.1.4.2. It also has update to Voting structure to reach Quorum as per charter. No comments from group. To be raised for ballot after 2 weeks to give time to review.

High Risk Ballot – To be cleaned up and ballot to be provided but after Service Signing ballot is pursued for discussion and is closer to be approved.

## Individual and Organization verification Mechanism

Value of point in time location verification and use fields like State and Locality being discussed – It was highlighted that there could be tools in the market may be using these fields, so consuming technology may need these fields but what level of verification is required can be discussed

It was raised that point of location verification and related records are also being done for traceability purpose so relying party can use that if required. But some members shared that CAs have lot more accurate information in their records and if consumer complaints to CA, CA has the ability to act on that or share that information if seems adequate.

Question came up if there is enough information in Code Signing Certificate to share in CT logs that may highlight any individuals uniquely who sign malicious code. It was raised that public availability of this information may be helping in restricting subscriber to sign malicious code. Discussion then moved to second part – which was if an individual can specify a Code project i.e. can a code signing certificate be issued for a specific project. Possibility was discussed but no conclusion made.

On organization validation side, question raised if there is need for OV and EV for Code Signing. It was noted that functionality wise, OV and EV certificates are same in Microsoft ecosystem and Smart screen reputation in MS Windows is based on Issuer (Issuing CA) and Subscriber.

Different validation levels could be a problem across all certificate types. So suggestion came that this should be taken by validation sub committee. There was consensus in general. This was further discussed and point made to make validation more inline with future needs, and align a level for Code Signing. No further comments from anyone.

Agenda Items 8 -12

8. Individual and Organization verification mechanism review

1. Private keys in Hardware observations

1. Github open Items

1. Other business

1. Next meeting

1. Last meeting there was a discussion about a Microsoft email wherein they asked about the differences between IV and OV verification. Ian brough up the point in time location verification. What is the value of this check? It is part of the subject DN, and many different technologies have become dependent on this information. Removal of that information would affect consuming technologies. As such any changes there could not be supported by Microsoft.

But how do we handle the address information? It may change from the time of verification versus when a relying party trusts the DN. Are there significant differences between IV and OV address verification?

Dimitris points out that the reason we keep this address information is for traceability purposes.

Bruce says that the CA has more information about the subject than the certificate. Tim agrees; doesn’t know that it is particularly useful to have all the information in the cert. Ian points out that the cert’s purpose is not for the public to find a specific individual, although a CA will have that information. Dimitris questions if we are having the discussion so that the ecosystem will be able to identify malicious actors based on the information in the certs. Bruce mentions the need for CT for code signing as there is not always enough information in the subject to prevent malicious entities from obtaining certs from other CAs.

Paul suggests that the information in the subject indicates to the subscriber that their information is known and that would potentially deter them from malicious activity. It can also let relying parties know that CAs have additional information on the subject.

Dimitris mentions that more certs are issued to organizations than to individuals. Bruce brings up coding groups/ like open source projects. Some people may want to have a cert specific to their contributions in a project.

Tim brings up that the project could be verified. Martijn suggests DV code signing, Tim objects. At least one real person should be identified with the project. Bruce points out that time is running out and we should focus on Organization (instead of individual) verification.

There are 2 methods of verification OV/EV, but is there a difference in functionality from the Microsoft point of view? Ian confirms that there is no difference in OV/EV certification. SmartScreen is related not to the policy OID, but the direct issuer of the certificate (CA, not coder). The adoption of a new ICA could have detrimental effects on SmartScreen rating.

Bruce asks do we need 2 different methods of validation for organizations, if there is no difference in handling? There may be too many methods, when considering S/MIME OV. Tim observes that the different methods are not really “levels” of validation. However, this is a discussion that is wider than the CSCWG. Suggests that the TLS validation group be elevated to a multigroup / CABF scope to generate a set list of organizational validation methods. Then, different groups (CS, S/MIME, etc.) could select the validation method from that list.

Bruce sums it up by saying that we should bring verification to the future.

9. Private keys in hardware observations – all keys need to be generated in hardware… any thoughts on this?

Dimitris mentions that IETF is working on remote key attestation draft. Tim talks about the IETF work; lots of political discussions going on in this field. There is a decent chance of one or two RFCs coming out in 2024. A presentation from IETF would be beneficial to the CABF.

IETF is very closely related to the skit work that Microsoft spoke about in Redmond. We should be ready for incorporation of the RFC when published. Bruce takes action to reach out to Mike Ownsworth to see if he can speak at one of our meetings.

Martijn gives anecdotal evidence about customers providing half-a-page “audits” when trying to obtain a certificate. There may be some work needed to tighten up the requirements of the HSM audits. General consensus on this idea was reached.

Paul brings up that there are several hardware devices that cannot handle attestation. Tim says that we may need to start out with vague guidelines that strengthen as the ecosystem does.

- Break

10. Bruce wants to bring up open Github items, with Martijn’s assistance, as they are mostly his items.

Items 26, 23, 21, 19, and 18. #19 has been added to the clean-up ballot.

#26 should be included when importing the EVGs, it will be reassessed later

#23 is in the signing service ballot and will be handled there.

#21 OCSP requirements no action taken on this item; closing

#18 Reference loop in §6.1.1.1 – this was corrected in a recent BR update.

11. Any other business?

Dean -mentioned that Adobe is an interested party, but no new news to add.

Ben Wilson – Curious about EV code signing standard. What is the status of that? Is there a need for it? There should be a reference added to the document that states that it is no longer valid; no one wanted to take up the initiative of generating a ballot for this change, but Tim suggests creating a Github issue to follow up on this.

Don Sheehy was honored for his contributions over the years.

12. Meeting adjourned; next meeting in 2 weeks.