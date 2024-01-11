---
aliases:
- /2021/02/09/ballot-sc40-security-requirements-for-air-gapped-ca-systems/
author: Ben Wilson
date: 2021-02-09 03:49:00
tags:
- Ballot
- Network Security
- Server Certificates
title: Ballot SC40 – Security Requirements for Air-Gapped CA Systems
type: post
---

This ballot was withdrawn and/or failed to go to a vote.

This is a continuation of discussion on the air-gapped CA ballot. (As noted below, this formally continues the discussion for this ballot, as of 2021-02-08 17:00 UTC. This discussion period will continue until initiation of the Voting Period (TBD) unless extended or as otherwise determined, pursuant to the CA/Browser Forum Bylaws.

I renumbered the sections - 5.1 for logical security and 5.2 for physical security. I have not attempted yet to address the comments between Aaron and Ryan re: accessing the air-gapped CA for checking configuration. Maybe that section needs to remain “as is” or with clarification that a desktop review of CA configuration would be satisfactory if the air-gapped CA has not been physically touched.

I have also modified the definition of “Air-Gapped CA System” for discussion purposes as:
A system that is (a) kept offline or otherwise air-gapped, (b) physically and logically separated from all other CA systems, and (c) is used by a CA or Delegated Third Party to store and manage CA private keys and to sign CA certificates, CRLs, or OCSP responses. “Kept offline or otherwise air-gapped” means that the CA hardware is powered off, and if powered on, is not connected to any other system at any time. Export of data (e.g. CA public keys, signed CA certificates, CRLs, or OCSP responses) from an Air-Gapped CA System would only occur briefly and temporarily with the use of a non-persistent unidirectional mechanism, such as an external drive or a unidirectional diode or gateway.

## Ballot SC 40v2: Security Requirements for Air-Gapped CA Systems

Purpose of the Ballot:

This ballot increases the security of Air-Gapped/Offline CA systems (“Air-Gapped CA Systems”) by clarifying the controls that CAs must implement to protect them.

Air-Gapped CA systems are maintained in physically isolated environments, and while they can share certain exterior physical controls with online systems, they are not connected to online systems or the Internet. Thus, they have different operational requirements and controls due to their separate risk profile. While the scope of the current Network and Certificate System Security Requirements includes Air-Gapped CA systems, the document focuses on online systems and contains a number of requirements that are not practical to implement in an offline environment and could increase the risk to offline systems.

As an example, access to offline systems frequently elevates the risk to the environment. A quarterly vulnerability scan in the offline environment is not practical, because there is an increased risk involved with attaching a scanning device to an Air-Gapped CA system. As another example, because such systems are not connected, the provisions of subsection 1.g (ports and protocols) are not applicable.

This ballot develops a working definition for an “Air-Gapped CA System” to allow for a clear delineation between those system components that fall under this category of Air-Gapped/Offline requirements and those under other requirements. In doing so, the ballot creates two sets of requirements tailored to their respective operating environments and characteristics.

Not only does this ballot introduce a new section 5, it also adds additional physical security requirements for air-gapped CAs by requiring video monitoring, intrusion detection, and other intrusion prevention controls to protect Air-Gapped CA Systems against unauthorized physical access attempts.

These proposed subsections in a new section 5 come from the current NCSSRs as follows:

| Description                                        | Offline Criteria # | General Criteria # |
| -------------------------------------------------- | ------------------ | ------------------ |
| **5.1 Logical Security of Air-Gapped CA Systems**  |                    |                    |
| Configuration review                               | 5.1.1              | 1h                 |
| Appointing individuals to trusted roles            | 5.1.2              | 2a                 |
| Grant access to Air-Gapped CAs                     | 5.1.3              | 1i                 |
| Document responsibilities of Trusted roles         | 5.1.4              | 2b                 |
| Segregation of duties                              | 5.1.5              | 2d                 |
| Require least privileged access for Trusted Roles  | 5.1.6              | 2e                 |
| All access tracked to individual account           | 5.1.7              | 2f                 |
| Password requirements                              | 5.1.8              | 2gi                |
| Review logical access                              | 5.1.9              | 2j                 |
| Implement multi-factor access                      | 5.1.10             | 2m                 |
| Monitor Air-Gapped CA systems                      | 5.1.11             | 3b                 |
| Review logging integrity                           | 5.1.12             | 3e                 |
| Monitor archive and retention of logs              | 5.1.13             | 3f                 |
| **5.2 Physical Security of Air-Gapped CA Systems** |                    |                    |
| Grant physical access                              | 5.2.1              | 1i                 |
| Multi-person physical access                       | 5.2.2              | 1j                 |
| Review physical access                             | 5.2.3              | 2j                 |
| Video monitoring                                   | 5.2.4              | 3a                 |
| Physical access monitoring                         | 5.2.5              | 3a                 |
| Review accounts with physical access               | 5.2.6              | 2j                 |
| Monitor retention of physical access of records    | 5.2.7              | 3f                 |
| Review integrity of physical access logs           | 5.2.8              | 3e                 |

This motion is made by Ben Wilson of Mozilla and endorsed by David Kluge of Google Trust Services and Neil Dunbar of TrustCor.

## Motion begins

That the CA/Browser Forum Server Certificate Working Group adopt the following requirements as amendments to the Network and Certificate System Security Requirements.

Replace 1.c. with “Maintain Root CA Systems in a High Security Zone and as Air-Gapped CA Systems, in accordance with Section 5;”

Add definition of “Air-Gapped CA System” as “A system that is (a) kept offline or otherwise air-gapped, (b) physically and logically separated from all other CA systems, and (c) is used by a CA or Delegated Third Party to store and manage CA private keys and to sign CA certificates, CRLs, or OCSP responses. ‘Kept offline or otherwise air-gapped’ means that the CA hardware is powered off, and if powered on, is not connected to any other system at any time. Export of data (e.g. CA public keys, signed CA certificates, CRLs, or OCSP responses) from an Air-Gapped CA System would only occur briefly and temporarily with the use of a non-persistent unidirectional mechanism, such as an external drive or unidirectional diode or gateway.”

Revise the definition of Security Support System to read:

A system used to provide physical and logical security support functions, which MAY include authentication, network boundary control, audit logging, audit log reduction and analysis, vulnerability scanning, and intrusion detection (physical intrusion detection, Host-based intrusion detection, Network-based intrusion detection).

Add a new Section 5 –

**5. GENERAL PROTECTIONS FOR AIR-GAPPED CA SYSTEMS**

This Section 5 separates requirements for Air-Gapped CA Systems into two categories–logical security and physical security.

**5.1 Logical Security of Air-Gapped CA Systems**

Certification Authorities and Delegated Third Parties SHALL implement the following controls to ensure the logical security of Air-Gapped CA Systems:

1. Review configurations of Air-Gapped CA Systems at least on an annual basis;

1. Follow a documented procedure for appointing individuals to those Trusted Roles that are authorized to operate Air-Gapped CA Systems;

1. Grant logical access to Air-Gapped CA Systems only to persons acting in Trusted Roles and implement controls so that all logical access to Air-Gapped CA Systems can be traced back to an accountable individual;

1. Document the responsibilities assigned to Trusted Roles based on the security principle of multi-person control and the security-related concerns of the functions to be performed;

1. Ensure that an individual in a Trusted Role acts only within the scope of such role when performing administrative tasks assigned to that role;

1. Require employees and contractors to observe the principle of “least privilege” when accessing, or when configuring access privileges on, Air-Gapped CA Systems;

1. Require that all access to systems and offline key material can be traced back to an individual in a Trusted Role (through a combination of recordkeeping, use of logical and physical credentials, authentication factors, video recording, etc.);

1. If an authentication control used by a Trusted Role is a username and password, then, where technically feasible require that passwords have at least twelve (12) characters;

1. Review logical access control lists at least annually and deactivate any accounts that are no longer necessary for operations;

1. Enforce Multi-Factor Authentication OR multi-party authentication for administrator access to Air-Gapped CA Systems;

1. Identify those Air-Gapped CA Systems capable of monitoring and logging system activity and enable those systems to continuously monitor and log system activity. Back up logs to an external system each time the system is used or on a quarterly basis, whichever is less frequent;

1. On a quarterly basis or each time the Air-Gapped CA System is used, whichever is less frequent, check the integrity of the logical access logging processes and ensure that logging and log-integrity functions are effective;

1. On a quarterly basis or each time the Air-Gapped CA System is used, whichever is less frequent, monitor the archival and retention of logical access logs to ensure that logs are retained for the appropriate amount of time in accordance with the disclosed business practices and applicable legislation.

**5.2 Physical Security of Air-Gapped CA Systems**

Certification Authorities and Delegated Third Parties SHALL implement the following controls to ensure the physical security of Air-Gapped CA Systems:

1. Grant physical access to Air-Gapped CA Systems only to persons acting in Trusted Roles and implement controls so that all physical access to Air-Gapped CA Systems can be traced back to an accountable individual;

1. Ensure that only personnel assigned to Trusted Roles have physical access to Air-Gapped CA Systems and multi-person access controls are enforced at all times;

1. Implement a process that removes physical access of an individual to all Air-Gapped CA Systems within twenty-four (24) hours upon termination of the individual’s employment or contracting relationship with the CA or Delegated Third Party;

1. Implement video monitoring, intrusion detection, and intrusion prevention controls to protect Air-Gapped CA Systems against unauthorized physical access attempts;

1. Implement a Security Support System that monitors, detects, and alerts personnel to any physical access to Air-Gapped CA Systems;

1. Implement a process that prevents physical access of an individual to an Air-Gapped CA within twenty-four (24) hours of removal from the relevant authorized Trusted Role, and review lists of holders of physical keys and combinations to doors and safes as well as logical accounts tied to physical access controls at least every three (3) months, and;

1. On a quarterly basis or each time the Air-Gapped CA System is used, whichever is less frequent, monitor the archival and retention of the physical access logs to ensure that logs are retained for the appropriate amount of time in accordance with the disclosed business practices and applicable legislation.

1. On a quarterly basis or each time the Air-Gapped CA System is used, whichever is less frequent, check the integrity of the physical access logging processes and ensure that logging and log-integrity functions are effective.

## Motion ends

Discussion Period –

This ballot proposes a Final Maintenance Guideline.

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2021-02-08 17:00 UTC

End Time: TBD (not before 2021-02-09 17:00 UTC)

Vote for approval (7 days)

Start Time: TBD

End Time: TBD