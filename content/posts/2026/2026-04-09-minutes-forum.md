---
date: 2026-04-09 00:00:00
tags:
  - Minutes
  - Forum
title: 2026-04-09 Minutes of the Forum
type: post
---

**Minutes:**

### Attendees

Tadahiko ITO-SECOM, Wayne Thayer, Luis Cervantes (SSL.com), Luis Osses (Amazon Trust Services), Mahua Chaudhuri (Microsoft), Sandy Balzer - SwissSign, Michael Slaughter (Amazon Trust Services), Sean Huang (TWCA), Janet Hines - SSL.com, Rebecca Kelley - SSL, Karolina Ruszczynska - Certum, Greg Tomko (GlobalSign), Jozef Nigut - Disig, Sándor SZŐKE, dr. (Microsec), Enrico Entschew/ D-Trust, Ben Wilson - Mozilla, Adam Folsom, Dustin Hollenback, Kateryna Aleksieieva (Certum by Asseco), Tobias Josefowitz (Opera), Inigo Barreira, Jos Purvis (Fastly), Dean, Trevoli Ponds-White [Amazon Trust Services], wendy brown - FPKIMA, Stephen Davidson (DigiCert), Peter Miskovic - Disig, Scott Rea - eMudhra, Roman Fischer - SwissSign, Paul van Brouwershaven (Digitorus), [WISeKey] Jaime Hablutzel, Rich Smith (DigiCert), Aaron Gable (ISRG), Steven Deitte - GoDaddy, Lucy Buecking - IdenTrust, Nome Huang-TrustAsia, Chad Dandar, Atsushi INABA - GlobalSign, Hogeun Yoo - NAVER Cloud Trust Services, Clint Wilson, Corey Bonnell [DigiCert], ONO Fumiaki - SECOM Trust Systems, Nate Smith - GoDaddy, Jeff Ward (Aprio), Georgy Sebastian(AWS), Lilia Dubko, Cynetheia Brown(FPKIMA), Rollin Yu - TrustAsia, Alvin.Wang(SHECA), Antti Backman - Telia Company, Tim Callan (Sectigo), Chunghwa Telecom / Tsung-Min Kuo
 
### CA/Browser Forum Plenary

Dean opened the plenary session and confirmed recording and roll call. He noted that the February 26 minutes remained unavailable and that the March 26 minutes had been approved. Face‑to‑face minutes had been distributed and would be reviewed later.
Wayne briefly reiterated the SC‑95 IPR issue with the IPR review period and reminded ballot authors to keep ballot titles concise.
  
### Validation Subcommittee

Corey Bonnell reported for the Validation Subcommittee, noting that the group reviewed its project board, identified drivers for several items, closed some existing items, and plans to continue refining the language for three draft ballots.
 
### Code Signing WG

Corey summarized that Adriano had drafted a ballot addressing the absence of a Reserved Policy OID requirement in the Code Signing Baseline Requirements and was seeking a second endorser.
 
### S/MIME WG

Stephen Davidson reported for the S/MIME Working Group. He announced the publication of S/MIME BR version 1.3, noted that ballot SMC‑16 was in IPR review, and described ongoing discussions regarding minimum RSA key sizes and EKU flexibility.
 
### NetSec WG

Clint Wilson and Corey Bonnell summarized the NetSec Working Group discussion on a proposal to allow cloud‑based audit log archiving, noting extensive discussion on terminology and requirements.
It was also noted that additional topics, including the use of firewalls in relation to log storage systems, were raised for further discussion on the mailing list or GitHub.
 
### Forum Infrastructure

Jose Purvis reported for Forum Infrastructure. He noted an updated meeting link, a decision to use a single dev branch for website development, and exploration of improved redlining tools.
 
### Any Other Business

#### Membership Agreement Execution (Ballot F‑37 Follow‑up)

Ben Wilson provided an update on implementation of Ballot F‑37. He stated that a membership agreement would be distributed shortly, either as a PDF or with a digital signature option. Members are required to have the agreement signed by authorized personnel and submit it via the upload mechanism provided.
Ben stated that the deadline for submission is 1 June. Members who do not comply by that date will be suspended from voting and participation. If the agreement is not completed by 1 September, membership will be terminated. Use of internal electronic signing tools (e.g., DocuSign) was confirmed as acceptable.
Dean emphasized the importance of timely completion and stated he would remind members in upcoming meetings.
 
#### Face to Face Meetings and Presentations

Trevoli Ponds-White raised a question regarding meeting structure and the balance between face-to-face meetings and presentations. She referenced prior discussions about increasing the number of educational or technical presentations and asked whether virtual sessions would be scheduled between face‑to‑face meetings.
Dean stated that presentations could be added to plenary meetings and indicated support for organizing additional presentation‑focused sessions. Trevoli Ponds-White suggested holding a virtual session during the summer period, potentially in early June.
Tim Callan noted that CA presentations had always been permitted and that the primary challenge was motivating speakers rather than procedural barriers. He suggested that designating specific meetings in advance for presentations could improve attendance and engagement.
Dean agreed to issue a call for presentation proposals and explore scheduling a special presentation session, potentially around the 4 June meeting.
  
#### ECC and Quantum Computing Risk Awareness

Clint Wilson raised an informational topic concerning recent research suggesting that the effort required to break ECC using quantum computing may be lower than previously estimated. He stated that this was not a proposal for immediate action, but rather an early awareness item indicating potential future risk.
Trevoli Ponds‑White asked whether the concern applied more to ECDSA than to RSA‑2048. Clint confirmed that the concern primarily affects ECC, due to algorithm characteristics.
Tadahiko Ito noted that while improvements in quantum research have occurred, practical constraints such as qubit stability and computation depth remain significant.
Tim Callan stated that if ECC deprecation were ever required, long transition timelines would be necessary to avoid disruption. Trevoli Ponds‑White raised concerns about operational cost impacts of moving exclusively to large RSA keys.
Jose Purvis suggested that the Forum should consider algorithm agility more broadly rather than focusing on one specific algorithm transition.
Aaron Gable noted that significant progress is being made on Merkle Tree certificates, including active implementation and design work by multiple parties. He stated that Let’s Encrypt’s implementation would be open source and that root program discussions were progressing.
Participants noted references to potential future timelines and alternative approaches, including work on Merkle Tree certificates, and emphasized that the discussion was intended as early awareness rather than a proposal for immediate action.
The topic was acknowledged as important, with agreement that each working group should continue monitoring developments and discuss potential impacts within their respective scopes. No ballot or immediate action was proposed.
Participants noted that the discussion was prompted by recent external research and publications and was raised for early awareness rather than as a proposal for immediate action.
Links were provided in chat and it was mentioned everyone in this meeting should read these:

- Google's blog post: https://blog.google/innovation-and-ai/technology/safety-security/cryptography-migration-timeline/
- Cloudflare's blog post: https://blog.cloudflare.com/post-quantum-roadmap/
- Filippo's blog post: https://words.filippo.io/crqc-timeline/
 
With no further business raised, Dean thanked participants and adjourned the meeting.