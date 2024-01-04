---
aliases:
- /2017-09-19-ballot-190-revised-validation-requirements/
author: Ben Wilson
date: 2017-09-19 17:18:21
tags:
- Server Certificates
title: Ballot 190 – Revised Validation Requirements
type: post
---

**Results on Ballot 190 – Revised Validation Requirements**

The voting period for Ballot 190 has ended, and the ballot has passed. Here are the results.

**Voting by CAs – 19 votes total, including abstentions**

19 Yes votes: Actalis, Buypass, CFCA, Chunghwa Telecom, DigiCert, Disig, Entrust, E-TUGRA, GDCA, GlobalSign, GoDaddy, HARICA, Izenpe, SSL.com, SwissSign, Symantec, TWCA, TrustCor, Trustwave

0 No votes

0 Abstain

100% of voting CAs voted in favor

**Voting by browsers – 2 votes total, including abstentions**

2 Yes votes: Apple, Mozilla

0 No votes

0 Abstain

100% of voting browsers voted in favor

Under Bylaw 2.2(g), a ballot result will be considered valid only when more than half of the number of currently active Members has participated. Votes to abstain are counted in determining a quorum. Half of currently active Members as of the start of voting is 9, so quorum was 10 votes. 21 votes (including abstentions) were cast – quorum was met.

Bylaw 2.2(f) requires a yes vote by two-thirds of CA votes and 50%-plus-one browser votes for approval. Votes to abstain are not counted for this purpose. This requirement was met for both CAs and browsers.

At least one CA Member and one browser Member must vote in favor of a ballot for the ballot to be adopted. This requirement was met

**Ballot 190 passes.**

**Amendment to Ballot 190**

The proposer and endorsers are making two minor amendments to Ballot 190 as follows.

1. In BR 3.2.2.4.6 “Agreed-Upon Change to Website”, the current draft Version 8 still has the typo “Request Value” that crept in sometime around BR 1.4. It should be “Random Value”. **Accordingly, BR 3.2.2.4.6 in Ballot 190 is changed to read as follows:**

**3.2.2.4.6 Agreed-Upon Change to Website**

Confirming the Applicant’s control over the FQDN by confirming one of the following under the “/.well-known/pki-validation” directory, or another path registered with IANA for the purpose of Domain Validation, on the Authorization Domain Name that is accessible by the CA via HTTP/HTTPS over an Authorized Port:

1. The presence of Required Website Content contained in the content of a file. The entire Required Website Content MUST NOT appear in the request used to retrieve the file or web page, or

1. The presence of the Request Token or *Request* **Random** Value contained in the content of a file where the Request Token or Random Value MUST NOT appear in the request. \***

1. In Version 8 of BR 3.2.2.4.7, “DNS Change”, the current language says:

“Confirming the Applicant’s control over the FQDN by confirming the presence of a Random Value or Request Token for either in a DNS CNAME, TXT or CAA record for either 1) an Authorization Domain Name; or 2) an Authorization Domain Name that is prefixed with a label that begins with an underscore character.”

Note that “for either” appears twice in the sentence, and we think the first occurrence should be deleted. **Accordingly, BR 3.2.2.4.7 in Ballot 190 is changed to read as follows:**

**3.2.2.4.7 DNS Change**

Confirming the Applicant’s control over the FQDN by confirming the presence of a Random Value or Request Token _for either_ in a DNS CNAME, TXT or CAA record for either 1) an Authorization Domain Name; or 2) an Authorization Domain Name that is prefixed with a label that begins with an underscore character.

Voting on Ballot 190 will begin tomorrow, and the text has been changed as shown above.

**Ballot 190 –** **Revised Validation Requirements (showing changes from Ballot 181 – current BR requirements) – Version 8 (Sept. 5, 2017)**

**Purpose of Ballot:** The purpose of this ballot is to 1) re-introduce the validation methods removed in ballots 180-181 because of IPR concerns, 2) clarify some aspects of the revised validation methods, and 3) clarify the general rule in BR 4.2.1 on the reuse of information and validations when changes are made to validation methods.

The following motion has been proposed by Kirk Hall of Entrust Datacard and endorsed by the following CA/B Forum member representatives: Doug Beattie of GlobalSign and Mads of Henriksveen of Buypass to introduce new Final Maintenance Guidelines for the “Baseline Requirements Certificate Policy for the Issuance and Management of Publicly-Trusted Certificates” (Baseline Requirements).

**–Motion Begins—**

1. In BR Sec. 1.6.1, add new definitions and revise existing definitions as shown:

**Authorized Ports:** One of the following ports: 80 (http), 443 (https), 25 (smtp), 22 (ssh).

**Test Certificate**: A Certificate with a maximum validity period of 30 days and which: (i) includes a critical extension with the specified Test Certificate CABF OID (2.23.140.2.1), or (ii) is issued under a CA where there are no Certificate paths/chains to a root Certificate subject to these Requirements.

**Wildcard Domain Name:** A Domain Name consisting of a single asterisk character followed by a single full stop character (“\*.”) followed by a Fully-Qualified Domain Name.

2) BR 3.2.2.4 is amended to read as follows:

**3.2.2.4 Validation of Domain Authorization or Control**

This section defines the permitted processes and procedures for validating the Applicant’s ownership or control of the domain.

The CA SHALL confirm that prior to issuance, either the CA or a Delegated Third Party has validated each Fully-Qualified Domain Name (FQDN) listed in the Certificate using at least one of the methods listed below.

Completed validations of Applicant authority may be used for the issuance of multiple Certificates over time. In all cases, the validation must have been initiated within the time period specified in the relevant requirement (such as Section 4.2.1 of this document) prior to Certificate issuance. For purposes of domain validation, the term Applicant includes the Applicant’s Parent Company, Subsidiary Company, or Affiliate.

CAs SHALL maintain a record of which domain validation method, including relevant BR version number, they used to validate every domain.

Note: FQDNs may be listed in Subscriber Certificates using dNSNames in the subjectAltName extension or in Subordinate CA Certificates via dNSNames in permittedSubtrees within the Name Constraints extension.

**3.2.2.4.1 Validating the Applicant as a Domain Contact**

Confirming the Applicant’s control over the FQDN by validating the Applicant is the Domain Contact directly with the Domain Name Registrar. This method may only be used if:

1. The CA authenticates the Applicant’s identity under BR Section 3.2.2.1 and the authority of the Applicant Representative under BR Section 3.2.5, OR
1. The CA authenticates the Applicant’s identity under EV Guidelines Section 11.2 and the agency of the Certificate Approver under EV Guidelines Section 11.8; OR
1. The CA is also the Domain Name Registrar, or an Affiliate of the Registrar, of the Base Domain Name.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

**3.2.2.4.2 Email, Fax, SMS, or Postal Mail to Domain Contact**

Confirming the Applicant’s control over the FQDN by sending a Random Value via email, fax, SMS, or postal mail and then receiving a confirming response utilizing the Random Value. The Random Value MUST be sent to an email address, fax/SMS number, or postal mail address identified as a Domain Contact.

Each email, fax, SMS, or postal mail MAY confirm control of multiple Authorization Domain Names.

The CA or Delegated Third Party MAY send the email, fax, SMS, or postal mail identified under this section to more than one recipient provided that every recipient is identified by the Domain Name Registrar as representing the Domain Name Registrant for every FQDN being verified using the email, fax, SMS, or postal mail.

The Random Value SHALL be unique in each email, fax, SMS, or postal mail.

The CA or Delegated Third Party MAY resend the email, fax, SMS, or postal mail in its entirety, including re-use of the Random Value, provided that the communication’s entire contents and recipient(s) remain unchanged.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values, in which case the CA MUST follow its CPS.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

****

**3.2.2.4.3 Phone Contact with Domain Contact**

Confirming the Applicant’s control over the FQDN by calling the Domain Name Registrant’s phone number and obtaining a response confirming the Applicant’s request for validation of the FQDN. The CA or Delegated Third Party MUST place the call to a phone number identified by the Domain Name Registrar as the Domain Contact.

Each phone call SHALL be made to a single number and MAY confirm control of multiple FQDNs, provided that the phone number is identified by the Domain Registrar as a valid contact method for every Base Domain Name being verified using the phone call.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

****

**3.2.2.4.4 Constructed Email to Domain Contact**

Confirm the Applicant’s control over the FQDN by (i) sending an email to one or more addresses created by using ‘admin’, ‘administrator’, ‘webmaster’, ‘hostmaster’, or ‘postmaster’ as the local part, followed by the at-sign (“@”), followed by an Authorization Domain Name, (ii) including a Random Value in the email, and (iii) receiving a confirming response utilizing the Random Value.

Each email MAY confirm control of multiple FQDNs, provided the Authorization Domain Name used in the email is an Authorization Domain Name for each FQDN being confirmed

The Random Value SHALL be unique in each email.

The email MAY be re-sent in its entirety, including the re-use of the Random Value, provided that its entire contents and recipient SHALL remain unchanged.

The Random Value SHALL remain valid for use in a confirming response for no more than 30 days from its creation. The CPS MAY specify a shorter validity period for Random Values.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

**3.2.2.4.5 Domain Authorization Document**

Confirming the Applicant’s control over the FQDN by relying upon the attestation to the authority of the Applicant to request a Certificate contained in a Domain Authorization Document. The Domain Authorization Document MUST substantiate that the communication came from the Domain Contact. The CA MUST verify that the Domain Authorization Document was either (i) dated on or after the date of the domain validation request or (ii) that the WHOIS data has not materially changed since a previously provided Domain Authorization Document for the Domain Name Space.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

**3.2.2.4.6 Agreed-Upon Change to Website**

Confirming the Applicant’s control over the FQDN by confirming one of the following under the “/.well-known/pki-validation” directory, or another path registered with IANA for the purpose of Domain Validation, on the Authorization Domain Name that is accessible by the CA via HTTP/HTTPS over an Authorized Port:

1. The presence of Required Website Content contained in the content of a file. The entire Required Website Content MUST NOT appear in the request used to retrieve the file or web page, or

1. The presence of the Request Token or Request Value contained in the content of a file where the Request Token or Random Value MUST NOT appear in the request.

If a Random Value is used, the CA or Delegated Third Party SHALL provide a Random Value unique to the Certificate request and SHALL not use the Random Value after the longer of (i) 30 days or (ii) if the Applicant submitted the Certificate request, the timeframe permitted for reuse of validated information relevant to the Certificate (such as in Section 4.2.1 of these Guidelines or Section 11.14.3 of the EV Guidelines).

Note: Examples of Request Tokens include, but are not limited to: (i) a hash of the public key; (ii) a hash of the Subject Public Key Info \[X.509\]; and (iii) a hash of a PKCS#10 CSR. A Request Token may also be concatenated with a timestamp or other data. If a CA wanted to always use a hash of a PKCS#10 CSR as a Request Token and did not want to incorporate a timestamp and did want to allow Certificate key re-use then the applicant might use the challenge password in the creation of a CSR with OpenSSL to ensure uniqueness even if the subject and key are identical between subsequent requests. This simplistic shell command produces a Request Token which has a timestamp and a hash of a CSR. E.g. echo date -u +%Y%m%d%H%M sha256sum Note: Note: Once the FQDN has been validated using this method, the CA MAY NOT also issue Certificates for other FQDNs that end with all the labels of the validated FQDN unless the CA performs a separate validation for that FQDN using an authorized method. This method is NOT suitable for validating Wildcard Domain Names.

****

**3.2.2.4.9 Test Certificate**

Confirming the Applicant’s control over the FQDN by confirming the presence of a non-expired Test Certificate issued by the CA on the Authorization Domain Name and which is accessible by the CA via TLS over an Authorized Port for the purpose of issuing a Certificate with the same Public Key as in the Test Certificate.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

**3.2.2.4.10. TLS Using a Random Number**

Confirming the Applicant’s control over the FQDN by confirming the presence of a Random Value within a Certificate on the Authorization Domain Name which is accessible by the CA via TLS over an Authorized Port.

Note: Once the FQDN has been validated using this method, the CA MAY also issue Certificates for other FQDNs that end with all the labels of the validated FQDN. This method is suitable for validating Wildcard Domain Names.

****

3. BR Section 4.2.1 is amended as follows:

****

**4.2.1. Performing Identification and Authentication Functions**

****

The Certificate request MAY include all factual information about the Applicant to be included in the Certificate, and such additional information as is necessary for the CA to obtain from the Applicant in order to comply with these Requirements and the CA’s Certificate Policy and/or Certification Practice Statement. In cases where the Certificate request does not contain all the necessary information about the Applicant, the CA SHALL obtain the remaining information from the Applicant or, having obtained it from a reliable, independent, third‐party data source, confirm it with the Applicant. The CA SHALL establish and follow a documented procedure for verifying all data requested for inclusion in the Certificate by the Applicant. Applicant information MUST include, but not be limited to, at least one Fully‐Qualified Domain Name or IP address to be included in the Certificate’s SubjectAltName extension.

Section 6.3.2 limits the validity period of Subscriber Certificates. The CA MAY use the documents and data provided in Section 3.2 to verify Certificate information, or may reuse previous validations themselves, provided that:

(1) Prior to March 1, 2018, the CA obtained the data or document from a source specified under Section 3.2 or completed the validation itself no more than 39 months prior to issuing the Certificate; and

(2) On or after March 1, 2018, the CA obtained the data or document from a source specified under Section 3.2 or completed the validation itself no more than 825 days prior to issuing the Certificate.

In no case may a prior validation be reused if any data or document used in the prior validation was obtained more than the maximum time permitted for reuse of the data or document prior to issuing the Certificate.

After the change to any validation method specified in the Baseline Requirements or EV Guidelines, a CA may continue to reuse validation data or documents collected prior to the change, or the validation itself, for the period stated in this BR 4.2.1 unless otherwise specifically provided in a ballot.

The CA SHALL develop, maintain, and implement documented procedures that identify and require additional verification activity for High Risk Certificate Requests prior to the Certificate’s approval, as reasonably necessary to ensure that such requests are properly verified under these Requirements.

If a Delegated Third Party fulfills any of the CA’s obligations under this section , the CA SHALL verify that the process used by the Delegated Third Party to identify and further verify High Risk Certificate Requests provides at least the same level of assurance as the CA’s own processes.

4. The proposer and endorsers of this Ballot may withdraw this Ballot at any time prior to completion of the final vote for approval, in which case the Ballot will not proceed further.

**–Motion Ends–**

The procedure for approval of this Final Maintenance Guideline ballot is as follows (exact start and end times may be adjusted to comply with applicable Bylaws and IPR Agreement):

| | | |
| --- | --- | --- | |
BALLOT 190

Status: Final Maintenance Guideline |
Start time (18:00 UTC) |
End time (18:00 UTC) | |
Discussion (7 to 14 days) |
Sept. 5, 2017 |
Sept. 12, 2017 | |
Vote for approval (7 days) |
Sept 12, 2017 |
Sept. 19, 2017 | |
If vote approves ballot: Review Period (Chair to send Review Notice) (30 days).

If Exclusion Notice(s) filed, ballot approval is rescinded and PAG to be created.

If no Exclusion Notices filed, ballot becomes effective at end of Review Period. |
Upon filing of Review Notice by Chair |
30 days after filing of Review Notice by Chair |

From Bylaw 2.3: If the Draft Guideline Ballot is proposing a Final Maintenance Guideline, such ballot will include a redline or comparison showing the set of changes from the Final Guideline section(s) intended to become a Final Maintenance Guideline, and need not include a copy of the full set of guidelines. Such redline or comparison shall be made against the Final Guideline section(s) as they exist at the time a ballot is proposed, and need not take into consideration other ballots that may be proposed subsequently, except as provided in Bylaw Section 2.3(j).

Votes must be cast by posting an on-list reply to this thread on the Public list. A vote in favor of the motion must indicate a clear ‘yes’ in the response. A vote against must indicate a clear ‘no’ in the response. A vote to abstain must indicate a clear ‘abstain’ in the response. Unclear responses will not be counted. The latest vote received from any representative of a voting member before the close of the voting period will be counted. Voting members are listed here:

In order for the motion to be adopted, two thirds or more of the votes cast by members in the CA category and greater than 50% of the votes cast by members in the browser category must be in favor. Quorum is shown on CA/Browser Forum wiki. Under Bylaw 2.2(g), at least the required quorum number must participate in the ballot for the ballot to be valid, either by voting in favor, voting against, or abstaining.