---
date: 2025-07-02 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2025-07-02 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG

July 2, 2025

These are the Minutes of the meeting described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

## 1. Note Well and Antitrust Statement

## 2. Roll Call

*  Taken from recording. See "Attendees" below.

## 3. Approval of Prior Minutes

*  Minutes from the F2F#65 were deferred; see wiki.
*  Minutes were taken by Stephen Davidson.

## 4. Agenda Review

*  The agenda was reviewed. There were no additions.

## 5. Membership Applications

*  None

## 6. Discussion Topics

Stephen Davidson noted that Ballot SMC012 would exit IPR review on July 2 and the website would be updated: https://cabforum.org/2025/05/19/ballot-smc-012/ 

    * Topic 1: Stephen noted that SMC013 PQC for S/MIME will go to ballot discussion on July 2.  Due to Canada and US national holidays, he noted that the discussion window was extended and that actual voting would begin on July 14.

Albert de Ruiter asked about other PQC algorithms.  Stephen said that other certificate formats (like composite) or algorithms should be brought forward as separate ballots.  He invited suggestions via the public list, noting that updates may be easier once the planned update to Section 7 occurs.

https://cabforum.org/2025/07/02/ballot-smc-013/
https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...385437e34de81cfee66fa89b46695648cd60275d

    * Topic 2: Charter Update

Stephen shared a redline of the proposed changes to the Charter, noting that the goal was to excise the outdated “startup” language and to bring it into conformance with updates that have since been made to the CABF Bylaws.  

Stephen noted that the new text in section 2.2 which is based on suggested text from the Bylaws template for WGs: “Other Deliverables: The SMCWG MAY work on related deliverables and non-normative documents, seeking to improve the adoption and usability of S/MIME certificates and secure email.”

Stephen said that he felt the group had a useful venue of issuers and consumers to discuss broader topics that certificate profiles and CA operations in order to improve the adoption of S/MIME certificates. There was no objection, so Stephen said once consensus was reached within the SMCWG it would move to be proposed as a CABF Forum-level ballot.

https://github.com/srdavidson/cabforum/blob/SMCWG-charter-v2/SMCWG-charter.md

    * Topic 3: Pseudonym discussion

Stephen said that the Pseudonym proposal would soon be ready for ballot and invited discussion of the following: 1) whether tagging should be mandatory in the CN, and 2) whether email addresses should be blocked in Pseudonym.

https://github.com/cabforum/smime/compare/8c8fab7993de3c1c423e704947ce880165924abb...e335fe4ac058a75fa06539c626246a268d06cd84 
https://github.com/cabforum/smime/issues/278 

There was significant discussion regarding the right of Enterprise RAs to assign pseudonyms defined in section 3.1.3. Martijn Katerbarg said the use of the tag would prevent the pseudonym choice of an ERA from being confusing or misleading for relying parties outside the immediate circle of that ERA.  Judith Spencer was concerned that the tag might limit some ERAs from managing their use case and that names were not necessarily non-ambiguous.  Albert de Ruiter noted that pseudonyms had a legitimate use case.  

Stephen said that the issue is not ambiguity but rather misleading pseudonyms.  He said that because these S/MIME were public trust: the pool of relying parties extended beyond an ERA behind the certs.

Guillaume Amringer said that by his reading section 3.1.1 already prevented the use of email addresses in Pseudonyms.  Stephen said the proposed text would clarify that.

Guillaume said one solution would be to simply block the use of Pseudonyms in the CN.  Scott Rea said that the S/MIME BR might emphasize the flexible nature of Pseudonyms to Relying Parties.

Guillaume proposed an improvement to the ballot text, to clarify that the prefix is not part of the Pseudonym.  He also noted that the prefix PN or Pseudo may not be recognizable in other languages.

It was noted that Sponsor-validated certificates were intended as personal certificates, whereas role or group alias certificates (such as support@example.com) not associated with an individual were better suited for the Organisation-validated type.

## 7. Ballot Status Updates (if applicable)

*  Upcoming Drafts / In Development: mDL
*  In Discussion Period: SMC013 (PQC for S/MIME)
*  In Voting Period: NA
*  Under IPR Review: NA
*  Approved and Effective: SMC012 (ACME For S/MIME)

## 8. Next Meeting

Date: Wednesday, July 16 2025 at 11:00 am Eastern Time.  The group agreed to cancel the August 13 teleconference.

## 9. Any Other Business

*  The SMCWG asked for assistance on mDL topics, particularly in identifying the issuers that would be acceptable in the S/MIME BR.  

## 10. Adjournment

*  The meeting was adjourned.

## 11. Attendees

Adriano Santoni (Actalis S.p.A.), Albert de Ruiter (Logius PKIoverheid), Andreas Henschel (D-TRUST), Ashish Dhiman (GlobalSign), Ben Wilson (Mozilla), Corey Bonnell (DigiCert), Guillaume Amringer (Carillon Information Security Inc.), Hazhar Ismail (MSC Trustgate Sdn Bhd), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Judith Spencer (CertiPath), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)), Luis Cervantes (SSL.com), Malcolm Idaho (IdenTrust), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Nome Huang (TrustAsia), Ono Fumiaki (SECOM Trust Systems), Peter Miskovic (Disig), Rollin Yu (TrustAsia), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Stephen Davidson (DigiCert), Tim Crawford (CPA Canada/WebTrust)

-- 
You received this message because you are subscribed to the Google Groups "S/MIME Certificate WG - Management (CA/B Forum)" group.
To unsubscribe from this group and stop receiving emails from it, send an email to smcwg-management+unsubscribe@groups.cabforum.org.
To view this discussion visit https://groups.google.com/a/groups.cabforum.org/d/msgid/smcwg-management/BL1PR14MB514384784CF7ADB175400228E557A%40BL1PR14MB5143.namprd14.prod.outlook.com.
-- 
You received this message because you are subscribed to the Google Groups "S/MIME Certificate WG - Public (CA/B Forum)" group.
To unsubscribe from this group and stop receiving emails from it, send an email to smcwg-public+unsubscribe@groups.cabforum.org.
To view this discussion visit https://groups.google.com/a/groups.cabforum.org/d/msgid/smcwg-public/CH0PR14MB5139E40A06997224C5874359E556A%40CH0PR14MB5139.namprd14.prod.outlook.com.
