---
aliases:
- /resources/tools/
date: 2013-10-16 02:23:46
title: Tools
---

**_Reference to these tools is solely for the information and convenience of the public, and does not constitute the endorsement or recommendation of any company, product, or service by the CA/Browser Forum._**

## Online Tests of SSL/TLS Configurations (submit website to check) {#Tools_to_test_SSL_configurations}

CryptCheck – https://cryptcheck.fr / https://tls.imirhil.fr/

DigiCert  – https://www.digicert.com/help/

Hardenize – https://www.hardenize.com/

Immuniweb – https://www.immuniweb.com/ssl/

Mozilla Observatory – https://observatory.mozilla.org

Scanigma – https://scanigma.com/

SSL Checker – https://www.sslchecker.com/sslchecker

SSL Labs – https://www.ssllabs.com/ssltest

SSLyze – https://github.com/nabla-c0d3/sslyze

TestSSL – https://testssl.sh/

Wormly – https://www.wormly.com/test_ssl

Actalis - https://extwebra.actalis.com/portal/uapub/tools/sslchecker

## Browser / Client Testing

BadSSL – https://badssl.com/  (numerous scenarios to use to test how your browser reacts)

How’s My SSL – https://www.howsmyssl.com/

SSL Labs  – https://clienttest.ssllabs.com:8443/ssltest/viewMyClient.html

## Check for Bad Private Keys

Hanno Boeck‘s Tool – https://github.com/badkeys/badkeys

ROCA Vulnerability – https://github.com/crocs-muni/roca

CVE-2008-0166 – https://github.com/CVE-2008-0166 provides a generator that runs on modern 64-bit Linux systems and provides complete sets of pregenerated keys for the most common RSA key sizes

Debian Weak Keys – https://github.com/HARICA-official/debian-weak-keys provides a generator, for a subset of the parameters listed above, that can take advantage of a computer cluster

## Check Certificates and CSRs (Searches and Decoders)

Crt.sh - https://crt.sh/?sha256=   [sha256 hash of certificate]

Censys.io – https://search.censys.io/certificates  (billions of certificates)

GoDaddy Certificate and CSR Decoders  – https://ssltools.godaddy.com/views/csrDecoder / https://ssltools.godaddy.com/views/certDecoder

Mozilla Certsplainer – https://tls-observatory.services.mozilla.com/static/certsplainer.html  (Shows certificate information and shows path to root certificate (requires certificate PEM file))

Mozilla EV certificate checker – https://tls-observatory.services.mozilla.com/static/ev-checker.html (requires certificate PEM and EV OID)

Sectigo – https://secure.sectigo.com/utilities/decodeCSR.html

## CA Information

### Status of each CA’s three test websites

Crt.sh – https://crt.sh/test-websites

### Status of CAs’ CCADB reporting compliance

Crt.sh – https://crt.sh/mozilla-disclosures

### CA Misissuance

_Coming soon_

## Revocation Checking

Revocation Checker – https://certificate.revocationcheck.com/

Certificate Tools OCSP Checker – https://certificatetools.com/ocsp-checker

OCSP Watch – https://sslmate.com/labs/ocsp_watch/

## Offline, Downloadable Tools

OpenSSL – https://www.openssl.org/

How to check OCSP using OpenSSL – https://unmitigatedrisk.com/?p=42

OWASP SSL advanced forensic tool (O-Saft) https://owasp.org/www-project-o-saft/

ASN.1 Viewers – https://www.itu.int/en/ITU-T/asn1/Pages/Tools.aspx

## Server Configuration and Recommended TLS Deployment Practices {#Recommended_Practices}

Mozilla SSL/TLS Configuration Generator for Servers (Apache, nginx, etc.) – https://ssl-config.mozilla.org/

SSL Labs: SSL and TLS Deployment Best Practices – https://github.com/ssllabs/research/wiki/SSL-and-TLS-Deployment-Best-Practices

OWASP TLS Cheat Sheet – https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html
