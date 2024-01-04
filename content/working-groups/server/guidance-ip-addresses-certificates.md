---
aliases:
- /guidance-ip-addresses-certificates/
author: Ben Wilson
date: 2016-05-26 07:27:09
title: Guidance on IP Addresses in Certificates
type: page
---

# Introduction and problem description

The CA/B Forum [Baseline Requirements][1] are aligned with RFC 5280. According to the Baseline Requirements, if an X.509 v.3 certificate contains an IP Address, it MUST be included in the Subject Alternative Name (SAN) extension as an iPAddress name form (not dNSName). Multiple IP addresses can be included in the same certificate.

Browser certificate validation implementations should be able to follow these guidelines. However, there are some legacy implementations (mainly on Windows Operating Systems prior to version 10) that cannot properly handle the iPAddress name form in certificate SAN extensions.

# Recommended Solution

These legacy implementations are capable of properly validating an IP address if it is included in the deprecated (discouraged but not prohibited) commonName field of the X.509 v.3 certificate Subject. This means that certificates that contain a SAN extension with an iPAddress that is ALSO included in the commonName, should be verified correctly by latest and legacy validation implementations.

Until legacy implementations fix their code to properly handle the iPAddress values from the SAN extension, this “solution” is consistent with the Baseline Requirements and RFC5280. The only limitation for this recommendation is that it is not possible to include multiple IP addresses in the common name of a single certificate.

CAs are required to use this practice which is consistent with the current standards and stop including IP addresses in the dNSName form of SAN extensions.

[1]: /baseline-requirements/