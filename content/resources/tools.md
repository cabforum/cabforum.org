---
aliases:
- /tools/
author: Ben Wilson
date: 2013-10-16 02:23:46
title: Tools
type: page
---

**_Reference to these tools is solely for the information and convenience of the public, and does not constitute the endorsement or recommendation of any company, product, or service by the CA/Browser Forum._**

## Online Tests of SSL/TLS Configurations (submit website to check) {#Tools_to_test_SSL_configurations}

CryptCheck – /

DigiCert –

Hardenize –

Immuniweb –

Mozilla Observatory –

Scanigma –

SSL Checker –

SSL Labs _–_

SSLyze –

TestSSL –

Wormly – [https://www.wormly.com/test_ssl][1]

## Browser / Client Testing

BadSSL –  _(numerous scenarios to use to test how your browser reacts)_

How’s My SSL –

SSL Labs –

## Check for Bad Private Keys

Hanno Boeck‘s Tool –

ROCA Vulnerability –

CVE-2008-0166 – <https://github.com/CVE-2008-0166> provides a generator that runs on modern 64-bit Linux systems and provides complete sets of pregenerated keys for the most common RSA key sizes

Debian Weak Keys – <https://github.com/HARICA-official/debian-weak-keys> provides a generator, for a subset of the parameters listed above, that can take advantage of a computer cluster

## Check Certificates and CSRs (Searches and Decoders)

Crt.sh –   \[sha256 hash of certificate\]

Censys.io –  (billions of certificates)

GoDaddy Certificate and CSR Decoders – / https://ssltools.godaddy.com/views/certDecoder

Mozilla Certsplainer –  (_Shows certificate information and shows path to root certificate (requires certificate PEM file))_

Mozilla EV certificate checker – _(requires certificate PEM and EV OID)_

Sectigo –

## CA Information

### Status of each CA’s three test websites

Crt.sh –

### Status of CAs’ CCADB reporting compliance

Crt.sh –

### CA Misissuance

_Coming soon_

## Revocation Checking

Revocation Checker –

Certificate Tools OCSP Checker –

OCSP Watch –

## Offline, Downloadable Tools

OpenSSL –

How to check OCSP using OpenSSL –

OWASP SSL advanced forensic tool (O-Saft)

ASN.1 Viewers – https://www.itu.int/en/ITU-T/asn1/Pages/Tools.aspx

## Server Configuration and Recommended TLS Deployment Practices {#Recommended_Practices}

Mozilla SSL/TLS Configuration Generator for Servers (Apache, nginx, etc.) –

SSL Labs: SSL and TLS Deployment Best Practices –

OWASP TLS Cheat Sheet – [https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html][2]

[1]: https://www.wormly.com/test_ssl
[2]: https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html