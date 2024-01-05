---
aliases:
- /2022-09-28-2022-09-28-minutes-of-the-s-mime-certificate-working-group/
author: Stephen Davidson
date: 2022-09-28 18:45:00
tags:
- Minutes
- S/MIME
title: 2022-09-28 Minutes of the S/MIME Certificate Working Group 
type: post
---

## Minutes of SMCWG 

September 28, 2022

These are the Approved Minutes of the Teleconference described in the subject of this message. Corrections and clarifications where needed are encouraged by reply.

### Attendees 

Adrian Mueller (SwissSign), Andreas Henschel (D-TRUST), Cade Cairns (Google), Clint Wilson (Apple), Corey Bonnell (DigiCert), Dimitris Zacharopoulos (HARICA), Don Sheehy (CPA Canada/WebTrust), Doug Beattie (GlobalSign), Eusebio Herrera (AC Camerfirma SA), Inaba Atsushi (GlobalSign), Inigo Barreira (Sectigo), Joanna Fox (TrustCor Systems), Juan-Angel Martin (AC Camerfirma SA), Judith Spencer (CertiPath (Private Person)), Li-Chun Chen (Chunghwa Telecom), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Matthias Wiedenhorst (ACAB Council), Patrycja Tulinska (PSW), Paul van Brouwershaven (Entrust), Pedro Fuentes (OISTE Foundation), Pekka Lahtiharju (Telia Company), Rebecca Kelley (Apple), Renne Rodriguez (Apple), Russ Housley (Vigil Security LLC), Stefan Selbitschka (runQuadrat), Stephen Davidson (DigiCert), Taavi Eomäe (Zone Media), Tadahiko Ito (SECOM Trust Systems), Tim Crawford (CPA Canada/WebTrust), Tsung-Min Kuo (Chunghwa Telecom), Wendy Brown (US Federal PKI Management Authority)

### 1. Roll Call 

The Roll Call was taken.

### 2. Read Antitrust Statement 

The Antitrust/Compliance Statement was read.

### 3. Review Agenda 

Dimitris Zacharopoulos asked for the topic of making OCSP optional to added to the agenda.

### 4. Approval of minutes from last teleconference 

The minutes of the August 31, 2022 teleconference were approved.

### 5. Discussion 

The eligibility and request for WG membership of AC Firmaprofessional SA was discussed and Firmaprofessional was confirmed as a Certificate Issuer member.

Stephen Davidson provided an update on the confirmation ballot for himself as the sole nomination for Chair of the SMCWG, with the voting period to run in the following week. He described the voting process. A single nomination of Martijn Katerbarg of Sectigo has been made for SMCWG Vice Chair; the election process will occur after the extended nomination period closes across all the WG on Oct 7.

The WG turned to the discussion of making the Subject DN Country (C) attribute. The draft currently provides a MAY for the address attributes. Dimitris suggested that the Country (C) attribute should be a SHALL at least for Org and Sponsored types in the Strict generation. Stephen indicated that this topic was discussed at length earlier in the WG’s work, which concluded that Certificate Issuers could use the fields but they were optional.

Dimitris said he felt the (C) prevented ambiguity for Orgs in their jurisdiction, and was an established use in other CABF standards. Paul van Brouwershaven agreed. Corey Bonnell noted that the use of OrganizationIdentifer provided that disambiguation. He noted that a relying party would have to dig down in the cert viewer just as much to see the (C) as they would for the OrganizationIdentifer. Dimitris added that in the cert viewer, at this time the organizationIdentifier field may only be identified by the attribute OID while the title “Country” is named and translated in different languages supported by the client software.

Stephen asked if Certificate Consumers had strong feelings on the subject; Clint Wilson said he did not. Stephen noted that the profiles in 7.1.4.2 mainly included MAYs in order to provide flexibility, and that the biggest push of the SBR was consistency in the validation.

Pedro Fuentes asked if the contents of the (C) in a Sponsored cert type could be the location of the employee or if it should match the Org. Stephen said it should be the Org. After discussion, Stephen noted that clarification would be added to the SBR in 7.1.4.2.2. Wendy Brown said that some orgs may have employees in many countries and it may be confusing if the address was of the Org; Stephen said the cert was a Sponsored cert and if used the Country must be tied to the Org. Dimitris agreed.

Dimitris indicated that some Certificate Issuers have dispensation to not provide OCSP for S/MIME. Stephen noted that Microsoft root policy stated that OCSP was mandatory for all certificate types, just as the Apple program requires CRL. He said that if the WG had public acknowledgement of a change in policy from Microsoft then it would be a simple matter to change the draft. He noted that the WG had reached out to Microsoft seeking clarification. Stephen noted that generally the SBR only deviated from root store requirements when consent was noted, such as the addition of RSASSA-PSS and EdDSA in the SBR.

Stephen also noted that even if we chose to forge ahead with the draft showing OCSP as a SHALL, a subsequent ballot could change it to MAY far in advance of the SBR effective date in 2023. Dimitris noted that the opposite could also be true, and hoped that Microsoft would respond to the WG as several Certificate Issuers felt the use of OCSP was not compatible with S/MIME for various reasons including privacy concerns.

Dimitris said that the CABF was not beholden to follow the root store programs and that its standards reflected equal participation between Cert Issuers and Cert Consumers to find the right balance, noting that for example Certificate Transparency is not currently found in the TLS BR, and that in the CSWG Microsoft agreed that OCSP support was not needed in codesigning. Stephen sad exactly that type of confirmation was required for S/MIME. Dimitris said that in general CABF standards should only reflect requirements that are present in multiple root programs, as all Cert Issuers may not be present in all root programs. Clint said that Apple had no current OCSP requirement but did provide technical support for it and sought to address privacy concerns in various ways, and so saw usefulness in its availability for now until its improved CRL handling was in place.

The WG discussed ways that the draft could be amended if OCSP was to be made MAY.

Stephen agreed to reach out to Microsoft again seeking confirmation within the WG on the OCSP matter, and that he hoped to push ahead to ballot before the F2F so that in-person time could be used to discuss future work.

Stephen noted that the agenda for the F2F would be discussed at the next teleconference.

### 6. Any Other Business 

None

### 7. Next call 

Next call: Wednesday, October 12, 2022 at 11:00 am Eastern Time

### Adjourned