---
author: Wayne Thayer
date: 2025-10-16 00:00:00
tags:
- Minutes
- Server Certificates
- Face-to-Face
title: Minutes of the F2F 66 Meeting in Warsaw, Poland - SCWG, October 16, 2025
type: post
---

# SCWG Minutes on 16 October 2025, of the F2F 66 Meeting in Warsaw, Poland

**Date:** October 16, 2024

**Chair:** Dimitris

**Next Meeting:** November 6, 2025

**Prior Minutes:** September 25 minutes approved without objection.

**Administrative:** Antitrust statement read; in-person sign-in sheet circulated.

## 1. Progress Since the Last F2F Meeting

Dimitris [presented](https://docs.google.com/presentation/d/1AsYin1xqHnaNW0TikBKnM_jByMXXy_e-) a summary of recent accomplishments:

## 2. Edits to §§4.9.1.1 and 7.2.2 on revocation reason codes 

Minutes by Tobias Josefowitz (Opera)

Ben's presentation re: Revocation Reason Codes:  [BRedits4.9.1.1and7.2.2.pdf](BRedits4.9.1.1and7.2.2.pdf)

Ben W. presents a proposal Mozilla is working on for clarification of TLS BR section 4.9.1.1. This is an attempt to simplify the use of revocation reason codes and to create a reason code that can be used to identify “non-controversial revocations”.

Ben shared the edits he made to 4.9.1.1 before he removed subsections 1 to 16 and instead reorganized them into the table to be found at https://github.com/BenWilson-Mozilla/servercert/blob/revocation-revamp/docs/BR.md#4911-reasons-for-revoking-a-subscriber-certificate.

For .2, “privilegeWithdrawn” was changed to also apply in cases where the CA may be the acting party, not only the Subscriber, for example the CA failing to perform CAA checks properly.

For .6, the reason code is changed from “superseeded” to “keyCompromise”. The reasoning is that a too short key effectively is compromised.

For .9, the reason code is changed from “cessationOfOperation” to “privilegeWithdrawn”. Ben says, in his opinion, this is closest to RFC 5280.

Dimitris: You say these come from RFC 5280, but I don’t think RFC 5280 describes them. It’s probably in X.520.

Tim H: The mappings of the names to the numbers is in RFC 5280, the explanations of the categories is not there, and if it was it would be 25 years out of date and probably not be particularly useful. The X.500 series probably has better explanations, but similarly dated. There might be the question if we want to write an RFC to actually do something about it. I don’t we should reuse the existing numbers to say something different, but if we were to invent new categories that’s something I would be personally very open to, since there are no good definitions of the categories.

Dimitris: For .9, we’re talking about a Domain Name that has probably changed owners, so it could be “privilegeWithdrawn” or “cessationOfOperation”.

Ben: The question is, do we want to eliminate “cessationOfOperation” or use it? If we want to keep it, then .9 could stay like it is.

Dimitris: Is Mozilla planning to treat “cessationOfOperation” and “privilegeWithdrawn” differently?


Ben: No. There is an argument that by simplifying it by going to four different categories, it might be easier for CAs and subscribers to pick one of four reason codes than it is for them to do one of six.

Dimitris: Subscribers don’t usually pick reason codes, they pick descriptions. They want to revoke and they’ll get to pick from a readable list, and then these are mapped to revocation reason codes. Revocation using ACME might include RFC 5280 revocation reason as a parameter.

Ben: You say that but I haven’t surveyed all CA interfaces to see what they offer to their subscribers. But you may be right.

For .10, “wild-card misuse” is very similar to “misuse” in general and can be collapsed.

For .11, use “affiliationChanged” instead of “privilegeWithdrawn”, unless we were to eliminate “affiliationChanged” to end up with just four revocation reason codes, in which case this would stay “privilegeWithdrawn”.

For .12, it needs to be split up because it could end up CRLReason #1, #9 or #3, or maybe even #0.

Ben announces a position paper discussing this in detail, but says it’s not yet ready.

Ben presents https://github.com/BenWilson-Mozilla/servercert/blob/revocation-revamp/docs/BR.md#4911-reasons-for-revoking-a-subscriber-certificate, which presents the modified 4.9.1.1 grouped in a table by revocation reason code, description of applicability, and a revocation timeline. The descriptions of applicability are collapsed from the previous subsections.
Discussion

Ben: I would like some feedback on the use of “affiliationChanged”/”cessationOfOperation”. I had eliminated it but then put it back in, because I thought if it’s Subject Identity Information that’s an OV certificate, if the owner of a Domain changed, that’s the only case in which we could eliminate it. Or “cessationOfOperation” only covers the subject or system represented having permanently ceased operation.

Ben: There is one more aspect that I haven’t talked about, 4.9.1.1 is sort of a mandatory list of “you shall do this”, it does not really tell you what you can do if you want to. There will probably be a statement deciding clearly which reason codes may be used and may not be used at all.

Wendy: I don’t understand why we are trying to dictate what all the reason codes mean. A Certificate is either revoked or it’s not. But if you’re going to go down this route, “superseeded” could be a way for a Subscriber to tell the CA that they have switched to a different CA, thus have a new Certificate from somebody else. It could be because the CA itself knows it already issued the same Certificate to the same location, therefor the old one is being revoked, “superseeded”. “cessationOfOperation” ought to be something that the Subscriber tells you, “affiliationChanged” could be something that the subscriber tells the CA as opposed to the CA deciding on its own. My point is, why try to dictate the same meanings to every CA?

Ben: I agree with your analysis of how we can use those different reasons for those reasons, but in my approach what I was trying to do is isolate specific reason codes that could be used. If we for some reason decide #3, #4 and #5 we don’t care about under certain circumstances, we would say that’s a bypassable error, or if we wanted to do a hard fail, we do it for “keyCompromise”. Part of this is, I don’t specify here whether it’s a hard fail or a bypassable error.

Wendy: If the Certificate is revoked, you are to fail on it no matter what the reason was.

Ben: Part of this is also addressed or resolved by a discussion that we might have with Dimitris on his proposal.

Dimitris: From my perspective, I think the current format of 4.9.1.1. is easier to read than with this table format. We tried this table format as our initial attempt in HARICA's CP/CPS, and it became something that became not easy to parse, to read. It was too long, too many cases inside the same cell. So from an engineering and understanding point of view, as CPS reader, it is easier to see a specific case than you match to a use case and then you see the reason code that should be used. It’s easier to map, it’s easier to program in different systems. Also of course, to Ryan’s point, with ACME, there is a lot of automation - he put it on the chat - ACME clients can request certain revocation reasons based on RFC 5280. They don’t see any text or understand it. But in the cases of UIs where the Subscriber can go and select, they need to read something they can understand, in most cases. But in other cases you can just see a drop down with four different reason codes, I don’t believe the Subscribers understand those, it’s probably a random choice then.

Ben: I think they use #0 a lot. I think maybe there is more than 50% that are #0 in the CRL.

Dimitris: Thinking of what we’re asking here, if we want to reduce the number of allowed revocation reasons, then we have to go back to all the ACME servers and configure them not to accept some reasons.

Ben: Ok. That’s good feedback. Also back to Wendy’s question, I see a value in being able to analyze the data and know what the reason is. If we had some more certainty about what those reasons are - I know it’s not a perfect world and we’re not going to get Subscribers to learn all these things, but - I’m just trying to solve a problem here, mass revocation, with these definitions.

Dimitris: Do you want to re-describe the problem that in your opinion we’re trying to solve?

Ben: Yeah. I can do that.

Dimitris: Maybe then we’ll be able to find other methods to address it.

Roman: Maybe if you build telemetry about mass revocation events we should use a specific code for that. We can ask or mandate the CAs to use a specific reason code for mass revocation. We cannot ask a Subscriber that they use a certain code, or not use a certain code, depending on circumstances.

Ben: Maybe in my presentation I put a little bit too much emphasis on Subscribers, maybe we’re just talking about CAs here. Well, time is up, I am yielding the floor.

## 3. Technically Constrained Subordinate CAs

Minutes by Stephen Davidson (Digicert)

Presentation: [https://drive.google.com/file/d/1ciIEM0QGCPlj-DDl8VJr78DBVCrnGz6f](f2f66-tcscas.pdf)

Proposal: https://github.com/cabforum/servercert/issues/492

Ryan provided background to the discussion.

* Ballot 105 in 2013 added the definition of a TC Sub CA and added a third-party audit exemption for these CAs.  He noted that this latter item was a concern.
* Ballot 187 in 2017 introduced CAA record checking with an exemption for TC Sub CA, which also was a concern.
* Ballot SC-062 in 2023 was a multiyear effort to align certificate content expectations across issuers with a more concise cert profile specification.  This introduced 7.1.2.3 non TLS subCA profile, and 7.1.2.5 categorizes a TC as using Name Constraints. 

Ryan laid out a problem statement:

* The construct of a "technically constrained subordinate CA" is manufactured and only known to this community.
* By treating "technically constrained" subordinate CAs differently than "ordinary" subordinate CAs, we are contributing to unnecessary ecosystem complexity.
* Allowing exemptions for technically constrained subordinate CAs should be seen as reducing transparency, weakening security assumptions, and creating opportunities for problems.
* The TLS BRs are misaligned with existing root store policies such as Chrome.

Ryan provided some stats on the use of Name Constrained CAs:

* 12/1719 (~7%) of subordinate CA certificates trusted in Chrome have Name Constraints present.  9 of these 12 contain the same public key.
* This represents:
  * 4 constrained CA public keys, belonging to 3 CA Owners.
  * ~150 leafs, or 0.000011% of unexpired precertificates known to our monitoring solution.

He described an additional opportunity:

* Further simplify the TLS BR profiles and promote alignment with root store operator policies that expect purpose-specific PKI hierarchies.
* Fewer profiles
* Less or no Inheritance across sections

Ryan described what he meant "simplify"?

* We should sunset practices that have largely been abandoned, for example, IV certificates (where adoption appears very, very low), just as we did with the precertificate signing CA profile in SC-092.
* We should sunset practices that no longer make sense in the context of the public TLS ecosystem in the year 2025, for example, use of SHA-1.
* We should move "profile" related requirements to Section 7.
  * Why is it better to have certificate lifetime described in Section 6.3.2 ("Certificate operational periods and key pair usage periods") and referenced by each profile than directly in each profile?

Ryan described what Section 7 might look like:

* Section 7.1.2.1 CA Certificates
  * Section 7.1.2.1.1 - Root CA Certificate Profile
  * Section 7.1.2.1.2 - TLS Server Authentication Subordinate CA Certificate Profile
  * Section 7.1.2.1.3 - TLS Server Authentication and Client Authentication Subordinate CA Certificate Profile
* Section 71.2.2 - Subscriber (End-Entity) Certificates
  * Section 7.1.2.2.1 - Domain Validated Certificate Profile
  * Section 71.2.2.2 - Organization Validated Certificate Profile
  * Section 7.1.2.2.3 - Extended Validation Certificate Profile
* Section 7.1.2.3 Infrastructure Certificates
  * Section 7.1.2.3.1 - Precertificate Profile
  * Section 7.1.2.3.2 - OCSP Responder Certificate Profile

Ryan described what he meant by "less inheritance"?

* Today, an ecosystem participant needs to navigate across 10+ tables, scattered across multiple subsections, to "understand" the expected contents of a DV certificate.
* Rather than prioritizing simplicity, we're prioritizing the avoidance of redundancy.

He asked if this is working as intended?

Ryan summarised that:

* Section 7.1.2.3 Is the non-TLS subordinate CA certificate profile, and should be considered out of scope.
* Section 7.1.2.5:
  * categorizes a CA being "technically constrained" by the presence of Name Constraints (RFC 5280).
  * vaguely points to 3.2.2.4 to describe how an Applicant has registered a permitted Subtree or has been assigned an ipAddress block.
  * does not clearly describe how CA certificate validity interplays with validation reuse periods.

Ben Wilson asked if the definition should be changed to an EKU constrained CA as there were more than 600 such (nonTLS) CAs.  Ryan said he was not sure the complexity was worth it. He asked why the TLS BRs deal with CAs that are not part of the TLS BRs.

Dean Coclin asked how a category with such a small population caught attention.  Ryan said it was an issue of risk rather than numbers.  Martijn Katerbarg said if the numbers are small it should not be a problem to drop.

Dimitris Zacharopoulos said removing IV might cause problems for QWACs which require support for IV.

Corey Bonnell said the SHA1 allowances should be removed from the BR. Ben noted that Mozilla policy did not allow SHA1.  Dimitris pointed out that we should do an alignment ballot if items were out of alignment with browser requirements.

Corey also said the presentation format of the current profiles is difficult for a normal reader but the modular approach is useful for developers. Ryan said that practice notes might be helpful.

Ryan summarized that there was general support for the proposals.  Changing the format of the profiles was perhaps a longer project and community feedback could be solicited.

Responding to a question from Dimitris, Ryan said there may be some interest from other root stores in following Chrome’s approach to dedicated hierarchies, and thus this could be reflected in the BR at some future point.

## 4. Modifying the revocation requirements with an exception for CP/CPS discrepancies

Minutes by Yamian Quintero (Microsoft)

* [Minutes](https://cabforum.org/2025/06/11/minutes-of-the-f2f-65-meeting-in-toronto-canada-scwg-june-11-2025/#alternative-interim-proposal) from previous F2F on this topic
* Draft [proposal](https://docs.google.com/document/d/1xZfSHEm4O7QMa677CeGpzkOaf5uvWg0MTi8H3F2GkF8)

Dimitris

* Provided background to the [presentation](https://cabforum.org/2025/06/11/minutes-of-the-f2f-65-meeting-in-toronto-canada-scwg-june-11-2025/#alternative-interim-proposal), mentioning minutes from the [F2F#65](https://cabforum.org/2025/06/11/minutes-of-the-f2f-65-meeting-in-toronto-canada-scwg-june-11-2025/#alternative-interim-proposal) meeting minutes as a context as well as a few prior meetings.
* Mentions the indicative case of the CA that was found in violation of its own CPS because an implementation error resulted in 1 extra second in the validity of the certificates while the certificates were perfectly valid in accordance with the BRs
* Proposes to change section 4.9.1.1 of the BRs separate the requirements for TLS BRs violations and the CP/CPS violations. Including removal of item (15)
* Proposes to change 4.9.1.1 to allow for 90 days revocation period for certificates that are valid in the TLS BRs but violate the CA's CP/CPS
* Change section 5.7.1 to explicitly declare any violation of the CP/CPS as an incident

Upon concerns of changing validity of certificates, it's agreed that we will need to amend this when the certificate life is shorter.

Ben proposes a value shorter than 90 days and Dimitris agree that any number better than 5 is acceptable. 90 is just a place holder.

Clint disagrees with the insertion in 5.7.1 and Ben agrees that is redundant. Dimitris is open to take this change off.

Ryan disagrees with the whole proposal because:

* CP/CPS is a document that all parties rely upon for making risk decisions, potentially on behave of their own users
* If the content of the policy documents is less reliable then it undermines the intended security functions
* They don't see revocation as punitive, but rather as a risk contention mechanism as well as taking a stance based on principles of upholding security, reliability and interoperability.
* It degrades the value of the document.
* It doesn't address the root issue of policy pitfalls.
* It doesn't promote automation
* It doesn't show how extending the revocation period is better for user security

Dimitris responds that indeed the proposal is not intended to address the root cause. Current TLS BRs do allow for errors, but remediation is shorter just 5 days, this proposal is to increase that since for all relying parties this value should be irrelevant. In agreement that agility and other aspects still need to be addressed.

Ryan points that BRs are minimum expectations while CPS are strengthening mechanisms. This change makes sense from convenience perspective but not from increasing the overall security perspective.

Tobias was concerned about the indicative case chosen. Needs to find other ones, because there may be other cases of CP/CPS violations that even if they are acceptable within the TLS BRs, it could cause significant damage.

Dimitris mentions that this is just increasing the time, the risk has already been accepted by the relying parties.

Dimitris argues whether relying parties check or not the CPSs to validate specific certificates.

Tim Callan mentions that in practice there are proxies that do this for the end users (journalists, white hat hackers, etc.).

Dimitris stresses that the risk analyzed by the relying parties on behalf of end users, cannot make distinctions based on specific CPSs.

Clint also doesn't support this change. Gives examples of gross violations of the CPS that are perfectly compliant with the TLS BRs and still be harmful. Oversimplification of the statement about the error is what he doesn't like, it misses the point of the documentation and its own value.

Ben supports reducing the timeframe. He asks for a clear definition of what causes genuine harm and what doesn't. He anticipates that this definition is the hardest part. He acknowledges that we want to deal with the error cases on the lower side of the risk spectrum.

Dimitris doesn't see this change like something reducing the significance of the CPS. Some CAs go above and beyond the TLS BRs, and we need to incentivize this, otherwise the CAs will not feel like doing any improvements if any mall mistake will be treated as a disturbance in the ecosystem and the CAs will stick to the minimum. Some of those certs revoked, if they were issued by a different CA they would have been perfectly acceptable, and that brings also inconsistency.

## 5.Discussion of upcoming ballots

Minutes by Dimitris Zacharopoulos (HARICA)

* [SC086](https://github.com/cabforum/servercert/pull/573): Sunset the Inclusion of IP Reverse Address Domain Names (Corey)
  * The ballot will basically disallow Domain Names ending in ip-addr.arpa and ip6.arpa
  * It is ready for a final discussion and go to a vote.
* [SC087](https://github.com/cabforum/servercert/pull/587/files): Registration Number Improvement for EV Certificates (Corey)
  * Not much progress, will wait for SC086 to move first
  * Some comments on GH need to be incorporated
* [SC090](https://docs.google.com/document/d/1B7ZwGa-lZRlSJFhzbb5PgXbHAnVFH4-7mKPcXAMmaCo): Gradually sunset all remaining email-based, phone-based, and 'crossover' validation methods from Sections 3.2.2.4 and 3.2.2.5 (Ryan)
  * Introduced in July, document contains motivation. Waited for SC88 with additional options and automation
  * Now that SC88 has passed, ballot can proceed to the discussion period. No rush for voting and will wait for feedback
  * Proposed dates March 2026 deprecated IP address, March 2027 deprecation of phone methods, March 2028 deprecation of email methods. 
  * Ryan provided some background motivating those dates starting with March 2026 for the cross-over vulnerability to close the security gap presented in previous meetings. Motivate users to move away from methods that cannot be automated in light of the March 2029 47-day certificates.
  * No comments or concerns were raised by the participants.
* [SC-XX](https://github.com/cabforum/servercert/pull/619): Cleanup for ADN CNAME use (Rich)
  * Rich said the ballot needs a little more work. Aaron Gable and Jacob have added some useful feedback
  * Jacob suggested an algorithm style formulation of the ADN.
  * Several combinations need to be reviewed, especially when CNAMEs are involved. Tobi explained some cases with webhosting providers that need to be carefully examined. 
  * The conversation quickly became very complicated with various use cases and Dimitris proposed using the GitHub PR or the mailing list and asked Members with concerns to describe specific examples of possible scenarios to discuss the associated risks.
* [SC-XX](https://github.com/cabforum/servercert/pull/622): Improve Certificate Problem Reports and Clarify the Meaning of Revocation (Martijn)
  * This ballot was written by Chrome originally
        defines how much time a CA has since the report is picked up, processed. It also loosens the language regarding subscriber notification because in some cases tipping off a subscriber that is abusing a certificate is not wanted, especially cases where law enforcement agencies are involved.
        It also clarifies what revocation means. Is it when the CA marks a certificate for revocation? Is the signing of the CRLs? The publication to possible CDNs?
        Comments are welcome and will be discussed in the next weeks.
        Dimitris asked if there is anything controversial in this ballot that should be highlighted, because the current BRs already have language around CPRs, like when the clock starts, etc.
  * Martijn responded that it widens the timeline a bit
  * Tobi asked if it would be ok to add some language for accepting CPRs via phone, and if the content is actionable and perfectly understandable, then it should also be processed.
  * Martijn generally agreed but mentioned it would be challenging to define without becoming overly complicated. Tobi said this is one issue where he would accept good intentions.

## Adjournment:
With no further discussion, the meeting was adjourned early. The next Server Certificate Working Group Teleconference is scheduled for November 5, 2025.

## Attendance
Aaron Poulsen (Amazon), Adriano Santoni (Actalis S.p.A.), Albin Finne
(Deloitte Sweden), Alison Wang (TrustAsia), Andrea Rock (French
Cybersecurity agency), Andreas Henschel (D-TRUST), Antti Backman (Telia
Company), Arno Fiedler (ETSI), Ben Wilson (Mozilla), Brianca Martin
(Amazon), Brittany Randall (GoDaddy), Chris Clements (Google), Chris
Czajczyc (Deloitte / Webtrust Task Force), Christophe Bonjean
(GlobalSign), Chya-Hung Tsai (TWCA), Clemens Wanko (ACAB Council), Clint
Wilson (Apple), Corey Bonnell (DigiCert), Dean Coclin (DigiCert),
Dimitris Zacharopoulos (HARICA), Dustin Hollenback (Apple), Elena
Sitnikova (Sectigo), Enrico Entschew (D-TRUST), Eric Hampshire (Cisco
Systems), Eric Kramer (Sectigo), Fakrul Radzi (MSC Trustgate Sdn Bhd),
Gajendran Kandasamy (VIDA), Hamdi Alotaibi (SDAIA), Hazhar Ismail (MSC
Trustgate Sdn Bhd), Hisashi Kamo (SECOM Trust Systems), Hogeun Yoo
(NAVER Cloud Trust Services), HuckHai Lim (Baker TIlly Malaysia), Inaba
Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Jeff Ward (Aprio /
WebTrust Task Force), John Mason (Microsoft), Josselin Allemandou
(Certigna), Jozef Nigut (Disig), Jun Okura (Cybertrust Japan), Karina
Sirota Goodley (Microsoft), Karolina Ruszczyńska (Certum), Kate Xu
(TrustAsia), Kateryna Aleksieieva (Asseco Data Systems SA (Certum)),
Khairil Nizam Abdul Malek (MSC Trustgate Sdn Bhd), Leo Grove (SSL.com),
Li-Chun Chen (Chunghwa Telecom), Lo Nyan Tjing (MSC Trustgate), Luis
Cervantes (SSL.com), Marco Schambach (IdenTrust), Martijn Katerbarg
(Sectigo), Mats Rosberg (Keyfactor), Matthias Wiedenhorst (ACAB
Council), Miguel Sanchez (Google Trust Services), Mike Agrenius Kushner
(Keyfactor), Nate Smith (GoDaddy), Nawaf Alothman (SDAIA), Nick France
(Sectigo), Nikos Soumelidis (ACAB'c/QMSCERT), Nome Huang (TrustAsia),
Ono Fumiaki (SECOM Trust Systems), Paul Brown (GlobalSign), Peter
Miškovič (Disig), Péter Máté Erdősi (CPA Canada/WebTrust), Quen-Zong Wu
(Chunghwa Telecom), Rebecca Kelley (SSL.com), Rob Stradling (Sectigo),
Rollin Yu (TrustAsia), Romain Delval (Certigna), Roman Fischer
(SwissSign), Ronald Koorn (KPMG NL), Ryan Dickson (Google), Saleh
Almutairi (SDAIA), Sandy Balzer (SwissSign), Scott Rea (eMudhra), Sean
Huang (TWCA), Siti Hajar Noordin (MSC Trustgate), Sooyoung Eo (NAVER
Cloud Trust Services), Stefan Kirch (Telekom Security), Stephen Davidson
(DigiCert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno
(SSL.com), Tim Callan (Sectigo), Tim Hollebeek (DigiCert), Tim Huff
(Microsoft), Tobias Josefowitz (Opera Software AS), Tomasz Litarowicz
(Certum), Tsung-Min Kuo (Chunghwa Telecom), Wen-Chun Yang (ChungHwa
Telecom), Wendy Brown (US Federal PKI Management Authority), Wiktoria
Więckowska (Asseco Data Systems SA (Certum)), Wojciech Trapczyński
(Certum), YAZEED A. AL ZAFER (Saudi Data and Artificial Intelligence
Agency (SDAIA)), Yamian Quintero (Microsoft), Yannick Thomassier
(Certinomis), Yazeed Alzafer (SDAIA), Zurina Zolkaffly (MSC Trustgate
Sdn Bhd).
