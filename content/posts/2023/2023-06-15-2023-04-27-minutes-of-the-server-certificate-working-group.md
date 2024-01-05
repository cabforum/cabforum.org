---
aliases:
- /2023-06-15-2023-04-27-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2023-06-15 09:49:33
tags:
- Minutes
- Server Certificates
title: 2023-04-27 Minutes of the Server Certificate Working Group
type: post
---

# **Server Certificate Working Group Meeting

April 27, 2023**

**Attendees**:

Aaron Gable – (Let’s Encrypt), Adam Jones – (Microsoft), Adrian Mueller – (SwissSign), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Clint Wilson – (Apple), Daryn Wright – (GoDaddy), Dimitris Zacharopoulos – (HARICA), Doug Beattie – (GlobalSign), Dustin Hollenback – (Microsoft), Ellie Lu – (TrustAsia Technologies, Inc.), Fumi Yoneda – (Japan Registry Services), Hogeun Yoo – (NAVER Cloud), Inigo Barreira – (Sectigo), Jamie Mackey – (US Federal PKI Management Authority), Janet Hines – (VikingCloud), Joanna Fox – (TrustCor Systems), Jos Purvis – (Fastly), Karina Sirota – (Microsoft), Marco Schambach – (IdenTrust), Martijn Katerbarg – (Sectigo), Nargis Mannan – (VikingCloud), Nate Smith – (GoDaddy), Pedro Fuentes – (OISTE Foundation), Peter Miskovic – (Disig), Rebecca Kelley – (Apple), Ryan Dickson – (Google), Sissel Hoel – (Buypass AS), Sooyoung Eo – (NAVER Cloud), Stephen Davidson – (DigiCert), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – (SSL.com), Tim Hollebeek – (DigiCert), Tobias Josefowitz – (Opera Software AS), Tsung-Min Kuo – (Chunghwa Telecom), Wendy Brown – (US Federal PKI Management Authority), Yoshiro Yoneya – (Japan Registry Services).

****

**Server Certificate Working Group Agenda – 27 April 2023**

1. Roll Call and Begin Recording (\* not needed)

1. Read Antitrust Statement (\* not needed)

1. Review Agenda

1. Minutes:

1. 16 March: published

1. 30 March: not ready yet

1. 13 April: circulated within management list on 13/4

1. Certificate consumers moratorium

1. Update, if needed – Ben was not available to deliver update

1. Does this mean that any application for consumers will not be discussed?

1. Once requirements are updated, new applicants will need to re-apply.

1. BRs format as per SC62 ballot

1. Potential issues and solutions

1. Ryan Dickson – increased number of tables in BRs 15 fold to improve readability, but this makes some parts like section 7, in paged pdf difficult to read

1. Solution is make pageless markdown the default view and offer a pageless pdf as option for download

1. Example is page 90

1. Other concern, margins decreased making doc harder to read.

1. Pagebreaks could be added to make it readable, however this will introduce a manual edit requirement to every ballot.

1. On each version creation, the manual portion is redlining, everything else is automated

1. The group agreed that this is a readability issue and will try out several solutions.

1. Issues to discuss:

1. GitHub issues

- 1. 1. Continue with the review of the open issues
- 1. 1. 1. Several have been closed or combined into a ballot Ryan is putting forward.

1. Ballot Status – see list below
1. Any Other Business
1. Next call: 11 May
1. Adjourn

**CURRENT STATUS OF BALLOTS**

1. Passed
1. None
1. Failed
1. None
1. Voting Period
1. None
1. Discussion Period
1. None
1. Review Period
1. None
1. Draft / Under Consideration
1. SC59 – Revival of Debian Weak Keys Ballot – Chris Kemmerer (SSL.com)
1. SCXX – SLO/Response for CRL & OCSP Responses – David Kluge (Google) / Clint Wilson (Apple): on hold
1. SCXX – Make OCSP optional, require CRLs – Chris (Google). On hold?
1. Want to change update from 7 days to 24 hours while dropping OCSP
1. 4.9.7 requires update every 7 days, with next update field to 10 days
1. Even if you don’t issue short lived certs – this will impact you, so ballot went from some to all CAs
1. Discussion ended for time – moved to email thread
1. SCXX – Clean-up ballot

- 1. 1. Fix inconsistencies between BRs and EVGs
        2\. ISO 3166 (allow 3 characters) in EVG 9.2.8
        3\. Typo in section 7.2.2 of the BRs
        4\. Changing titles in BRs and EVGs to reflect that are for TLS cert types