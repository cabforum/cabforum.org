---
aliases:
- /2020-07-23-ballot-sc32-ncssrs-zones/
author: Ben Wilson
date: 2020-07-23 03:39:00
tags:
- Network Security
- Server Certificates
title: Ballot SC32 – NCSSRs Zones
type: post
---

This ballot failed pursuant to the Bylaws.

This email begins the discussion period for Ballot SC32.

**Purpose of Ballot:** To remove ambiguity and delineate requirements for physical security and logical security.

The Network and Certificate System Security Requirements (NCSSRs) were drafted with the concept of physical and logical “Zones” (Secure Zones, High Security Zones, and everything else outside those zones). However, the approach did not clearly separate the physical security aspects from the logical security aspects. “Zone” was defined as a “subset of Certificate Systems created by the logical or physical partitioning of systems from other Certificate Systems,” and “Secure Zone” was defined as an “area (physical or logical) protected by physical and logical controls that appropriately protect the confidentiality, integrity, and availability of Certificate Systems.” “High Security Zone” was defined as a physical area— “A physical location where a CA’s or Delegated Third Party’s Private Key or cryptographic hardware is located”.

It has been difficult for auditors and CAs to delineate when NCSSR controls are appropriate from a logical perspective versus a physical perspective for various aspects of the CA’s operation, and the NCSSRs could benefit from greater clarity.

This ballot proposes to remove the term “zone” from the NCSSRs, and definitions of “Zone,” “Secure Zone,” and “High Security Zone” will be deleted. Two approaches will address physical security: (1) section 5.1 of the Baseline Requirements will be enhanced, and (2) the NCSSRs will contain cross-references to section 5.1 of the Baseline Requirements. For logical security, the term “Secure Zone” will be replaced with “CA’s network” or “Certificate Systems”.

**Baseline Requirements**

This ballot amends the Baseline Requirements by adding a definition for “CA Equipment” to section 1.6.1 as follows: “Hardware involved in the issuance of certificates or the signing of certificate status information, e.g. signing servers and appliances that issue certificates, sign CRLs, or generate OCSP responses.”

The following language will be added in section 5.1 of the Baseline Requirements:

**BR § 5.1.1. Site location and construction**

CAs SHALL ensure that CA Equipment is located in an environment that provides physical security through the use of lockable enclosures (e.g. locked rooms, cages, safes, or cabinets).

**BR § 5.1.2. Physical access**

CAs SHALL ensure that CA Equipment is protected by physical locks equipped with access control devices (e.g. keys, tokens, biometric readers, and/or access control lists) that control physical access to CA Equipment.

Sections 5.1.3 through 5.1.8 of the BRs have been populated with language requiring other physical environment protections, e.g. “CAs SHALL ensure that CA Equipment is protected from damage due to water exposure”, etc. (See redline/diff for exact text.)

**Rationale:** These proposed additions simply restate the basic physical environmental requirements that CAs must meet.

**Section 1.c.**

Section 1.c of the NCSSRs will be amended to require CAs to maintain Root CA Systems in accordance with BR section 5.1, and in an offline state or air-gapped from all other networks. (See redline/diff for exact text.)

**Rationale:** CAs currently keep these offline systems in a physically secure environment. Also, the proposed additional language to the Baseline Requirements will ensure there is less wiggle room concerning the actual physical protections for critical CA Equipment.

**Section 1.d.**

Section 1.d. will be amended to require CAs to maintain and protect Certificate Systems, Issuing Systems, Certificate Management Systems, Front End / Internal Support Systems, and Security Support Systems in accordance with section 5.1 of the Baseline Requirements. (See redline/diff for exact text.)

**Rationale:** This modification replaces the term “Secure Zone.” The definition of “Secure Zone” as a physical OR logical area has been a major cause of confusion. An early draft of the NCSSRs defined “Secure Zone” as “The area where the CA’s and Delegated Trusted Agent’s equipment used in providing Certificate Services are located. The Secure Zone is often inside a data center or network operations center.” In this section, “Secure Zone” is replaced with a reference to the requirements of BR section 5.1 to clarify the original intent of this section to address physical security, that systems be located in at least a physically secure area (while section 1.e., below, was meant to address the logical security of CA systems). Note that another aspect of this revision is that it adds Certificate Systems and Front End / Internal Support Systems to the group of systems that need to be physically protected.

**Section 1.e.**

Section 1.e. will require CAs to implement and configure Security Support Systems that secure and protect communications and Certificate Systems from non-trusted networks. (See redline/diff for exact text.)

**Rationale:** A “Security Support System” is a “system used to provide security support functions, which MAY include authentication, network boundary control, audit logging, audit log reduction and analysis, vulnerability scanning, and intrusion detection (Host-based intrusion detection, Network-based intrusion detection).” This provision requires the use of a system to provide logical security to protect communications and Certificate Systems from external threats. The ballot also deletes the parenthetical “including those with organizational business units that do not provide PKI-related services” because it is unnecessary as it is already included as part of public networks and communications with public networks.

**Section 2.c.**

Amendments to section 2.c. will require that only persons in Trusted Roles have logical or physical access to Certificate Systems, Issuing Systems, Certificate Management Systems, Front End / Internal Support Systems, and Security Support Systems. (See redline/diff for exact text.)

**Rationale:** Section 2.c. currently says that access to Secure Zones and High Security Zones can only be granted to persons in Trusted Roles. It does not currently specify the types of access that persons in Trusted Roles have or to which systems.

**Section 2.g.**

This section will likely be modified further in a subsequent ballot, but meanwhile it will retain the current password rules (based on whether or not the user is inside the CA’s network). If authentication occurs within the CA’s network, then the password must be at least 12 characters, but if authentication occurs from outside the CA’s network, then Multi-Factor Authentication must be used, and any password used must be at least 8 characters and not one of the previous 4 passwords. The CA must also implement the account lockout provisions of section 2.k. The phrase in ii. “cross a zone boundary into a Secure Zone or High Security Zone” is replaced with the phrase “For authentications from outside the boundary of the CA’s network.” (See motion language and redline/diff for exact text.)

**Rationale:** The terms “Secure Zone” and “High Security Zone” are being removed from the NCSSRs. The current version of 2.g.ii. has two sentences that can be combined into one, which will eliminate ambiguity caused by having two separate sentences with slightly different phrasing. These two sentences read, “For authentications which cross a zone boundary into a Secure Zone or High Security Zone, require Multi-Factor Authentication. For accounts accessible from outside a Secure Zone or High Security Zone require passwords ….” A reader might find these two sentences contradictory. Rephrasing the sentence as a series of requirements eliminates the potential confusion — “For authentications from outside the boundary of the CA’s network: require Multi-Factor Authentication, require passwords that have at least eight (8) characters and are not one of the user’s previous four (4) passwords, and implement account lockout for failed access attempts in accordance with subsection k.” (Note – this doesn’t require that passwords be used — the opening part of g. makes it conditional on using a password in the first place, “If an authentication control used by a Trusted Role is a username and password, then, where technically feasible, implement the following controls:” ….)

**Section 2.n.**

The last part of the requirement replaces the phrase “a Secure Zone or High Security Zone” with “the CA’s or Delegated Third Party’s network” so that the section reads, “Enforce Multi-Factor Authentication for all Trusted Role accounts on Certificate Systems (including those approving the issuance of a Certificate, which equally applies to Delegated Third Parties) that are accessible from outside the CA’s or Delegated Third Party’s network.” (See redline/diff for exact text.)

**Rationale:** This modification makes no substantive changes apart from the replacement of terms as described above. Future efforts by the Network Security Subcommittee can address whether and how section 2.n. can be integrated into section 2.g.

**NCSSR DEFINITIONS**

**Definition of “Critical Security Event”** – The phrase “a Zone’s” is removed so that the definition reads, “Detection of an event, a set of circumstances, or anomalous activity that could lead to a circumvention of security controls or a compromise of a Certificate System’s integrity, ….” (See redline/diff for exact text.)

**Rationale:** Removal of the phrase “a Zone’s” doesn’t substantially change an interpretation of the defined term.

**Definition of “Trusted Role”** – The phrase “a Secure Zone or High Security Zone” is being replaced so that the definition will read, “An employee or contractor of a CA or Delegated Third Party who has authorized access to or control over a Root CA System, Certificate System, Issuing System, Certificate Management System, Front End / Internal Support System, or Security Support System.”

**Rationale:** This modification is consistent with the elimination of “Zone” from the NCSSRs.

**Deleting “High Security Zone,” “Security Zone,” and “Zone”** – as described above.

**The following motion has been proposed by Ben Wilson of Mozilla and endorsed by Trev Ponds-White of Amazon and Neil Dunbar of TrustCor Systems.**

** — MOTION BEGINS —**

This ballot modifies the “Network and Certificate System Security Requirements” based on Version 1.4 and sections 1.6.1 and 5.1.1 through 5.1.8 of the Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates, based on Version 1.7.0., as follows:

MODIFY the Baseline Requirements as defined in the following redline:

https://github.com/cabforum/documents/compare/095fc4f7992dbd186503a4b0ec4e643ae4ea1624…BenWilson-Mozilla:2a255d8d159e8e4b59952ed9de272f2a72349036

MODIFY the Network and Certificate System Security Requirements as defined in the following redline:

https://github.com/cabforum/documents/compare/095fc4f7992dbd186503a4b0ec4e643ae4ea1624…BenWilson-Mozilla:2a255d8d159e8e4b59952ed9de272f2a72349036

The Chair or Vice-Chair is permitted to update the Relevant Dates and version numbers of the Baseline Requirements and the Network and Certificate System Security Requirements to reflect these changes.

**— MOTION ENDS —**

This ballot proposes two Final Maintenance Guidelines.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2020-06-26 19:00:00 UTC

End Time: 2020-07-03 19:00:00 UTC

Vote for approval (7 days)

Start Time: TBD

End Time: TBD