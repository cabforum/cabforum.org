---
aliases:
- /2023/09/21/2023-09-21-minutes-of-the-code-signing-certificate-working-group/
author: Corey Bonnell
date: 2023-09-21 16:00:55
tags:
- Minutes
- Code Signing
title: 2023-09-21 Minutes of the Code Signing Certificate Working Group
type: post
---

# Attendees

Andrea Holland – VikingCloud, Atsushi INABA – GlobalSign, Brianca Martin – Amazon, Bruce Morton – Entrust, Corey Bonnell DigiCert, Ian McMillan Microsoft, Inigo Barreira, Martijn Katerbarg – Sectigo, Mohit Kumar – GlobalSign, Rollin Yu – TrustAsia, Scott Rea – eMudhra, Tim Crawford

## Minutes

1. Roll Call – Bruce Morton – Entrust, Tim Crawford, Rollin Yu – TrustAsia, Atsushi INABA – GlobalSign, Scott Rea – eMudhra, Mohit Kumar – GlobalSign, Martijn Katerbarg – Sectigo, Inigo Barreira, Ian McMillan Microsoft, Andrea Holland – VikingCloud, Corey Bonnell DigiCert, Corey Bonnell DigiCert, Brianca Martin – Amazon
1. Note well was read
1. Approve prior meeting minutes – Sept 7 – not approved as the minutes were only provided for review on 21 September
1. F2F Agenda, suggested items
1. Private Keys in hardware feedback – There was generally no input as to whether this should be on the agenda. Ian stated it would be good to bring it up, but Bruce was not confident that there would be any feedback from the members, so would push to last on the agenda.
1. Ballot: Remove EV Guideline refences (Dimitris) – Dimitris was not on the call to discuss. The goal will be to remove all EV Guidelines references, make adjustments where new text is not applicable to EV; then step 2 would be to adjust clauses to possibly make issuance of EV certificates easier. Note that it is impossible to issue an EV to an individual. It does not address consumer certificate. The client software does not make a distinction between non-EV and EV for code signing. Do we need all the clauses to authenticate certificate issuance? Should we make any changes, since the functionality of non-EV and EV is the same? For individuals we do require F2F for issuance of a code signing certificate. Do we need both non-EV and EV and if we do, what differences should they have? Also an issue with the due diligence validation where a person can approve vs. a machine. Do we need due diligence specified? Can we create a system for more consistent due diligence review? The goal was to require 2 people to get an EV certificate issued.
1. Ballot: Charter update (Martijn) – Martijn agreed we could discuss at the F2F.
1. Ballot: High Risk (Bruce/Ian) – Agreed to discuss at the F2F. Ian wants to ensure internally that we are not removing high risk as some items are still discussed in section 4.2.1 and 4.2.2. Should we consider changing a high risk certificate application as to when a subscriber which has been subject to a takeover attack requests a certificate?
1. Individual and Organization verification mechanisms as discussed below.
1. Review open Github items.
1. Ballot Status
1. Signing Service – Reviewed on last call. Tim has reviewed since and will endorse. Ian is reviewing, then hopefully will endorse.
1. High Risk – Text has been drafted and Ian is reviewing.
1. Charter Update – Martijn working on change.
1. Time-stamp – Delay until other ballots are done.
1. Other business – An email received from Tim McGrath from Microsoft. Ian knows the people that provided the email and will address. The question was about point-in-time for the address; but this is the type of data based on the CA review. Note there is no unique information included for an individual. An email address would be easy and unique for an individual and maybe we could drop location data. Can an individual specify a specific project for the signing, but the issue would be validating. It would be good if a CA could add information to distinguish an individual, so they would be added to a blocklist if they intentionally sign suspect code. What can we do to help protect relying parties? Perhaps we can brainstorm at the F2F about Individual and OV verification mechanisms. For organization, can we choose an existing model which is already defined in the CAB Forum. Would not like to create another model.
1. Next meeting – F2F Oct 5
1. Adjourn