---
aliases:
- /2025/11/12/ballot-sc-91-sunset-3.2.2.5.3-reverse-address-lookup-validation-proposal-of-new-dns-based-validation-using-persistent-dcv-txt-record-for-ip-addresses

author: Wayne Thayer
date: 2025-11-12
tags:
- Ballot
- Server Certificates
title: 'Ballot SC-091: Sunset 3.2.2.5.3 Reverse Address Lookup Validation, proposal of new DNS-based validation using Persistent DCV TXT Record for IP addresses'
type: post
---

## Voting Results

### Certificate Issuers
24 votes in total:

 * 24 voting YES: Amazon, Asseco Data Systems SA (Certum), Certigna (DHIMYOTIS), Chunghwa Telecom, Cybertrust Japan, D-TRUST, eMudhra, Fastly, GlobalSign, HARICA, IdenTrust, iTrusChina, Japan Registry Services, MOIS (Ministry of Interior and Safety) of the republic of Korea, NAVER Cloud Trust Services, SECOM Trust Systems, Sectigo, SHECA, SSL.com, SwissSign, Telia Company, TrustAsia, TWCA, Visa

 * 0 voting NO:

 * 0 ABSTAIN:

### Certificate Consumers
2 votes in total:

 * 2 voting YES: Google, Mozilla

 * 0 voting NO:

 * 0 ABSTAIN:

### Bylaws Requirements

1. Bylaw 2.3(6) requires:

 * In order for a ballot to be adopted by the Forum, two‐thirds (2/3) or more of the votes cast by the Voting Members in the Certificate Issuer category must be in favor of the ballot. This requirement was **MET**.

 * at least fifty percent (50%) plus one (1) of the votes cast by the Voting Members in the Certificate Consumer category must be in favor of the ballot. This requirement was **MET**.

 * At least one (1) Voting Member in each category must vote in favor of a ballot for the ballot to be adopted. This requirement was **MET**.

2. Bylaw 2.3(7) requires:

 * A ballot result will be considered valid only when more than half of the number of currently active Voting Members has participated. The number of currently active Voting Members is the average number of Voting Member organizations that have participated in the previous three (3) Forum Meetings and Forum Teleconferences.

  * the quorum was 16 for this ballot. This requirement was **MET**.


## NOTICE OF REVIEW PERIOD
This Review Notice is sent pursuant to Section 4.1 of the CA/Browser Forum’s Intellectual Property Rights Policy (v1.3). This Review Period of 30 days is for one Final Maintenance Guidelines. The complete Draft Maintenance Guideline that is the subject of this Review Notice is attached to this email, both in red-line and changes-accepted draft format, in Word and PDF versions.

**Summary of Review**
**Ballot for Review**: SC091: Sunset 3.2.2.5.3 Reverse Address Lookup Validation, proposal of new DNS-based validation using Persistent DCV TXT Record for IP addresses

**Start of Review Period: 2025-11-14 12:00:00 UTC**
**End of Review Period: 2025-12-14 12:00:00 UTC**

Members with any Essential Claim(s) to exclude must forward a written Notice to Exclude Essential Claims to the Working Group Chair and also submit a copy to the CA/B Forum public mailing list (email to public at cabforum.org) before the end of the Review Period.
For details, please see the current version of the CA/Browser Forum Intellectual Property Rights Policy.
(An optional template for submitting an Exclusion Notice is available at https://cabforum.org/wp-content/uploads/Template-for-Exclusion-Notice.pdf) 

[TBR-SC91.pdf](BR-SC091.pdf)

[TBR-SC91-redlined.pdf](BR-SC091-redline.pdf)

[TBR-SC91.docx](BR-SC091.docx)

[TBR-SC91-redlined.docx](BR-SC091-redline.docx)

## Ballot Contents

**Purpose of Ballot SC-91**

This ballot sunsets 3.2.2.5.3 (“Reverse Address Lookup”) and introduces 3.2.2.5.8 (“DNS TXT Record with Persistent Value in the Reverse Namespace”) as its replacement. 


**Background**


The “Reverse Address Lookup” method (3.2.2.5.3) has been recognized as insecure due to its reliance on PTR records and indirect validation of domains instead of IP addresses. However, DNS-based validation of IP addresses is useful for many specific client use cases (e.g., ssh frontends, DoH servers) where HTTP- or TLS-based validation is infeasible due to security concerns with opening associated ports or difficulty with serving challenges from anycasted addresses. For the replacement of “Reverse Address Lookup,” we offer another validation method, “DNS TXT Record with Persistent Value in the Reverse Namespace.” The new method is a more secure replacement of 3.2.2.5.3, allowing subscribers to validate IP addresses by DNS while mitigating the risk of “crossover” attacks. 


The new method addresses two primary security concerns of the “Reverse Address Lookup” method: (1) staleness of PTR records (by requiring a TXT record placed at a validation-specific prefix in the .arpa zone) (2) lack of authentication and crossover risk (by requiring an account-bound credential to be placed in the TXT record).

**Justification**

For sunsetting the “Reverse Address Lookup” method for IP addresses (3.2.2.5.3):

    The method proves a “weak binding” between the IP address listed in the Certificate and the domain name that ultimately completes DV for the certificate to be issued.

        “Reverse Address Lookup” involves querying PTR records for an IP address’s associated reverse DNS name, and then validating the returned domain name using a DV method listed in 3.2.2.4. Successfully validating the PTR’s domain name proves control over that domain, but does not necessarily prove control of the IP address itself or its reverse zone. 

    Stale PTR records represent a critical security risk for this validation method. 

        PTR records are often stale, especially due to dynamic IP reassignment in cloud-based environments. “DNS scavenging” (removal of PTR records for decommissioned domain names) is not enabled by default on DNS server implementations. Additionally, there is no mechanism to sync updates in a FQDN’s A or AAAA records to PTR records in the corresponding reverse zone.

        If an IP address’s PTR record(s) point to a domain that is no longer in use, an attacker can gain control of the free domain name, and complete validation for an IP address that they do not actually control or have administrative access to. Thus, the method may allow attackers to obtain fraudulent certificates that contain a domain name(s) they do not possess authoritative control.

        The current reverse name validation method does not require any indication of request to issue in the reverse zone itself; there is no validation-related prefix appended to the reverse name associated with the IP address.

    Reverse Address Lookup allows any DV method for domains in 3.2.2.4 to be applied for validation of the domain listed in the IP address’s PTR records. Thus, it inherits the attack surface of the superset of all domain DV methods; its effective security is tied to the weakest domain validation method still permitted. 

        The previous method allowed ANY of the 3.2.2.4 methods to be used to validate the IP address, introducing “crossover” attack risk by tying IP address validation to validation of an unrelated domain.

        This included (previously) weaker WHOIS, email, and phone contact-based methods (scheduled to be sunset as proposed by SC-90). This represents a broader attack surface compared to 3.2.2.5.22, which consists purely of DNS. Compromise of any of the 3.2.2.4 methods could allow an attacker to gain a misissued certificate for an IP address.


For creation of 3.2.2.5.8, “DNS TXT Record with Persistent Value in the Reverse Namespace”:

    Offers a secure replacement for a DNS-based validation method for IP addresses

        The new method limits the validation challenge to direct DNS TXT queries in the .arpa zone associated with an IP address. This focuses proof of control on the authoritative namespace for that IP, rather than relying on a generic PTR record that may be stale or repurposed for uses unrelated to validation. 

        By contrast, “Reverse Address Lookup” allowed ANY of the 3.2.2.4 methods to be used to validate the IP address, introducing “crossover” attack risk by tying IP address validation to validation of an unrelated domain.

    The newly created “DNS TXT Record with Persistent Value” method (SC-088v2, to be 3.2.2.4.22) for validation of domains offers several benefits to subscribers in terms of operational ease, flexibility, and ease of automated certificate issuance. These same benefits can be brought to validation of IP addresses by placement of an Persistent DCV TXT Record within the reverse zone associated with an IP address. 

        The method provides a more direct proof of certificate issuance through IP address-associated reverse zones. 

        The method minimizes the need to make live record updates in reverse zones to complete validation of an IP address, which may be especially challenging due to the fact that IP address holders may not have direct access to the .arpa zone associated with their IP address.

        We confirm the feasibility of placement of non-PTR records in reverse zones, through consultation with several in-house DNS experts at Google and directly placing test records in an Unbound zonefile.


**Benefits of adoption**

For creation of 3.2.2.5.8, “DNS TXT Record with Persistent Value in the Reverse Namespace”:

    Improves validation processes by extending an existing DV method, 3.2.2.4.22 “DNS TXT Record with Persistent Value,” to the validation of IP addresses.

        This ensures that CAs and subscribers can adopt uniform process and tooling for both domain and IP address validation via the Persistent DCV TXT value method, reducing complexity and the risk of inconsistent implementation.

    Promotes stronger validation integrity by ensuring that DV demonstrates a stronger binding to actual administrative control over an IP address, increasing the consistency of trustworthiness of issued certificates.

        Reverse DNS zones (in-addr.arpa and ip6.arpa) are delegated by RIRs and LIRs in accordance with IP address block allocations. This makes the reverse namespace the authoritative DNS context for demonstrating control of IP addresses.

        Direct DNS assertion through IP address-associated reverse zones is a stronger proof of control. 

        Publishing a TXT record at a validation specific-prefix directly demonstrates administrative control of the IP resource AS WELL AS request to issue.

        Removes reliance on the correctness/freshness of PTR records and eliminates DV indirection through potentially unrelated domains.

    Improves security posture and reduces risk of improper certificate issuance by sunsetting a method that enables "crossover" attacks, which are often made possible by IP reassignment, host header vulnerabilities, and reverse DNS vulnerabilities.

        The new method replaces the current allowance in 3.2.2.5.3 to use any domain validation method in 3.2.2.4 with a single, narrowly defined DNS-based method. This strengthens security by eliminating the "weakest link" problem, as the security of 3.2.2.5.3 was inherently bound to the security of the weakest validation method in 3.2.2.4. 

        Removes the possibility of “crossover” attacks introduced by tying validation of an IP address to validation of an unrelated domain in a stale PTR record.

        Limits the validation challenge to direct DNS TXT queries in the .arpa zone, minimizing the attack surface to only DNS.

    Facilitates innovation by allowing automation without live DNS updates, supporting shortened certificate lifetimes and more agile re-issuance for IP address certificate subscribers. This is especially helpful because of the administrative burden often inherent in updating .arpa zones.

        Creates opportunities for faster, more efficient certificate lifestyle management and simplification of maintenance of reverse zones.

        Brings the improvements of 3.2.2.4.22 to validation of IP addresses.

    Promote stronger validation integrity by ensuring that DCV proves a stronger, more direct binding to actual administrative control over the reverse namespace associated with an IP address.


**Proposed Key Dates**

The effective dates considered in this update are intended to allow subscribers and CA Owners relying on existing implementations of these methods to transition to alternatives.

    Effective immediately:

    Implementation of 3.2.2.5.8 (“DNS TXT Record with Persistent Value in the Reverse Namespace”)

    Effective March 15, 2027:

        Sunset of Method 3.2.2.5.3 (“Reverse Address Lookup”)


**Motion**


The following motion has been proposed by Gurleen Grewal of Google (Google Trust Services) and endorsed by Michael Slaughter (Amazon Trust Services) and Dimitris Zacharopoulos (HARICA).


— Motion Begins —


This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted TLS Server Certificates” (“Baseline Requirements”), based on Version 2.7.1.


MODIFY the Baseline Requirements as specified in the following Redline:


https://github.com/cabforum/servercert/compare/b6a014d4aee244c019ef6ca41667045cdbfefb81..052a3f50923386a1a1f61e3d0da8121140e55537 


— Motion Ends —


This ballot proposes a Final Maintenance Guideline. The procedure for approval of this ballot is as follows:


**Discussion (no less than 7 days)**

    Start: 2025-10-23 16:00:00 UTC

    End time: 2025-11-04 16:00:00 UTC


**Vote for approval (7 days)**

    Start: 2025-11-05 17:40:00 UTC

    End: 2025-11-12 17:40:00 UTC