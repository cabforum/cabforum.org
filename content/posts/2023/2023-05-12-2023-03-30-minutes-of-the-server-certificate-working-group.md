---
aliases:
- /2023-05-12-2023-03-30-minutes-of-the-server-certificate-working-group/
author: Iñigo Barreira
date: 2023-05-12 09:25:16
tags:
- Minutes
- Server Certificates
title: 2023-03-30 Minutes of the Server Certificate Working Group
type: post
---

# **Server Certificate Working Group Meeting

March 30, 2023**

**Attendance: **Aaron Poulsen – (Amazon), Adam Jones – (Microsoft), Ben Wilson – (Mozilla), Bruce Morton – (Entrust), Chad Ehlers – (IdenTrust), Chris Clements – (Google), Chris Kemmerer – ([SSL.com][1]), Clint Wilson – (Apple), Corey Rasmussen – (OATI), Daryn Wright – (GoDaddy), Dimitris Zacharopoulos – (HARICA), Ellie Lu – (TrustAsia Technologies, Inc.), Fumi Yoneda – (Japan Registry Services), Inaba Atsushi – (GlobalSign), Inigo Barreira – (Sectigo), Janet Hines – (VikingCloud), Joanna Fox – (TrustCor Systems), Johnny Reading – (GoDaddy), Jos Purvis – (Fastly), Jozef Nigut – (Disig), Kiran Tummala – (Microsoft), Lynn Jeun – (Visa), Mads Henriksveen – (Buypass AS), Marcelo Silva – (Visa), Martijn Katerbarg – (Sectigo), Michelle Coon – (OATI), Nargis Mannan – (VikingCloud), Pedro Fuentes – (OISTE Foundation), Rebecca Kelley – (Apple), Rollin Yu – (TrustAsia Technologies, Inc.), Stephen Davidson – (DigiCert), Steven Deitte – (GoDaddy), Tadahiko Ito – (SECOM Trust Systems), Thomas Zermeno – ([SSL.com][1]), Tobias Josefowitz – (Opera Software AS), Wayne Thayer – (Fastly)

Inigo confirmed attendance

Inigo confirmed the note-well had been read.

F2F minutes for the Server Certificate Working Group were approved. The March 16 minutes will be reassigned.

Inigo confirmed no update on the CommScope membership application.

Inigo shared an overview of open GitHub Issues. There are 76 open and 88 closed, some have not been touched in 4 years.
There are two open issues related to updating the name of the BRs to specify their relevance to TLS certificates. It was agreed this change should be made and will be included in a future ballot.
Another open issue ([https://github.com/cabforum/servercert/issues/370][2]) requests changing “annual” CP/CPS updates to instead reference 365 days. Chris commented that their root program had received feedback on their related use of 365 days and will be updating the language to account for leap years. Since audits are also required annually, the scope of discussion includes anywhere we talk about something occurring annually and the document should be consistent in its language. Ben shared that one motivation is to align the CCADB with the BRs, so that the CCADB can flag when things are out of date and programmatically help CAs to keep things updated. To ensure the math the CCADB is doing is consistent with requirements, it would help to have more specific language in the BRs. Dimitris brought up that we’re trying to align on having at least 2 major updates per year, so the frequency of CP/CPS updates may decrease in the future compared to historical frequency. Wayne brought up that whether the 365 day vs 398 day “grace period” makes sense is dependent on what’s being updated. An audit makes sense to have the extra time because it’s once a year, involving an external party, whereas a CP/CPS update requirement makes less sense to have extra time since it happens multiple times per year and is under the control of the CA. Ben also brought up that CAs have argued “annually” means each calendar year and Wayne highlighted that “12 months” has similar issues of January 1 on year 1 vs January 31 on year 2. Discussion will continue on how to formulate language that accounts for leap years and provides the needed level of granularity.
Inigo highlighted an issue ([https://github.com/cabforum/servercert/issues/417][3]) which requests we clarify audit requirements for “Parked” CA Keys. Ben clarified that some CAs may generate large numbers of keys, not knowing specifically which ones will be used for CAs. Some audit statements or key generation ceremony reports address parked keys, showing many parked keys so there should be discussion by CAs describing what their practices are so they can be accommodated and it can be assured they’re adequately protected. It may not be a very good practice to bundle a bunch of keys and then later on decide what’s used with a CA or not. Ben clarified that all parked keys should be disclosed in audit reports, which aligns with the expectation of cradle-to-grave audit coverage of keys. Inigo requested that Ben put together more specific language regarding what is expected and desired, and Ben agreed. Bruce brought up a desire to have a discussion around the models for how and when pre-generated keys can be used. It’s not clear what’s being added with this change.

Inigo brought up the future of the EV Guidelines, and requested confirmation of whether there is rough consensus to convert the EVGs to RFC3647 format. Dimitris highlighted that the EVGs are very validation focused, so section 3 would be quite large and others may be very small. An alternative approach would be to incorporate the EVGs into the BRs as an appendix. This approach would require changes to the CSBRs to ensure they’re incorporated correctly. Bruce raised the question of whether we should be incorporating the EVGs into other documents, instead of having EV stand alone; if we only incorporate the EVGs into other documents, then we’ll have no EV standard, but rather TLS EV and S/MIME EV and Code Signing EV, etc. No clear consensus was reached, as time ran out, but discussion will continue.

[SSL.com][4] confirmed that the “Weak Keys” ballot will continue with Thomas Zermeno driving that ballot.

The meeting was adjourned.

[1]: http://ssl.com/
[2]: https://github.com/cabforum/servercert/issues/370
[3]: https://github.com/cabforum/servercert/issues/417
[4]: http://ssl.com/