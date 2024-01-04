---
aliases:
- /2015-03-11-2015-03-11-minutes-of-cupertino-f2f-meeting-34/
author: Ben Wilson
date: 2015-03-11 17:27:45
title: Minutes of the F2F 34 Meeting in Cupertino, California, 10-12 March 2015
type: post
---

**Meeting 34 Minutes**

Attending at various times over 3 days: Dean Coclin (Symantec), Kirk Hall (Trend Micro), Wayne Thayer (GoDaddy), Robin Alden (Comodo), Michael Whittam (Comodo), Arno Fiedler (representing ETSI), Iñigo Barreira (IZENPE), Rashmi Tabada (Symantec), Tim Hollebeek (Trustwave), Li-Chun Chen (Chunghwa Telecom), Doug Beattie (Globalsign), Atsushi Inaba (Globalsign), Robert Ikeoka (E&Y), Ryan Sleevi (Google), Billy VanCannon (Trustwave), Bruce Morton (Entrust), Gervase Markham (Mozilla), Richard Barnes (Mozilla), Moudrick Dadashov (SSC), Cecilia Kam (Symantec), Jeremy Rowley (Digicert), Ben Wilson (Digicert), Rick Andrews (Symantec), Stephen Davidson (QuoVadis), Richard Wang (WoSign), Mat Caughron (Apple), John Wilander (Apple), Don Sheehy (representing WebTrust), Jeff Ward (representing WebTrust), Kathleen Wilson (Mozilla), Stephen Hillier (Trend Micro), Chris Bailey (Trend Micro), John Noll (Apple), Gigi Wang (Apple), Curt Spann (Apple), Anoosh Saboori (Microsoft), Deron O’Brien (Apple)

**Day 1**

**Browser Updates**

**Mozilla**

Mozilla disabled SSL 3.0 in Firefox 34, which was released on Dec 10, 2014. See SSL 3 disablement bug:

EV key sizes \<2048 bits were disabled in Firefox 36, which released on Feb 24th, 2015. See small EV keys disablement bug:

Mozilla does not have plans to do anything in the user UI regarding SHA-1 until Jan 2016. At that point SHA-1 certificates issued after Jan 1 will be untrusted. All SHA-1 certs (except roots) will be untrusted as of Jan 2017. There is a security warning in the developer for SHA-1 certs already.

RC4 is broken. As of Firefox 36, RC4 is only available as a fallback SSL handshake. If negotiated, UI indicators are degraded, meaning a yellow triangle warning will be displayed in the location bar along with a warning message in the web console. This also removes EV treatment. If you have a customer using RC4, please reach out to them and get them upgraded.

RC4 weakness at Black Hat:

List of RC4-only sites:

The remaining 1024 bit roots are Equifax roots, which will have their website and code singing trust bits removed. The root will continue to be trusted for email. Removal has been delayed because telemetry shows significant usage still. The plan is remove in Firefox 38, scheduled for release on May 12th 2015.

Final 1024-bit root removal bug:

Mozilla is recommending the Lenovo removal tool for Superfish. However, some tools fix Windows but not Firefox so they are shipping a hotfix which removes the root from the root store if the app is gone. You can’t remove the root if the app is still present as it would block people from reaching the Internet.

Superfish blog post:

OneCRL is Mozilla’s mechanism for pushing revocation to Firefox. Initially, it will only cover intermediate certificates. End-entity certs may be included in a high profile breach. OneCRL shipped in Firefox Desktop 27, on March 31, 2015. It may be included in Firefox OS. OneCRL piggybacks on the existing blacklist. OneCRL calls home for updates every 24 hours and is downloaded over HTTPS using a pinned CA. Mozilla plans to disable OCSP for certificates covered by OneCRL once Mozilla is sure OneCRL is providing equivalent information to OCSP. This only impacts EV. Currently, OneCRL is not automatically picking up CRLs. Instead, CAs must manually notify Kathleen of revoked intermediates.

Revocation plan:

OneCRL implementation bug:

Intermediate revocation notification procedure: [https://wiki.mozilla.org/CA:ImprovingRevocation#Preload_Revocations_of_Intermediate_CA_Certificates][1]

HPKP shipped in Firefox Desktop 35, released on Jan 13, 2015.

Mozilla is planning to make an exception to revocation checking for short lived certs. Short lived is still undefined. Short-lived certs bug:

Mozilla is supportive of marking HTTP as insecure by default but 70% of page loads are HTTP. Mozilla is working on nudging more sites to HTTPS so that it can be deployed. Mozilla is looking for ideas on how to move the number of HTTP page loads downwards.

OCSP must-staple is about to go to IESG for approval. Once approved and IANA has assigned the code point, Mozilla will begin implementation.

Mozilla has started a discussion on deployment of name constraints to roots. Everyone is encouraged to contribute, and there isn’t consensus in Mozilla on the policy yet. Name constraints proposal:

Mozilla is using Salesforce to manage root program information. Reminders about the annual audit statement will automatically be sent by Salesforce starting next week.

The next CA communication is expected in Q2. Topics may include the items discussed at the face to face, login details for Salesforce responses, and IPv6.

Mozilla plans to discuss CA policy 2.3 in Q2. CA Policy 2.3 potential items: [https://wiki.mozilla.org/CA:CertPolicyUpdates#Consider_for_Version_2.3][2]

**Google**

- Exploring creating a security tab in the Chrome developer tools panel to display info for site developers to better explain what’s going on with security on the page

TLS cipher suites

- RC4 is going away soon (this year). How soon depends on usage metrics gathered after moving it to only being offered in a fallback handshake (this prevents it from being used by servers that prefer RC4 but support other suites). Expect there to be an enterprise flag allowing a company to re-enable RC4 on their PCs.
- Planning to turn off AES256-CBC due to performance and security concerns. Sites that only use this are rare. Planning to move this to a fallback and implementing a negative UI indicator.
- Also looking to turn off DHE in the future. Many Java servers aren’t using proper DHE parameters resulting in insecure connections. This would leave ECDHE. DH & DSA were disabled a while ago.
- In summary, Google is working toward a TLS 1.2 web with PFS and AEAD suites.

Certificates

- SHA-1 warning changes planned for Chrome 41 slipped to Chrome 42 which will be released in about 5 weeks. This means that SHA-1 certs that expire after 1/1/2017 will get an ‘affirmatively insecure’ UI indicator (red https with strike through). Telemetry shows this will affect 8% of page loads, with 4% getting the ‘affirmatively insecure’ indicator and the other 4% receiving the ‘secure, but with minor errors’ indicator.
- RSA 1024-bit keys will likely be turned off by the end of this year (certs using these keys anywhere in the chain will be rejected). 0% of intermediates and leaf certs use 1024-bit keys. 23% of page loads use 1024-bit roots. Part of the problem here is path building algorithms that prefer the 1024-bit root when a path to a 2048-bit root is available.
- TLS 1.2 – want to encourage sites to adopt because it included AEAD suites. Will be exploring requiring TLS 1.2 for EV UI treatment and negative UI when not using TLS 1.2.
- Exploring the treatment of short-lived certs as an equivalent revocation mechanism
- Considering a requirement for OCSP stapling for a site to get EV treatment. Kirk asked how much notice would be given for this change. Ryan didn’t commit to a date. Kirk asked Ryan to state a date today. Gerv asked Ryan to at least state their intention to do this. Chris asked if they could whitelist existing certificates. Ryan said no.
- Discussing marking HTTP as bad, to encourage a transition to HTTPS. This may come in the form of warnings in the developer tools panel, followed by soft UI indicators. An early step in this direction may be marking the use of cameras or geolocation over HTTP as bad. 55% of page loads are over HTTPS based Chrome telemetry.
- W3C is now recommending HTTPS for all new features.
- Continuing to explore how security is displayed to users by reducing how many states are shown – Chrome may end up with just a good/bad indicator. Also moving info out from behind the lock and into the developer console.
- Chrome transitioned to boringSSL in Chrome 40/41. This disables DSA and enables some new cipher suites and performance features.
- Looking at ways to improve root store management across all Google products, but no details can be disclosed at this time. Android 5.1 added 5 roots.
- Certificate Transparency numbers – 85% of page loads fall into the Chrome EV whitelist. 1.7% of page loads are not compliant. The remaining 13% contain enough SCTs from trusted logs.
- Richard asked about Chrome treatment of SHA-1 cross-certificates. This is allowed in the BRs but Chrome includes them in the class of certificates that receive SHA-1 warnings. Ryan suggested that the CAs using SHA-1 in cross-certs create new cross-certs signed with SHA-2.
- Dean asked about disallowing ETSI EV audits. Ryan referenced a discussion on Name Constraints started by Richard Barnes on the Mozilla security policy mailing list. Moudrick says there were no EU regulations on SSL until 2014. Ryan said they have seen many CAs that have passed an ETSI audit but fail to meet basic requirements.
- Dean asked about EV without CAA or HPKP. Ryan said that without HPKP an EV cert can be transparently replaced with a DV cert by a MITM, limiting the assertions that can be made by EV. In general, if EV is going to mean ‘good security’ it needs to include requirements like modern cipher suites.

**Apple**: Matt Caughron:

The email address for CAs to contact Apple is

Apple are asking for:

1. Applications for new certs for roots of trust
1. Audits – which we are requesting annually
1. Significant revocation information. Anything that we’d need to know about, e.g. Roots, intermediates, & any other significant revocation.

Gerv mentioned a previous discussion he had had with Microsoft towards having a single reporting system for CAs to browsers although that had never got off the ground partially because the requirements as regard to authentication remained unclear.

Doug Beattie (GlobalSign) asked if Apple had any plans for name constraint processing? Apple had nothing they could share at this time.

Ryan Sleevi (Google) asked if there were any plans for 1024 bit roots. Apple were aware that 1024 bit roots were not an attractive feature.

Gerv said that it was good to have an email address at which Apple were accepting root applications and asked if this could be characterized as a change to Apples openness to new applications and whether Apple were looking to proactively add new roots. Matt indicated that the email address remains unchanged and no changes were anticipated.

Gerv asked how long it took to get a root embedded on average, but no answer was forthcoming.

Rick Andrews (Symantec): Asked that the Safari team provide the same debug info about security UI changes as he had recently requested of the other browsers. Matt: indicated that he had made a note of that request.

Robin mentioned that a number of CAs have root embedding applications in different states of progress with Apple and asked if there was any information available as to the progress of those requests. Matt indicated that any replies regarding such questions will come from this email address.

Gerv asked if there was an associated GPG key. Matt indicated that there was a GPG key for the security team and he could give the URL for that.

Atilla (TurkTrust) (by phone) remarked that the root embedding process for Microsoft, Mozilla, and Google is obvious and publicly shared and that monitoring is possible and referred to his presentation at the previous F2F.

Atilla remarked that Microsoft provided named contacts and that after Tom, Kelvin, and now Jody are taking the responsibility and providing a good relationship. For Mozilla, with thanks to Kathleen, he had had good and timely responses to queries. For Google. He had had a similar good experience , lately(!), thanks to Ryan guided them to the bug reporting. Last year he had problems, but since the beginning of this year TurkTrust are communicating well with Google.

Atilla said that, for Apple, even though he had some contact names like Matt Caughron, Geoff Keating, since last summer he had had no response from Apple. He cannot get any status updates from Apple. He just wanted to make sure and ask the Apple representative whether he is missing anything? Is it the same people and the same generic address to get program status updates?

(Atilla’s call dropped)

Apple: We hope to be timely and we don’t like to leave people guessing. We encourage CAs to ask questions and we’ll do what we can to answer them. If anyone has questions about the status of applications please drop an email to that address.

Atilla: Apple’s is not an open platform so we have absolutely no information about our root inclusion process. We need to have a line to reach someone to see if there are things outstanding in the application and what the timeline is to get into the apple store. I heard that other CAs have similar concerns. We need a point of contact.

Matt: Do you have the right contact? – if that is the email address then yes.

Gerv: (referred to Matt’s previous statement). Matt is keen to ensure that people are not left hanging.

Atilla: we will send another email. Will we get a reply?

Gerv: ‘Almost a promise.’

**Microsoft**

**Microsoft Presentation on Revocation**

Microsoft presented the group with a slide about some new options for Windows 10. CAs can ask Microsoft to mark their roots with 2 new meta tags:

- Option 1: When checking the status of Subordinate CA certificates, use the Microsoft Black list vs. OCSP or CRLs. Microsoft will be tracking and distributing revocation information much like OneCRL. Enabling this check will use that data vs. having CAPI check the revocation status vs OCSP or CRLs. Microsoft manually updates this list today. This will be distributed via windows update
- Option 2) Only use OCSP for leaf certificate validation. If this is set, all leaf certificates under the root will be validated with OCSP and CAPI will not fall back to use CRLs. This applies to both desktop and mobile applications.

Microsoft will be collecting telemetry data in Windows 10 related to certificate validation, SSL certificates encountered and other data. They plan to make some of this data available to different audience:

- They plan to collect OCSP health information (response time, timeouts, etc.) and make that data available to CAs.
- They plan to collect and store SSL certificates encountered by the Browser. While this can be turned off, if it’s active it will post certificates it encounters to Microsoft regardless of the network they were viewed on (internal and external networks). If you can demonstrate domain control then Microsoft will let your view and report on all certificates within that domain (Demo provided). This may help certificate administrators to track certificates, monitor expiration dates, and to know if “old” certificates are still visible. They are looking for input on what CAs and Users would like to see in these portals
- Windows 10 will support the OCSP Must Staple extension (once it’s defined)
- They will support Root Name Constraints (which will be back ported to Win 7)
- They will be enabling test mode for root program: (A/B testing). This will allow Root data changes to be rolled out to a subset of the user community to track possible issues. This will only impact a portion of the user community and it can be reversed. This applies to adding Name Constraints, removing roots, and related root level changes.

**Microsoft Presentation on Certificate Reputation**

Using Windows 10 information of SSL certificates will be gathered for those certificates which chain to trusted roots. Administrators will be able to access the information through Bing Web Master tools. The Administrator must go through a process to confirm they have control of the domain names. Through Messages > Security > Certificates, the Administrator can track certificates and report issues for invalid certificates. In the future features will be added to allow certificates to be analyzed and provide automatic reports back. Microsoft cannot map the information to any users, so there is no privacy issue.

More information can be found here, [Certificate Reputation for website owners][3].

**Microsoft Presentation on Code Integrity**

Drivers submitted for Windows 10 must be kernel mode signed using an EV Code Signing certificate. The drivers must then be submitted through a Microsoft portal to be verified and signed. Microsoft will sign with SHA-1 and SHA-2 to ensure that Vista and Windows 7 will be supported. New drivers which do not meet the new signing requirements will have a failure.

Post meeting note. Windows 7 will support SHA-2 per [Availability of SHA-2 Code Signing Support for Windows 7 and Windows Server 2008 R2][4].

**Working Group Updates**

**Validation WG**

1.Presentation by Richard from WoSign about Intermediate names

Richard’s auditor said they have to put WoSign into their intermediates but 360 is hosting They made WoSign revoke 40 certificates. Discussion is happening on the public list – going through it section 9.1.2 confuses two issues:

1.What should go in the issuer field

2.Constraints on the Subject field

Doug sent out a proposal to update –

Peter Bowen said we’re relaxing fix it if we’re not breaking PKI and two put requirements in what has to be in the subject of the issuing CA field. There is no consensus – to continue on main mailing list

Gerv – Probably more of a social question – someone looks at the subject field – intermediate what are they expecting to see? Case could be made for who controls the private keys therefore has the right to issue?

Gerv – we need to distinguish them

Bruce – Who holds the key could be portable – if the root is going over – don’t think you can put it in the certificate – Should be who the certificate is issued to

Gerv – Clarify that subject can be the subject does not hold the certificate if you have this specific OID. Says they should have their name in the cert but the name doesn’t tell you about who has the big red button – Kathleen will know because you need to disclose audits…

Jeremy – this still has to meaningful

Ryan – Browser’s aren’t going to act on it but could address if they have the information

Fine to issue to whoever issues the private key – doesn’t think it’s misrepresented Net: We all disagree with Richard’s auditors and they are wrong. An Auditor will not understand as this is very technical change.

Don – We need to get granular with decision and discuss the issue – so people understand

Jeremy – Doug’s ballot should move forward Changes to the BRs need to happen We believe that MPKI set up is consistent with industry set up and with BR requirements

Dean –We don’t want to set a precedence -We want to clarify the point in the BR so that the auditor can understand it as the language is unclear

Chris – There are multiple interpretation and will fix going forward As a point of clarification for auditors – we’ve seen two interpretation’s and we meant this one and not that one We’ll be updating the language in a ballot – 2 weeks at least if not 1 month from now Doug’s ballot clarifies pretty well and can do that during the review period

2. Domain validation revisions

Day 1 –

Jeremy – Circulated new draft. Went through those and ready to go back to public list. One of the big discussions is that the term FQDN didn’t reflect what we’re validating. Validating control of base domain and applying to subdomains. Discussed terminology – no solution as of right now 11 different methods – and would eliminate #7. We could add them if we see more.

Gerv – discussed internally – not against – Problems have been seen – not abuse but CP and CPS just say we do this and specific. Want more specificity in the CPS on domain controls. Describe in text what you do – Kathleen wants to see – auditor will see that.

Kirk – CA likes to keep options open – Kathleen say what your options are

Ryan – Say what you do

Later in Day 1 – Back to Domains

Kathleen’s concern is the “Black hole” – the CAs that don’t participate in CAB. How do we tell CAs and that we are open and we can add to BR 11.1?

Kathleen and Kirk – how do we let them know? Perhaps we include messaging in BR 11.1? Forum will consider other methods if presented. If they are using a method that isn’t on the list we need to talk about it and discuss in CAB? However CA communications only go to people who have roots in the program. Roots that want to get into Mozilla’s program, the ones that are not currently following CAB but Kathleen requires that they follow BR requirements

Kathleen – there should be an out – will consider if you read it differently.

Gerv – how is it any different? Why only in this particular point. Presumption is that we accept more things – example -2048 keys.

One point – Let’s Encrypt – looking at other ways to validate domain vs automation – possibility that they come across new things Innovations – “phases of the moon”.

Ryan – how would affect audit schemes? WTA will be based on a set of BR requirements. Perhaps a way incorporate – reflected in BR itself In this section you may also refer to future sections?

Iñigo – We can’t update the documents as fast as the CAB is updating the BRs.

Kirk – proposing with reluctance – BR 11.1 add that we will be open to new suggestions if Kathleen says she wants it. For proposing a new method or anything you have documented in your CP/CPS.

Kathleen – We have to give the CA an out – if none of these work for you here’s what we do.

Kirk to Don – you’re not auditing to only the list but that you’re auditing against the BRs. When the BR gets published that’s when you comply with If we can’t do X they can contact us – not sure what the best method. Possibility of adding to main section – start of BRs.

Kirk will draft a proposal

Day 2 – continued discussion

Reviewed each method on the list of 11.

No changes on 1.

Change on 2 – Definition of Domain Authorization Document: A Verified Legal Opinion, Verified Accountant Letter, or Documentation provided by, or a CA’s documentation of a communication with, a Domain Name Registrar, the Domain Name Registrant, or the person or entity listed in WHOIS as the Domain Name Registrant (including any private, anonymous, or proxy registration service) attesting to the authority of an Applicant to request a Certificate for a specific Domain Namespace.

Gerv – How does the person who writes the letter going to get the documents? It’s been licensed – validation of domain control if you want to prove domain – it doesn’t matter how – Attorney has no special knowledge –

Ryan – It makes sense with 11.7 –

Kirk – Didn’t think it would controversial.

Ryan – Wants to very carefully list things. With an attorney letter he can’t reach every attorney letters to say you can’t issue an opinion on this Company A and Company B are in the same hierarchy – Attorneys can do the right stuff and they can do bad stuff.

Bruce -The larger the organization – the harder it is to get a single point of contact

Gerv – wants technical check

3. Verified opinion letters

Jeremy – Change is to include legal existence for Opinion Letters – if they can provide information where they got the data from – we will need to still validate with QIIS and QGIS. Ready for ballot – will go to main list for more discussion and then to ballot EV change only – Attorney’s area of expertise – sent to main list

3. Business entities

Stirred new interest – possible – EV for individuals – nothing for main group yet – revising proposal

3. Any other items Inclusion of Inc, LLC – Leave it as is for now – you can drop the INC and LLC for OV certificates No strong interests

**Code Signing WG**

The Working Group discussed a comment received from the public about the reuse of keys; should they be reused, or should we prevent keys from being used for SSL and Code Signing. We decided that there’s no good way for CAs to track key reuse; the best we can do is to tell customers not to do it in the subscriber agreement.

We also discussed preventing misleading names in Code Signing certs like “Click Yes”. A suggestion was made to force EV-type naming for Code Signing certs (where “doing business as” or dba must be spelled out). Others thought that we might need to allow for exceptions to be made to that policy. The discussion moved on without consensus

Jeremy said that we have incorporated public comments; once he gets the last few changes in he’ll circulate the doc to the public list. Ryan asked about participation and membership criteria; Dean said we’ll discuss that tomorrow

**Policy WG**

Policy working group has been discussing how to organize the baseline requirements in accordance with RFC 3647.

Draft had NetSec incorporated by reference; group wanted them taken out as a first step for balloting a clean conversion.

Overview (Dean): Taking the baseline requirements, reformatting into RFC 3647 format as a first step. It was proposed that the EV validation text be incorporated into the validation section of the Baseline Requirements.

Ryan isn’t clear on what the benefits are for incorporating the code signing requirements into the same BR document and Jeremy is OK with that.

The consensus is that a single policy document for SSL (BR + EV) requirements makes sense.

Ben summarized that the future plan may change, but as a first step, the BRs are being reformatted into RFC 3647.

Kathleen is concerned that the numbering and references will change.

Jeremy noted that the BRs are a CP, but they are unfortunately in an ad hoc format, and there is not reason why they should not be formatted according to RFC 3647 and the group is willing to help with updating references.

New CAs are often confused and leave things out of there CPSs because the mapping to the BRs is not always clear.

For CAs that incorporate BRs by reference, they may have to re-issue their CPSs.

Kirk noted that some of the BRs do not strictly correspond to items in a CA’s CPSs.

In response to the question of why a reformat instead of just a mapping, Jeremy referenced the amount of work necessary to maintain the mapping going forward.

Dean pointed out that this is just a first step, and that we also want to pull information from other sources that are in RFC 3647 format, and incorporate those suggestions as proposed improvements to the BRs.

Jeremy noted there currently is a gap in the BRs with respect to key re-use and that is something that needs to be considered as an example of gaps in the current BRs.

Don asked if all CPSs are in 3647, and several CAs noted their CPSs are not.

Jeremy suggested that the 2527 format perhaps should be removed as an option.

Kirk believes that 3647 makes it difficult to read CPSs, because of all of the empty sections.

ETSI requires 3647 format. Ryan notes that because of this, most new CAs are using CPSs in 3647 format.

Kathleen would like to only have to renumber the guidelines once in her career.

Jeremy notes that a standardized format will reduce the amount of renumbering that will happen in the future. Ryan agrees that format consistency is the most important thing.

Subscriber agreements often reference the CPSs, and may have to be reformatted as well.

Ryan’s ideal world is that all CA CPSs follow the same format, and can be cross-referenced easily against the baseline requirements.

Ben will move forward with a ballot on the clean reformat.

**Presentation on SSL Warnings** – Adrienne Porter-Felt of Google

PDF version – [Improving-SSL-Warnings][5]

PDF of Research Paper presented – [Improving SSL Warnings: Comprehension and Adherence][6]

**WebTrust – review current status of Web Trust audit criteria for CAs** Don Sheehy

Don Sheehy of Deloitte then presented a WebTrust update. He started by listing the current versions of WebTrust audit criteria, which include the following:

WebTrust Trust Service Principles and Criteria for Certification Authorities Version 2.0

WebTrust Principles and Criteria for Certification Authorities – SSL Baseline with Network Security – Version 2.0

WebTrust for Certification Authorities – Extended Validation Audit Criteria Version 1.4

Guidelines for the Issuance And Management Of Extended Validation Code Signing Certificates Version 1.1

The audit criteria can be found at

Don then displayed a matrix showing which WebTrust audits are required for different kinds of CAs (public, government, etc.) who provide different kinds of certificates (SSL, code signing, etc.) See table attached as pdf titled “Audit Matrix.”  [Audit-Matrix][7]

This table is based both on WebTrust’s recommendations and the requirements of the browser root programs.

Sheehy then discussed a recent BR readiness audit provided by a new CA from a particular licensed WebTrust audit, and indicated the audit report did not meet certain WebTrust requirements and was under review. He stated more generally that WebTrust was considering requiring independent reviews of various completed audit reports to confirm the report quality and compliance with WebTrust requirements.

Sheehy was asked what would happen to a browser’s roots if the browser’s WebTrust audits were not compliant with program requirements, or were “qualified” audit reports (indicating problems or non-compliance by the CA). He responded that it depended on the nature and seriousness of the problem, and the judgment of the auditor and the browser root program. In a serious case, the browsers could drop the root from the trusted root store.

The Forum members then discussed with the auditor representatives how auditors would deal with changes in the applicable Forum guidelines after the time the WebTrust audit requirements had been adopted (based on the then-current version of the guidelines). The auditors said it would depend on the importance of the change, but in general (and based on the auditor’s judgment), changes in the Forum guidelines on which the WebTrust audit requirements were based would be considered during the audit. Wayne Thayer noted that under the BR Sec. 8.2.1 and EVGL Sec. 8.2.1, CAs today are required to include language in their CPS describing in detail how they will implement the latest version of Forum guidelines, so this is what CAs expect from their auditors.

The members then discussed with the auditors the best way to update the BRs, EVGL, and other requirements after amendment by ballots – should a new version be posted after every amendment, or only on a periodic basis that incorporates all changes since the last published version. One possibility is to publish a new version at a specific date, such as once a quarter, twice a year, etc. There was also discussion of amending the Bylaws to create a standard Effective Date (such as 30 or 60 days after a ballot is adopted), unless the ballot includes an different Effective Date (earlier or later) to avoid confusion. Kirk Hall said he could draft a Bylaw change once the Forum decides on what time period it wants for publication of new document versions, as well as ballot effective dates.

**Discussion on Wildcard Certificates and 3-year EV Certificates**

Webhosts use wildcard certs. EV doesn’t allow this.

Gerv: The aim of EV validation is to know who is operating the website.

Wayne: The argument against wildcards is that you can take one certificate and use it on subdomains like bankofamerica.foo.com.

Jeremy: but you can do that with a normal cert too.

Ryan: The other argument is that EV has the additional requirements on phishability and mixed case. The language in EV is non-ideal – it says you must do something, but doesn’t say how – but it talks about mixed scripts (which you can do with a wildcard) and so on. That said, the browsers already have to deal with that issue.

A CA could run the confusables check from the Unicode Technical Report. But not with a wildcard.

Gerv: what about unrelated entities using subdomains of the same registered domain (e.g. appspot.com)?

Discussion about whether the unrelated entities thing is a problem or not. After all, Google can pass x.appspot.com validation for all X.

Ryan: the counter-proposal is that wildcards should be banned from DV, and only allowed in OV, so we know who owns it. I’m not at all supportive, but that argument has been made.

Jeremy: I want EV to have all the capabilities of OV. Two barriers: max length skew (2yrs vs. 3yrs) and lack of wildcards.

There was then discussion of proposal to reduce DV to 2 years (not much support via hands) or extend EV to 3 years (more support via hands).

Jeremy explained that EV re-validations normally lead to all the same info; it’s just that often the contact has moved on, which means they have to find a new one.

**Behaviors of web servers and browsers if a PKI follows RFC 4210 & RFC 5280 6.1 for Root CA key Update** Li-Chun Chen

Li-Chun CHEN of Chunghwa Telecom presented a discussion on Roll Over Certificate Issues – [Chunghwatelecom201503cabforumV4][8]

He explained the rollover certificate process outlined in RFC 4210 by signing the old public key with the new private key and the new public key with the old private key. He also gave the definition of Self-issued certificates and Self signed certificates as RFC 5280. Following RFC 5280 6.1, a certificate is self-issued if the same DN appears in the subject and issuer fields. The Taiwanese Government Root CA (GRCA) has switched over from SHA1 to SHA256 (in 2012), but he has encountered IIS issues following the processes found in the RFCs. See Slide pp.8-pp.13. IIS 7 falsely treated GRCA’s Self-Issued certificate (new with old) as a Self-Signed certificate, because it has the same issuer and subject name. He found SSL Cert –> GCA Cert –> new-with-old GRCA Cert –> old GRCA cert in IIS side, but IIS only sends SSL Cert –> GCA Cert to client. For Mozilla Firefox, it uses its own trust list and it only trusts old GRCA and new GRCA is waiting to be built in NSS. So there are lots of complaints of Firefox users connected to IIS sites. He noted that because Windows clients support AIA chasing there are less chaining problems.

Sites powered by IIS such as &

Site powered by Apache, which will send the entire Certificate Chain:

Users could use below pages to test the behavior of webserver and browser:

Chunghwa Telecom finds there is a bug the same as IIS that Qualys SSL Labs tool can’t distinguish self-issued certificate with self-signed certificate.

So Chunghwa Telecom requested Microsoft to solve the bug of IIS ASAP through Premium support.

Chunghwa Telecom ** **suggested to make AIA mandatory and browsers must support fetching intermediate certificates through AIA. Supporting AIA will also reduce some web site administrators forget to install intermediate certificates to their server follow CAs or web server’s manuals. (In SSL protocol, SSL servers should send intermediate certificate & SSL certificate to SSL client)

Gerv said that even if Mozilla were to fix AIA chasing there would still be problems with other clients. Ryan said that the newer versions of OpenSSL and Apache have behavior similar to IIS 7, due to server operators failing to configure their servers properly. OpenSSL 1.1.0 will prefer trusted certificates first. Newer versions of Apache will try to build a valid chain. You can still force it to send the chain you want with the old directive, but the default will be to try to construct the ideal chain before sending it. Anoosh said that there are things you can do to force IIS to send a different chain. One thing is to add the unwanted certificate to the “Untrusted Store.” Ryan said another approach is to manually disable the Windows operating system’s trust store and direct it to use a Certificate Trust List (CTL). Robin said that the server operator would still need to ensure that the server is able to trust what it needs to trust.

Ryan and Gerv agreed that better solution would have been not to use the same issuer-subject names in the rollover.

Ryan added that with the SHA1 deprecation server operators have had trouble deciding which types of chains to build. For instance, CloudFlare’s chain builder tool asks whether you prefer strong cryptography over broad usability. Gerv said that the problem is that you cannot send all of the possible paths that all clients might need, so a choice has to be made. A decision has to be made also for clients that chase AIAs. Gerv said that if a certificate contained multiple AIAs with different paths, a client would have to be able to chase all of them and then decide which path to choose, and that can become complicated and take additional time.

\[Additionally, Brian Smith commented separately via email, “It is also possible, and recommended, for the rollover certificate to be added to Firefox’s certificate store. Then Firefox will be able to use it even if IIS doesn’t send it.”\]

**Day 2**

**Mozilla Demo – Mozilla’s CA Program data in SalesForce** – Kathleen Wilson

Kathleen Wilson from Mozilla demonstrated the way she’s using SalesForce to manage public root information that feeds into NSS, the trust store that’s the basis for Firefox, other Mozilla products like Thunderbird, and non-Mozilla products like Chrome on Linux and some Linux distributions. Currently she keeps all root data in a Google spreadsheet.

All the information gathered by her periodic CA communication emails is collated; some of the high-level info is put into the spreadsheet. But it’s pretty labor-intensive. She’s looking to move to !Salesforce instead. Since Mozilla is a non-profit, she was able to get 10 free licenses. She’s distributed them to some within Mozilla including Ryan Sleevi from Google. In the next calendar quarter, she hopes to get every CA a restricted license so we can help manage our root certificate information.

She doesn’t plan to give CAs direct access to their Root or audit info; she expects Cases to be submitted and worked on, and then she will incorporate that info into the Root Cases. Eventually, Kathleen expects to use SalesForce to manage all intermediate certificates too. In her last CA communication email last year, she asked all CAs to publicly disclose all intermediate CAs that chain up to public roots in Mozilla’s root program. That resulted in a lot of data that was difficult to manage. Her hope is to make CAs responsible for uploading and managing this intermediate CA certificate information in SalesForce.

In the language of SalesForce, ‘Cases’ are like Bugzilla bug reports or change requests. ‘Owners’ are CA Owners (Entrust, Symantec, etc.). In SalesForce, Kathleen is able to see high-level info for each root including the trust bits, and she can drill down to see more details. Root Cases include an Account Hierarchy that shows the CA’s certificate hierarchy.

CAs would have some restricted capabilities in SalesForce. We’d be able to view info on our own roots and submit new cases to add roots or update information. CAs won’t be able to modify their root details directly. They would do it indirectly by creating new cases. Public discussion on new roots or root trust bit changes would still take place in Bugzilla.

Kathleen has not yet decided if CAs will be able to view other CA’s records, although the spreadsheet currently holds basic data that all CAs can view. She’s not sure exactly what info would be accessible to other CAs. That will be discussed on the mozilla.dev.security.policy forum.

Kathleen stressed that this is not ready yet, and that CAs should continue to use Bugzilla until told otherwise. Inigo asked if this can become the central point of contact for all root programs? Ryan said ror the time being, no. CAs should continue to contact all the root stores as they do today, until the root store tells them otherwise.

Kathleen hopes to send the upcoming CA Communication email out through SalesForce and collect responses in the SalesForce tool. Next week she hopes to use SalesForce to send out audit reminder emails. SalesForce will let her easily see whose audit info is missing or out of date.

Rick asked if this is intended to be used to see which roots will be in a certain version of NSS? No, Ryan explained that it’s hard to predict what version of NSS a particular root will be included in. The NSS team has their own process for deciding when to include new roots. SalesForce cases have fields to hold data on when a root is first included in NSS. All currently-included roots have that information, and new roots, as they are included, will have the information. See — Columns: “NSS Release When First Included” and “Firefox Release When First Included”.

We got into a separate discussion about who was responsible if a CA sold a root to another company. Mozilla policy says CAs need to publish on their web page the audit info for all roots and non-constrained intermediate certs. Even if a root is sold off, the seller is responsible for getting audit info submitted to Mozilla. Kirk asked if action would be taken against the CA if the Root CA couldn’t get a new root owner to respond; Ryan said it would be discussed on the policy group. Jeremy would like to see more enforcement for non-disclosure, because he’s lost customers who didn’t want their intermediates disclosed, and they went to other CAs. Ryan said that in the worst case, intermediate CAs could be revoked via OneCRL and CRLSets if they are not disclosed. Or, he said maybe disclosed intermediate CA certs would become a whitelist. Kathleen and Ryan indicated that they do want to improve compliance.

How much will be publicly visible to the general public, not just the CAs? Right now, Kathleen runs reports, exports data into a Google spreadsheet and then publishes it. She said that the reports of Included Roots and Pending Roots will continue to be publicly visible at and .

We discussed SalesForce licenses. They are based on email address and password, and SalesForce says that licenses can’t be shared. In Q2, Kathleen will work out how licenses will be handled. She emphasized that licenses are unrelated to CA’s contact info.

Ryan said he thought that Chrome would become more aggressive about removing EV treatment if audits are out of date, and he will be able to use SalesForce to easily see audit compliance. Ryan has write access too, so if CAs want to submit any audit information to Mozilla, they can copy Ryan too.

**Certificate Transparency Update: Lessons from rollout, Log status, Future plans, etc**

Jan 1 is the deadline Google set for all EV certification and is now enforced. July 1 is the deadline for logs’ independence requirements. Non-compliance means Chrome will not show the EV indication (downgrade to DV).

Three independent logging system must be used, one of them being a Google system. Google has three instances to choose from when Rocketeer comes online. Other systems in process of being established right now: 1. Izenpe 2. Certly 3. Akamai 4. Digicert 5. Comodo 6. ISOC has suggested they will run one

None of these are ready now. “Independent” is not well defined. Ryan did indicate that different companies/entities using the same infrastructure such as AWS didn’t count as independent. One company is already using AWS, so use of it by another would not be independent. For clarity, as many entities who want can use AWS can, but CA’s logging to them would only be able to count them as one independent system. TrendMicro was going to use AWS. Jeremy suggested “independent” could mean different government jurisdictions (so all 2 in the US would not be independent.) Ryan didn’t support or deny this one. Ryan’s primary suggestion to help with independence was to require OCSP stapling and then only 2 independent logs are required.

There was also much concern that Google requires 90 days of monitoring, so these alternative systems must actually must start April 1 and pass monitoring to be ready July 1. There is an open question if Akamai will become public. Certly monitoring has not started as of 3/12. ISOC will not be in time. Richard wanted to start one in China, but Ryan warned Google’s monitoring might not make it through the firewall and it must be “globally accessible.” There was a lot of pushing for Google to define what monitoring issues would cause failure. Ryan only repeated RFC 6962 compliance. It appears there are no performance requirements. One example would be response time. People fear Google might have different interpretations than them and then get rejected. At this point it would leave no time to recover. Ryan offered no solutions to this. One issue is 24/7/365 availability. Kirk suggested that Google just setup however many global instances would make them happy and have everybody use them.  Jeremy pointed out that this doesn’t really address some of the problems CT is trying to address – such as being independent from government compulsion. There was discussion about NSLs to compel a certificate to be issued and not logged.

Google’s long term vision is that only TLS 1.2 with OCSP stapling be required. Stapling helps CT for 1. Tracking rejected logs, 2. Offline logging, and 3. Tracking revocation. They also plan to expand CT beyond EV to DV and OV. Name constraint and name redaction must be figured out first. (Chrome downgrades EV certificates with name redaction to DV) Another issue is that they want to eliminate whitelisting certs because EV alone is 200,000 (~760 kB) which is a lot of memory for this function and expanding it to DV and OV would make the list ~1.5 million.

How the logs are populated was also a question. Ryan referred to RFC 6962 and using the API defined by it. That should cover the protocol perspective. However from a policy perspective, whoever sets up the logging system could set their own policy. For example Akamai could continue to only allow logs from domains owned by them. Digicert could decide (this is just for example) that they would only allow certificates from CA’s who also contribute to Digicert logs. Beyond the entities who maintain logging systems, others can’t control log rules. So people who don’t own roots can still push logs. Customers can’t require them to not be logged. Web crawlers can scan a system and if they find certs, log them. This caused concern for private certs. People have private certs often to avoid public disclosure. It was asked if logs should be rejected for any reason than chaining. Ryan responded that too is up to policy because Google wants as many logs as possible, however to avoid spam and/or for performance, logging could be filtered based on cryptographic checks and rejected self-signing.

What if after all this something changes, like RFC 6962 replaced. Ryan said the intent of IETF policies is to be forward compatible with RFC 6962, but if not there would be a phase-in period. Then Ryan mentioned Trans 6962 already has a difference in logs. There will be a pre-cert format change from X.509 to CMS, but might allow either option.

Dean suggested we have a CAB forum Baseline requirement. Ryan pointed out that where you log is only relevant to a particular policy, so it doesn’t make sense as a BR requirement if you can just log to an inaccessible log. Even though they can do more than baseline, Ryan didn’t want to do this. He didn’t want to deal with questions like, “It meets the BR requirements, so why doesn’t Google accept it?”

Izenpe mentioned other CA’s using them would be free, but nobody has requested it yet. So far just the 3 European CA’s that have worked together to set it up are going to use it.

**ETSI Presentation – Status of ETSI’s TSP assessment criteria and proposed European regulation** – Iñigo Barreira and Arno Fiedler

[ETSI-Presentation-2015-Mar][9] Iñigo – My goal today is to explain how ETSI standards are attended to and how auditor qualification occurs, and ETSI would like to know how browsers will treat qualified web site certificates.

Currently we have TS 102 042 v. 2.4.1, which is used for SSL/TLS certificate compliance that includes all of the CA requirements. TS 102 042 includes DV, OV and EV certificates, referred to as PTC – “Publicly Trusted Certificates.” Eventually the TS will be co for converted to an EN.

TS is a Technical Specification and an EN is a European Norm that is a mandated standard. In 2014 the ENs were issued but they weren’t aligned with the regulation, and draft EN Part 3 was for non-qualified certificates, but did not include the Baseline Requirements. In January 2015 ETSI released the 411 series for final comment, to be published after the ETSI meeting in April, in Q2-2015, as another TS, because they are waiting for eIDAS secondary regulation to be finalized, and then they will be published as ENs, but for right now TS 102 042 will be re-published as TS 319 411-1, which includes TS 319 401 that is applicable to all TSPs, including TSPs that can offer certificates, timestamp tokens, and also TASPs – Trust Application Service Providers.

TS 319 411-1 includes all CA/Browser Forum policies, and TS 319 412 contains profiles. Iñigo demonstrated the ETSI web page showing the document organization. Section 401 is incorporated and required in 411-1.

Ryan: Is there any possible ambiguity that we need to address in these ETSI documents like there has been with WebTrust and WebTrust for BRs?

Iñigo: No.

Ben: What about Section 411-3?

Iñigo: Section 411-3 goes away. Section 401 includes the network security requirements. Section 403 is for conformity assessment. TS 119 will become EN 319. Currently, TS 102 042 Annex E contains requirements for performing conformity assessment. Known assessor accreditations are listed on the ETSI web site, now accredited under ISO but eventually under section 403. TS 319 411-2 includes EU qualified website certificates.

Ryan – What if an auditor’s letter doesn’t come in with an assertion of audit pursuant to TS 319 412-4?

Iñigo – TS 319 412-4 refers to the CA/B Forum Requirements.. The audit report has to describe which policy and which profile has been audited.

Ryan – So a CA must include 319 411-1 and 319 412-4?

Iñigo – Yes. They must include 319 412-4, and qualified certificates must contain QC statements in accordance with TS 319 412-5. All times must be in UTC(k) according to an official time.

Ryan – Do you still distinguish DV, OV, EV? How do browsers determine that EV has been met from looking at the auditor’s letter? Take for example a CA that wants to assert an EV OID, how do we tell that the CA has been audited to EV requirements?

Ben – I think they are preserving the EV, OV and DV flags, and the auditor should mention those in the auditor’s report?

Arno – Yes.

Stephen – It depends on the scope of the audits. In ETSI the focus is on the policy…

Arno – it depends on the scope-yes, and what CAs are included.

Stephen – That was the issue with Diginotar.

Ryan – That is my concern.

Iñigo – A goal of section 403 is to come forward with a common format of auditor’s report – a template that is similar across Europe. And section 411-3 can be used currently for code signing certificate issuers.

**ETSI Audits**

Iñigo showed the website and the list, provided only for information, of CABs (Conformity Assessment Bodies) under TS 102 042 Annex E, provided by NABs (National Accreditation Bodies), which specify the requirements for CABs. NABs are listed by the EA – European Accreditation –

Dean – What if it is a Hungarian CA?

Ryan – Once I see an audit report, I have to look up the CAB for the NAB. I want to know that the CAB is accredited by the NAB in the country of the CA.

Iñigo – We are asking all member states NABs to provide the list of CABs to ETSI.

Ryan – We might decide that auditors are not trusted despite being listed.

Iñigo – We will have a centralized list.

Ryan – I would still need to make sure that TUVit is accredited by the German government.

Iñigo – The standard is ISO 17065 today and after July 2016 it will be according to EN 319 403 (2 years with intervening surveillance audit).

**eIDAS**

eIDAS was published in 2014. It includes an EU Trust Mark for qualified services – this will allow certified European TSPs to use a trustmark.

**RFC 3647**

When the CP working group started we were concerned about new sections with new methods because 411-1 incorporates the CA/B Forum requirements. It’s a problem because we need 9 months to incorporate changes into ETSI standards. Iñigo said that he had provided mapping tables.

Ryan – let’s assume we make a change to the Baseline Requirements, with the 3 years going down to 2 years in a year, then how are the intervening surveillance audits be handled?

Iñigo – If the standard is modified and available, the assessor will refer to the CA/B Forum requirement existing at that time.

On June 8th there will be a CT workshop and on June 9th we’re holding CA Day in Berlin at Microsoft’s offices.

Arno – July 1, 2016 there will be a big shift in rules and browsers should expect to see requests from European TSPs for embedding of qualified roots.

Iñigo – and there are a limited number of qualified auditors who will be able to audit between now and then.

Goal will be to have the TS 119 411-1 ready in May for NABs to use in accrediting CABs.

Ryan – My concern is the Indian CCA situation where the diligence performed by the NAB over the CAB may not have been as good. Also, let’s assume a CA in Abu Dhabi has an audit performed by TUVit, could the government of Abu Dhabi require something that wasn’t on the up-and-up?

**Insurance and Financial Responsibility** – Kirk Hall

Kirk reviewed his memo sent to the forum, available in the Management list archives for CAB Forum members and partially repeated here (for brevity):

1. Recap of Prior Ballots

- EVGL requires $2m CGL insurance + $5m professional liability/E&O insurance (2008) for EV certs
- Ballot 121 (May 2014) to delete the requirement — passes among CAs, fails among browsers
- Ballot 133 (October 2014) updates insurance requirements to be more relevant to CA activities — passes among CAs, fails among browsers
- Ballot 141 (Jan. 2015) eliminates EV insurance requirement, adds financial responsibility requirement – CAs must retain some amount of potential liability for mis-issued certs as follows (EVGL and BR Sec. 18):

Cert Type Current minimum retained liability (per Subscriber or Relying Party per EV Certificate) Proposed minimum retained liability per Subscriber or Relying Party per EV Certificate DV $0 $2,000 OV $0 $5,000 EV $2,000 $10,000

Fails among CAs, passes among browsers

- Ballot 142 (Jan. 2015) eliminates EV insurance requirement (same as Ballot 121). Fails among CAs, passes among browsers

2. Possible Changes (some or all of the following)

- Eliminate current EV insurance requirements (EVGL Sec. 18), have no insurance requirements - Modify/improve current insurance requirements, maybe extend to DV and OV certs. In the alternative, just require CAs to disclose what insurance they have - Add financial responsibility requirements (All certs? Only EV certs? o Require that CAs retain some liability (i.e., can’t disclaim 100% of legal responsibility). Actual liability (if any) for misissuance would still be determined by applicable national law o Require that CAs maintain some minimum capital o In the alternative, just require that CAs disclose if they have disclaimed liability, what their asset level is (this would require standardized language, location in CPS) - Some combination of the above - Take no action (leave current EV insurance requirements in place)

- Dean asked if we should take a straw poll

- Jeremy said that he is against debating this again because it doesn’t make much difference to CAs

- Dean – thinks every CA should simply be forced to disclose insurance coverage in CPS

- Tim – insurance disclosure could be long – would it be a summary? Dean – yes

- Bruce – can I say I’m self-insured? Dean – yes. Kirk – self insurance is the same as no insurance. Ben – then do you have to disclose the amount of your liquid assets?

- Moudrick supported Dean’s proposal for disclosure. The problem is that our standard says “how” not just what. Would like to see some provision that requires insurance without specific numbers.

- Jeremy – lots of standards include specific requirements. Kirk – some things are specific, some things aren’t.

- Dean – not important to browsers since their root programs don’t call it out

- Arno – we should revisit in June?

- Ryan – would it help if browsers stated that a qualification on the audit won’t be considered a problem by root programs?

- Dean asked Richard how much insurance cost him. Richard – about $30,000 with Canada and US excluded. Insurance broker said that the terms are so narrow that they would never pay out. China doesn’t have this type of insurance so they have to buy from a UK company.

- Gerv – if insurance companies are saying that this insurance will never pay out, this is a strong argument for getting rid of it

- Gerv – if we can’t drop this requirement, let’s change it to something of value

- Jeremy – Cyber-liability insurance is intended to cover the types of risks we have

- Kirk – Cyber-liability insurance doesn’t cover 3rd parties making claims. Jeremy – yes, it does cover 3rd parties and allow them to make claims directly to the insurance company

- Kirk – Should the current EV insurance requirement be moved to the BRs to cover all types of certs?

- Inigo – In EU, all Trust Service Providers (TSPs) are required to have insurance

- Gerv – extending it to all certs before we determine its value to EV is premature

- Ryan – Doesn’t think insurance is meaningful, so not supportive of adding it to DV/OV

- Ben – who would support $100K insurance policy requirement for forensic response in wake of an incident? Tim – so this is for a fly-by-night CA? Ben – worst case, yes. Tim – would disclosure of the results be required?

- Ryan – forensic analysis won’t change how root programs respond Gerv – agreed

- Kirk – should we set minimum required liability for DV & OV?

- Ryan – most CAs do this, but they’re often limited to financial transactions or otherwise limit liability so that claims would not prevail

- Kirk – in theory EV requires $2000/cert/subscriber or relying party, but not all CAs observe this.

- Ben – this would be a good step

- Ryan – If I got an EV cert for www.google.com and used it to MITM a user for www.facebook.com, would the user who clicked-through the warning have a claim? What if the user didn’t check revocation?

- Kirk – thinks the only case a relying party has a chance of making a claim if in the case of mis-issuance like DigiNotar Ryan – OCSP was blocked so that users couldn’t check revocation in the DigiNotar case

- Kirk – maybe we should require a CA to show a minimum level of assets that scale according to the number of certs issued. Ben – EU has that

- Arno – yes, but there is no quantity defined

- Robin – what does that guard against?

- Jeremy – bankruptcy

- Bruce – is disclosure a problem for private companies? Kirk said disclosure to the public isn’t necessary, only to the auditor

- Ben – don’t know how we’d figure out what the required assets are or how to measure them

- Moudrick – there is direct harm if CA goes out of business and stops issuing CRLs, etc.

- Jeremy – there is a requirement for business continuity and cessation of operation plans, but not financial plans

- Kirk – the idea here is to have your auditor look at your financials every year and confirm that you have enough assets to continue operations

- Ryan – no interest here. CA financial stability is not his concern

- Ryan – if a CA does something bad, root programs don’t need financial requirements to act. If CA stops issuing revocation info, CT logs could be used to determine which certs to whitelist to reduce impact on the CA’s customers.

- Steven – should CAs be required to disclose CT compliance in their CPS.

- Kirk – should we just require CA disclosure of liability, insurance, or assets? Put it in a standard place and format in the CPS

- Ben -favors this “policy disclosure statement” (PDS)

- Ryan & Mat are all for having more info in CAs CPS’

- Dean – Symantec would also support removing current requirements and replacing them with disclosure requirement in a standard format

- Tim – would there need to be rules that limit “fine print” disclaimers? Kirk – that would be tough, as insurance policies always have complex conditions for coverage

- Kirk – has anyone who voted against dropping the EV insurance requirement on Ballot 142 changed their minds? Trustwave & DigiCert said no.

Kirk said the discussion had been useful, but it did not look like there was enough support for any of his proposals to proceed.

**Auditing Framework, Membership requirements, and Postings to Public List** – Ryan, Kirk
Kirk displayed the current bylaws. It says you need current WebTrust audit or ETSI equivalent, and actively issuing certs to webservers open to internet.

WebTrust for CAs now has a new name “Trust Service Principles and Criteria for Certification Authorities Version 2.0”

There is no mention of the BRs in the bylaws.

If we want to update the bylaws to reflect what we all need to operate in browser root programs – we need language to include BR audit.

- language to say if not actively issuing then granted observer status.

- Links or references to issued certificates that demonstrate compliance with all applicable certificate, CRL, or OCSP.

Jeremy – only applies for issuing CA or root CA.

Jeremy – what do we want observer status to be? –

(mention of browser requirements – very minimal – not problematic so far in practice)

Ben: Do we kick observers out if they don’t progress?
Ryan: Applicants must provide X, Y, Z

Ben: observers are applicants.

Associate members have same rights as observers (currently). (no MOU for observers)

Gerv: kirk proposes to increase requirements for membership.
Ryan: 1 increase is the addition of WT BRs.

Dean: Observer. We want them to follow the same pattern as AffirmTrust did.
Jeremy: That was before the governance reform.

Kirk: What do they have to do to become a member?

Ryan: we’re increasing the standard by requiring WT BR too. (includes Network security reqs)

(general discussion)

Ryan points out the requirements are SSL requirements whereas codesigning standards are a work product of the forum…

Gerv: Nothing wrong with the current requirements, so why change? I object to requiring (for membership) conformance with a standard which the forum has had substantial influence upon.
Ryan: But this is no change from ETSI requirement today.

Gerv: if i am a CA who wants to join the forum and I want to get a BR audit but cant. I might want to propose a change, but I can’t because I can’t join.

Ryan: I think this is coupled to the issue of producing Code Signing BRs. There is no way for roots who only issue CodeSigning certificates or TimeStamping certificates to affect the standards going forward.

Kirk: I won’t take this further.

**Public list access**

Ryan: propose that after an initial 1 time moderation, anyone can post to the public list. Maybe have a small bylaw amendment that says “don’t be a jerk.” Disruptive members go back to being moderated.

Jeremy: I support. Microsoft were the ones that required an IPR for participation.

Ryan: My observation is that Microsoft are extremely hesitant to take part in discussions with public access. W3C allows this sort of thing and MS actively participates.

Jeremy: Tim used to mention when people were getting out of line. So maybe the chair gets to say when people go back to moderation. Microsoft & IPR requirement (again)
Jeremy: If Microsoft won’t leave over it, yes, in favor.

Ben: Lightweight IPR, click-thru IPR?
Jeremy: IETF is not RANDZ. You can charge royalty. CABF is RANDZ so more scary.

Ryan: Public participants, PZB as an example. If you contribute something your contributions is bound to the IPR. W3C member contributions don’t lose IPR protection. Microsoft drove the IPR.

Dean: my concern is that despite moderation abusers may get in.
Gerv: easy enough to block on the public list. Mozilla copes with this. The power to block someone is usually enough to deter.
Dean: What if someone emails stuff we don’t have jurisdiction to discuss.
Tim: We also see good stuff – why haven’t you thought about X,Y,Z.
Dean: put a pre-ballot. See what Microsoft say..

**Domain confirmation methods** – Jeremy Rowley

**CAA** – Dean and Rick: CAs shall update their CPSs by 15 April 2015 (six month from Ballot 125 adoption), to state how they process CAA records. It might be a little early to require CAA checking until there is some experience with processing the records and determine the best course of action when the CA is not listed.

There was a suggestion we roll this out quickly because unless everyone does CAA it’s not effective. There was a short discussion about what “checking CAA” means, is it a do-not-issue flag? The RFC does not state what to do.

Ryan from Google hopes that within 6 months we might take survey and then develop proposed changes to set a baseline for going forward and use that to propose a ballot. We could identify any technical issues (iscbind changes and roll-out for example) and leverage CAs experience.

The RFC says you need to check this when the certificate is being issued and not at the time of vetting.

Bruce said that when SSL pre-validation there is of less of a value for CAA (at the time of issuance) as compared to retail orders, so the CAA checking might be different for different products.

The recommendation was that we revisit this again in the fall when we get together.

**DV/OV/EV Certificates, Wildcards, Appropriate use, and OIDs**

Certificate policy OIDs for DV and OV certificates are not set to the BR policy OIDs. The issue is it is hard for third parties (such as relying parties) to determine which certificate are DV and which are OV. Browsers do not require this distinction.

Dean presented slides on issues which have been discussed on the email thread. There has been discussions such as:

- OID must change when the BRs changes
- CAs may need to redo OIDs
- Method to verify OV certificates
- Can tell the difference between OV and DV from the O field

Concerns discussed were:

- It is not a requirement to separate OV and DV
- Could cause policy issues where intermediate certificates were issued with other OIDs
- Adding an OID could make the certificate too large
- Some CAs might not know about the BRs, so if the BR OID was included, this may help to identify those CAs

There did not seem a lot of support to pursue this issue at this time, but Dean stated he would bring it up again in the future.

**Discuss F2F Meeting 35 in Zurich June 23-25 and F2F Meeting 36 in Istanbul Week of October 5**

**Meeting adjourned**

[1]: https://wiki.mozilla.org/CA:ImprovingRevocation#Preload_Revocations_of_Intermediate_CA_Certificates
[2]: https://wiki.mozilla.org/CA:CertPolicyUpdates#Consider_for_Version_2.3
[3]: http://blogs.msdn.com/b/ie/archive/2015/03/10/certificate-reputation-for-website-owners.aspx
[4]: https://technet.microsoft.com/en-us/library/security/3033929.aspx
[5]: /uploads/Improving-SSL-Warnings.pdf
[6]: /uploads/sslinterstitial-chi.pdf
[7]: /uploads/Audit-Matrix.pdf
[8]: /uploads/Chunghwatelecom201503cabforumV4.pdf
[9]: /uploads/ETSI-Presentation-2015-Mar.pdf