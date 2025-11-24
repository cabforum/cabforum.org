---
aliases:
- /2025/11/20/ballot-sc-90-gradually-sunset-all-remaining-email-based,-phone-based,-and-‘crossover’-validation-methods-from-sections-3.2.2.4-and-3.2.2.5
author: Wayne Thayer
date: 2025-11-20
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-090: Gradually sunset all remaining email-based, phone-based, and ‘crossover’ validation methods from Sections 3.2.2.4 and 3.2.2.5'
type: post
---

## Voting Results

### Certificate Issuers
27 votes in total:

 * 27 voting YES: Actalis S.p.A., Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, DigiCert, Disig, D-TRUST, eMudhra, Fastly, GlobalSign, GoDaddy, HARICA, IdenTrust, iTrusChina, Japan Registry Services, NAVER Cloud Trust Services, OISTE Foundation, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
3 votes in total:

 * 3 voting YES: Apple, Google, Mozilla

 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was MET.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 16 for this ballot. This requirement was **MET**.

## Notice of Review Period

This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

### Summary of Review
Ballot for Review: SC090: Gradually sunset all remaining email-based, phone-based, and ‘crossover’ validation methods from Sections 3.2.2.4 and 3.2.2.5

[TBR-SC90.pdf](BR-SC090.pdf)

[TBR-SC90-redlined.pdf](BR-SC090-redline.pdf)

[TBR-SC90.docx](BR-SC090.docx)

[TBR-SC90-redlined.docx](BR-SC090-redline.docx)

**Start of Review Period: 2025-11-20 16:00:00 UTC**

**End of Review Period: 2025-12-20 16:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

## Ballot Contents

### Purpose of Ballot SC-90:

This ballot proposes updates to the Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates (TLS BRs) to gradually sunset (1) all remaining email and phone-based domain and IP address validation methods from Sections 3.2.2.4 and 3.2.2.5 and (2) a validation method that enables “crossover” attacks as described by Henry Birge-Lee during the 24 July 2025 Validation Subcommittee Meeting.


### Background:


#### Scope:


The following validation methods are proposed for a gradual sunset:


Methods relying on email and phone:

- 3.2.2.4.4 ("Constructed Email to Domain Contact")

- 3.2.2.4.13 ("Email to DNS CAA Contact")

- 3.2.2.4.14 ("Email to DNS TXT Contact")

- 3.2.2.4.16 ("Phone Contact with DNS TXT Record Phone Contact")

- 3.2.2.4.17 ("Phone Contact with DNS CAA Phone Contact")

- 3.2.2.5.2 ("Email, Fax, SMS, or Postal Mail to IP Address Contact")

- 3.2.2.5.5 ("Phone Contact with IP Address Contact")


Method that enable crossover attacks:

- 3.2.2.4.8 (“IP Address”)


#### Justification:


For sunsetting email and phone-based methods:


- The in-scope methods do not offer the stronger security assurances provided by the existing alternative methods currently detailed in the TLS BRs. 

    - For example, while MPIC (Ballot SC-067) can be applied to DNS lookups for email addresses sourced from DNS (e.g., Methods 3.2.2.4.13, 3.2.2.4.14), it does not prevent fraudulent issuance if the MX server's IP or its DNS resolution is hijacked, as the MX server address itself is not part of the MPIC lookup for the domain contact.

        - An attacker could perform a BGP hijack of the victim's MX server IP or its DNS resolution, serve the legitimate victim email address (which passes MPIC for the contact lookup), and still intercept the validation email.

        - Similar attacks can target constructed email methods by hijacking the MX server.

    - Though applying MPIC to MX record lookups would be an improvement to help protect against DNS-based attacks affecting email routing, but it would not protect against in-transit hijacks (e.g., vulnerabilities in SMTP traffic itself like opportunistic TLS downgrades) or post-mail-server delivery compromises (e.g., an attacker gaining unauthorized access to the recipient's mailbox via POP3/IMAP). 

    - Requiring multiple challenges to be sent from multiple addresses could also be considered a security improvement, but would likely work against agility goals and is expected to be undesirable due to subscriber inconvenience.

    - The ability for email-based DCV methods to reliably satisfy DNSSEC checking expectations introduced by SC-085 is unclear, further emphasizing these methods as a “weak link.” Because of this concern, this ballot discourages use of email-based methods beginning the effective date of SC-085 (March 15, 2026).


- The in-scope methods represent an expanded attack surface to publicly-trusted TLS certificate issuance when compared to existing alternatives.

    - These methods broaden the attack surface compared to “direct” validation methods like DNS TXT records or HTTP file challenges.

    - Email validation involves a more complex chain of operations, including MX record lookups and resolution of mail server addresses, potentially involving third-party mail providers and their DNS infrastructure. Additional participants in the validation process should be seen as added risk.

    - Using DNS TXT or CAA records to find a contact email address can introduce further DNS queries, each an additional vector for attack.

    - Compromise at any point in this extended chain can lead to fraudulent certificate issuance. Direct DNS or HTTP challenges confine the attack surface primarily to the validated domain.

    - Audits don’t meaningfully or completely evaluate the security of these services, even considering elements hosted directly by the CA subject to the audit’s scope, further calling into question their reliability.


- The in-scope methods inherit vulnerabilities from the underlying communication channels and associated service providers.

    - The compromise of an email service provider (private or public), could potentially grant attackers access to any number of fraudulently issued certificates due to no fault of a CA Owner or subscriber. 

    - There are numerous examples of large-scale attacks on such services and providers. These attacks should be considered as becoming more prevalent, not less. 

    - It is also broadly understood by security professionals that many successful attacks are never publicly disclosed or may go undetected for considerable periods. This established pattern of attacks, combined with the strong and persistent motivations for adversaries to target email systems, makes the continued use of email-based DCV a concern for maintaining the security and integrity of the ecosystem.

    - Email relies on opportunistic TLS and is susceptible to downgrade. Phone systems share similar inherent vulnerabilities like SIM Swapping and SS7 attacks (example).

    - As evidenced in the WatchTowr report that motivated the sunset of methods relying on domain contact information via SC-080, vulnerabilities in these communication channels or associated service providers represent significant and convenient collateral impact.  


- The in-scope methods represent a weaker binding to domain/IP control than existing alternatives.

    - Email and phone-based DCV methods exhibit a "weak binding" as they only demonstrate that an applicant can interact with a communication medium associated with the domain, not necessarily direct administrative control over the domain's core infrastructure.

    - Read access to an email inbox (e.g., admin@example.com) or a phone number does not inherently equate to comprehensive control over DNS configuration, web server content, or policy authority for the domain.

    - Email accounts are susceptible to compromise, unauthorized and unintended delegation, or mismanagement independently of the domain's core operational control.


- We presently have DCV methods (e.g., ACME-based DNS or HTTP challenges) that offer greater automation, scalability, security, and better align with subscriber agility needs, especially when considering decreasing certificate lifetimes. Similarly, the SCWG continues to develop new DCV methods that promote automation, agility, and subscriber convenience (e.g., SC-088). 


For sunsetting methods that could be used in “crossover” attacks:


 - The in-scope methods allow attackers to obtain fraudulent certificates that contain a domain name(s) they do not possess authoritative control.

- While the original scope of this ballot included a sunset for 3.2.2.5.3 (“Reverse Address Lookup”), it is instead planned for sunset in SC-091.


### Benefits of adoption:


- Elevate overall security posture by directly addressing the "Weakest Link Principle" in our domain validation security chain, ensuring attackers cannot leverage less secure methods to compromise certificate issuance. So long as these inherently less secure and more susceptible methods remain available, they present a persistent, exploitable target for adversaries.

- Reduce risk of improper certificate issuance by sunsetting a method that enables "crossover" attacks, which are often made possible by IP reassignment, host header vulnerabilities, and reverse DNS vulnerabilities.

- Promote stronger validation integrity by ensuring that DCV relies on methods with a stronger binding to actual administrative control over a domain or IP address, increasing the consistency of trustworthiness of issued certificates.

- Simplify the threat space by removing phone and email-based DCV, which eliminates unnecessary dependencies on large and complex ecosystems with inherent challenges, risks and vulnerabilities.

- Increase agility by encouraging site owners to transition to modern DCV methods, creating opportunities for faster and more efficient certificate lifecycle management through automation.

- Create opportunities for innovation by promoting the development of new and improved DCV methods, fostering advancements that may further enhance the overall security and agility of the ecosystem.

- Promote simplicity by streamlining the list of approved DCV methods in the TLS BRs, reducing complexity for CAs, developers, auditors, and subscribers.


### Proposed Key Dates:


The effective dates considered in this update are intended to allow subscribers and CA Owners relying on existing implementations of these methods to transition to alternatives.


- Effective March 15, 2026:

    - Sunset method 3.2.2.4.8 (“IP Address”)

    - Discourage use of email and phone-based methods.


- Effective March 15, 2027:

    - Sunset method 3.2.2.4.16 ("Phone Contact with DNS TXT Record Phone Contact")

    - Sunset method 3.2.2.4.17 ("Phone Contact with DNS CAA Phone Contact")

    - Sunset method 3.2.2.5.2 ("Email, Fax, SMS, or Postal Mail to IP Address Contact")

    - Sunset method 3.2.2.5.5 ("Phone Contact with IP Address Contact")


- Effective March 15, 2028:

    - Sunset method 3.2.2.4.4 ("Constructed Email to Domain Contact")

    - Sunset method 3.2.2.4.13 ("Email to DNS CAA Contact")

    - Sunset method 3.2.2.4.14 ("Email to DNS TXT Contact")


### Proposal Revision History:

- Version #1 (this version)


The following motion has been proposed by Ryan Dickson and Chris Clements of Google (Chrome Root Program) and endorsed by Ben Wilson (Mozilla) and Tim Callan (Sectigo).


**— Motion Begins —**


This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.1.5.


MODIFY the Baseline Requirements as specified in the following Redline:


https://github.com/cabforum/servercert/compare/e9176e15805a2f7908411a22a40047b655fa24c4..321efb50c89a2dbe6533ba6c8df84d2d9184044a 


**— Motion Ends —**


This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:


Discussion (no less than 14 days)

- Start: 2025-10-24 11:15:00 ET

- End: 2025-11-12 16:14:59 ET


Vote for approval (7 days)

- tart: 2025-11-12 16:15:00 ET

- End: 2025-11-19 16:15:00 ET