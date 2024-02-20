Attendees
Aaron Gable - (Let's Encrypt), Aaron Poulsen - (Amazon), Abhishek Bhat - (eMudhra), Adam Jones - (Microsoft), Andrea Holland - (VikingCloud), Antti Backman - (Telia Company), Ben Wilson - (Mozilla), Bindi Davé - (DigiCert), Brianca Martin - (Amazon), Bruce Morton - (Entrust), Chris Clements - (Google), Clint Wilson - (Apple), Corey Bonnell - (DigiCert), Corey Rasmussen - (OATI), David Kluge - (Google), Dean Coclin - (DigiCert), Dimitris Zacharopoulos - (HARICA), Doug Beattie - (GlobalSign), Dustin Hollenback - (Microsoft), Enrico Entschew - (D-TRUST), Fumi Yoneda - (Japan Registry Services), Inaba Atsushi - (GlobalSign), Inigo Barreira - (Sectigo), Jos Purvis - (Fastly), Karina Sirota - (Microsoft), Keshava Nagaraju - (eMudhra), Mads Henriksveen - (Buypass AS), Marco Schambach - (IdenTrust), Martijn Katerbarg - (Sectigo), Michelle Coon - (OATI), Miguel Sanchez - (Google), Nargis Mannan - (VikingCloud), Nate Smith - (GoDaddy), Naveen Kumar - (eMudhra), Nicol So - (CommScope), Nome Huang - (TrustAsia), Paul van Brouwershaven - (Entrust), Peter Miskovic - (Disig), Rebecca Kelley - (Apple), RIch Smith - (DigiCert), Rollin Yu - (TrustAsia), Roman Fischer - (SwissSign), Scott Rea - (eMudhra), Sissel Hoel - (Buypass AS), Stephen Davidson - (DigiCert), Tadahiko Ito - (SECOM Trust Systems), Thomas Zermeno - (SSL.com), Tim Hollebeek - (DigiCert), Tobias Josefowitz - (Opera Software AS), Trevoli Ponds-White - (Amazon), Wayne Thayer - (Fastly), Wendy Brown - (US Federal PKI Management Authority), Yashwanth TM - (eMudhra), Yoshihiko Matsuo - (Japan Registry Services)

1. Roll Call
The Roll Call was taken.
2. Read Antitrust Statement
The statement was read concerning the antitrust policy, code of conduct, and intellectual property rights agreement.
3. Review Agenda
The meeting was chaired by Inigo Barreira.  Minutes were prepared by Stephen Davidson.
4. Approval of minutes from last teleconference
The minutes for the teleconference of January 4 are still pending, and those of January 18 were approved.  
5. Discussion
The application of Sun ShengNan to join as an interested party was set aside as the individual has not responded to emails.  The application of Common Crypto (Troy Anderson) to join as interested party was accepted.

Inigo discussed the possible Ballot SC65 (EVG in RFC 3647), which he’d like to move ahead before it starts creating editing obstacles for other pull requests.  He requested endorsers.

Corey Bonnell described the conversation regarding delegated third parties in the context of Domain Validation, and how it’s becoming clear that it might affect the broader use of DTPs.  He suggests that the conversation should probably be centered in the Server Cert WG rather than have diffused responsibility across the other WGs.  Aaron Gable noted that comments on his ballot text for DNS reflected similar concerns. Corey asked if the scope of the DTP discussion was to be broadened or constrained to DNS. Tim Hollebeek proposed to get the DNS topic settled now and the WG should address other areas later as the DTP language does seem over-broad.  Mads Henrickson agreed.

Wayne Thayer described the RFC 9500 for test keys.  He asked if BR 6.1.1.3 implied that CAs should be blocking the use of the keys in that RFC. He suggested that section could be expanded to include a mechanism to the CA being “made aware” of compromised keys. He also referred to the failed previous ballot of weak private keys. Tim agreed these are related, but noted that it was not realistic to expect every CA to be aware of every compromised key in the world, so the range of responsibility needs to be well-defined.  Aaron suggested that keys reported to the CA’s problem reporting mechanism was the proper channel for “made aware”.  Martijn Katerbarg said it would be interesting to do research comparing the reported compromise lists from different CAs to see how universal they are.  Tim noted that CAs should probably add the RFC keys to avoid customer inconvenience.  Wayne will propose a ballot.  Noting it was an out of scope of this discussion, Trevoli Ponds-White said that in many cases CAs should be allowed to generate keys as they were better equipped to do it securely.

Inigo deferred the issue of GitHub issue numbering until a future call, noting that there are ~100 open issues, some dating back years.

Inigo invited the WG to raise topics for the New Delhi F2F meeting.

Aaron noted that SC70 would be moving into discussion period soon. Dimitris said an effective date might be desirable on that ballot.

CURRENT STATUS OF BALLOTS
• Voting Period
o SC68 - Allow VATEL and VATXI for organizationIdentifier
• Discussion Period
o SC69 - Clarify router and firewall logging requirements
• Draft / Under Consideration
o SC70 – Clarify the use of DTPs for domain control validation
o SC65 – EVGs in RFC 3647 format
o SCXX – Profiles cleanup ballot
o SC67 – Subscriber agreement and terms of use consolidation
o SCXX – Measure all hours and days to the second
o Pending from Pedro Fuentes: Use of QGIS for organization validation
6. Any Other Business

Paul van Brouwershaven raised the subject of automation of EV where an API key is linked to a Cert Approver.  He asked does it matter who creates the API key (CA vs the Cert Approver vs a Cloud Service Provider).  Tim said the concept was not covered in the TLS BR.  Dimitris Zacharopoulos said the subject had been discussed in the past and he believed it was acceptable.  Martijn said the use of an API key was similar to the login by an authorized rep.  Inigo said the WG would return to the subject in a future call.
