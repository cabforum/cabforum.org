---
aliases:
- /ev-faq/
date: 2013-09-04 03:25:30
title: EV FAQ
---

Frequently Asked Questions about the EV Guidelines

## Why is there a need for EV Certificates?

When the Extended Validation Guidelines were developed there were no generally-accepted standards for validating the entity identity information contained in some certificates and a degree of uncertainty arose in users’ minds over the significance of the padlock icon. URLs that commonly appear in browser address bars have become obscure and users can no longer use these to assure themselves that they are transacting with the web site that they expect. Phishing web sites that used counterfeit content to trick users into providing login credentials were a concern. Therefore, members of the CA/Browser Forum identified the need for better security indications to assure users about the web sites they were visiting and to do it in a way that clearly indicated to users the identity of the business entity with whom they were doing business. This had to be done in a way that established standards for the trustworthiness of that identity information and with a common message to end users about such assurance. Hence, the major browser suppliers and a group of CAs came together to develop the Extended Validation Guidelines. At the same time, some browser suppliers developed user interface standards for displaying that information to emphasize its trustworthiness.

## Why should I get an EV certificate for my web-site?

Having an EV certificate for your website is an indication to your customers (or users) that you are very interested in ensuring their safety and privacy by taking the most care that you possibly can in authenticating yourself (through your web site) to them. Even though it might take more time and money to apply for an EV Certificate, after following the application procedures through to successful completion of the vetting process, the CA will issue an EV Certificate to you. The EV certificate provides an enhanced display in the browser (e.g., a green address bar, green lettering, or additional display of information) when users visit your web site over a properly secured SSL session. The care that you take in authenticating yourself to the EV CA during the certificate request process pays off in the issuance of an EV certificate which will provide you with a distinctive indication for your website in the browser chrome so that the user may be sure that you are who you say you are.

## Why is it so hard to get an EV Certificate?

Most types of organizations can get an EV certificate relatively easily if they have an established business background and are located in a jurisdiction that provides good online access to records of incorporation or registration. But regrettably, there are a few types of organizations and a few jurisdictions for which there just isn’t good enough external registration information available in order for the CA to be sure enough of the details supplied by the person applying for the certificate for the CA to be able to easily issue an EV certificate. Generally, if your organization is incorporated or fits into one of the more common business types, then you should be able to obtain an EV certificate. For example, let’s consider an applicant called Joe Smith who runs his business under the name “Joe’s Plumbing Shack. In some countries you can register this business name (Joe’s Plumbing Shack) with an external body (perhaps your national or local government) and the CA could use that fact to be able to issue an EV certificate. In other countries you don’t need to register your business name at all, you can just go ahead and use it – which is great for you – but it means that the CA has no well-recognized place to go to check the information and so would find it much more difficult to issue you an EV certificate in the name of “Joe’s Plumbing Shack.” The CA/Browser Forum (the site on which you’re reading this now) itself does not have an EV Certificate because it is not registered with any of these external registration bodies. (The CA/Browser Forum is formed as an unincorporated association pursuant to a set of bylaws that members have multilaterally agreed to.)  Because we have not registered our organization in any particular jurisdiction, we cannot obtain an EV certificate from any member of the CA/Browser Forum.

## How do I know when I’m visiting a site with an EV certificate?

Most desktop browsers indicate that you are on a site with an Extended Validation (EV) certificate through a distinctive indication in the browser's interface, outside of the content area where websites are displayed. This area is often referred to as the "chrome" of the browser, which includes the address bar and other elements.

While browsers used to highlight EV certificates with a green color in the address bar, modern browsers have shifted their approach. Most browsers no longer show this information directly in the address bar; you might need to click on an icon like a padlock or a tune icon to see the organization name. Sometimes, users need to click several times, such as accessing a section with connection information after clicking the initial icon.

To familiarize yourself with how EV certificates appear in your preferred browser, you can visit websites known to use them, such as [PayPal](https://www.paypal.com/) or [Apple](https://www.apple.com/). Compare these with a site like that of the [CA/Browser Forum](https://cabforum.org/), which does not use an EV certificate. You can also check your bank's website to see if they use an EV certificate and observe how it is displayed.

## Does an EV certificate show me that the website is honest and trustworthy?

We’re afraid that it doesn’t! However, the identity vetting and extended validation steps performed prior to issuing an EV certificate provide some assurance that the owner or operator of the site has been identified with reference to a public record of incorporation or registration.

## So what does an EV certificate show me?

The EV certificate will show you exactly who is controlling the website you’re visiting. The CA who issued the certificate carried out a number of careful checks before they issued the certificate so that you can be sure of who is controlling the site you’re on. If you find yourself on a site with an EV certificate saying that it belongs to the “Bank of America” then you may be sure that the site is controlled by the Bank of America. On the other hand, if you’re on a site with an EV certificate saying it’s controlled by “Bob’s Websites” – then you may be sure it is controlled by Bob’s Websites – but you don’t know whether Bob is providing you with a useful site or trying to trick you. You might also need to look at the certificate to determine the jurisdiction in which Bob’s Websites was registered. However, once the CA learns that Bob is tricking people, then the CA will “revoke” or “turn off” the certificate – but the CA doesn’t know that in advance.
