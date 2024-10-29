---
author: Dimitris Zacharopoulos
date: 2024-10-08 00:00:00
tags:
- Forum
- Minutes
- Face-to-Face
title: Minutes of the F2F 63 Meeting in Seattle, WA, USA, October 8-10, 2024
type: post
---

# Day 1 Tuesday, 8 October 2024

## CA/Browser Forum level Meeting
  
### Attendees 

_(Aggregated participants physically present and remote from days 1 and 2)_

Aaron Poulsen (Amazon Trust Services), Abhishek Bhat - (eMudhra), Adam Jones (Microsoft), Ameya Chikodi (Amazon), An Yin (iTrusChina), Andrea Holland - (VikingCloud), Andrea Holland (VikingCloud), Andreas Henschel (D-TRUST), Andy Warner (Google Trust Services), Antti Backman - (Telia Company), Arno Fiedler - (ETSI), Arvid Vermote (GlobalSign), Ben Wilson (Mozilla), Bineesh Ambali Vadakkekandi - (Microsoft), Brenda Bernal - (DigiCert), Brianca Martin (Amazon), Brittany Randall (GoDaddy), Bruce Morton (Entrust), Chad Dandar (Cisco), Chorus Li (iTrusChina), Chris Clements - (Google), Christophe Bonjean - (GlobalSign), Clemens Wanko - (ACAB Council), Clint Wilson - (Apple), Corey Bonnell (DigiCert), David Karditzas (Google Trust Services), Dean Coclin (DigiCert), Dimitris Zacharopoulos (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback (Microsoft Corporation), Emily Stark (Google Chrome), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco), Eva Vansteenberge - (GlobalSign), Georgy Sebastian (Amazon Trust Services), Hannah Sokol (Microsoft), Hans Metsoja (Opera), Henry Lam (Sectigo), Hogeun Yoo - (NAVER Cloud Trust Services), Inaba Atsushi - (GlobalSign), Iñigo Barreira (Sectigo), Jaime Hablutzel - (OISTE Foundation), James Bladel (GoDaddy), Janet Hines (VikingCloud), Jay Kistler (Amazon Trust Services), Joanna Brawata (Asseco Data Systems (Certum)), John Okimoto (CommScope), John Sarapata (Google Trust Services), Jos Purvis - (Fastly), Joseph Ramm - (OATI), Jozef Nigut - (Disig), JP Hamilton (Cisco), Justin Baird (Amazon), Karina Sirota - (Microsoft), Kateryna Aleksieieva (Asseco Data Systems (Certum)), Keshava Nagaraju - (eMudhra), Khyati Makim (Amazon), Kiran Tummala (Microsoft), Kyle Schultheiss (Amazon), Lakshmi Ramalingam (Microsoft), Leo Grove (SSL.com), Li-Chun Chen - (Chunghwa Telecom), Lilia Dubko (CPA Canada), Llew Curran (GoDaddy), Lorrie Petersen (Microsoft), Lynn Jeun - (Visa), Mads Henriksveen - (Buypass AS), Mahua Chaudhuri (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Mats Rosberg (Keyfactor), Matthew McPherrin - (Let's Encrypt), Michael Slaughter (Amazon Trust Services), Michelle Coon - (OATI), Miguel Sanchez (Google Trust Services), Mike Shaver - (Mike Shaver (Private Person)), Mohit Kumar - (GlobalSign), Nargis Mannan - (VikingCloud), Nate Smith (GoDaddy), Naveen Kumar - (eMudhra), Nick France (Sectigo), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven (Entrust), Pedro Fuentes - (OISTE Foundation), Pekka Lahtiharju - (Telia Company), Peter Miskovic (Disig), Prachi Jain - (Fastly), Quan Nham - (Fastly), Raffaela Achermann - (SwissSign), Rebecca Kelley (SSL.com), Renne Rodriguez - (Apple), Rob Stradling - (Sectigo), Rollin Yu - (TrustAsia), Rosemary McGuire (CPA Canada), Ryan Dickson - (Google), Sandy Balzer - (SwissSign), Scott Rea (eMudhra), Sissel Hoel - (Buypass AS), Sooyoung Eo - (NAVER Cloud Trust Services), Stefan Kirch (Telekom Security), Stephen Davidson (DigiCert), Steven Deitte - (GoDaddy), Sven Rajala (Keyfactor), Tadahiko Ito (Secom), Tathan Thacker - (IdenTrust), Thomas Zermeno - (SSL.com), Tim Callan (Sectigo), Tim Crawford (WebTrust), Tim Hollebeek (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White (Amazon Trust Services), Tsung-Min Kuo - (Chunghwa Telecom), Wayne Thayer - (Fastly), Xiao Qiang (GDCA), Xiu Lei (GDCA), Yamian Quintero (Microsoft Corporation), Zane Ma (Oregon State University).

### Future face to face meeting schedule

**Discussion leader:** Dimitris Zacharopoulos (HARICA),  
**Minutes:**   
**Presentation link:** [Future F2F meetings](1-CABF_Future%20meetings.pdf)  
**Discussion outside the presentation:\~**

### CA/B Forum Elections

**Discussion leader:** Dimitris Zacharopoulos (HARICA),  
**Minutes:**   
**Presentation link:** [Update on CABF Elections](2-CABF_Elections_2024-status.pdf)  
**Discussion outside the presentation:\~**

### Requirement Traceability with RFCs

**Guest Speaker:** Cameron Bytheway (Principal Engineer at AWS)  
**Minutes:**   
**Presentation link:** [requirements-traceability.pdf](3-Requirements%20Traceability.pdf)  
**Discussion outside the presentation:**  

* <https://github.com/awslabs/duvet>

### Stale TLS Certificates: Investigating Precarious Third-Party Access to Valid TLS Keys

**Guest Speaker:** Zane Ma (Oregon State University)  
**Minutes:**   
**Presentation link:** [stale-tls-certificates.pdf](4-2024-10-08-Zane-CAB_Forum.pdf)  
**Discussion outside the presentation:**  

### Open Mic  

**Minutes:** Miguel Sanchez (Google Trust Services)   
**Discussion outside the presentation:**  

* Trev: NetSec Cloud Meeting and having different versions of the NSRs and how this effects the Webtrust audit criteria   
  * TLS/SMIME BRs adopt NetSec by version   
  * Webtrust recently split out the NetSec Requirements into it's own audit   
  * What date should we put on the NSR ballots? Does it matter because the BRs need to adopt the specific NetSec version   
  * What specific version does the Webtrust use? Does it use the version in the TLS BRs or the latest version?   
    * Is this a mismatch of intent?   
* Dimitris - usually the Webtrust version is 3-6 months behind the BRs. ETSI had similar issue but it's now aligned with the latest version of the BRs for the CABF Policies
* Bruce Morton - Dates are really confusing   
  * BRs reference a specific version   
    * You can be audited against the latest version even though the BRs haven't adopted it  
  * Should the audit use the latest version of the BRs  
    * BRs should then update the NetSec version referenced in the BRs   
* Tim H - yes it is getting out of hand   
  * We might be getting too prescriptive. Perhaps we don't need to have exact dates for the majority of changes   
    * How far out of date is a CA out of date?  
* Stephen : not all CAs participate in all the WG  
  * There may be inter-relationships between requirements   
  * It would be helpful fo have a central list of all future implementation dates for all ballots   
  * for SMIME, had to pin to a specific version because that standard was moving too fast and needed time to catch up  
    * Staggered implementation dates which is not great   
* Paul V - Pull data directly from membership tools  
  * Could include effective date for ballots from membership tools   
* Clemens W: for ETSI, looking at version referenced in the BRs if one is referenced. If not, then will look at the version from the beginning of the audit. ETSI views this as the one that is employed by the CA  
* Ryan D: Have had similar questions at Chrome. Thinking about it the way Tim H described  
  * Looking to shorten the amount of time from changes to auditing   
* Tim (BDO): What is the most recent version   
  * Is it naive to believe that the CA infrastructure for all certificate types would not be harmonized?   
* Ben Wilson - what about having a master calendar where we would put everything?   
* Inigo - Responding to Ben - potential solution but in SC group, there are always new ballots and new versions and it becomes hard/impossible to keep up  
* Martijn (Sectigo) - what do the roots store require/want? This is paramount. If the root stores dont require it then it isn't really effective  
* Trev: Tim H is right that we are probably making this more complicated than it needs to be   
  * Would like to update the Webtrust critera before getting audited  
  * Maybe we would like to have schedule of changes?  
    * We want predictability   
  * Need to answer Tim (BDO) question about the need to have different versions   
* Ryan - we deeply value predictability   
  * For Chrome - major concern is we don't clearly say whether a new version has been in place for 90 or 180 days that a CA is expected to adhere to that new version   
* Paul V - One of the reasons that we have different version of the NSRs and the need to address it with ballots is the IPR review   
  * One of the fundamental problems with the different dates/versions and is there something that we can to do with the IPR review to address that concern   
* Dimitris - we are confusing too many things. It's not really an IPR issue   
  * Stuck with IPR review for now  
  * What Stephen states is more a concern: how are we supposed to have two audits, one for NSR 1.7 and another for NSR 2.0   
    * CAs are required to adhere to the new requirements right away but the Webtrust criteria gets updated much slower. Is this an acceptable risk (i.e. giving the CA 365 days to get audited on the new version of the requirements)? 
* Brittany - WTCA requires that one gets audited against the CP/CPSes   
  * What about removing the version from those other documents/BRs?   
* Tobi - Certificate consumers do not expect that CAs should have multi-use environments (i.e. should not use the same infrastructure for TLS and SMIME certificates)   
  * There was an insistence that IPR review needs to happen in the beginning   
  * Not all CAs or Certificate Consumers are members of the NetSec WG   
    * Do they have to be or do they fly blind? Is this acceptable? CAs do need to know when they're going to have to adopt a new set of NSRs   
      * Not having all members in the NetSec WG, miss out on valuable input   
  * Working criteria for NetSec is that all certificate consumers can participate and this might have implications for participation and voting in ballots  
* Tim H - We would have to decide that the NSRs are required for all BRs   
  * CA/BF experts are not NetSec experts   
  * Is this even an IPR issue? We're talking about timelines. This is likely problem of our own creation and does not have IP issues   
* Wayne Thayer - Like the direction that Tim H was going with to simplify this  
  * Specifically to NetSec, simply remove the references of NetSec requirements for all BRs and just have root programs require it   
* Dimitris - as much as everyone likes that idea, it is against the bylaws and the IPR rules   
  * We have different members in each group that may or not participate in NetSec   
* Tim (BDO) - CA is not going to get a different report for the same environment   
* Tim H - does not require all members to participate in NetSec WG since you delegate trust or relying on other WGs to come up with a good set of requirements  
* Ben W - like the idea of decoupling the NSRs from the BRs and having the root programs say that having an NetSec audit is a requirement  
* Dimitris - brings up some IPR issues   
* Trev - can we just have Dimitris take ownership to review this and figure out the path problem?   
* Dimitris - default should be version-less and certain WG can carve out exceptions if they need to (e.g. SMIME WG with MPIC)   
* **Consensus = Dimitris and Ben W will look into this and come up with a proposed solution**

### Mozilla Root Program Update  

**Presenter:** Ben Wilson (Mozilla)  
**Minutes:** Arvid  
**Presentation link:** [Mozilla Root Program update](5-October-2024-Mozilla-News.pdf)  
**Discussion outside the presentation:**  
      
* CA Compliance
  * Overview of types of incidents, notably are the 22 delayed revocation bugs  
  * CA inclusion requests: no big change  
  * Revisions to Mozilla Root Store Policy  
    * 263 change: no blank secions  
    * 270/271: consitency between policies, no intention to make it more strict, some   
    * 275: minor, grater emphasis on period-of-time audits  
    * 276: delayed revocation requirements. Ben has sent out an email about the policy, there is some time during day 2 of the F2F to go through in more depth. Two-part proposal: a) require more detail in incident reports b) delayed revocation will result in a 90-day certificate requirement for those domains/FQDN that were in scope of the delay  
    * 278: certificate linting requirements  
    * 279: phasing out of multi-purpose roots   
    * 281: support P521  
    * 283: new inclusion requests need to support automation  
  * CRLite  
    * Currently there are three revocation reasons. The idea is to focus on security-sensitive revocaton reasons instead or ordinary or administrative revocations.   
    * Mozilla will seek CABF buy-in for their reason codes  
    * Graphs of revocation reasons were presented, most common reasons are cessation, superseded, key_compromise and unspecified.  
    * 67% of all revocations is superseded but poisoned by a single issuing CA.   
    * Without godaddy 71% unspecified.   
    * Graphs for the issuing CA with largest revocation sets were presented  
    * Conclusion is that there needs to be better guidance and harmonisation on the revocation reason codes. It is suggested the TLS BR need to be modified / improved  
  * Questions / discussion  
    * Revocation reasons  
      * Somebody asked why reason codes are needed at all: Ben responded they want to segregate security-sensitive from administrative revocations. What when customers submitted the wrong reason?   
      * Trev mentioned that the only relevant one is key compromise, the others seem to be insignificant. Key compromise seems to be the only one consumers are not confused about.   
      * LetsEncrypt remarked that 99% of revocations are at the request of the ACME client. Their distribution has very little to do with their policy, but more with ACME client implementation. For the unspecified, a huge chunk of that is their own testing.
      * Trev remarked that CA can't educate users on the reasons.  
      * Ryan D said if we want to group everything security sensitive under key\_compromise this might unintentionally blocklist certain keys for no further issuance even if that is not required  
      * Trev remarked that key compromise is the only one that consumers seem to be able to properly understand / comprehend  
      * Aaron said that even key compromise is not properly understood as their are ACME clients that always revoke with key compromise whatever the proper reason. Also there is some other improper behaviour in ACME clients that enforces LE to use the key compromise reason, even if it wasn't a proper one  
      * Trev suggested that we could specify a specific reason for CAs revocation test infrastructure so that the data is more representative  
      * Dimitris asked / requested insight on the intent / the existance of Mozilla's classification of revocations in security and non-security sensitive.   
      * Martijn is wondering why superseded is not in the priority list. Ben also referred to the other reason codes in the RFC. Martijn clarified that his question was because that superseded is within the 24 hours revocation code. 

### Google Root Program Update

**Presenter:** Chris Clements and Ryan Dickson (Google)  
**Minutes:** Martijn  
**Presentation link:** [Chrome Root Program update](6-chrome-root-program-update.pdf)  
**Discussion outside the presentation:**

      
### Apple Root Program Update

**Presenter:** Clint Wilson (Apple)  
**Minutes:** Corey  
**Presentation link:** [Apple Root Program update](7-)  
**Discussion outside the presentation:**  
      
Policy Updates slide:

- S/MIME audit reports must be submitted to CCADB prior to 2024-12-01. Some CAs have disclosed reports for other certificate types but have not yet for S/MIME.

Reminders and General Information slide:

- Qualified audit reports increase the confidence in the auditor and CA, so qualified audits are not solely negative. They also identify opportunities for improvement.  
- The Apple Root Program is largely satisfied with the state of the ecosystem. There are several areas that can be improved, but there is no fundamental dissatisfaction with the webPKI ecosystem. There is appreciation for individuals, many of whom are not in the Forum, that really demonstrate in an ongoing fashion, their deep commitment to the health and well-being of the Web PKI. This does not go unnoticed.   
- It's important to send incidents to certificate-authority-program@apple.com. Just this year, over 100 incidents have not been reported to this email address.  
- Apologies for delays or gaps in communication, especially related to inclusion request cases. These are not being ignored, but the program is working through substantial resource constraints. Please actively engage and follow-up with your inclusion requests. Over-communicate whenever possible.

Policy Matching slide:

- The Apple root program has identified a few conflicts between CA capabilities and policy. No compliance issues have been found thus far through the analysis.

2025 slide:

- 2024 policy update has been delayed to 2025.  
- Static CT will be supported in 2025.

Question from Trev: Is Apple discontinuing OCSP?

- Clint: CRLite is deployed and functioning, but not scaling as well as we'd like. We use OCSP as a backup. Right now, we plan to remove OCSP checking by end of 2025. In some circumstances, we may still need to check OCSP beyond this date.  
      
### Microsoft Root Program Update  

**Presenter:** Hannah Sokol (Microsoft Corporation)  
**Minutes:** Dustin Hollenback (Microsoft Corporation)  
**Presentation link:** [Microsoft Update](8-Microsoft%20F2F%2063%20Presentation.pdf)  
**Discussion outside the presentation:**

Dimitris Zacharopoulos (HARICA) asked if Microsoft will be introducing a new ballot to support the Microsoft OID referenced in the new recommendations when only using CRLs. Karina Sirota-Goodley (Microsoft) responded that the TLS BRs have list any other policy identifiers as NOT RECOMMENDED, but could be used today. However, there is a plan to draft a ballot to explicitly identify this OID as a "MAY be used".

Wayne Thayer (Fastly) asked about Root inclusion status. It has been over 2 years since Fastly submitted a root inclusion request. Karina Sirota-Goodley (Microsoft) responded that new root CAs are still not being approved. This will be announced the moment this becomes available again.

Michael Slaughter (Amazon Trust Services) asked about the recommendations. He asked if there will be an interoperability concern if the recommendations are not implemented. Karina responded that the recommendations are based on best practices especially with larger CRLs. These are suggestions to reduce potential issues with Windows.  
    
### CISCO Root Program Update  

**Presenter:** Eric Hampshire and Chad Dandar (Cisco)  
**Minutes:** Kiran  
**Presentation link:** [Cisco Root Program Update](9-CISCO%20CABF%20Face%20to%20Face%209OCT2024.pdf)  
**Discussion outside the presentation:**    

### CCADB Update  

**Presenter:** Clint Wilson (Apple)  
**Minutes:** Dean Coclin (DigiCert)  
**Presentation link:** [CCADB Update](10-ccadb-update.pdf)  
**Discussion outside the presentation:**  

- All information was presented in the slides.  
- No discussion.
      
### Q&A Root Program 

**Minutes:** Stephen Davidson (DigiCert)  
**Discussion:**    

Question from Brittany Randall to Clint Wilson, confirming details of the audit requirement for S/MIME under the Apple program, whether it applies to CAs that are S/MIME capable or to CAs that actually are issuing S/MIME.  Clint clarified that it applies to CAs that are S/MIME capable, and that he recommended CAs that are capable but do not intend to issue S/MIME should probably ask to have the S/MIME use removed. Trev Ponds-White noted – and Clint confirmed - that once a policy is removed from a root, it generally cannot be restored.

Aaron Gable asked Clint if there were any existing OCSP requirements in the Apple program.  Clint said no, but that Apple may add OCSP requirements in certain circumstances.  This will be covered in a future policy update, scoped as narrowly as possible.

Aaron also asked for more details from the Microsoft team about the nextCRL extension described for the updated Microsoft policy and how that differs from the nextUpdate extension. Karina Sirota Goodley said the extension was used in CAPI and that Microsoft would provide additional information when the policy is updated.

Miguel Sanchez asked if the CCADB login attempts were still being limited.  Clint noted that related to authentication requests and that there was no limit on CCADB API calls at this time.  Miguel asked if the CCADB team would reach out to CA teams that might be hitting these limits; Clint agreed they would, but that issues were rare.  Trev noted that the number of fields was growing all the time, and asked would the CCADB capacity grow in tandem.  Clint said there was a benefit to integrating with the API as this helped CCADB use stay within limits.

Ben Wilson gave clarification on the CCADB licensing.  CCADB has a 450 seat license for daily unique logins, aggregated on a monthly basis.  If usage goes up, the costs go up.

Marco Shambach asked about the updates to CCADB relating to auditors. Clint clarified the updates were made to [https://www.ccadb.org/auditors](https://www.ccadb.org/auditors) to provide information for auditors.  

Ben noted that the CCADB website included many reports, including derived trust bits for CAs, that can be downloaded from [https://www.ccadb.org/resources](https://www.ccadb.org/resources). This is useful for auditors seeking to ensure completeness of CA scope for their audits.

Clemens Wanko noted that the ACAB’c guidance for ETSI CABs referred to the CCADB website and guidance. 

Dimitris Zacharopoulos suggested CCADB might be expanded to allow CAs to report their list Incorporating/Registration Agencies used in their EV vetting. CAs have been disclosing this information for years, but in an inconsistent manner.  Adding this to CCADB would make these lists machine parseable and potentially better auditable.    
        
### ETSI Update  

**Presenter:** Arno Fiedler (Vice Chair ETSI ESI)  
**Minutes:** Arvid  
**Presentation link:**  [ETSI Update](11-ETSI-ESI_Standardisation_Update_for_CAB-Forum-10-2024.pdf)  
**Discussion outside the presentation:**    

* Changes to trust list models and schemes (119 6xx) - more open for general kind of services   
* EN 319 401 - New version published, changes upcoming once NIS2 implementing act is available - provides support for a single audit covering NIS2, eIDAS and CABF requirements  
* TS 119 461: Identity proofing - new level of identity proofing.   
* EN 319 412-x: updates - NTR trade identified region identifier, last CRL issued, alignment with 319 401 NIS2. Further updates to 319 412-2 to match CABF updates. EN 319 412-5 QC statement: new QC statement on verification method  
* EN 319 102-1: updates to signature creation and validation AdES  
* EN 119 172-4-1: various updates  
* EUDI wallet was explained/shown through diagram  
* TS 119 411-5: how QWAC's will be handled in the browsers - multiple alternatives being discussed/covered between browsers and ETSI  
* FESA/ECATS will explain QWAC etc during next Tokyo F2F meeting

### ACABc Update

**Presenter:** Clemens Wanko (ACAB'c Chair)  
**Minutes:** Ben  
**Presentation link:**  [ACAB'c Update](12-20241008_CAB-Forum_63_ACAB'c_presentation_V0.9.pdf)  
**Discussion outside the presentation:**  

- Translate normative part of ETSI requirements by the ETSI auditors council. 

**ACAB'c Templates**  
Three minor changes to AAL templates.   
Version 3.3 released today with reference to the Network Security Audit Statements  
Matthias is working on  Key Generation Attestation Template.  
Templates are available at [https://acab-c/downloads](https://acab-c/downloads)  
CCADB team has published [https://www.ccadb.org/Auditors](https://www.ccadb.org/Auditors) and has recommended that audits identify all relevant SHA256 thumbprints based on CSV file at ccadb.org/resources. Once you filter the CA owner and the applicable policy you have a list of what needs to be covered in the audit.

**European eIDAS2 Revision**  
There are potentially 450 million wallet users - Wallet solutions will be available by November 2026\. All components of wallet will be subject to conformity assessment.  

**Questions and Answers**  
Dimitris noted that EU Digital Identity Wallets will provide strong identity proofing, facilitating identity verifications required by all Baseline Requirements (TLS, S/MIME, Code Signing).

Clint noted that there is not an explicit incorporation of the Network and Certificate System Security Requirements (NCSSRs) in ETSI criteria. Inigo said that they are already included in ETSI requirements.  
Dimitris said they are included because 411 part 1 and part 2 list the Baseline Requirements.   
It was agreed that the NCSSRs are not explicitly referenced.

Scott Rea asked about the new categories of QTSPs and whether everything was in place to certify those new types of QTSPs and also about the first category of QTSPs, which are Attribute Providers.  Do these Attribute Providers provide services for identity, or is this category for a more general type of attribute? 

Arno provided the normative part of the answer.  ETSI has started to develop the normative requirements documents, which his slide presentation did not show.  There are many new types of qualified services besides just Attribute Services. ETSI is waiting for implementing acts that will provide them with more guidance. So, if you want to offer this type of service, you’ll have to wait about 9 months to put it into practice. 

Clemens said that the same is true for auditing these four new types of trust services.  They are waiting for secondary legislation/ implementing acts/regulations that will provide guidance.  EIDAS2 was put into place without a grace period.  Regarding Scott’s question, the concept is to source the wallet with additional identity documents.  So, an attribute must be immediately linked with an electronic identity. For example, the wallet ordinarily just comes with my identity as a natrual person, but if I want to add a drivers license, then that attrbitute can be added on top for me as an attestation by a qualified TSP that provides that Attribute Service. Other examples include Powers of Attorney, as a legal person. 

Scott asked whether mdocs and vcals would be accomodated. 

Arno said that there is an architectural reference for these, as well as for JSON web tokens, OpenID for verified credential formats, etc.  Arno said there are many aspects to discuss, which should be taken offline.


### WebTrust Update  

**Presenter:** Tim Crawford (BDO - WebTrust TF), Lilia Dubko (CPA Canada)  
**Minutes:** Brittany Randall  
**Presentation link:** [WebTrust Update](13-WebTrust%20-%20CABF%20Seattle%2063%20for%20minutes.pdf)  
**Discussion outside the presentation:**    

### Q&A Audits and Standards

**Minutes:** Arvid  
**Discussion:** 

* No additional questions asked

# Day 2 Wednesday, 9 October 2024 

### BR of BRs

**Discussion leader:** Paul van Brouwershaven (Entrust)  
**Minutes:** Tim Callan  
**Presentation link:** [BRs of BRs](14-brs-of-brs.pdf)  
**Discussion outside the presentation:**  


Paul:  
We haven't made as much progress as we would have liked, unfortunately. But here's a recap of the concept.  

There is a great deal of overlap between our various requirements. It might work better for everyone if this common ground could be handled in a single place.

I have created a new repository, but this was difficult as it requires manual management. So I have put together something that can be run automatically (let's say on a weekly basis) to capture the components that are the same across the documents.

I did some analysis to see how to speed up the process. We know that AI is far from perfect, but it provides a good starting guide and maybe we can harmonize these documents without spending months or years reviewing.

I used AI to identify duplicate sections of documents but also ambiguous sections that it has trouble interpreting. It is easier to identify how to harmonize these.

Then we can ask AI to generate a generic version based on our existing documents. Perhaps we could have AI write generic text that applies to all BRs and separate paragraphs that are specific to individual BRs. We can then go back and check to confirm that the AI-generated text is compliant with the rules we've already agreed to.

Paul gives an example of how individual requirements can be carved up. The risk is that it would rewrite some of these requirements, but we know these documents well and can easily check these things.

It would be easy to import these into your GRC platform, and you would write your controls for how to comply with these requirements. In many places, the text may have more than one requirement in a single sentence. I have been struggling with the AI to limit it to one requirement per point. We could benefit from this similar to linting. We could, for example, see which requirements are covered by known linting tools. Or maybe we can identify things we can write a lint for.

The AI can generalize the differences between BRs for a specific section. Then we can have a generic version and also identify what is not covered in the generic version.

We can put these in layers to cover various requirements they have.

I have been playing with style guides. A style guide for these requirements might help both humans and AIs create these documents better. It might be helpful for establishing a good style guide.

We have an outstanding issue in SCWG on this for the past few years. There is also some basic markdown 101 in the wiki. We could look at the IETF data tracker to help with this.

My question is, based on the style guides, what can we do to move that forward. Stephen and the SMIME working group have been looking at this. Maybe we should set up something about how we write CABF documents and what the expectation is there. If we write text for documents, how do we spell out the normative requirements.

Dimitris Zacharopoulos (HARICA):  
We have discussed style guides in the past. We are mature enough to promote and edit ballots, but this is much larger work.  
Let's not keep repeating the same thing in one face-to-face after the next. I think it's time to make some decisions, create a roadmap, and make progress.  
Maybe we do a style sheet for a month, and then we put in some ballots to clean up the various BRs. This is maybe 3 to 6 months. Then we can start applying the tools and see what we actually get.  

Paul:  
Yes, that's the first step. That's where we start. I would like to continue this work and make sure we're progressing.

Dimitris:  
I will commit some resources to work on this. We need at least one more CA that participates in all working groups to help with that. Maybe we can...

Scott Rea (eMudhra):  
I know a researcher who had done some research on translating standards from one to another. I just reached out to him to see if what he worked on could be helpful here. I will introduce him.

Paul:  
There is no way we can solve this automatically. This is a human job.  

Scott:  
You may be surprised how much it can do for us. It's worth considering.  

Dimitris:  
Consider removing the layer of EV. It will simplify things. Code signing is considering merging requirements. S/MIME has already done that.  

Paul:  
Is EV actually a different certificate, or is it a TLS certificate and EV is just the method of validation?  
Maybe it goes to the validation working group. What I'm afraid of is are we overcomplicating things? It's already challenging from an IPR perspective.  
If we make a change, we need to pass three ballots.  

Dimitris:  
I agree but that can be a goal for 2026 or 7.  

Tim Hollebeek (DigiCert):  
I don't want this to sound harsh, but I don't think I'm hearing anything I haven't heard in Bergamo. I think we have done a great job of overcomplicating this. Dimitris is enthusiastic about doing something in 2025, which is great. We're trying to bite off way more than we can, including solving all our IPR problems and aligning across documents, etc.  

The next step is to figure out what is the small, practical plan that emerges from all of this. Of all the problems we could solve, what are the ones that actually move the needle?  

Paul:  
We need to take this step by step. We also need a goal for where we will wind up, even if that is in 2027. When we expand these documents, we take that vision into account.  

Trevoli Ponds-White (Amazon Trust Services):  
I'm in support of a roadmap, but I want to know what are the top 3 problems that we should solve first? This is also kind of what Dimitris is saying. Let's pick a problem and talk about the progress of that and then the next part.  

Paul:  
I think alignment is priority number 1.  

Trev:  
What we're looking for is "This is the number 1 problem. Here is the first proposal for how to solve it." What can we do (like start with definitions)...  

Dimitris:  
Paul, you are the architect of this. I think a style guide is a first step. We can definitely start with that. Agree on this guide. Second is to apply it in cleanup ballots. Then we will start doing the real engineering work.  

Paul:  
Somewhere in there we will have alignment of numbering.  

Dimitris:  
We can do that in a ballot.  

Ben Wilson (Mozilla):  
3647 misalignment with Baseline Requirements. Maybe we shouldn't try to align them and instead should tell CAs they should have to follow them as amended by the BRs.  

Dimitris:  
These are minor misalignments and we can clean them up.  

Ben:  
I don't want to clean it up. Just acknowledge it. We get stuck trying to shove a square peg into a round hole because we're trying to do what IETF says.  

Inigo:  
From a practical view, if this is going ahead, which working group takes care of this BR of BRs? Do we create another working group?  

Paul:  
We have DGWG, but eventually that would evolve into BR of BRs. It's like NetSec. All members should be members.  

Trev:  
We need to have members of every group.  

Tim:  
3647 is a memo from 2003 of things you might want to have in a CPS. There is nothing stopping us from establishing the outline we want and publishing our outline and just maintaining it on our own.

Dimitris:  
This would be helpful for CAs that are struggling with this. There are voices in this community that even talk about the capital letters of the section. That would solve the ballot that failed also.  

Would anybody want to work on this outline?

Ben volunteers to help. Martijn Katerbarg of Sectigo volunteers to help.

**ADJURNED Forum Plenary Meeting for Day 2**
