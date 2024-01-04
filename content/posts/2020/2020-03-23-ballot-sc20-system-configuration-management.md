---
aliases:
- /2020-03-23-ballot-sc20-system-configuration-management/
author: Ben Wilson
date: 2020-03-23 03:36:00
tags:
- Network Security
- Server Certificates
title: 'Ballot SC20: System Configuration Management'
type: post
---

This ballot failed.

**Purpose of Ballot:**

Section 1(h) of the Network and Certification Systems Security Requirements provides that CAs shall:

Review configurations of Issuing Systems, Certificate Management Systems, Security Support Systems, and Front-End / Internal-Support Systems on at least a weekly basis to determine whether any changes violated the CA’s security policies;

In relation to this requirement the WebTrust/PKI Assurance Task Force found and recommended that:

Section 1h requires a weekly review of system configurations (…). In our experience this almost always includes a component of automated monitoring along with human review.

Systems are too complex to perform a meaningful human review of configuration changes. Software monitoring tools play a large part in achieving this requirement, but there is a required human element to inspect the monitoring software as well as consider changes in physical security. Consider better detailing the goals of this criterion.

This ballot seeks to implement the above recommendation and to provide CAs with greater certainty on what automated system configuration monitoring satisfies the goal of Section 1(h). It has been prepared based on the work of the CA/B Forum’s Network Security Subcommittee. Summary of Changes:

The term “review” has been removed. Instead, CAs are required to systematically enforce and monitor system configurations. The new provision focuses on the outcome of the CA’s controls, namely that configurations are aligned with the CA’s security policies and that the CA detects whenever active (and security relevant) configurations deviate from their desired state. It is for the CA to decide based on the complexity of its infrastructure whether it enforces and monitors configurations by means of automated controls or human reviews.

Instead of defining a review frequency, the seven-day term now defines the time window within which a deviation has to be detected. In this regard the new provision is more rigorous than the old one. CAs should rely on automated controls, which are more likely to detect unauthorized configuration changes at an early stage. Seven days is sufficient time for CAs to take action.

The current Section 1(h) leaves open how the CA should respond to a deviation. The new provision adds additional rigor because it demands a formal response. Invoking the CA’s Incident Response procedure appears to be the most suitable course of action because in addition to providing remediation timelines such procedures typically end in the creation of a root cause analysis which will help the CA determine why its other controls were not effective at ensuring that the concerned configuration was in the desired state.

In its current wording, Section 1(h) leaves open who should decide on the scope of the configuration reviews. The new wording places this role on the CA as the enforcement and monitoring actions relate to the definitions the CA made on the basis of its security policies and standards. This responsibility assignment is important to enable the use of automated controls, because the CA has to define the data points to be monitored before its controls are audited at the end of its 12-month audit period.

The following motion has been proposed by Neil Dunbar of Google Trust Services and endorsed by Tobias Josefowitz of OPERA and Dustin Hollenback of Microsoft.

**— MOTION BEGINS —**

This ballot modifies the “Network and Certificate System Security Requirements” based on Version 1.2. Section 1(h) is replaced with the following:

(Each CA or Delegated Third Party SHALL)

(…)

Configure its CA equipment in accordance with its security policies and standards. Based on a documented assessment, the CA shall identify which configurations of Issuing Systems, Certificate Management Systems, Security Support Systems, and Front-End / Internal-Support Systems are security relevant. Such configurations shall be systematically implemented, policy- and standard violations shall be detected within at most seven (7) days and follow up action instigated in accordance with the CA’s incident response procedures. If the system is operated in an offline and air-gapped state, detection should be conducted at least every thirty (30 days) or when the system is powered-on.

Where applicable, at least the following configurations are considered security relevant:

user databases

any means for administrative access (e.g. SSH, RDP)

channels for configuration management (e.g. Puppet)

network settings

host-local firewall

host-local IDP/IDS settings

package repositories and other sources of system-level updates

operating system logging service or its equivalent

**— MOTION ENDS —**

**\* WARNING** \*: USE AT YOUR OWN RISK. THE REDLINE BELOW IS NOT THE OFFICIAL VERSION OF THE CHANGES (CABF Bylaws, Section 2.4(a)):

A comparison of the changes can be found at: [https://github.com/cabforum/documents/compare/16a5a9b…neildunbar:8ec37e8?diff=split][1]

The procedure for approval of this ballot is as follows:

Discussion (7+ days)

Start Time: 2020-03-09 17:00:00 UTC

End Time: 2020-03-16 17:00:00 UTC

Vote for approval (7 days)

Start Time: 2020-03-16 17:00:00 UTC

End Time: 2020-03-23 17:00:00 UTC

[1]: https://github.com/cabforum/documents/compare/16a5a9b...neildunbar:8ec37e8?diff=split