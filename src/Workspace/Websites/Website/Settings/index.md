Website Settings applies to specific websites in the CMS system. Administrators can configure/change their primary URL here, set a domain for staging, add aliases, generate sitemaps and much more. This article provides an overview of Website Settings and their configurable fields.

<p><img src="/static/images/websites/website/settings/website-settings.jpg" alt="Website Settings" style="width: 38%"></p>

**Name** | **Description** 
:--- | ---
Primary URL | The primary URL of your website.
[Domain Information](/workspace/websites/website/settings/#domain-information) | Enter staging address, alias, and custom rules to the domain host file in this section.
[Sitemap](/workspace/websites/website/settings/#sitemap) | Generate your website's sitemap.
[CDN Information](/workspace/websites/website/settings/#cdn-information) | Configure your CDN information.
[SSL Information](/workspace/websites/website/settings/#ssl-information) | Manage your SSL information.
[Advanced](/workspace/websites/website/settings/#advanced) | Configure more advanced settings.

## Domain Information

In this section, you can update domain information: website address(es), host settings, and redirects. You can add and remove redirects by clicking the **"Add +"** and **"Remove -"** buttons.
 
<p><img src="/static/images/websites/settings/website-settings-domain.jpg" alt="Domain Information form" style="width: 38%;"></p>

**Name** | **Description** 
:--- | ---
Staging website address(es) | The domain name for your staging site used for testing.
Origin website address(es) | The domain name(s) for the non-cached version of your production website.
Host Settings | Add custom rules to the domain hosts file, by entering the details in the text box.
Add Redirects | Add redirects by using the button **Add +**.
Remove Redirects | Remove redirects by using the button **Remove -**. 

## Sitemap

 A sitemap is an .xml file that lists and organizes all the web pages within that site. It's like a map or index for the website, designed to help search engines understand the structure of the site and how its pages are connected.

<p><img src="/static/images/websites/website/settings/sitemap.jpg" alt="Sitemap form" style="width: 38%;"></p>

**Name** | **Description** 
:--- | ---
Select URL to create a sitemap | Select a URL from the dropdown to Generate the sitemap.
Generate Sitemap | To generate a sitemap of the website, click the **Generate Sitemap** button.

!!!Note:
After clicking the **Generate Sitemap** button, the output process may take several minutes. Do not close or quit your browser during this process
!!!

## CDN Information

A Content Delivery Network (CDN) is a network of servers strategically distributed around the world to help deliver web content, such as web pages, images, videos, and other resources, to users more efficiently and quickly.

<p><img src="/static/images/websites/settings/website-settings-cdn-information.jpg" alt="CDN Information form" style="width: 38%;"></p>

**Name** | **Description** 
:--- | ---
Enable CDN | Click to enable CDN and to display the rest of the options.
CDN website address | Provide the CDN website address or origin URL.
CDN Provider | Choose your CDN provider from the dropdown.
AWS CDN (distribution) | Provide the AWS CDN.
AWS Account Config | This link will redirect you the config section to configure your [AWS Account](/admin/settings/config/#aws).

## SSL Information

Secure Sockets Layer (SSL) is a technology for establishing a secure and encrypted connection between a server and a client.
Here you can manage your SSL information.

<p><img src="/static/images/websites/website/settings/ssl-information.jpg" alt="SSL Information form"></p>

**Name** | **Description** 
:--- | ---
SSL website address | This domain name establishes an HTTPS connection to your website. To add it, enter text in the text box.
Sitewide SSL (Canonical) | Mark this checkbox to force an  HTTPS connection to all pages.
SSL Certificate | SSL certificates create a foundation of trust by establishing a secure connection. To add an SSL certificate, enter text in the text box.
SSL Key | The SSL/TLS protocol uses a pair of keys – one private, one public – to authenticate, secure, and manage secure connections. These keys are a linked pair of text files created together when you create your Certificate Signing Request (CSR). SSL makes one key of the pair (the public key) known to the outside world, while the other (the private key) remains a secret only you know. To add the SSL key, enter text in the text box.
SSL Chain Certificate | There are two certificate authorities (CAs) types: root CAs and intermediate CAs. For an SSL certificate to be trusted, that certificate must have been issued by a CA that’s included in the trusted store of the connecting device. If a trusted CA didn’t issue the certificate, the connecting device (e.g., a web browser) checks to see if the certificate issuing a trusted CA issued CA. It continues checking until a trusted CA is found (at which point a trusted, secure connection will be established) or no trusted CA can be found (at which point the device will usually display an error). The list of SSL certificates, from the root certificate to the end-user certificate, represents the SSL certificate chain. To add an SSL chain certificate, enter text in the text box.

## Advanced

In this section, you can upload a shortcodes file, export packages, and adjust the timezone.

<p><img src="/static/images/websites/settings/advanced-settings.jpg" alt="Advanced form" style="width: 40%;"></p>

**Name** | **Description** 
:--- | ---
Timezone | To change the timezone, expand the list and choose the desired timezone.
Document Repository ID | To connect an STML element with a document repository, input the folder ID in the text box. You can locate this ID on the right side of the folder where your documents are stored.
Calendar ID to connect to STMLs | To link an STML element with an event or a file, simply include the calendar's ID, which is located on the left side of the calendar.
Custom Shortcodes File | Shortcodes act as shortcuts allowing you to quickly embed elements into a post or page. Add shortcodes file by using the **Custom Shortcodes File** option.
Export | Click the **Export** button to export the website package. In the next screen select if you want to include manager entries in export and click **Continue Export**. Wait a couple of minutes for the package to be ready and click on **Download Package**.
Delete Website | To permanently remove your website, please type DELETE and then click the **Delete** button. Please be aware that this action is irreversible.