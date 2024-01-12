---
aliases:
- /2018/05/22/ballot-224-whois-and-rdap/
author: Jos Purvis
date: 2018-05-22 21:07:20
tags:
- Ballot
- Server Certificates
title: 'Ballot 224: WHOIS and RDAP'
type: post
---

The voting period for Ballot 224 has ended and the ballot has passed. Here are the results.

## Voting by CAs – 22 votes total including abstentions

**22 Yes votes:** Actalis, Amazon, Buypass, Camerfirma, Chunghwa Telecom, Cisco, D-TRUST, DigiCert, Disig, Entrust Datacard, GDCA, GlobalSign, HARICA, Izenpe, Kamu Sertifikasyon Merkezi, OATI, SHECA, SSC, TWCA, TrustCor, Trustwave, TurkTrust

**0 No votes:**

**0 Abstain:**

**100% of voting CAs voted in favor**

## Voting by browsers – 5 votes total including abstentions

**5 Yes votes:** Apple, Comodo Group Inc., Google, Microsoft, Mozilla

**0 No votes:**

**0 Abstain:**

**100% of voting browsers voted in favor**

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 9, so quorum was 10 votes – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met.

## The ballot passes.

**Purpose of Ballot:** The Registry Data Access Protocol (RDAP) is the successor to WHOIS, and this ballot adds explicit support for RDAP to the BRs by adding a definition of “WHOIS”. The new definition permits the use of the registry or registrar’s web interface, and requires WHOIS information to be retrieved directly from the registrar or registry of the domain name.

The following motion has been proposed by Wayne Thayer of Mozilla and endorsed by Tim Hollebeek of DigiCert and Adriano Santoni of Actalis.

## - MOTION BEGINS –

This ballot modifies the “Baseline Requirements for the Issuance and Management of Publicly-Trusted Certificates” as follows, based upon Version 1.5.7:

In section 1.6.1, add the following definition:

**WHOIS:** information retrieved directly from the Domain Name Registrar or registry operator via the protocol defined in RFC 3912, the Registry Data Access Protocol defined in RFC 7482, or an HTTPS website.  

In section 1.6.3, add the following references:

RFC3912, Request for Comments: 3912, WHOIS Protocol Specification, Daigle, September 2004.

RFC7482, Request for Comments: 7482, Registration Data Access Protocol (RDAP) Query Format, Newton, et al, March 2015.

**- MOTION ENDS -**

A comparison of the changes can be found at [https://github.com/cabforum/documents/compare/Ballot220…wthayer:Ballot224](https://github.com/cabforum/documents/compare/Ballot220...wthayer:Ballot224)

The procedure for approval of this ballot is as follows:

_**Discussion (7+ days)**_

**Start Time:** 2018-05-03 19:00 UTC

**End Time:** after 2018-05-15 19:00 UTC

_**Vote for approval (7 days)**_

**Start Time:** 2018-05-15 19:00 UTC

**End Time:** 2018-05-22 19:00 UTC