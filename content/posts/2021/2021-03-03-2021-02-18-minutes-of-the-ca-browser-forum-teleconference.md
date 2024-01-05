---
aliases:
- /2021-03-03-2021-02-18-minutes-of-the-ca-browser-forum-teleconference/
author: Jos Purvis
date: 2021-03-03 20:56:35
tags:
- Minutes
- Forum
title: 2021-02-18 Minutes of the CA/Browser Forum Teleconference
type: post
---

## 1. Attendees (in alphabetical order) 

Aaron Gable (Let’s Encrypt), Adrian Mueller (SwissSign), Ali Gholami (Telia), Andrea Holland (SecureTrust), Bruce Morton (Entrust), Chris Kemmerer (SSL.com), Chris McMillan (Visa), Clint Wilson (Apple), Corey Bonnell (DigiCert), Corey Rasmussen (OATI), Curt Spann (Apple), Daniela Hood (GoDaddy), Dean Coclin (Digicert), Dimitris Zacharopoulos (HARICA), Doug Beattie (GlobalSign), Dustin Hollenback (Microsoft), Enrico Entschew (D-TRUST), Inaba Atsushi (GlobalSign), Janet Hines (SecureTrust), Jeff Ward (CPA Canada/WebTrust), Johnny Reading (GoDaddy), Jos Purvis (Cisco Systems), Karina Sirota (Microsoft), Mads Henriksveen (Buypass AS), Mike Reilly (Microsoft), Neil Dunbar (TrustCor Systems), Niko Carpenter (SecureTrust), Patrick Nohe (GlobalSign), Peter Miskovic (Disig), Rebecca Kelley (Apple), Ryan Sleevi (Google), Sebastian Schulz (GlobalSign), Shelley Brewer (Digicert), Stephen Davidson (Digicert), Tadahiko Ito (SECOM Trust Systems), Thomas Zermeno (SSL.com), Tim Callan (Sectigo), Tim Hollebeek (Digicert), Tobias Josefowitz (Opera Software AS), Wayne Thayer (Mozilla), Wendy Brown (US Federal PKI Management Authority)

## 2. Anti-Trust statement read 

## 3.  Forum Infrastructure – Ben Wilson gave the update 

- a.  Looking at how do a redesign of the website
- i.  Make things easier for people to find
- ii.  Make things categorized by working groups and have the documents page be the key landing page.

## 4.  Code Signing Working group update -Bruce Morton gave the update 

- a.  Designated people to take minutes for 3 months ahead
- b.  Finished approving ballot CSWG-07 and now on IPR agreement review through March 5th.
- c.  Considering using the Pandoc versions of the document for the new version of the document.
- i.   Change format to RFC 3637 format before doing Pandoc version
- d. Discussed OCSP time-signing certificates
- i. Are these CA or subscriber certs?
- ii.  Is OCSP required for time stamping certificates? and other discussions on validity period and key protection.
- e.  Still working on ballot for subscriber key protection to make sure that all subscribers keys are protected in an HSM. The base is FIPS-140 level 2 and what other equivalents there are. Protection level would ideally be the same on-prem or in the cloud. How do we audit that it has the same protection level?
- f.   Working on ballot for high risk CS requests and how we should be weeding out bad actors and etc.
- g.   Moving to minimum 3072-bit RSA key in June 1 but don’t have a list of subscriber tokens that would meet our requirements. Need to get this list to move forward.
- h.   Next meeting will be on Feb 25.

## 5.   SMIME Working Group- Stephen Davidson 

- a.   New members: Apple as a certificate consumer and Camerfirma as a certificate issuer. Total count of membership is 42.
- b.   Engaged in discussion for leaf certificate profile and fulfilling the basic confirmations for certificates and advancing drafting relevant BR sections
- c.   Group will have a greater discussion on frameworks in the f2f meeting, primarily on fields that are discouraged but permitted for S/MIME.
- d.   Group will be reaching to infrastructure group to move to GitHub.

## 6.   F2F 52 

- a.   Only ~50 sign-ups, less than before
- b.   James Burton, who is not a member of the CA/B Forum but was previously an interested party, wants to attend the guest speaker portions. No general objections.
- c.   Mr. Dustin Moody from NIST speaking about Crypto in a post-quantum world.
- d.   Dr. Natalia Stakhanova is a professor at a university in Canada, speaking about the story of your cryptographic keys, the source attribution of your keys.
- e.   Agenda is online with open slots available with flexible times if needed.

## 7.   Pending Application update 

- a.   AT&T membership- they are reviewing and will get back to Dean

## 8.   Any other business- none. 

## 9.   Meeting Adjourned