---
date: 2026-09-24 00:00:00
tags:
  - Minutes
  - S/MIME
title: 2026-09-24 Minutes of the S/MIME Certificate Working Group
type: post
---

## Minutes of SMCWG
 Stephen Davidson noted that since the last F2F the SMCWG has completed four ballots:
 
1. Ability to leverage mobile drivers' licenses to register users
2. Omnibus catch-up ballot to synch with TLS BR
3.  Increase minimum RSA key size
4. Realignment of multipurpose use cases
 
Stephen noted that the WG have been going through the list of issues, such as clarifying the requirements for pseudonyms, and ruling out the idea of a special extension for Enterprise RAs.
 
Stephen noted that the Apple root program recent announcement implies that the WG should define a composite certificate in the S/MIME BR.  The main point of discussion would be which algorithm combinations are allowed.  
 
Stephen emphasized his thanks to the group because he and Martijn would be stepping down soon in accordance with the Bylaws.  He said he'd been involved since the Charter and bootstrap of the WG in 2020, starting from green field of “unregulated” cert type and leading to the ongoing modernization of practices and profiles. It was announced that Rebecca Kelley of DigiCert will be the new Chair of the SMCWG.
 
The WG discussed if it has capacity to deal with larger issues that face S/MIME, such as discovery and automation.  Server Cert has benefited from active browsers pushing an agenda.  Can we do the same kind of thing with S/MIME?  PQC creates the same need for agility, and there is the neverending issue of certificate expiration.  Is there a venue to improve S/MIME?
 
Scott Rae (eMudhra) suggested a new category of membership might be added for CLM providers.  Stephen said that there were interested parties in that category but that the WG should return to the subject of the Charter, which still includes language from 2020 with startup text that hasn't been adjusted for the by-laws update of 2023.
 
The WG discussed other ecosystem ideas like Key Transparency, and that it would be good for the SMCWG to coordinate with other industry bodies like MAAWG.
 
Stephen walked through a ballot (to be SMC020) proposed by Pedro Fuentes of OISTE that create consistency between the S/MIME BR and the TLS BR following the passage of SC099. This removes the requirement to record the version of the BR that is in place when validation takes place and clarifies the requirements for logging of DCV activities.  
 
Stephen noted Apple's recent announcement:
    
    S/MIME has a lower volume of certificate issuance and is less sensitive to latency than TLS, so the increased certificate size due to signing with PQC algorithms is less disruptive to the existing X.509 ecosystem. Apple will allow signing traditional X.509 certificates with composite algorithms made up of a combination of ML-DSA and ECDSA or RSA. The PQC part (ML-DSA) provides quantum secure security, and the classical part (ECDSA or RSA) keeps the system verifiable using an algorithm with decades of deployment experience and hardened implementations.
 
Stephen walked through early draft language that would introduce composite to the S/MIME BR.  He noted that the parameter settings would probably need trimmed to match those accepted in S/MIME v5 and in the existing S/MIME BR.  He invited feedback to the proposal.  The WG discussed if additional changes were required for blocklists of compromised composite keys.
 
Martijn Katerbarg presented his review of the recent changes relating to CAA and MPIC in the TLS BR, and whether they necessitated any corresponding changes in the S/MIME BR. He said there were no obvious conflicts but identified several items of potential improvement, and said that he would prepare a draft ballot for discussion.
 
Sean Turner provided a presentation on the status of standards development at the IETF for PQ as it impacts S/MIME.  The materials have been provided separately on the SMCWC public mailing list.

Attendees:
 
Mats Rosberg, Keyfactor, Dustin Hollenback, Apple, Scott Rea, eMudhra, Tsung-Min Kuo, Chunghwa Telecom, Quen-Zong Wu, Vice President, Chunghwa Telecom, Adrian M. Mueller, D-Trust GmbH, Adrian M. Mueller, D-Trust GmbH, Lucy Buecking, IdenTrust, Iñigo Barreira, Sectigo, ADRIANO SANTONI, ACTALIS, Ben Wilson, Mozilla, Eric Kramer, Sectigo, WEN-CHUN YANG, CHUNGHWA TELECOMM, Lilia Dubko, CPA Canada - WebTrust, Adrian M. Mueller, D-Trust GmbH, Sven Rajala, Keyfactor, Ben Wilson, Mozilla, Sándor Szőke, Microsec Ltd., ADRIANO SANTONI, ACTALIS, Daryn Wright, Apple, Trevoli Ponds-White, Amazon Trust Services, Jeff Ward, Aprio, Stephen Davidson, DigiCert, Adrian M. Mueller, D-Trust GmbH, Dr HuckHai LIM, Baker Tilly, Roman Fischer, SwissSign AG, Hazhar Ismail, MSC Trustgate.com Sdn Bhd, Miguel Sanchez, Google Trust Services, Arman Asemani, Apple, Andy Warner, Google Trust Services, ChyaHung Tsai, TWCA, Atsushi INABA, GlobalSign, Stefan Selbitschka, rundQuadrat OG, Aaron Poulsen, SSL.com, Tim Crawford, WebTrust, Mike Agrenius Kushner, Keyfactor, Kateryna Aleksieieva, Certum (Asseco Data Systems S.A.), Zurina Zolkaffly, MSC Trustgate.com Sdn Bhd, Moritz Schaal, D-Trust, Rich Smith, DigiCert, Dean Coclin, DigiCert, Thomas Zermeno, Tom@SSL.com, Karolina Ruszczyńska, Certum (Asseco Data Systems S.A.), Stefan Kirch, Telekom Security, Nate Smith, Go Daddy, Jozef Nigut, Disig, Tadahiko Ito, SECOM, Nate Smith, Go Daddy, Christophe Bonjean, globalsign, Martijn Katerbarg, Sectigo, Dimitris Zacharopoulos, HARICA, Andrea Holland, IdenTrust, Paul Brown, GlobalSign, Nome Huang, TrustAsia, Sean Huang, TWCA, Sean Turner, Sean Turner (guest speaker), Daryn Wright, Apple, Elena Sitnikova, Sectigo, Zurina Zolkaffly, MSC Trustgate.com Sdn Bhd, Luis Osses, Amazon Trust Services, Zeng Huan Song, ChungHwa Telecom Co., Ltd.
 