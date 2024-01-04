---
aliases:
- /2023-07-21-minutes-of-the-f2f-59-meeting-in-redmon-wa-usa-6-8-june-2023-scwg-8-june/
author: Iñigo Barreira
date: 2023-07-21 12:12:17
tags:
- Server Certificates
title: Minutes of the F2F 59 Meeting in Redmond, WA, USA, 6-8 June 2023 – SCWG (8
  June)
type: post
---

# **Meeting of the Server Certificate Working Group**

**Thursday, 8 June 2023 – CA/B Forum Meeting (Day 3)**

Server Certificate Working Group Meeting

Presentation by: Inigo Barreira (Sectigo)

Minutes:  Tim Callan (Sectigo)

Attendance onsite: Ben Wilson (Mozilla), Nitesh Bakliwal (Microsoft), Karina Sirota (Microsoft), Tahmina Ahmad (Microsoft), Hannah Sokol (Microsoft), John Sarapata (Google Trust Services), Paul (Entrust), Bruce Morton (Entrust), Arno Fiedler (ETSI ESI), An Yin (iTrust China), Tadahiko Ito (Secom), Corey Bonell (Digicert), Wayne Thayer (Fastly), Romain Delval (Certigna), Josselin Allemandou (Certigna), Scott Rea (eMudhra), Thomas Zermeno (SSL.com), Leo Grove (SSL.com), Yamian Quintero (Microsoft), Mahua Chaudhuri (Microsoft), Glaucia Young (Microsoft), James Dunkelberger (Microsoft), Ryan Dickson (Google), Chris Clements (Google), Stephen Davidson (Digicert), Christophe Bojean (Globalsign), Eva Van Steenberge (Globalsign), Daryn Wright (Godaddy), Aneta (Microsoft), Sven (Keyfactor), Martijn Katerbarg (Sectigo), Nick France (Sectigo), Tim Callan (Sectigo), Yoshiro Yoneya (JPRS), Dave Chin (Webtrust), Tim Crawford (Webtrust), Don Sheehy (Webtrust), Stefan Kirch (Telekom Security), Andreas Henschel (D-Trust), Adrian Mueller (Swisssign), Adam Jones (Microsoft), Dustin Hollenback (Microsoft), Aaron Poulsen (ATS), Michael Slaugther (ATS), Blake Hess (ATS), Jonathan Kozolchyk (ATS), Trevoli Ponds-White (ATS), Brianca Martin (ATS), Iñigo Barreira (Sectigo)

**Membership**

Discussion of interested parties feedback to CABF. First few minutes not captured.

The suggestion is that we encourage people to use the questions list rather than become members in GitHub. There appears to be a great deal of consensus on this point.

Inigo:

Remember that this is not specific to the Server Cert working group.

Paul:

Maybe we can hand this to the Infrastructure WG. When you create a new issue, you can give instructions and let members contribute or provide them with guidance to how to become members. What it doesn’t do is if you have an existing item and people start commenting on that.

Maybe we have forum or WG-level instruction.

Inigo:

Okay, let’s ask Jos.

If we look at the questions from Q Misell as an interested party,

If you check the organization and the email. It looks fake.

Dimitris:

The company name is listed in Companies House.

Martijn:

The company name and the domain name is an AS#, which is used for internet routing. It’s odd, but that number does belong to them.

Cory:

Q Misell is also writing up a working draft for ACME in the ITF.

Dimitris:

It’s the members that accept or don’t accept an application. If the members review the IPR agreement and there are no concerns, let’s move ahead.

Inigo:

Logius was added yesterday to the S/MIME WG. Can remove from server cert WG.

What we are doing is a good improvement since the last F2F. We have had many ballot discussions, including a big one with SC62 and there is a good discussion with SC63. This is the first time we have a specific slot for this WG since I took over.

** QGIS regulation for EV validation**

Inigo:

Pedro made a proposal to regulate QGIS sources. In the last call Server Cert WG accepted. Tim Hollebeek agreed to help with the ballot.

Tim Hollebeek:

I’m waiting for him to reach out to me. My assistance will mostly be just with CABF procedures etc.

**Presentation from Entrust regarding ACME certificate management**

Paul van Brouwershaven:

We identified challenges to users actually using automation.

I looked at the processes in some well known service providers in the ecosystem. The large majority of these providers allow me to upload a custom certificate.

Cloudflare. I have two options. 1. I enroll or buy my cert through Cloudflare. 2. I can upload my custom certificate and private key. It doesn’t provide any capabilities to revoke the cert or do anything with it.

Fastly. Same capabilities. You can’t use ACME from my CA because ACME is hard coded to their. Manual uploading required.

Azure. AWS. Same thing. I can’t specify any automation if I don’t use their cert.

Google Cloud. Upload my cert or create a Google cert. Same thing. Deletion of the certificate triggers automatic revocation.

DigitalOcean. I have options. I can provide my domain and SAN or bring my own cert. But I still can’t provide my own ACME server or a certificate binding. I can delete the cert but I don’t have the option to revoke it.

I deleted my cert. Did they actually delete my key? I don’t know.

\[Paul puts up a big list of CDNs, CSPs, PaaS, control panels, and appliances/others that he checked.\]

In summary, while most service providers give you the ability to request certificates, most are from Let’s Encrypt or public cloud providers.

It’s not possible to choose your custom ACME server at any of these service providers.

Let’s assume there is a strong security need to move to shorter life certificates. That would require some sort of automation.

Some people like FIs has a manual review process for mission critical infrastructure. If users cannot use their CAs of choice, we have a major ecosystem problem.

The proposal: Update the ACME spec to create a client preference for ACME server. We can use the CAA record as an indicator that I want my certs to be issued from that CA.

We need to talk to cloud providers and make sure they make their ACME certificates configurable.

Clint Wilson:

So the issue you’re describing is there is the potential with adoption of ACME to have consolidation of certificates to a small number of CAs instead of a diversity of CAs. Is that correct as the main high-level problem you’re trying to highlight?

Paul:

Yes, and it restricts freedom for Subscribers.

Clint:

I want to make sure we’re all away that today the reality is more than 95% of connections we see on our platforms go through 9-10 CA providers. This issue is already the reality.

The second thing is a lot of the proposal centers around coordinating and emphasizing a message to MSPs to help them expand the functionality of their certificate management processes. I have a couple thoughts.

1. I dont feel like this presentation has addressed the role that automation to this point has played in consolidation of certificates to a relatively small number of CAs, and the design and functionality of MSPs. It would be hard to prioritize a much more complex system around ACME with so few CAs supporting ACME. This message won’t be effective until we have a large number of CAs supporting ACME and making that available as an equivalent method.

Paul:

If we want to move to automation, ACME appears to be the standard. But a lot of infrastructure points to LE by default. If a large majority of users don’t care about who the CA is, there is a minority that does care. We want to give users the ability to make that choice if they want.

You say there are only 10 CAs. What if this reduces that to five?

If we address how ACME does this, maybe we can establish a set of known CAs that can provide certificates at no cost, for example. We need room for diversity.

John Sarapata:

It seems that a lot of the presentation is based on looking at managed services. Google has one team that does the cloud services and another that does the CA. It’s not necessarily an issue with the ACME protocol than with. I already worry that DNS is an aging system that takes 72 hours to configure. What if there is a breach?

I almost feel like you’re reversing cause and effect. You could look at it that our users have an appetite for automation and they’re choosing the CAs that offer it.

FYI, here is the Google Certificate Manager tutorial for using a public CA that supports ACME: [https://cloud.google.com/certificate-manager/docs/public-ca-tutorial][1]. And here is the tutorial for self-managed certificates: [https://cloud.google.com/certificate-manager/docs/deploy-self-managed][2]. They do require being able to type individual command lines (and schedule a renewal, which probably requires a virtual machine), but not scripting that I see.

Paul:

User interfaces are not managed by the TSPs. Sure, if you’re technical enough, you can do these things. But that’s a high bar.

Inigo: Let’s either defer to this at the end of the day or do it in the next call.

David Kluge:

It seems like you are describing the user experience and a lot of the problems raised refer to the way the UIs present to the user. Not all of that is in control of the CAs. We need to separate these out when we’re working on the problem.

We need to do the analysis right and distinguish between protocols and their use in practice. ACME doesn’t make it difficult for users to revoke their certificates.

It seems you are suggesting that further automation through ACME will futher concentrate CAs. I think ACME makes CAs more interchangeable and provides the technical basis for diversification.

Paul:

If the people who implement the ACME protocol ignore these elements and how it’s implemented, that will have consequences.

Tobias Josefowitz :

ACME isn’t the problem. The problem is with the service providers. Many of these providers have APIs, and at the API level you can interact with them. CAs could develop services to solve these problems.

Paul:

I don’t think it’s reasonable to ask CAs to integrate with a thousand server providers.

Tobias:

The service provider space is also very consolidated, so it should be possible to do something.

Ryan Dickson:

Any opportunity to discuss how to make it easier for users is a good thing. Some of the comparisions made to products and evaluating an ecosystem that is still fairly new is unfair. There are many ways we can improve this system, and I think we can.

The reason we created Moving Forward, Together and put out the recent surveys was to foster exactly this kind of work. Our intent is to work with all of you. Consider us all to be on the same team.

As these discussions will continue in the future, I hope we remember that.

Dimitris Zacharopoulos:

I’m sure Google has received the survey responses from most CAs. Combined with the change from Chrome that all CAs provide at least one domain validation method through ACME, that will be more support for ACME.

Thanks to Paul for speaking about the elephant in the room. These companies facilitate the cases of subscribers who are not technically savvy, and they also have the greatest volume. Getting the message across to these big cloud providers, we can only pray they will listen to that. There is nothing CABF can do to enforce it.

Clint:

Have we brought this to the IETF working group for discussion?

Paul:

I haven’t because before we go down that path, I wanted to discuss it here.

Wayne Thayer:

From the perspective of a cloud provider, what I see happening is, we have customers who prefer a CA. The way they do that is by manually configuring certs. With 90 days it will get exponentially harder to manually configure certs.

We need to start looking in on 90 days and we need to provide a very long runway for those who are changing. The way you will get Fastly to start supporting this new functionality is when customers start screaming at us.

Paul:

Yes, a big customer who is complaining is always helpful.

Daryn Wright:

When we say a 90-day limit, we’re talking about exactly 90 days, right?

Ryan:

The proposal is 90 days. The intent of 90 is 90 days, not 90 and change. Typically you will see a renewal every 60 days or so.

Blake Hess:

Using ACME doesn’t help our customer integrations. We can do all that without ACME. What I took from your presentation is that with ACME it possibly makes it easier for customers to make choices about the CAs that are used. Today the choice of CAs for our customers for the most part would be confusing.

The configuration is mostly for customers that I don’t help them with today. Customers use import for certificates we don’t provide. We don’t see them doing that just to pick another CA provider.

Paul:

We know the majority of certs on a platform are issued to the default mechanism. Let’s not forget there is an ecosystem that have contractual agreements, legal requirements, and other ways way they do things.

Inigo:

We are running out of time on the server certificate working group calls. We can continue discussion of this topic afterwards. And on the next agenda call.

There is a ballot in the voting period that will finish Monday.

In the email thread we will continue discussion for OCSP.

[1]: https://cloud.google.com/certificate-manager/docs/public-ca-tutorial
[2]: https://cloud.google.com/certificate-manager/docs/deploy-self-managed