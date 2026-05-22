---
author: Wayne Thayer
date: 2026-04-09 00:00:00
tags:
  - Minutes
  - Server Certificates
title: 2026-04-09 Minutes of the Server Certificate Working Group
type: post
---

**Minutes:**

*Minutes*

Meeting Logistics

  * Wayne Thayer leading the Meeting as Dimitris is not available.
  * Minute taker: Sandy Balzer
  * Wayne Thayer read the note-well.
  * No changes were requested for the agenda.
  * Minutes approval
  * February 26, 2026 - these Draft minutes have not been distributed yet
  * F2F#67 March 10, 2026 - Draft minutes have not been distributed yet,
    compilation pending. Participants reminded to upload missing notes
    and presentations to Etherpad / provide to chairs.
  * Final minutes do March 26, 2026 (Draft minutes were distributed on
    2026-03-31)
    No objections and minutes approved.

Membership Applications

  * No Membership applications, one was received but it was not complete.

*Ballots*

*In Discussion Period*

SC098 Process RFC 8657 CAA Parameters

The ballot was in discussion and largely considered ready for voting. A
comment was received about disambiguating the validation methods and
concern for potential confusion, and Wayne pointed out that with a
statement that says if a CA performs domain validation using a mechanism
that can be represented by multiple labels, the CA should accept any of
the labels as granting permission to issue.

Dimitris suggested that clarity could be improved by defining the ACME
DNS-01 validation method as a BR validation method and proposed hol=
ding
this ballot until a separate ballot encoding this ACME method in the BRs
is completed.

Aaron Gable stated that the ambiguity is largely theoretical and
unlikely to cause practical issues, noting that a CA would not accept
the DNS-01 label unless it implements the ACME DNS-01 valid=
ation method.
He cautioned that defining DNS-01 as a separate BR validation method
could introduce overlapping validation methods and additional audit and
logging complexity. He suggested adjusting the example language rather
than adding a new BR validation method.

Wayne welcomed feedback and stated his opinion that defining DNS
 as a
BR validation method is not necessary.

Corey Bonnell stated that ACME DNS-01 is a constrained profile of BR
method 7 and expressed concern that ambiguity could lead to compliance
incidents. He supported defining DNS-01 explicitly as a BR method for
clarity.

Michael Slaughter agreed that the issue warranted further consideration=20
and supported handling DNS-01 in a separate discussion to avoid=20
unintended consequences.

Wayne summarized that he would update the example language as suggested,
restart the discussion period, and proceed without further delay.
Feedback was welcomed. Wayne stated his opinion that defining a BR method is not necessary.

  * SC099
    Improve Recording of Validation Method

Aaron Gable reported that SC-99 remained in the discussion period. He
noted significant comments from Ryan Hurst opposing the approach and a
response supporting the ballot. No additional technical objections were
raised during the meeting beyond the comments already noted.

Inigo Barreira raised a concern regarding the proposed July effective
date, referencing informal summer timing considerations. Aaron stated he
was unaware of any formal agreement on summer freezes and preferred not
to restart the ballot based on unwritten conventions.

Trevoli Ponds-White stated that the ballot primarily clarified existing 
expectations and did not require significant code changes. She indicated 
she was open to moving the effective date if strong consensus emerged.

Wayne stated that members who felt strongly about changing the effective=20
date should comment on the mailing list before the discussion period=20
ended. Otherwise, the ballot would proceed.

Aaron noted that the discussion period for SC-99 was expected to
conclude the following day, after which the ballot would be moved to the=20
voting stage unless additional concerns were raised.

About informal or unwritten conventions (e.g. summer timing=20
considerations), participants noted that these practices are not=20
documented and that there is no formal consensus. It was suggested that
such conventions should either be discussed at a future face-to-face
meeting or formalized through a ballot and incorporated into the bylaws.

*Cleared IPR review, new Guidelines*

  * SC095
Clean-up 2025 (cleared IPR Review for the TLS BRs). BRs 2.2.6 were released=

Wayne reported that the original IPR review covered only the TLS=20
Baseline Requirements and did not include the EV Guidelines. The TLS BR=20
portion has cleared IPR review and BR version 2.2.6 has been released.=20
To correct this issue, a new IPR review period has been initiated for=20
the EV Guidelines portion.

*Draft / Under Consideration*

  * SC087
    Registration Number Improvement for EV Certificates (Corey)

On hold pending SC=E2=80=9195 IPR completion.

  * SC0XX
    Cleanup for ADN CNAME (Aaron)

Deferred due to time.

  * SC0XX
    Improve Certificate Problem Reports and Clarify the Meaning of
    Revocation (Martijn)

No Update.

  * SC0XX
    Update Revocation timeline for errors affecting CP/CPS deviations
    but in accordance with the BRs (Dimitris)

No Update.

  * SC0XX
    Modernize EVG Domain Ownership Reuse Requirement to Reference
    Section 3.2.2.7 (Dustin)

Draft in progress; removed from agenda until ready.

*Any other business*

Wayne Thayer asked for any other business and stated that the next=20
Server Certificate Working Group call is scheduled for 23 April.

Wayne adjourned the Server Certificate Working Group meeting and handed=20
the meeting over to Dean to continue with the CA/Browser Forum plenary=20
session.

*Attendees*

Tadahiko ITO-SECOM, Wayne Thayer, Luis Cervantes (SSL.com), Luis Osses=20
(Amazon Trust Services), Mahua Chaudhuri (Microsoft), Sandy Balzer -=20
SwissSign, Michael Slaughter (Amazon Trust Services), Sean Huang (TWCA),=20
Janet Hines - SSL.com, Rebecca Kelley - SSL, Karolina Ruszczynska -=20
Certum, Greg Tomko (GlobalSign), Jozef Nigut - Disig, S=C3=A1ndor SZ=C5=90K=
E, dr.=20
(Microsec), Enrico Entschew/ D-Trust, Ben Wilson - Mozilla, Adam Folsom,=20
Dustin Hollenback, Kateryna Aleksieieva (Certum by Asseco), Tobias=20
Josefowitz (Opera), Inigo Barreira, Jos Purvis (Fastly), Dean, Trevoli=20
Ponds-White [Amazon Trust Services], wendy brown - FPKIMA, Stephen=20
Davidson (DigiCert), Peter Miskovic - Disig, Scott Rea - eMudhra, Roman=20
Fischer - SwissSign, Paul van Brouwershaven (Digitorus), [WISeKey] Jaime=20
Hablutzel, Rich Smith (DigiCert), Aaron Gable (ISRG), Steven Deitte -=20
GoDaddy, Lucy Buecking - IdenTrust, Nome Huang-TrustAsia, Chad Dandar,=20
Atsushi INABA - GlobalSign, Hogeun Yoo - NAVER Cloud Trust Services,=20
Clint Wilson, Corey Bonnell [DigiCert], ONO Fumiaki - SECOM Trust=20
Systems, Nate Smith - GoDaddy, Jeff Ward (Aprio), Georgy Sebastian(AWS),=20
Lilia Dubko, Cynetheia Brown(FPKIMA), Rollin Yu - TrustAsia,=20
Alvin.Wang(SHECA), Antti Backman - Telia Company, Tim Callan (Sectigo),=20
Chunghwa Telecom / Tsung-Min Kuo.
