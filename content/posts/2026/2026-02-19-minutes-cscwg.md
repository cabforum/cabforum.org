---
date: 2026-02-19 00:00:00
tags:
  - Minutes
  - Code Signing
title: 2026-02-19 Minutes of the Code Signing Certificate Working Group 
type: post
---

# Code Signing Certificate Working Group Meeting Minutes

**Date:** February 19, 2026

## Note-Well
The Note-Well was read

## Review of Agenda
The agenda was sent out the day before, with the approval of minutes added about an hour before the meeting. No additional topics were raised.

## Approval of Minutes

- **December 12th meeting minutes:** Approved.
- **January 8th meeting minutes:** Approved.
- **February 5th meeting minutes:** Approved.

## Discussion Topics

### SC-Alignment Ballot – Update Regarding Concerns from Microsoft on OCSP

Karina reported that Microsoft has reached internal consensus on the SC-Alignment ballot. Microsoft is generally fine with what is currently in the ballot, with the following positions on three key sections:

1. **Linting:** The linting section contains a "should" statement, which Microsoft is comfortable with.
2. **OCSP changes:** Microsoft does not support introducing new OCSP requirements. Their position is to move closer to removing OCSP rather than asking CAs to implement new OCSP-related changes.
3. **Weak keys:** Microsoft's concern was that the section should have a forward-facing effective date to give CAs time to adjust their systems. Martijn suggested pushing the effective date out approximately six to nine months from when the ballot starts, which Karina agreed was acceptable.

Corey raised a concern about divergence between the TLS BRs and the CSBRs regarding OCSP requirements, noting that CAs issuing both TLS and code signing certificates might need different OCSP configurations if the requirements differ.

Martijn observed that some of the OCSP changes may be clarifications or allowances rather than new requirements. He suggested comparing the existing CSBR language against what is currently in the TLS BRs to identify changes that align the documents without introducing direct new requirements.

Karina noted that some of the language may have originally been in Microsoft's root program policy and then moved to the TLS BRs, and is now being brought to the CSBRs.

### Face-to-Face Agenda Planning

Martijn proposed that the next regular meeting be replaced by the face-to-face meeting on March 12th, with no separate call the week before. No objections were raised.

Dean confirmed that the CSCWG has been allocated a slot starting at 11:00 AM on Thursday, March 12th, for one and a half hours, with an optional additional half hour after lunch if needed.

Karina outlined topics she would like to present and discuss at the F2F:

- **Moving to a single certificate profile** for code signing certificates.
- **Modernizing validation methods**, including reducing reliance on phone-based validation and human reviews.
- **Increasing code signing adoption**, with the goals of:
- Making it easier for individual creators and open-source maintainers to obtain code signing certificates.
- Increasing the amount of actionable identity information in code signing certificates.
- Drawing from innovations in the S/MIME space, such as mobile-based identity documents and eIDs.
- Karina noted that while this may result in more malicious code being signed, the improved identity information would allow faster action and better tracking by researchers.

Martijn noted that these goals overlap significantly with the single-profile discussion and proposed that Karina lead with a presentation of approximately 30–45 minutes, followed by an equal amount of time for group discussion.

It was decided that the CSCWG would use the allocated hour and a half and return the optional post-lunch half hour to the overall F2F schedule.

## Any Other Business

None.

## Adjourn

The meeting was adjourned early, returning time to attendees.

**Next Meeting:** March 12, 2026 – Face-to-Face

## Attendees
Brian Winters (IdenTrust), Corey Bonnell (DigiCert), Dean Coclin (DigiCert), Inaba Atsushi (GlobalSign), Iñigo Barreira (Sectigo), Karina Sirota (Microsoft), Karolina Ruszczyńska (Asseco Data Systems SA (Certum)), Lora Randolph (Microsoft), Marco Schambach (IdenTrust), Martijn Katerbarg (Sectigo), Scott Rea (eMudhra), Thomas Zermeno (SSL.com)