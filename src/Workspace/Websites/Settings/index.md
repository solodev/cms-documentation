# Settings

In Settings page you are able to manage:

- **Domain Information**
- **Sitemap**
- **CDN Information**
- **SSL Information**
- **Payment Information**
- **Advanced Settings**

><img src="../../../images/settings.jpg" alt="settings" style="width: 40%; display: block"></a>

---

## Domain Information

In this section you can update domain information: website address(es), host settings and redirects.

><img src="../../../images/settings6.jpg" alt="settings6" style="width: 30%; display: block"></a>

### Website address(es)

Here you can manage your website addresses: staging and origin both.

To add staging website address put each address on a new line.

To add origin website address put each address on a new line.

### Host Settings

Here you can manage your host settings. To do that you need to enter the details in text box.

### Domain Redirects

Domain redirects allow you to forward your domain visitors to any URL of your choice (to a new domain or a different website).

><img src="../../../images/settings7.jpg" alt="settings7" style="width: 30%; display: block"></a>

You can add redirect by entering URL in the text box and clicking orange "Add" button.

To remove redirect click the blue "Remove" button.

---

## Sitemap

A sitemap is a file where you provide information about the pages and other files on your site, and the relationships between them.

Here you can generate a sitemap of this website. To do that click the button "Generate Sitemap".

><img src="../../../images/settings5.jpg" alt="settings5" style="width: 40%; display: block"></a>

!!! Please Note:
The output process may take several minutes to complete after clicking the "Generate Sitemap" button. Do not close or quit your browser duing this process.
!!!

---

## CDN Information

A content delivery network (CDN) refers to a geographically distributed group of servers which work together to provide fast delivery of Internet content.

A CDN allows for the quick transfer of assets needed for loading Internet content including HTML pages, javascript files, stylesheets, images, and videos. 

To manage CDN features, check "Enable CDN" option.

><img src="../../../images/settings4.jpg" alt="settings4" style="width: 40%; display: block"></a>

### CDN website address

To add CND website address enter CDN URL and submit your changes.

### CDN Provider

To add CND provider choose it from the list. After choosing AWS you will be able to enter AWS CDN. 

There is also an option to go to <a href="/admin/settings/config/">AWS Config</a>.

---

## SSL Information

Secure Sockets Layer (SSL) is a standard security technology for establishing an encrypted link between a server and a client—typically a web server (website) and a browser, or a mail server and a mail client (e.g., Outlook).

><img src="../../../images/settings8.jpg" alt="settings8" style="width: 30%; display: block"></a>

### SSL Certificate

SSL certificates create a foundation of trust by establishing a secure connection.

To add SSL certificate, enter text in text box and submit your changes.

### SSL Key

The SSL/TLS protocol uses a pair of keys – one private, one public – to authenticate, secure and manage secure connections. These keys are a linked pair of text files and are created together as a pair when you create your Certificate Signing Request (CSR).

SSL works by making one key of the pair (the public key) known to the outside world, while the other (the private key) remains a secret only you know.

To add SSL key, enter text in text box and submit your changes.

### SSL Chain Certificate

There are two types of certificate authorities (CAs): root CAs and intermediate CAs. For an SSL certificate to be trusted, that certificate must have been issued by a CA that’s included in the trusted store of the device that’s connecting.

If the certificate wasn’t issued by a trusted CA, the connecting device (eg. a web browser) checks to see if the certificate of the issuing CA was issued by a trusted CA. It continues checking until either a trusted CA is found (at which point a trusted, secure connection will be established), or no trusted CA can be found (at which point the device will usually display an error).

The list of SSL certificates, from the root certificate to the end-user certificate, represents the SSL certificate chain.

To add SSL chain certificate, enter text in text box and submit your changes.

---

## Payment Information

Payment Information is moved into <a href="/admin/settings/config/">Config</a>.

><img src="../../../images/settings3.jpg" alt="settings3" style="width: 40%; display: block"></a>

---

## Advanced Settings 

In this section you can manage advances settings.

><img src="../../../images/settings2.jpg" alt="settings2" style="width: 40%; display: block"></a>

### Timezone

Here you can change your timezone. To change timezone, expand the list and choose the desired timezone. It should be based on your location.

### Document Repository ID

To add ID of the document repository, enter ID in text box and submit your changes.

### Calendar ID to connect to STMLs

You can connnect your calendar to STMLs. To do that, you need to enter calendar ID and submit your changes.

### Custom Shortcodes File

Shortcodes act as shortcuts that allow you to embed elements into a post or page quickly. These usually consist of a single line of code within square brackets. This code will display a predetermined feature on the front end of your site.

To custom shortcode file you need to create the shortcode's function saving it in .php format. Then you have to <a href="/workspace/websites-overview/update-website/">add file</a> to website.

When the file is added, click blue "Browse" button, choose .php file and click blue "Choose" button.

### Export

You can generate a package of this website by clicking on button Export.

Then you have to customize execution of export. You can check the option "Include manager entries in export".

To process with export choose "Continue Export".

!!! Please Note:
The export process may take several minutes to complete after clicking the "Continue Export" button. Do not close or quit your browser duing this process.
!!!

When process is completed you can download package by clicking on the blue button "Download Package".

### Delete

Here you can also. To do that follow the steps <a href="/workspace/websites-overview/delete-website/">here</a>.

---

## Confirm

Click the blue "Submit" button at the bottom right to apply your changes.

!!!Please Note:
Any changes made above will not be applied unless the submit button is clicked.
!!!