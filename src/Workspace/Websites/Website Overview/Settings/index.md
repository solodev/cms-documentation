# Settings

Website Settings applies to specific websites in the CMS system. Administrators can configure/change their primary URL here, set a domain for staging, add aliases, generate sitemaps and much more. This article provides an overview of Website Settings and their configurable fields.

<img src="../../../../images/websites/website-settings.jpg" alt="Website Settings Modal"></a>

<br>

**Name** | **Description** 
:--- | ---
Primary URL | Edit primary URL of your website.
<a href="/workspace/websites/settings/#domain-information">Domain Information</a> | Enter staging address, alias, and custom rules to the domain host file in this section.
<a href="/workspace/websites/settings/#sitemap">Sitemap</a> | Generate your website's sitemap.
<a href="/workspace/websites/settings/#cdn-information">CDN Information</a> | Configure your CDN information.
<a href="/workspace/websites/settings/#ssl-information">SSL Information</a> | Manage your SSL information.
<a href="/workspace/websites/settings/#advanced">Advanced</a> | Configure more advanced settings.

## Domain Information

In this section, you can update domain information: website address(es), host settings, and redirects. You can add and remove redirects by clicking the **"Add +"** and **"Remove -"** buttons.

<img src="../../../../images/websites/domain-information.jpg" alt="Domain Information Accordion" style="width: 45%;"></a>

**Name** | **Description** 
:--- | ---
Staging website address(es) | The domain name for your staging site used for testing.
Origin website address(es) | The domain name(s) for the non-cached version of your production website.
Host Settings | Add custom rules to the domain hosts file, by entering the details in the text box.
Add Redirects | Add redirects by using the button **Add +**.
Remove Redirects | Remove redirects by using the button **Remove -**. 

## Sitemap

 A sitemap is an .xml file that lists and organizes all the web pages within that site. It's like a map or index for the website, designed to help search engines understand the structure of the site and how its pages are connected.

<img src="../../../../images/websites/sitemap.jpg" alt="Sitemap Accordion" style="width: 43%;"></a>

**Name** | **Description** 
:--- | ---
Generate Sitemap | To generate a sitemap of the website, click the **Generate Sitemap** button.

!!!Note:
After clicking the **Generate Sitemap** button, the output process may take several minutes. Do not close or quit your browser during this process
!!!

## CDN Information

A Content Delivery Network (CDN) is a network of servers strategically distributed around the world to help deliver web content, such as web pages, images, videos, and other resources, to users more efficiently and quickly.

<img src="../../../../images/websites/cdn-info.jpg" alt="CDN Accordion" style="width: 43%;"></a>

**Name** | **Description** 
:--- | ---
Enable CDN | Click to enable CDN and to display the rest of the options.
CDN website address | Provide the CDN website address or origin URL.
CDN Provider | Choose your CDN provider from the dropdown.
AWS CDN (distribution) | Provide the AWS CDN.
AWS Account Config | This link will redirect you the config section to configure your <a href="/admin/settings/config/#aws">AWS Account</a>.

## SSL Information

Secure Sockets Layer (SSL) is a technology for establishing a secure and encrypted connection between a server and a client.
Here you can manage your SSL information.

<img src="../../../../images/websites/ssl-info.jpg" alt="SSL Accordion" style="width: 45%;"></a>

**Name** | **Description** 
:--- | ---
SSL website address | This domain name establishes an HTTPS connection to your website. To add it, enter text in the text box.
Sitewide SSL (Canonical) | Mark this checkbox to force an  HTTPS connection to all pages.
SSL Certificate | SSL certificates create a foundation of trust by establishing a secure connection. To add an SSL certificate, enter text in the text box.
SSL Key | The SSL/TLS protocol uses a pair of keys – one private, one public – to authenticate, secure, and manage secure connections. These keys are a linked pair of text files created together when you create your Certificate Signing Request (CSR). SSL makes one key of the pair (the public key) known to the outside world, while the other (the private key) remains a secret only you know. To add the SSL key, enter text in the text box.
SSL Chain Certificate | There are two certificate authorities (CAs) types: root CAs and intermediate CAs. For an SSL certificate to be trusted, that certificate must have been issued by a CA that’s included in the trusted store of the connecting device. If a trusted CA didn’t issue the certificate, the connecting device (e.g., a web browser) checks to see if the certificate issuing a trusted CA issued CA. It continues checking until a trusted CA is found (at which point a trusted, secure connection will be established) or no trusted CA can be found (at which point the device will usually display an error). The list of SSL certificates, from the root certificate to the end-user certificate, represents the SSL certificate chain. To add an SSL chain certificate, enter text in the text box.

## Advanced

In this section, you can upload a shortcodes file, export packages, and adjust the timezone.

<img src="../../../../images/websites/advanced-settings.jpg" alt="Advanced Accordion" style="width: 40%;"></a>

**Name** | **Description** 
:--- | ---
Timezone | To change the timezone, expand the list and choose the desired timezone.
Document Repository ID | To connect an STML element with a document repository, input the folder ID in the text box. You can locate this ID on the right side of the folder where your documents are stored.
Calendar ID to connect to STMLs | To link an STML element with an event or a file, simply include the calendar's ID, which is located on the left side of the calendar.
Custom Shortcodes File | Shortcodes act as shortcuts allowing you to quickly embed elements into a post or page. Add shortcodes file by using the **Custom Shortcodes File** option.
Export | Click the **Export** button to export the website package. In the next screen select if you want to include manager entries in export and click **Continue Export**. Wait a couple of minutes for the package to be ready and click on **Download Package**.
Delete Website | To permanently remove your website, please type DELETE and then click the **Delete** button. Please be aware that this action is irreversible.
Confirm | After filling out all the required fields, please click the **Submit** button to save your changes.