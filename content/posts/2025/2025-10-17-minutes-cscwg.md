---
date: 2025-10-17 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2025-10-17 Minutes of the Code Signing Certificate Working Group 
type: post
---
# Certificate Signing Certificate Working Group (CSCWG) – F2F Meeting Minutes

Date: October 17, 2025

# Q&A Session

> Note: Speaker names have been normalized to **Q** (question) and **A** (answer).

## Q1 – Code Signing Certificates in CT Logs

**Q:**  
Would it be valuable if CAs logged all code signing certificates in Certificate Transparency (CT) logs? Would that help you in any practical way?

**A:**  
- Value would differ per organization, but overall it would be helpful.  
- Threat actors often obtain code signing certificates from multiple CAs; when one is revoked, other CAs normally are not informed. CT could provide cross-CA visibility into abusive signers.  
- Enterprises could use CT plus revocation data to hunt for malicious signers across their environments and investigate affected machines.  
- For law enforcement and threat intel:
  - CT + revocation information could help cluster activity, attribute actors, and understand which certificates and issuers specific threat actors are using.
  - It would help correlate what’s being issued, what’s revoked, and which actors are behind it.

## Q2 – Detecting Polymorphic Malware

**Q:**  
How do your systems detect polymorphic malware?

**A:**  
- Many polymorphic samples observed are browser-based or in interpreted languages (e.g., JavaScript), which typically are not signed with code-signing certificates.  
- Other vendors with browser presence are often relied on to help cluster and identify polymorphic threats in that space.  
- Code signing certificates are usually involved at the “end effect” stage:  
  - Ransomware  
  - RATs (remote access trojans)  
  - Other persistent payloads  
- Detection is multi-vector:
  - Memory-based, host-based, and network-based detections.  
  - Network communication (callouts) often provides strong detection opportunities.  
- Even with heavy obfuscation, actors are often consistent:
  - Same compiler artifacts, same Windows API usage, similar behavioral patterns.  
  - These non-polymorphic artifacts can be used to cluster and detect families with high confidence.

## Q3 – Stolen Code Signing Certificates vs Imposter / Shell Companies

**Q:**  
You mentioned mainly “imposter” companies (fake or shell companies used to obtain certificates). How common is outright theft of legitimate certificates and keys? Is this increasing? How big of a problem is it, and how can it be handled?

**A:**  
- Theft of code signing certificates is seen as relatively **rare**:
  - Hard to meet operational demand for large campaigns that need frequent new certs.  
  - Most large-scale campaigns prefer certificates they control (imposter/shell companies) over stolen ones.  
- Stolen certs generally align with higher-end, well-resourced actors:
  - They can break into corporate environments and exfiltrate impactful keys.  
- The dominant pattern remains:
  - Shell/imposter companies created specifically to obtain certificates.  
  - Abuse of open-source corporate information (public registries, filings, etc.).  
- Example: An obviously improbable scenario such as a small pizza shop having an EV code signing certificate; indicates impersonation or misuse.  
- The key outstanding challenge:
  - When stolen certs are used and clearly sign malware, they are treated as abusive, but there is no simple, general solution that is fair to the legitimate subscriber yet still reacts quickly to abuse.

## Q4 – Impact of Hardware Tokens and Shorter Validity Periods

**Q:**  
Has the move to hardware‐based code signing (HSMs/tokens) reduced certificate theft? And does reducing code signing certificate validity to one year help?

**A:**  
- Hardware tokens:
  - **Yes**, they significantly increase friction and hinder theft.  
  - Actors attempt to:
    - Dump tokens.  
    - Use taxis or couriers for token delivery.  
    - Use cloud options or digital HSMs to bypass physical constraints.  
  - Well-funded organized crime groups can still work around hardware tokens (e.g., by setting up companies globally, paying for “drops”).  
  - The main effect is removing “low-hanging fruit” and raising the bar for abuse.  
- Shorter validity (1 year):
  - One view: It **helps**, because actors must revalidate more often and maintain their impersonation longer.  
  - Another view (from field data):  
    - ~95% of abused certs were already 1-year certificates.  
    - Threat actors expect revocation and therefore avoid 3-year certs.  
    - Legitimate businesses often choose longer validity (e.g., 3 years via subscription).  
    - One-year validity was a useful signal for abuse detection; mandating shorter periods removes that signal and “flattens” everyone into the same pattern.  
  - Overall: Shorter validity adds friction but also removes some analytic/detection tools.

## Q5 – Validation Methods to Address Shell / Imposter Companies

**Q:**  
If shell companies are the main threat, what validation rules could help distinguish who should and should not get code signing certificates? Creating companies in certain registries (like Companies House) is easy and can be legitimate. What practical rules would actually help?

**A:**  
- Core problem: Validation is heavily based on open-source information, which is easy for motivated adversaries to game.  
- A multi-pronged approach is needed:
  - Coordination among **government**, **private sector**, and **law enforcement**.  
  - Potential role for CERTs or similar bodies as central, trusted hubs for threat information.  
- Information sharing:  
  - Previous CA-only, direct information-sharing groups ran into antitrust and competition concerns (e.g., “conspiring to blacklist”).  
  - Routing information through law enforcement or CERTs could:
    - Allow CAs to submit data on suspicious subscribers or signers.  
    - Allow law enforcement/CERT to analyze, cluster, and provide objective indicators back to CAs (e.g., “these entities are linked to known threat actors”).  
- Distinction between data types:
  - **Evidence** (for courts) vs **intel/informational** data (for prevention and clustering).  
  - What would be shared in this context is typically non-actionable intel rather than evidentiary material.  
- This type of independent repository (via CERT/police) is something the community has been looking for but has not had a clear volunteer or operator for.

## Q6 – Additional CA Perspective: Validity, Shell vs Hijacked Companies, Internal Signals

**Q:**  
From the CA side (e.g., after reducing validity), what patterns do you see in abuse reports and how do you detect related certificates and company types?

**A:**  
- Analysis of incoming problem reports yields internal flags and patterns.  
- Three-year certs almost never show up in abuse cases; most abuse is with one-year certs.  
- Two main categories of abusive entities:
  1. **Shell companies**: Created specifically to obtain code signing certs and sign malware. Often:
     - Wait until they meet minimum age requirements (e.g., 3 years) to avoid additional checks, then aggressively request certs.  
  2. **Hijacked/impersonated companies**:  
     - Occur in jurisdictions where company record updates are weakly controlled.  
     - Dormant companies can be “claimed” with minimal checks.  
- When one certificate is reported:
  - CAs often identify **other related certificates** (via subscriber info, contact info, internal account data).  
  - Multiple certificates may be revoked based on a single report.  
  - This internal linkage is often invisible to external observers.  
- A feedback loop would be useful:
  - Sharing with trusted parties which additional certificates were found and revoked due to a given report, even if they appear unrelated externally.

## Q7 – Additional Information in Certificates (e.g., Reseller Identification)

**Q:**  
Would it help if CAs included more information in code signing certificates, such as reseller identity or other metadata? What other certificate-level indicators would be useful?

**A:**  
- Reseller information:
  - Currently, external parties generally cannot see whether a cert came via a reseller or directly from a CA.  
  - Including reseller identifiers could help:
    - Identify weak links or problematic resellers.  
    - Track trends where certain resellers are strongly associated with abuse.  
- Other indicators:
  - Participants are open to considering additional useful fields but note limitations:
    - For the threat intel side, many attributes (country, address) are intellectually interesting but may have limited operational utility for direct intervention.  
    - Must balance utility vs privacy concerns (e.g., avoid forcing personal emails into publicly logged certificates, especially once CT is adopted for code signing).

## Q8 – Domain / Email and CT, plus Face-to-Face Validation

**Q:**  
Could including a validated domain or other domain-related data in certificates help? And what about stronger identity verification like mandatory video/face-to-face checks?

**A:**  
- Validated domain:
  - Legitimate businesses almost always have domains.  
  - Domain data could be used for additional checks:
    - Compare domain age vs company age.  
    - Identify domains that disappear soon after issuance.  
    - Detect clusters where infrastructure is reused across many fake organizations.  
  - Using email domain as a publicly logged identifier is sensitive, especially under CT, due to privacy/PII concerns.  
- Face-to-face / video identity checks:
  - Already used in some scenarios (e.g., for young companies under 3 years or in VMC context).  
  - Initially reduced abuse, but actors adapted by:
    - Hiring “identity mules” to appear in video.  
    - Using the same physical locations/backgrounds with different people.  
  - So F2F raises cost but does not eliminate abuse.  
  - For legitimate customers, video calls are not a major burden, but the value vs cost trade-off must be considered.  


## Q9 – Platforms Targeted by Signed Malware

**Q:**  
Which platforms or ecosystems are most targeted by signed malware (e.g., Windows, Java, mobile OS, etc.)? Is Microsoft the main victim, and should other platforms participate more actively in this WG?

**A:**  
- Current visibility is strongest for Microsoft/Windows code signing.  
- All major OSs can be targeted, but:
  - **Microsoft/Windows** is the primary target for general cybercrime due to market share and ecosystem openness.  
  - **Apple and Android** ecosystems are more tightly controlled:
    - Trust models are stricter.  
    - Abuse often involves state or state-sponsored actors rather than general cybercrime, so cases are fewer but higher impact.  
- Detection gaps:
  - For non-Windows formats and non-traditional ecosystems, there may be blind spots if no one is explicitly tracking code signatures.  
  - There is room to expand visibility into mobile and other platforms in the future.


## Q10 – Limits of Validation vs Focus on Fast Detection and Revocation

**Q:**  
Given that some criminal organizations have huge budgets and can build convincing companies and identities, can validation ever really stop them? Should we focus instead on rapid detection and revocation (e.g., “1-second revocation” ideas, automation, central APIs)?

**A:**  
- With highly resourced adversaries:
  - No realistic validation stack will fully exclude them.  
  - They can:
    - Create sophisticated corporate fronts.  
    - Hire people for identity checks.  
    - Abusively re-use legitimate entities.  
- Stronger validation **does**:
  - Filter out “small-time” or less sophisticated actors.  
  - Raise the bar and add friction to the ecosystem.  
- However, consensus is that:
  - **Detection and fast revocation are critical**.  
  - Once signed malware is detected:
    - There should be fast, preferably automated paths to inform CAs and revoke certificates.  
    - This could involve APIs, central services, or coordination with platforms (e.g., OS vendors, AV services, analysis pipelines like Assemblyline).  
- Even if some actors bypass validation and scanning, friction + rapid revocation:
  - Reduces their operational lifespan.  
  - Makes abuse costlier and riskier.

## Q11 – Signing Services and Pre-Signing Code Scanning

**Q:**  
Would a model where customers sign code through a remote signing service (operated by CAs or trusted third parties) that scans the code before signing be more effective than just raising validation requirements?

**A:**  
- Concept:
  - Customer uploads code → service scans it for malware → if clean, service signs it.  
  - Could incorporate hash-based policies: scan an unsigned sample, then only sign that exact hash afterwards.  
- Benefits:
  - Potentially catches malicious content before it is associated with a trusted signature.  
  - Could combine static, dynamic, and reputation-based techniques.  
- Challenges and evasion:
  - Actors are already optimizing for **low detection** at signing time:
    - Using benign-looking downloaders, especially in frameworks like Electron (Slack/Discord-style apps).  
    - Embedding one malicious function in a large benign codebase.  
    - Using Cloudflare or other techniques to prevent sandboxed environments from triggering real payload download.  
    - Requiring user-supplied tokens for execution, making automatic analysis harder.  
  - Some claimed they can disable or bypass mandatory AV scanning in certain cloud signing services; law enforcement has observed threat actors sharing such instructions.  
  - CAs may be reluctant to:
    - Bring large volumes of unsigned malware into their signing infrastructure.  
    - Take on the operational and legal responsibilities of malware scanning and handling.  
- Overall sentiment:
  - Signing services and scanning are promising **as part of a layered approach**, but:
    - They will be bypassed by determined actors.  
    - They do not replace the need for improved validation, information sharing, and rapid revocation.


## Q12 – Geographic Patterns and Appendix A-Type Considerations

**Q:**  
Have you built “heat maps” of where signed malware comes from geographically (issuance country vs malware origin)? Could that inform policy (e.g., Appendix A-style lists)?

**A:**  
- There are visible regional patterns:
  - Some jurisdictions have weaker company formation and update controls, making them attractive for shell or hijacked companies.  
  - Some regions near sanctioned countries serve as “proxies” for actors who cannot easily obtain certificates directly.  
- Distinctions:
  - Malware origin country vs certificate subscriber country are often different.  
  - Threat actors strategically select jurisdictions that make it easier to form or hijack entities and obtain certs.  
- Tracking practices:
  - Threat intel analysts track:
    - Malware families.  
    - Subscriber countries.  
    - Choice of issuers/resellers.  
  - These patterns help identify distinct threat actor clusters, including nation-state groups.  
- This type of data could inform BR / Appendix-A-like decisions, but must be used cautiously and objectively.


## Q13 – Reporting Flows, CCADB, and Easier Abuse Reporting

**Q:**  
How can researchers and law enforcement report abuse more easily to CAs? Are there existing structures (e.g., CCADB) that can help?

**A:**  
- CCADB:
  - Already lists CAs and their contact / problem reporting information, mainly for TLS but also covers code signing CAs.  
  - Could be used more explicitly as a discovery point for where to send certificate problem reports.  
- Certificates could carry pointers:
  - For example, fields or documentation pointing to standardized abuse/contact endpoints.  
  - Ideas like requiring `security.txt` on CA websites were raised, though not universally liked.  
- For trusted, known researchers:
  - Direct, higher-bandwidth channels can be set up (e.g., direct contact with CA security/abuse teams).  
  - Allows more detailed two-way conversations than simple “problem report” forms.

## Q14 – Closing Themes

**Q:**  
Any final thoughts on how to move forward?

**A:**  
- There is no single solution and the problem will never fully go away.  
- A realistic strategy combines:
  - Stronger and smarter validation (while acknowledging limits).  
  - Hardware-bound keys and shorter lifetimes where appropriate.  
  - CT or similar transparency mechanisms for code signing.  
  - Better information sharing via trusted intermediaries (law enforcement, CERTs).  
  - Possibilities for signing services and pre-signing scanning.  
  - Fast, ideally automated revocation once abuse is detected.  
- The group has generated a concrete set of ideas to explore further in the working group, with the expectation of iterating and revisiting impact once measures are implemented.